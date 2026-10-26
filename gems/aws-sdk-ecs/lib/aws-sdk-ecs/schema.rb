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
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#AccessType", name: "AccessType")
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
    AutoRepairActionsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#AutoRepairActionsStatus", name: "AutoRepairActionsStatus")
    AutoRepairConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#AutoRepairConfiguration", name: "AutoRepairConfiguration")
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
    CanaryConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CanaryConfiguration", name: "CanaryConfiguration")
    CapacityOptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#CapacityOptionType", name: "CapacityOptionType")
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
    CapacityReservationPreference = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#CapacityReservationPreference", name: "CapacityReservationPreference")
    CapacityReservationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CapacityReservationRequest", name: "CapacityReservationRequest")
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
    ContinueServiceDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ContinueServiceDeploymentRequest", name: "ContinueServiceDeploymentRequest")
    ContinueServiceDeploymentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ContinueServiceDeploymentResponse", name: "ContinueServiceDeploymentResponse")
    CpuManufacturer = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#CpuManufacturer", name: "CpuManufacturer")
    CpuManufacturerSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#CpuManufacturerSet", name: "CpuManufacturerSet")
    CreateCapacityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateCapacityProviderRequest", name: "CreateCapacityProviderRequest")
    CreateCapacityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateCapacityProviderResponse", name: "CreateCapacityProviderResponse")
    CreateClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateClusterRequest", name: "CreateClusterRequest")
    CreateClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateClusterResponse", name: "CreateClusterResponse")
    CreateDaemonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateDaemonRequest", name: "CreateDaemonRequest")
    CreateDaemonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateDaemonResponse", name: "CreateDaemonResponse")
    CreateExpressGatewayServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateExpressGatewayServiceRequest", name: "CreateExpressGatewayServiceRequest")
    CreateExpressGatewayServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateExpressGatewayServiceResponse", name: "CreateExpressGatewayServiceResponse")
    CreateManagedInstancesProviderConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateManagedInstancesProviderConfiguration", name: "CreateManagedInstancesProviderConfiguration")
    CreateServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateServiceRequest", name: "CreateServiceRequest")
    CreateServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateServiceResponse", name: "CreateServiceResponse")
    CreateTaskSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateTaskSetRequest", name: "CreateTaskSetRequest")
    CreateTaskSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreateTaskSetResponse", name: "CreateTaskSetResponse")
    CreatedAt = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#CreatedAt", name: "CreatedAt")
    DaemonAlarmConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonAlarmConfiguration", name: "DaemonAlarmConfiguration")
    DaemonCapacityProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonCapacityProvider", name: "DaemonCapacityProvider")
    DaemonCapacityProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonCapacityProviderList", name: "DaemonCapacityProviderList")
    DaemonCircuitBreaker = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonCircuitBreaker", name: "DaemonCircuitBreaker")
    DaemonContainerDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonContainerDefinition", name: "DaemonContainerDefinition")
    DaemonContainerDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonContainerDefinitionList", name: "DaemonContainerDefinitionList")
    DaemonContainerImage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonContainerImage", name: "DaemonContainerImage")
    DaemonContainerImages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonContainerImages", name: "DaemonContainerImages")
    DaemonDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonDeployment", name: "DaemonDeployment")
    DaemonDeploymentAlarms = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonDeploymentAlarms", name: "DaemonDeploymentAlarms")
    DaemonDeploymentCapacityProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonDeploymentCapacityProvider", name: "DaemonDeploymentCapacityProvider")
    DaemonDeploymentCapacityProviderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonDeploymentCapacityProviderList", name: "DaemonDeploymentCapacityProviderList")
    DaemonDeploymentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonDeploymentConfiguration", name: "DaemonDeploymentConfiguration")
    DaemonDeploymentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonDeploymentList", name: "DaemonDeploymentList")
    DaemonDeploymentRevisionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonDeploymentRevisionDetail", name: "DaemonDeploymentRevisionDetail")
    DaemonDeploymentRevisionDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonDeploymentRevisionDetailList", name: "DaemonDeploymentRevisionDetailList")
    DaemonDeploymentRollbackMonitorsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DaemonDeploymentRollbackMonitorsStatus", name: "DaemonDeploymentRollbackMonitorsStatus")
    DaemonDeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DaemonDeploymentStatus", name: "DaemonDeploymentStatus")
    DaemonDeploymentStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonDeploymentStatusList", name: "DaemonDeploymentStatusList")
    DaemonDeploymentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonDeploymentSummary", name: "DaemonDeploymentSummary")
    DaemonDeploymentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonDeploymentSummaryList", name: "DaemonDeploymentSummaryList")
    DaemonDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonDetail", name: "DaemonDetail")
    DaemonDrainPercent = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.ecs#DaemonDrainPercent", name: "DaemonDrainPercent", traits: {"smithy.api#range" => {"min" => 0.0, "max" => 100.0}})
    DaemonIpcMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DaemonIpcMode", name: "DaemonIpcMode")
    DaemonLinuxParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonLinuxParameters", name: "DaemonLinuxParameters")
    DaemonNotActiveException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonNotActiveException", name: "DaemonNotActiveException", traits: {"smithy.api#error" => "client"})
    DaemonNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonNotFoundException", name: "DaemonNotFoundException", traits: {"smithy.api#error" => "client"})
    DaemonPidMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DaemonPidMode", name: "DaemonPidMode")
    DaemonPropagateTags = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DaemonPropagateTags", name: "DaemonPropagateTags")
    DaemonRevision = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonRevision", name: "DaemonRevision")
    DaemonRevisionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonRevisionDetail", name: "DaemonRevisionDetail")
    DaemonRevisionDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonRevisionDetailList", name: "DaemonRevisionDetailList")
    DaemonRevisions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonRevisions", name: "DaemonRevisions")
    DaemonRollback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonRollback", name: "DaemonRollback")
    DaemonStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DaemonStatus", name: "DaemonStatus")
    DaemonSummariesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonSummariesList", name: "DaemonSummariesList")
    DaemonSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonSummary", name: "DaemonSummary")
    DaemonTaskDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonTaskDefinition", name: "DaemonTaskDefinition")
    DaemonTaskDefinitionRevisionFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DaemonTaskDefinitionRevisionFilter", name: "DaemonTaskDefinitionRevisionFilter")
    DaemonTaskDefinitionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DaemonTaskDefinitionStatus", name: "DaemonTaskDefinitionStatus")
    DaemonTaskDefinitionStatusFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DaemonTaskDefinitionStatusFilter", name: "DaemonTaskDefinitionStatusFilter")
    DaemonTaskDefinitionSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonTaskDefinitionSummaries", name: "DaemonTaskDefinitionSummaries")
    DaemonTaskDefinitionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonTaskDefinitionSummary", name: "DaemonTaskDefinitionSummary")
    DaemonVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DaemonVolume", name: "DaemonVolume")
    DaemonVolumeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DaemonVolumeList", name: "DaemonVolumeList")
    DeleteAccountSettingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteAccountSettingRequest", name: "DeleteAccountSettingRequest")
    DeleteAccountSettingResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteAccountSettingResponse", name: "DeleteAccountSettingResponse")
    DeleteAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteAttributesRequest", name: "DeleteAttributesRequest")
    DeleteAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteAttributesResponse", name: "DeleteAttributesResponse")
    DeleteCapacityProviderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteCapacityProviderRequest", name: "DeleteCapacityProviderRequest")
    DeleteCapacityProviderResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteCapacityProviderResponse", name: "DeleteCapacityProviderResponse")
    DeleteClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteClusterRequest", name: "DeleteClusterRequest")
    DeleteClusterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteClusterResponse", name: "DeleteClusterResponse")
    DeleteDaemonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteDaemonRequest", name: "DeleteDaemonRequest")
    DeleteDaemonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteDaemonResponse", name: "DeleteDaemonResponse")
    DeleteDaemonTaskDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteDaemonTaskDefinitionRequest", name: "DeleteDaemonTaskDefinitionRequest")
    DeleteDaemonTaskDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteDaemonTaskDefinitionResponse", name: "DeleteDaemonTaskDefinitionResponse")
    DeleteExpressGatewayServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteExpressGatewayServiceRequest", name: "DeleteExpressGatewayServiceRequest")
    DeleteExpressGatewayServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeleteExpressGatewayServiceResponse", name: "DeleteExpressGatewayServiceResponse")
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
    DeploymentEarlySuccessCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeploymentEarlySuccessCriteria", name: "DeploymentEarlySuccessCriteria")
    DeploymentEphemeralStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeploymentEphemeralStorage", name: "DeploymentEphemeralStorage")
    DeploymentLifecycleHook = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHook", name: "DeploymentLifecycleHook")
    DeploymentLifecycleHookAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookAction", name: "DeploymentLifecycleHookAction")
    DeploymentLifecycleHookDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookDetail", name: "DeploymentLifecycleHookDetail")
    DeploymentLifecycleHookDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookDetailList", name: "DeploymentLifecycleHookDetailList")
    DeploymentLifecycleHookDuration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookDuration", name: "DeploymentLifecycleHookDuration", traits: {"smithy.api#range" => {"min" => 1, "max" => 20160}})
    DeploymentLifecycleHookList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookList", name: "DeploymentLifecycleHookList")
    DeploymentLifecycleHookStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookStage", name: "DeploymentLifecycleHookStage")
    DeploymentLifecycleHookStageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookStageList", name: "DeploymentLifecycleHookStageList")
    DeploymentLifecycleHookStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookStatus", name: "DeploymentLifecycleHookStatus")
    DeploymentLifecycleHookTargetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookTargetType", name: "DeploymentLifecycleHookTargetType")
    DeploymentLifecycleHookTimeoutConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DeploymentLifecycleHookTimeoutConfiguration", name: "DeploymentLifecycleHookTimeoutConfiguration")
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
    DescribeDaemonDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeDaemonDeploymentsRequest", name: "DescribeDaemonDeploymentsRequest")
    DescribeDaemonDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeDaemonDeploymentsResponse", name: "DescribeDaemonDeploymentsResponse")
    DescribeDaemonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeDaemonRequest", name: "DescribeDaemonRequest")
    DescribeDaemonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeDaemonResponse", name: "DescribeDaemonResponse")
    DescribeDaemonRevisionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeDaemonRevisionsRequest", name: "DescribeDaemonRevisionsRequest")
    DescribeDaemonRevisionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeDaemonRevisionsResponse", name: "DescribeDaemonRevisionsResponse")
    DescribeDaemonTaskDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeDaemonTaskDefinitionRequest", name: "DescribeDaemonTaskDefinitionRequest")
    DescribeDaemonTaskDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeDaemonTaskDefinitionResponse", name: "DescribeDaemonTaskDefinitionResponse")
    DescribeExpressGatewayServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeExpressGatewayServiceRequest", name: "DescribeExpressGatewayServiceRequest")
    DescribeExpressGatewayServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#DescribeExpressGatewayServiceResponse", name: "DescribeExpressGatewayServiceResponse")
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
    ECSExpressGatewayService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ECSExpressGatewayService", name: "ECSExpressGatewayService")
    ECSManagedResources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ECSManagedResources", name: "ECSManagedResources")
    ECSVolumeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#ECSVolumeName", name: "ECSVolumeName")
    EFSAuthorizationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#EFSAuthorizationConfig", name: "EFSAuthorizationConfig")
    EFSAuthorizationConfigIAM = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#EFSAuthorizationConfigIAM", name: "EFSAuthorizationConfigIAM")
    EFSTransitEncryption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#EFSTransitEncryption", name: "EFSTransitEncryption")
    EFSVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#EFSVolumeConfiguration", name: "EFSVolumeConfiguration")
    EnvironmentFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#EnvironmentFile", name: "EnvironmentFile")
    EnvironmentFileType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#EnvironmentFileType", name: "EnvironmentFileType")
    EnvironmentFiles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#EnvironmentFiles", name: "EnvironmentFiles")
    EnvironmentVariables = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#EnvironmentVariables", name: "EnvironmentVariables", traits: {"smithy.api#sensitive" => {}})
    EphemeralStorage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#EphemeralStorage", name: "EphemeralStorage")
    ExcludedInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#ExcludedInstanceType", name: "ExcludedInstanceType", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\*\\-]+$"})
    ExcludedInstanceTypeSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ExcludedInstanceTypeSet", name: "ExcludedInstanceTypeSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 400}})
    ExecuteCommandConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExecuteCommandConfiguration", name: "ExecuteCommandConfiguration")
    ExecuteCommandLogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExecuteCommandLogConfiguration", name: "ExecuteCommandLogConfiguration")
    ExecuteCommandLogging = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ExecuteCommandLogging", name: "ExecuteCommandLogging")
    ExecuteCommandRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExecuteCommandRequest", name: "ExecuteCommandRequest")
    ExecuteCommandResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExecuteCommandResponse", name: "ExecuteCommandResponse")
    ExpressCpuArchitecture = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ExpressCpuArchitecture", name: "ExpressCpuArchitecture")
    ExpressGatewayContainer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExpressGatewayContainer", name: "ExpressGatewayContainer")
    ExpressGatewayRepositoryCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExpressGatewayRepositoryCredentials", name: "ExpressGatewayRepositoryCredentials")
    ExpressGatewayScalingTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExpressGatewayScalingTarget", name: "ExpressGatewayScalingTarget")
    ExpressGatewayServiceAwsLogsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExpressGatewayServiceAwsLogsConfiguration", name: "ExpressGatewayServiceAwsLogsConfiguration")
    ExpressGatewayServiceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExpressGatewayServiceConfiguration", name: "ExpressGatewayServiceConfiguration")
    ExpressGatewayServiceConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ExpressGatewayServiceConfigurations", name: "ExpressGatewayServiceConfigurations")
    ExpressGatewayServiceInclude = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ExpressGatewayServiceInclude", name: "ExpressGatewayServiceInclude")
    ExpressGatewayServiceIncludeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ExpressGatewayServiceIncludeList", name: "ExpressGatewayServiceIncludeList")
    ExpressGatewayServiceNetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExpressGatewayServiceNetworkConfiguration", name: "ExpressGatewayServiceNetworkConfiguration")
    ExpressGatewayServiceScalingMetric = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ExpressGatewayServiceScalingMetric", name: "ExpressGatewayServiceScalingMetric")
    ExpressGatewayServiceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ExpressGatewayServiceStatus", name: "ExpressGatewayServiceStatus")
    ExpressGatewayServiceStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ExpressGatewayServiceStatusCode", name: "ExpressGatewayServiceStatusCode")
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
    HealthyPercentInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#HealthyPercentInteger", name: "HealthyPercentInteger", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    HookDetails = ::Smithy::Schema::Shapes::DocumentShape.new(id: "com.amazonaws.ecs#HookDetails", name: "HookDetails")
    HostEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#HostEntry", name: "HostEntry")
    HostEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#HostEntryList", name: "HostEntryList")
    HostVolumeProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#HostVolumeProperties", name: "HostVolumeProperties")
    IAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#IAMRoleArn", name: "IAMRoleArn")
    InferenceAccelerator = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#InferenceAccelerator", name: "InferenceAccelerator", traits: {"smithy.api#deprecated" => {"message" => "This feature is no longer available.", "since" => "2023-04-15"}})
    InferenceAcceleratorOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#InferenceAcceleratorOverride", name: "InferenceAcceleratorOverride", traits: {"smithy.api#deprecated" => {"message" => "This feature is no longer available.", "since" => "2023-04-15"}})
    InferenceAcceleratorOverrides = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#InferenceAcceleratorOverrides", name: "InferenceAcceleratorOverrides", traits: {"smithy.api#deprecated" => {"message" => "This feature is no longer available.", "since" => "2023-04-15"}})
    InferenceAccelerators = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#InferenceAccelerators", name: "InferenceAccelerators", traits: {"smithy.api#deprecated" => {"message" => "This feature is no longer available.", "since" => "2023-04-15"}})
    InfrastructureOptimization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#InfrastructureOptimization", name: "InfrastructureOptimization")
    IngressPathSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#IngressPathSummaries", name: "IngressPathSummaries")
    IngressPathSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#IngressPathSummary", name: "IngressPathSummary")
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
    LinearConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#LinearConfiguration", name: "LinearConfiguration")
    LinuxParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#LinuxParameters", name: "LinuxParameters")
    ListAccountSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListAccountSettingsRequest", name: "ListAccountSettingsRequest")
    ListAccountSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListAccountSettingsResponse", name: "ListAccountSettingsResponse")
    ListAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListAttributesRequest", name: "ListAttributesRequest")
    ListAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListAttributesResponse", name: "ListAttributesResponse")
    ListClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListClustersRequest", name: "ListClustersRequest")
    ListClustersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListClustersResponse", name: "ListClustersResponse")
    ListContainerInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListContainerInstancesRequest", name: "ListContainerInstancesRequest")
    ListContainerInstancesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListContainerInstancesResponse", name: "ListContainerInstancesResponse")
    ListDaemonDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListDaemonDeploymentsRequest", name: "ListDaemonDeploymentsRequest")
    ListDaemonDeploymentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListDaemonDeploymentsResponse", name: "ListDaemonDeploymentsResponse")
    ListDaemonTaskDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListDaemonTaskDefinitionsRequest", name: "ListDaemonTaskDefinitionsRequest")
    ListDaemonTaskDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListDaemonTaskDefinitionsResponse", name: "ListDaemonTaskDefinitionsResponse")
    ListDaemonsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListDaemonsRequest", name: "ListDaemonsRequest")
    ListDaemonsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ListDaemonsResponse", name: "ListDaemonsResponse")
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
    ManagedApplicationAutoScalingPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ManagedApplicationAutoScalingPolicies", name: "ManagedApplicationAutoScalingPolicies")
    ManagedApplicationAutoScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedApplicationAutoScalingPolicy", name: "ManagedApplicationAutoScalingPolicy")
    ManagedAutoScaling = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedAutoScaling", name: "ManagedAutoScaling")
    ManagedCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedCertificate", name: "ManagedCertificate")
    ManagedDraining = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ManagedDraining", name: "ManagedDraining")
    ManagedIngressPath = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedIngressPath", name: "ManagedIngressPath")
    ManagedIngressPaths = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ManagedIngressPaths", name: "ManagedIngressPaths")
    ManagedInstancesLocalStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedInstancesLocalStorageConfiguration", name: "ManagedInstancesLocalStorageConfiguration")
    ManagedInstancesMonitoringOptions = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ManagedInstancesMonitoringOptions", name: "ManagedInstancesMonitoringOptions")
    ManagedInstancesNetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedInstancesNetworkConfiguration", name: "ManagedInstancesNetworkConfiguration")
    ManagedInstancesProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedInstancesProvider", name: "ManagedInstancesProvider")
    ManagedInstancesStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedInstancesStorageConfiguration", name: "ManagedInstancesStorageConfiguration")
    ManagedListener = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedListener", name: "ManagedListener")
    ManagedListenerRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedListenerRule", name: "ManagedListenerRule")
    ManagedLoadBalancer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedLoadBalancer", name: "ManagedLoadBalancer")
    ManagedLogGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedLogGroup", name: "ManagedLogGroup")
    ManagedLogGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ManagedLogGroups", name: "ManagedLogGroups")
    ManagedMetricAlarm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedMetricAlarm", name: "ManagedMetricAlarm")
    ManagedMetricAlarms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ManagedMetricAlarms", name: "ManagedMetricAlarms")
    ManagedResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ManagedResourceStatus", name: "ManagedResourceStatus")
    ManagedScalableTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedScalableTarget", name: "ManagedScalableTarget")
    ManagedScaling = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedScaling", name: "ManagedScaling")
    ManagedScalingInstanceWarmupPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#ManagedScalingInstanceWarmupPeriod", name: "ManagedScalingInstanceWarmupPeriod", traits: {"smithy.api#range" => {"min" => 0, "max" => 10000}})
    ManagedScalingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ManagedScalingStatus", name: "ManagedScalingStatus")
    ManagedScalingStepSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#ManagedScalingStepSize", name: "ManagedScalingStepSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ManagedScalingTargetCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#ManagedScalingTargetCapacity", name: "ManagedScalingTargetCapacity", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ManagedSecurityGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedSecurityGroup", name: "ManagedSecurityGroup")
    ManagedSecurityGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ManagedSecurityGroups", name: "ManagedSecurityGroups")
    ManagedStorageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedStorageConfiguration", name: "ManagedStorageConfiguration")
    ManagedTargetGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ManagedTargetGroup", name: "ManagedTargetGroup")
    ManagedTargetGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ManagedTargetGroups", name: "ManagedTargetGroups")
    ManagedTerminationProtection = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ManagedTerminationProtection", name: "ManagedTerminationProtection")
    MemoryGiBPerVCpuRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#MemoryGiBPerVCpuRequest", name: "MemoryGiBPerVCpuRequest")
    MemoryMiBRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#MemoryMiBRequest", name: "MemoryMiBRequest")
    MetricConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#MetricConfiguration", name: "MetricConfiguration")
    MetricConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#MetricConfigurationList", name: "MetricConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#MetricName", name: "MetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MetricNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#MetricNamesList", name: "MetricNamesList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    MetricResolutionSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ecs#MetricResolutionSeconds", name: "MetricResolutionSeconds", traits: {"smithy.api#range" => {"min" => 20, "max" => 60}})
    MissingVersionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#MissingVersionException", name: "MissingVersionException", traits: {"smithy.api#error" => "client"})
    MonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#MonitoringConfiguration", name: "MonitoringConfiguration")
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
    NeuronDeviceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#NeuronDeviceIds", name: "NeuronDeviceIds")
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
    RegisterDaemonTaskDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RegisterDaemonTaskDefinitionRequest", name: "RegisterDaemonTaskDefinitionRequest")
    RegisterDaemonTaskDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RegisterDaemonTaskDefinitionResponse", name: "RegisterDaemonTaskDefinitionResponse")
    RegisterTaskDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RegisterTaskDefinitionRequest", name: "RegisterTaskDefinitionRequest")
    RegisterTaskDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RegisterTaskDefinitionResponse", name: "RegisterTaskDefinitionResponse")
    RepositoryCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RepositoryCredentials", name: "RepositoryCredentials", traits: {"smithy.api#sensitive" => {}})
    RequiresAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#RequiresAttributes", name: "RequiresAttributes")
    ResolvedConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ResolvedConfiguration", name: "ResolvedConfiguration")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Resource", name: "Resource")
    ResourceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ResourceIds", name: "ResourceIds")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceManagementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ResourceManagementType", name: "ResourceManagementType")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    ResourceRequirement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ResourceRequirement", name: "ResourceRequirement")
    ResourceRequirements = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ResourceRequirements", name: "ResourceRequirements")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ResourceType", name: "ResourceType")
    Resources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#Resources", name: "Resources")
    Rollback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Rollback", name: "Rollback")
    RunTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RunTaskRequest", name: "RunTaskRequest")
    RunTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RunTaskResponse", name: "RunTaskResponse")
    RuntimePlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RuntimePlatform", name: "RuntimePlatform")
    RuntimePlatformOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#RuntimePlatformOverride", name: "RuntimePlatformOverride")
    S3FilesVolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#S3FilesVolumeConfiguration", name: "S3FilesVolumeConfiguration")
    Scale = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Scale", name: "Scale")
    ScaleUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ScaleUnit", name: "ScaleUnit")
    SchedulingStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#SchedulingStrategy", name: "SchedulingStrategy")
    Scope = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#Scope", name: "Scope")
    Secret = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Secret", name: "Secret")
    SecretList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#SecretList", name: "SecretList")
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ecs#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServerException", name: "ServerException", traits: {"smithy.api#error" => "server"})
    Service = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Service", name: "Service")
    ServiceConnectAccessLogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectAccessLogConfiguration", name: "ServiceConnectAccessLogConfiguration")
    ServiceConnectAccessLoggingFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ServiceConnectAccessLoggingFormat", name: "ServiceConnectAccessLoggingFormat")
    ServiceConnectClientAlias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectClientAlias", name: "ServiceConnectClientAlias")
    ServiceConnectClientAliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceConnectClientAliasList", name: "ServiceConnectClientAliasList")
    ServiceConnectConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectConfiguration", name: "ServiceConnectConfiguration")
    ServiceConnectIncludeQueryParameters = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ServiceConnectIncludeQueryParameters", name: "ServiceConnectIncludeQueryParameters")
    ServiceConnectService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectService", name: "ServiceConnectService")
    ServiceConnectServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceConnectServiceList", name: "ServiceConnectServiceList")
    ServiceConnectServiceResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectServiceResource", name: "ServiceConnectServiceResource")
    ServiceConnectServiceResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceConnectServiceResourceList", name: "ServiceConnectServiceResourceList")
    ServiceConnectTestTrafficHeaderMatchRules = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectTestTrafficHeaderMatchRules", name: "ServiceConnectTestTrafficHeaderMatchRules")
    ServiceConnectTestTrafficHeaderRules = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectTestTrafficHeaderRules", name: "ServiceConnectTestTrafficHeaderRules")
    ServiceConnectTestTrafficRules = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectTestTrafficRules", name: "ServiceConnectTestTrafficRules")
    ServiceConnectTlsCertificateAuthority = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectTlsCertificateAuthority", name: "ServiceConnectTlsCertificateAuthority")
    ServiceConnectTlsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceConnectTlsConfiguration", name: "ServiceConnectTlsConfiguration")
    ServiceCurrentRevisionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceCurrentRevisionSummary", name: "ServiceCurrentRevisionSummary")
    ServiceCurrentRevisionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceCurrentRevisionSummaryList", name: "ServiceCurrentRevisionSummaryList")
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
    ServiceRevisionCleanup = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ServiceRevisionCleanup", name: "ServiceRevisionCleanup")
    ServiceRevisionLoadBalancer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceRevisionLoadBalancer", name: "ServiceRevisionLoadBalancer")
    ServiceRevisionLoadBalancers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceRevisionLoadBalancers", name: "ServiceRevisionLoadBalancers")
    ServiceRevisionOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceRevisionOverrides", name: "ServiceRevisionOverrides")
    ServiceRevisionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceRevisionSummary", name: "ServiceRevisionSummary")
    ServiceRevisionVpcLatticeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ServiceRevisionVpcLatticeConfiguration", name: "ServiceRevisionVpcLatticeConfiguration")
    ServiceRevisionVpcLatticeConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#ServiceRevisionVpcLatticeConfigurations", name: "ServiceRevisionVpcLatticeConfigurations")
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
    ThresholdConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#ThresholdConfiguration", name: "ThresholdConfiguration")
    ThresholdType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#ThresholdType", name: "ThresholdType")
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
    UpdateDaemonRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateDaemonRequest", name: "UpdateDaemonRequest")
    UpdateDaemonResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateDaemonResponse", name: "UpdateDaemonResponse")
    UpdateExpressGatewayServiceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateExpressGatewayServiceRequest", name: "UpdateExpressGatewayServiceRequest")
    UpdateExpressGatewayServiceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdateExpressGatewayServiceResponse", name: "UpdateExpressGatewayServiceResponse")
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
    UpdatedExpressGatewayService = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#UpdatedExpressGatewayService", name: "UpdatedExpressGatewayService")
    VCpuCountRangeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#VCpuCountRangeRequest", name: "VCpuCountRangeRequest")
    VersionConsistency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.ecs#VersionConsistency", name: "VersionConsistency")
    VersionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#VersionInfo", name: "VersionInfo")
    Volume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#Volume", name: "Volume")
    VolumeFrom = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#VolumeFrom", name: "VolumeFrom")
    VolumeFromList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#VolumeFromList", name: "VolumeFromList")
    VolumeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#VolumeList", name: "VolumeList")
    VpcLatticeAdvancedConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#VpcLatticeAdvancedConfiguration", name: "VpcLatticeAdvancedConfiguration")
    VpcLatticeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ecs#VpcLatticeConfiguration", name: "VpcLatticeConfiguration")
    VpcLatticeConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.ecs#VpcLatticeConfigurations", name: "VpcLatticeConfigurations")

    AcceleratorCountRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "min"))
    AcceleratorCountRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "max"))
    AcceleratorCountRequest.type = Types::AcceleratorCountRequest
    AcceleratorManufacturer.add_member(:amazon_web_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_WEB_SERVICES", traits: {"smithy.api#enumValue" => "amazon-web-services"}))
    AcceleratorManufacturer.add_member(:amd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMD", traits: {"smithy.api#enumValue" => "amd"}))
    AcceleratorManufacturer.add_member(:nvidia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NVIDIA", traits: {"smithy.api#enumValue" => "nvidia"}))
    AcceleratorManufacturer.add_member(:xilinx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XILINX", traits: {"smithy.api#enumValue" => "xilinx"}))
    AcceleratorManufacturer.add_member(:habana, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HABANA", traits: {"smithy.api#enumValue" => "habana"}))
    AcceleratorManufacturerSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorManufacturer, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    AcceleratorName.add_member(:a100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "A100", traits: {"smithy.api#enumValue" => "a100"}))
    AcceleratorName.add_member(:inferentia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFERENTIA", traits: {"smithy.api#enumValue" => "inferentia"}))
    AcceleratorName.add_member(:k520, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "K520", traits: {"smithy.api#enumValue" => "k520"}))
    AcceleratorName.add_member(:k80, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "K80", traits: {"smithy.api#enumValue" => "k80"}))
    AcceleratorName.add_member(:m60, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "M60", traits: {"smithy.api#enumValue" => "m60"}))
    AcceleratorName.add_member(:radeon_pro_v520, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RADEON_PRO_V520", traits: {"smithy.api#enumValue" => "radeon-pro-v520"}))
    AcceleratorName.add_member(:t4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T4", traits: {"smithy.api#enumValue" => "t4"}))
    AcceleratorName.add_member(:vu9_p, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VU9P", traits: {"smithy.api#enumValue" => "vu9p"}))
    AcceleratorName.add_member(:v100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V100", traits: {"smithy.api#enumValue" => "v100"}))
    AcceleratorName.add_member(:a10_g, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "A10G", traits: {"smithy.api#enumValue" => "a10g"}))
    AcceleratorName.add_member(:h100, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "H100", traits: {"smithy.api#enumValue" => "h100"}))
    AcceleratorName.add_member(:t4_g, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "T4G", traits: {"smithy.api#enumValue" => "t4g"}))
    AcceleratorNameSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorName, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    AcceleratorTotalMemoryMiBRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "min"))
    AcceleratorTotalMemoryMiBRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "max"))
    AcceleratorTotalMemoryMiBRequest.type = Types::AcceleratorTotalMemoryMiBRequest
    AcceleratorType.add_member(:gpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU", traits: {"smithy.api#enumValue" => "gpu"}))
    AcceleratorType.add_member(:fpga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FPGA", traits: {"smithy.api#enumValue" => "fpga"}))
    AcceleratorType.add_member(:inference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFERENCE", traits: {"smithy.api#enumValue" => "inference"}))
    AcceleratorTypeSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorType, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessType.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    AccessType.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    AdvancedConfiguration.add_member(:alternate_target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "alternateTargetGroupArn"))
    AdvancedConfiguration.add_member(:production_listener_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "productionListenerRule"))
    AdvancedConfiguration.add_member(:test_listener_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "testListenerRule"))
    AdvancedConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleArn"))
    AdvancedConfiguration.type = Types::AdvancedConfiguration
    AgentUpdateStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    AgentUpdateStatus.add_member(:staging, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STAGING", traits: {"smithy.api#enumValue" => "STAGING"}))
    AgentUpdateStatus.add_member(:staged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STAGED", traits: {"smithy.api#enumValue" => "STAGED"}))
    AgentUpdateStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    AgentUpdateStatus.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    AgentUpdateStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    AllowedInstanceTypeSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedInstanceType, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    ApplicationProtocol.add_member(:http, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP", traits: {"smithy.api#enumValue" => "http"}))
    ApplicationProtocol.add_member(:http2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP2", traits: {"smithy.api#enumValue" => "http2"}))
    ApplicationProtocol.add_member(:grpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GRPC", traits: {"smithy.api#enumValue" => "grpc"}))
    AssignPublicIp.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AssignPublicIp.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    Attachment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    Attachment.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    Attachment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    Attachment.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentDetails, name: "details"))
    Attachment.type = Types::Attachment
    AttachmentDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuePair, name: "member"))
    AttachmentStateChange.add_member(:attachment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "attachmentArn", traits: {"smithy.api#required" => {}}))
    AttachmentStateChange.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status", traits: {"smithy.api#required" => {}}))
    AttachmentStateChange.type = Types::AttachmentStateChange
    AttachmentStateChanges.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStateChange, name: "member"))
    Attachments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachment, name: "member"))
    Attribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    Attribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    Attribute.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "targetType"))
    Attribute.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetId"))
    Attribute.type = Types::Attribute
    AttributeLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    AttributeLimitExceededException.type = Types::AttributeLimitExceededException
    Attributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Attribute, name: "member"))
    AutoRepairActionsStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutoRepairActionsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutoRepairConfiguration.add_member(:actions_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRepairActionsStatus, name: "actionsStatus"))
    AutoRepairConfiguration.type = Types::AutoRepairConfiguration
    AutoScalingGroupProvider.add_member(:auto_scaling_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "autoScalingGroupArn", traits: {"smithy.api#required" => {}}))
    AutoScalingGroupProvider.add_member(:managed_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScaling, name: "managedScaling"))
    AutoScalingGroupProvider.add_member(:managed_termination_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedTerminationProtection, name: "managedTerminationProtection"))
    AutoScalingGroupProvider.add_member(:managed_draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDraining, name: "managedDraining"))
    AutoScalingGroupProvider.type = Types::AutoScalingGroupProvider
    AutoScalingGroupProviderUpdate.add_member(:managed_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScaling, name: "managedScaling"))
    AutoScalingGroupProviderUpdate.add_member(:managed_termination_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedTerminationProtection, name: "managedTerminationProtection"))
    AutoScalingGroupProviderUpdate.add_member(:managed_draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedDraining, name: "managedDraining"))
    AutoScalingGroupProviderUpdate.type = Types::AutoScalingGroupProviderUpdate
    AvailabilityZoneRebalancing.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    AvailabilityZoneRebalancing.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    AwsVpcConfiguration.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnets", traits: {"smithy.api#required" => {}}))
    AwsVpcConfiguration.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "securityGroups"))
    AwsVpcConfiguration.add_member(:assign_public_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: AssignPublicIp, name: "assignPublicIp"))
    AwsVpcConfiguration.type = Types::AwsVpcConfiguration
    BareMetal.add_member(:included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUDED", traits: {"smithy.api#enumValue" => "included"}))
    BareMetal.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    BareMetal.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED", traits: {"smithy.api#enumValue" => "excluded"}))
    BaselineEbsBandwidthMbpsRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "min"))
    BaselineEbsBandwidthMbpsRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "max"))
    BaselineEbsBandwidthMbpsRequest.type = Types::BaselineEbsBandwidthMbpsRequest
    BlockedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    BlockedException.type = Types::BlockedException
    BurstablePerformance.add_member(:included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUDED", traits: {"smithy.api#enumValue" => "included"}))
    BurstablePerformance.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    BurstablePerformance.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED", traits: {"smithy.api#enumValue" => "excluded"}))
    CPUArchitecture.add_member(:x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "X86_64", traits: {"smithy.api#enumValue" => "X86_64"}))
    CPUArchitecture.add_member(:arm64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARM64", traits: {"smithy.api#enumValue" => "ARM64"}))
    CanaryConfiguration.add_member(:canary_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "canaryPercent", traits: {"smithy.api#default" => nil}))
    CanaryConfiguration.add_member(:canary_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "canaryBakeTimeInMinutes", traits: {"smithy.api#default" => nil}))
    CanaryConfiguration.type = Types::CanaryConfiguration
    CapacityOptionType.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    CapacityOptionType.add_member(:spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT", traits: {"smithy.api#enumValue" => "SPOT"}))
    CapacityOptionType.add_member(:reserved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESERVED", traits: {"smithy.api#enumValue" => "RESERVED"}))
    CapacityProvider.add_member(:capacity_provider_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityProviderArn"))
    CapacityProvider.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    CapacityProvider.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    CapacityProvider.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStatus, name: "status"))
    CapacityProvider.add_member(:auto_scaling_group_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupProvider, name: "autoScalingGroupProvider"))
    CapacityProvider.add_member(:managed_instances_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesProvider, name: "managedInstancesProvider"))
    CapacityProvider.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderUpdateStatus, name: "updateStatus"))
    CapacityProvider.add_member(:update_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "updateStatusReason"))
    CapacityProvider.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CapacityProvider.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderType, name: "type"))
    CapacityProvider.type = Types::CapacityProvider
    CapacityProviderField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    CapacityProviderFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderField, name: "member"))
    CapacityProviderStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    CapacityProviderStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    CapacityProviderStatus.add_member(:deprovisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPROVISIONING", traits: {"smithy.api#enumValue" => "DEPROVISIONING"}))
    CapacityProviderStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    CapacityProviderStrategy.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItem, name: "member"))
    CapacityProviderStrategyItem.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityProvider", traits: {"smithy.api#required" => {}}))
    CapacityProviderStrategyItem.add_member(:weight, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItemWeight, name: "weight", traits: {"smithy.api#default" => 0}))
    CapacityProviderStrategyItem.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategyItemBase, name: "base", traits: {"smithy.api#default" => 0}))
    CapacityProviderStrategyItem.type = Types::CapacityProviderStrategyItem
    CapacityProviderType.add_member(:ec2_autoscaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2_AUTOSCALING", traits: {"smithy.api#enumValue" => "EC2_AUTOSCALING"}))
    CapacityProviderType.add_member(:managed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_INSTANCES", traits: {"smithy.api#enumValue" => "MANAGED_INSTANCES"}))
    CapacityProviderType.add_member(:fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE", traits: {"smithy.api#enumValue" => "FARGATE"}))
    CapacityProviderType.add_member(:fargate_spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE_SPOT", traits: {"smithy.api#enumValue" => "FARGATE_SPOT"}))
    CapacityProviderUpdateStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    CapacityProviderUpdateStatus.add_member(:create_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_COMPLETE", traits: {"smithy.api#enumValue" => "CREATE_COMPLETE"}))
    CapacityProviderUpdateStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    CapacityProviderUpdateStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    CapacityProviderUpdateStatus.add_member(:delete_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_COMPLETE", traits: {"smithy.api#enumValue" => "DELETE_COMPLETE"}))
    CapacityProviderUpdateStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    CapacityProviderUpdateStatus.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    CapacityProviderUpdateStatus.add_member(:update_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    CapacityProviderUpdateStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    CapacityProviders.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, name: "member"))
    CapacityReservationPreference.add_member(:reservations_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESERVATIONS_ONLY", traits: {"smithy.api#enumValue" => "RESERVATIONS_ONLY"}))
    CapacityReservationPreference.add_member(:reservations_first, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESERVATIONS_FIRST", traits: {"smithy.api#enumValue" => "RESERVATIONS_FIRST"}))
    CapacityReservationPreference.add_member(:reservations_excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESERVATIONS_EXCLUDED", traits: {"smithy.api#enumValue" => "RESERVATIONS_EXCLUDED"}))
    CapacityReservationRequest.add_member(:reservation_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reservationGroupArn"))
    CapacityReservationRequest.add_member(:reservation_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationPreference, name: "reservationPreference"))
    CapacityReservationRequest.type = Types::CapacityReservationRequest
    ClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ClientException.type = Types::ClientException
    Cluster.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    Cluster.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    Cluster.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterConfiguration, name: "configuration"))
    Cluster.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    Cluster.add_member(:registered_container_instances_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "registeredContainerInstancesCount", traits: {"smithy.api#default" => 0}))
    Cluster.add_member(:running_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "runningTasksCount", traits: {"smithy.api#default" => 0}))
    Cluster.add_member(:pending_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "pendingTasksCount", traits: {"smithy.api#default" => 0}))
    Cluster.add_member(:active_services_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "activeServicesCount", traits: {"smithy.api#default" => 0}))
    Cluster.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: Statistics, name: "statistics"))
    Cluster.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    Cluster.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSettings, name: "settings"))
    Cluster.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "capacityProviders"))
    Cluster.add_member(:default_capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "defaultCapacityProviderStrategy"))
    Cluster.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachments, name: "attachments"))
    Cluster.add_member(:attachments_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "attachmentsStatus"))
    Cluster.add_member(:service_connect_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterServiceConnectDefaults, name: "serviceConnectDefaults"))
    Cluster.type = Types::Cluster
    ClusterConfiguration.add_member(:execute_command_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecuteCommandConfiguration, name: "executeCommandConfiguration"))
    ClusterConfiguration.add_member(:managed_storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedStorageConfiguration, name: "managedStorageConfiguration"))
    ClusterConfiguration.type = Types::ClusterConfiguration
    ClusterContainsCapacityProviderException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ClusterContainsCapacityProviderException.type = Types::ClusterContainsCapacityProviderException
    ClusterContainsContainerInstancesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ClusterContainsContainerInstancesException.type = Types::ClusterContainsContainerInstancesException
    ClusterContainsServicesException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ClusterContainsServicesException.type = Types::ClusterContainsServicesException
    ClusterContainsTasksException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ClusterContainsTasksException.type = Types::ClusterContainsTasksException
    ClusterField.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTACHMENTS", traits: {"smithy.api#enumValue" => "ATTACHMENTS"}))
    ClusterField.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIGURATIONS", traits: {"smithy.api#enumValue" => "CONFIGURATIONS"}))
    ClusterField.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SETTINGS", traits: {"smithy.api#enumValue" => "SETTINGS"}))
    ClusterField.add_member(:statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATISTICS", traits: {"smithy.api#enumValue" => "STATISTICS"}))
    ClusterField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    ClusterFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterField, name: "member"))
    ClusterNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ClusterNotFoundException.type = Types::ClusterNotFoundException
    ClusterServiceConnectDefaults.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace"))
    ClusterServiceConnectDefaults.type = Types::ClusterServiceConnectDefaults
    ClusterServiceConnectDefaultsRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace", traits: {"smithy.api#required" => {}}))
    ClusterServiceConnectDefaultsRequest.type = Types::ClusterServiceConnectDefaultsRequest
    ClusterSetting.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSettingName, name: "name"))
    ClusterSetting.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    ClusterSetting.type = Types::ClusterSetting
    ClusterSettingName.add_member(:container_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINER_INSIGHTS", traits: {"smithy.api#enumValue" => "containerInsights"}))
    ClusterSettings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSetting, name: "member"))
    Clusters.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "member"))
    Compatibility.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    Compatibility.add_member(:fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE", traits: {"smithy.api#enumValue" => "FARGATE"}))
    Compatibility.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    Compatibility.add_member(:managed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_INSTANCES", traits: {"smithy.api#enumValue" => "MANAGED_INSTANCES"}))
    CompatibilityList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Compatibility, name: "member"))
    ConflictException.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIds, name: "resourceIds"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ConflictException.type = Types::ConflictException
    Connectivity.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "CONNECTED"}))
    Connectivity.add_member(:disconnected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISCONNECTED", traits: {"smithy.api#enumValue" => "DISCONNECTED"}))
    Container.add_member(:container_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerArn"))
    Container.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskArn"))
    Container.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    Container.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image"))
    Container.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "imageDigest"))
    Container.add_member(:runtime_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "runtimeId"))
    Container.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lastStatus"))
    Container.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "exitCode"))
    Container.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    Container.add_member(:network_bindings, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkBindings, name: "networkBindings"))
    Container.add_member(:network_interfaces, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaces, name: "networkInterfaces"))
    Container.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthStatus, name: "healthStatus"))
    Container.add_member(:managed_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgents, name: "managedAgents"))
    Container.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpu"))
    Container.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "memory"))
    Container.add_member(:memory_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "memoryReservation"))
    Container.add_member(:gpu_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: GpuIds, name: "gpuIds"))
    Container.add_member(:neuron_device_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: NeuronDeviceIds, name: "neuronDeviceIds"))
    Container.type = Types::Container
    ContainerCondition.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START", traits: {"smithy.api#enumValue" => "START"}))
    ContainerCondition.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ContainerCondition.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ContainerCondition.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    ContainerDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ContainerDefinition.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image"))
    ContainerDefinition.add_member(:repository_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCredentials, name: "repositoryCredentials"))
    ContainerDefinition.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "cpu", traits: {"smithy.api#default" => 0}))
    ContainerDefinition.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "memory"))
    ContainerDefinition.add_member(:memory_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "memoryReservation"))
    ContainerDefinition.add_member(:links, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "links"))
    ContainerDefinition.add_member(:port_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: PortMappingList, name: "portMappings"))
    ContainerDefinition.add_member(:essential, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "essential"))
    ContainerDefinition.add_member(:restart_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRestartPolicy, name: "restartPolicy"))
    ContainerDefinition.add_member(:entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "entryPoint"))
    ContainerDefinition.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    ContainerDefinition.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environment"))
    ContainerDefinition.add_member(:environment_files, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentFiles, name: "environmentFiles"))
    ContainerDefinition.add_member(:mount_points, ::Smithy::Schema::Shapes::MemberShape.new(target: MountPointList, name: "mountPoints"))
    ContainerDefinition.add_member(:volumes_from, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeFromList, name: "volumesFrom"))
    ContainerDefinition.add_member(:linux_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LinuxParameters, name: "linuxParameters"))
    ContainerDefinition.add_member(:secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretList, name: "secrets"))
    ContainerDefinition.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDependencies, name: "dependsOn"))
    ContainerDefinition.add_member(:start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "startTimeout"))
    ContainerDefinition.add_member(:stop_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "stopTimeout"))
    ContainerDefinition.add_member(:version_consistency, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionConsistency, name: "versionConsistency"))
    ContainerDefinition.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "hostname"))
    ContainerDefinition.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "user"))
    ContainerDefinition.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workingDirectory"))
    ContainerDefinition.add_member(:disable_networking, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "disableNetworking"))
    ContainerDefinition.add_member(:privileged, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "privileged"))
    ContainerDefinition.add_member(:readonly_root_filesystem, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "readonlyRootFilesystem"))
    ContainerDefinition.add_member(:dns_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dnsServers"))
    ContainerDefinition.add_member(:dns_search_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dnsSearchDomains"))
    ContainerDefinition.add_member(:extra_hosts, ::Smithy::Schema::Shapes::MemberShape.new(target: HostEntryList, name: "extraHosts"))
    ContainerDefinition.add_member(:docker_security_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "dockerSecurityOptions"))
    ContainerDefinition.add_member(:interactive, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "interactive"))
    ContainerDefinition.add_member(:pseudo_terminal, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "pseudoTerminal"))
    ContainerDefinition.add_member(:docker_labels, ::Smithy::Schema::Shapes::MemberShape.new(target: DockerLabelsMap, name: "dockerLabels"))
    ContainerDefinition.add_member(:ulimits, ::Smithy::Schema::Shapes::MemberShape.new(target: UlimitList, name: "ulimits"))
    ContainerDefinition.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration"))
    ContainerDefinition.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheck, name: "healthCheck"))
    ContainerDefinition.add_member(:system_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemControls, name: "systemControls"))
    ContainerDefinition.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirements, name: "resourceRequirements"))
    ContainerDefinition.add_member(:firelens_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FirelensConfiguration, name: "firelensConfiguration"))
    ContainerDefinition.add_member(:credential_specs, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "credentialSpecs"))
    ContainerDefinition.type = Types::ContainerDefinition
    ContainerDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDefinition, name: "member"))
    ContainerDependencies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDependency, name: "member"))
    ContainerDependency.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName", traits: {"smithy.api#required" => {}}))
    ContainerDependency.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerCondition, name: "condition", traits: {"smithy.api#required" => {}}))
    ContainerDependency.type = Types::ContainerDependency
    ContainerImage.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName"))
    ContainerImage.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "imageDigest"))
    ContainerImage.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image"))
    ContainerImage.type = Types::ContainerImage
    ContainerImages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerImage, name: "member"))
    ContainerInstance.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerInstanceArn"))
    ContainerInstance.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ec2InstanceId"))
    ContainerInstance.add_member(:capacity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityProviderName"))
    ContainerInstance.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "version", traits: {"smithy.api#default" => 0}))
    ContainerInstance.add_member(:version_info, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionInfo, name: "versionInfo"))
    ContainerInstance.add_member(:remaining_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, name: "remainingResources"))
    ContainerInstance.add_member(:registered_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, name: "registeredResources"))
    ContainerInstance.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    ContainerInstance.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ContainerInstance.add_member(:agent_connected, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "agentConnected", traits: {"smithy.api#default" => false}))
    ContainerInstance.add_member(:running_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "runningTasksCount", traits: {"smithy.api#default" => 0}))
    ContainerInstance.add_member(:pending_tasks_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "pendingTasksCount", traits: {"smithy.api#default" => 0}))
    ContainerInstance.add_member(:agent_update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentUpdateStatus, name: "agentUpdateStatus"))
    ContainerInstance.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "attributes"))
    ContainerInstance.add_member(:registered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "registeredAt"))
    ContainerInstance.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachments, name: "attachments"))
    ContainerInstance.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ContainerInstance.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstanceHealthStatus, name: "healthStatus"))
    ContainerInstance.type = Types::ContainerInstance
    ContainerInstanceField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    ContainerInstanceField.add_member(:container_instance_health, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINER_INSTANCE_HEALTH", traits: {"smithy.api#enumValue" => "CONTAINER_INSTANCE_HEALTH"}))
    ContainerInstanceFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstanceField, name: "member"))
    ContainerInstanceHealthStatus.add_member(:overall_status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthCheckState, name: "overallStatus"))
    ContainerInstanceHealthStatus.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthCheckResultList, name: "details"))
    ContainerInstanceHealthStatus.type = Types::ContainerInstanceHealthStatus
    ContainerInstanceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ContainerInstanceStatus.add_member(:draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRAINING", traits: {"smithy.api#enumValue" => "DRAINING"}))
    ContainerInstanceStatus.add_member(:registering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTERING", traits: {"smithy.api#enumValue" => "REGISTERING"}))
    ContainerInstanceStatus.add_member(:deregistering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEREGISTERING", traits: {"smithy.api#enumValue" => "DEREGISTERING"}))
    ContainerInstanceStatus.add_member(:registration_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REGISTRATION_FAILED", traits: {"smithy.api#enumValue" => "REGISTRATION_FAILED"}))
    ContainerInstances.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstance, name: "member"))
    ContainerOverride.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ContainerOverride.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    ContainerOverride.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environment"))
    ContainerOverride.add_member(:environment_files, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentFiles, name: "environmentFiles"))
    ContainerOverride.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "cpu"))
    ContainerOverride.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "memory"))
    ContainerOverride.add_member(:memory_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "memoryReservation"))
    ContainerOverride.add_member(:resource_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirements, name: "resourceRequirements"))
    ContainerOverride.type = Types::ContainerOverride
    ContainerOverrides.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOverride, name: "member"))
    ContainerRestartPolicy.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    ContainerRestartPolicy.add_member(:ignored_exit_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegerList, name: "ignoredExitCodes"))
    ContainerRestartPolicy.add_member(:restart_attempt_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "restartAttemptPeriod"))
    ContainerRestartPolicy.type = Types::ContainerRestartPolicy
    ContainerStateChange.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName"))
    ContainerStateChange.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "imageDigest"))
    ContainerStateChange.add_member(:runtime_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "runtimeId"))
    ContainerStateChange.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "exitCode"))
    ContainerStateChange.add_member(:network_bindings, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkBindings, name: "networkBindings"))
    ContainerStateChange.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    ContainerStateChange.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    ContainerStateChange.type = Types::ContainerStateChange
    ContainerStateChanges.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerStateChange, name: "member"))
    Containers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Container, name: "member"))
    ContinueServiceDeploymentRequest.add_member(:service_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceDeploymentArn", traits: {"smithy.api#required" => {}}))
    ContinueServiceDeploymentRequest.add_member(:hook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "hookId", traits: {"smithy.api#required" => {}}))
    ContinueServiceDeploymentRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookAction, name: "action"))
    ContinueServiceDeploymentRequest.type = Types::ContinueServiceDeploymentRequest
    ContinueServiceDeploymentResponse.add_member(:service_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceDeploymentArn"))
    ContinueServiceDeploymentResponse.type = Types::ContinueServiceDeploymentResponse
    CpuManufacturer.add_member(:intel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEL", traits: {"smithy.api#enumValue" => "intel"}))
    CpuManufacturer.add_member(:amd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMD", traits: {"smithy.api#enumValue" => "amd"}))
    CpuManufacturer.add_member(:amazon_web_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_WEB_SERVICES", traits: {"smithy.api#enumValue" => "amazon-web-services"}))
    CpuManufacturerSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuManufacturer, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    CreateCapacityProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CapacityProviderName"}))
    CreateCapacityProviderRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    CreateCapacityProviderRequest.add_member(:auto_scaling_group_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupProvider, name: "autoScalingGroupProvider"))
    CreateCapacityProviderRequest.add_member(:managed_instances_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateManagedInstancesProviderConfiguration, name: "managedInstancesProvider"))
    CreateCapacityProviderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateCapacityProviderRequest.type = Types::CreateCapacityProviderRequest
    CreateCapacityProviderResponse.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, name: "capacityProvider", traits: {"smithy.api#notProperty" => {}}))
    CreateCapacityProviderResponse.type = Types::CreateCapacityProviderResponse
    CreateClusterRequest.add_member(:cluster_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterName"))
    CreateClusterRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateClusterRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSettings, name: "settings"))
    CreateClusterRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterConfiguration, name: "configuration"))
    CreateClusterRequest.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "capacityProviders"))
    CreateClusterRequest.add_member(:default_capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "defaultCapacityProviderStrategy"))
    CreateClusterRequest.add_member(:service_connect_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterServiceConnectDefaultsRequest, name: "serviceConnectDefaults"))
    CreateClusterRequest.type = Types::CreateClusterRequest
    CreateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster", traits: {"smithy.api#notProperty" => {}}))
    CreateClusterResponse.type = Types::CreateClusterResponse
    CreateDaemonRequest.add_member(:daemon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonName", traits: {"smithy.api#required" => {}}))
    CreateDaemonRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    CreateDaemonRequest.add_member(:daemon_task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonTaskDefinitionArn", traits: {"smithy.api#required" => {}}))
    CreateDaemonRequest.add_member(:capacity_provider_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "capacityProviderArns", traits: {"smithy.api#required" => {}}))
    CreateDaemonRequest.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentConfiguration, name: "deploymentConfiguration"))
    CreateDaemonRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateDaemonRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonPropagateTags, name: "propagateTags"))
    CreateDaemonRequest.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableECSManagedTags", traits: {"smithy.api#default" => false}))
    CreateDaemonRequest.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    CreateDaemonRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientToken"))
    CreateDaemonRequest.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "critical"))
    CreateDaemonRequest.type = Types::CreateDaemonRequest
    CreateDaemonResponse.add_member(:daemon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonArn", traits: {"smithy.api#notProperty" => {}}))
    CreateDaemonResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonStatus, name: "status", traits: {"smithy.api#notProperty" => {}}))
    CreateDaemonResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#notProperty" => {}}))
    CreateDaemonResponse.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentArn", traits: {"smithy.api#notProperty" => {}}))
    CreateDaemonResponse.type = Types::CreateDaemonResponse
    CreateExpressGatewayServiceRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    CreateExpressGatewayServiceRequest.add_member(:infrastructure_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "infrastructureRoleArn", traits: {"smithy.api#required" => {}}))
    CreateExpressGatewayServiceRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceName"))
    CreateExpressGatewayServiceRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    CreateExpressGatewayServiceRequest.add_member(:health_check_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "healthCheckPath"))
    CreateExpressGatewayServiceRequest.add_member(:primary_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayContainer, name: "primaryContainer"))
    CreateExpressGatewayServiceRequest.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskRoleArn"))
    CreateExpressGatewayServiceRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceNetworkConfiguration, name: "networkConfiguration"))
    CreateExpressGatewayServiceRequest.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpu"))
    CreateExpressGatewayServiceRequest.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "memory"))
    CreateExpressGatewayServiceRequest.add_member(:cpu_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressCpuArchitecture, name: "cpuArchitecture"))
    CreateExpressGatewayServiceRequest.add_member(:scaling_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayScalingTarget, name: "scalingTarget"))
    CreateExpressGatewayServiceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateExpressGatewayServiceRequest.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinitionArn"))
    CreateExpressGatewayServiceRequest.type = Types::CreateExpressGatewayServiceRequest
    CreateExpressGatewayServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSExpressGatewayService, name: "service", traits: {"smithy.api#notProperty" => {}}))
    CreateExpressGatewayServiceResponse.type = Types::CreateExpressGatewayServiceResponse
    CreateManagedInstancesProviderConfiguration.add_member(:infrastructure_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "infrastructureRoleArn", traits: {"smithy.api#required" => {}}))
    CreateManagedInstancesProviderConfiguration.add_member(:instance_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceLaunchTemplate, name: "instanceLaunchTemplate", traits: {"smithy.api#required" => {}}))
    CreateManagedInstancesProviderConfiguration.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateMITags, name: "propagateTags"))
    CreateManagedInstancesProviderConfiguration.add_member(:infrastructure_optimization, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureOptimization, name: "infrastructureOptimization"))
    CreateManagedInstancesProviderConfiguration.add_member(:auto_repair_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRepairConfiguration, name: "autoRepairConfiguration"))
    CreateManagedInstancesProviderConfiguration.type = Types::CreateManagedInstancesProviderConfiguration
    CreateServiceRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    CreateServiceRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceName", traits: {"smithy.api#required" => {}}))
    CreateServiceRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinition"))
    CreateServiceRequest.add_member(:availability_zone_rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneRebalancing, name: "availabilityZoneRebalancing"))
    CreateServiceRequest.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, name: "loadBalancers"))
    CreateServiceRequest.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, name: "serviceRegistries"))
    CreateServiceRequest.add_member(:desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "desiredCount"))
    CreateServiceRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientToken"))
    CreateServiceRequest.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "launchType"))
    CreateServiceRequest.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "capacityProviderStrategy"))
    CreateServiceRequest.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    CreateServiceRequest.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "role"))
    CreateServiceRequest.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, name: "deploymentConfiguration"))
    CreateServiceRequest.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraints, name: "placementConstraints"))
    CreateServiceRequest.add_member(:placement_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategies, name: "placementStrategy"))
    CreateServiceRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    CreateServiceRequest.add_member(:health_check_grace_period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "healthCheckGracePeriodSeconds"))
    CreateServiceRequest.add_member(:scheduling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingStrategy, name: "schedulingStrategy"))
    CreateServiceRequest.add_member(:deployment_controller, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentController, name: "deploymentController"))
    CreateServiceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateServiceRequest.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableECSManagedTags", traits: {"smithy.api#default" => false}))
    CreateServiceRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, name: "propagateTags"))
    CreateServiceRequest.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    CreateServiceRequest.add_member(:service_connect_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectConfiguration, name: "serviceConnectConfiguration"))
    CreateServiceRequest.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVolumeConfigurations, name: "volumeConfigurations"))
    CreateServiceRequest.add_member(:vpc_lattice_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLatticeConfigurations, name: "vpcLatticeConfigurations"))
    CreateServiceRequest.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "monitoring"))
    CreateServiceRequest.type = Types::CreateServiceRequest
    CreateServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service", traits: {"smithy.api#notProperty" => {}}))
    CreateServiceResponse.type = Types::CreateServiceResponse
    CreateTaskSetRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "service", traits: {"smithy.api#required" => {}}))
    CreateTaskSetRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster", traits: {"smithy.api#required" => {}}))
    CreateTaskSetRequest.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "externalId"))
    CreateTaskSetRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinition", traits: {"smithy.api#required" => {}}))
    CreateTaskSetRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    CreateTaskSetRequest.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, name: "loadBalancers"))
    CreateTaskSetRequest.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, name: "serviceRegistries"))
    CreateTaskSetRequest.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "launchType"))
    CreateTaskSetRequest.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "capacityProviderStrategy"))
    CreateTaskSetRequest.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    CreateTaskSetRequest.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: Scale, name: "scale"))
    CreateTaskSetRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientToken"))
    CreateTaskSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    CreateTaskSetRequest.type = Types::CreateTaskSetRequest
    CreateTaskSetResponse.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSet, name: "taskSet", traits: {"smithy.api#notProperty" => {}}))
    CreateTaskSetResponse.type = Types::CreateTaskSetResponse
    CreatedAt.add_member(:before, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "before"))
    CreatedAt.add_member(:after, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "after"))
    CreatedAt.type = Types::CreatedAt
    DaemonAlarmConfiguration.add_member(:alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "alarmNames"))
    DaemonAlarmConfiguration.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enable", traits: {"smithy.api#default" => false}))
    DaemonAlarmConfiguration.type = Types::DaemonAlarmConfiguration
    DaemonCapacityProvider.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    DaemonCapacityProvider.add_member(:running_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "runningCount", traits: {"smithy.api#default" => 0}))
    DaemonCapacityProvider.add_member(:without_daemon_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "withoutDaemonCount", traits: {"smithy.api#default" => 0}))
    DaemonCapacityProvider.type = Types::DaemonCapacityProvider
    DaemonCapacityProviderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonCapacityProvider, name: "member"))
    DaemonCircuitBreaker.add_member(:failure_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "failureCount", traits: {"smithy.api#default" => 0}))
    DaemonCircuitBreaker.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentRollbackMonitorsStatus, name: "status"))
    DaemonCircuitBreaker.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "threshold", traits: {"smithy.api#default" => 0}))
    DaemonCircuitBreaker.type = Types::DaemonCircuitBreaker
    DaemonContainerDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DaemonContainerDefinition.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image", traits: {"smithy.api#required" => {}}))
    DaemonContainerDefinition.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "memory"))
    DaemonContainerDefinition.add_member(:memory_reservation, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "memoryReservation"))
    DaemonContainerDefinition.add_member(:repository_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCredentials, name: "repositoryCredentials"))
    DaemonContainerDefinition.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthCheck, name: "healthCheck"))
    DaemonContainerDefinition.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "cpu", traits: {"smithy.api#default" => 0}))
    DaemonContainerDefinition.add_member(:essential, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "essential"))
    DaemonContainerDefinition.add_member(:entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "entryPoint"))
    DaemonContainerDefinition.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    DaemonContainerDefinition.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "workingDirectory"))
    DaemonContainerDefinition.add_member(:environment_files, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentFiles, name: "environmentFiles"))
    DaemonContainerDefinition.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environment"))
    DaemonContainerDefinition.add_member(:secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretList, name: "secrets"))
    DaemonContainerDefinition.add_member(:readonly_root_filesystem, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "readonlyRootFilesystem"))
    DaemonContainerDefinition.add_member(:mount_points, ::Smithy::Schema::Shapes::MemberShape.new(target: MountPointList, name: "mountPoints"))
    DaemonContainerDefinition.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration"))
    DaemonContainerDefinition.add_member(:firelens_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FirelensConfiguration, name: "firelensConfiguration"))
    DaemonContainerDefinition.add_member(:privileged, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "privileged"))
    DaemonContainerDefinition.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "user"))
    DaemonContainerDefinition.add_member(:ulimits, ::Smithy::Schema::Shapes::MemberShape.new(target: UlimitList, name: "ulimits"))
    DaemonContainerDefinition.add_member(:linux_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonLinuxParameters, name: "linuxParameters"))
    DaemonContainerDefinition.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDependencies, name: "dependsOn"))
    DaemonContainerDefinition.add_member(:start_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "startTimeout"))
    DaemonContainerDefinition.add_member(:stop_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "stopTimeout"))
    DaemonContainerDefinition.add_member(:system_controls, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemControls, name: "systemControls"))
    DaemonContainerDefinition.add_member(:interactive, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "interactive"))
    DaemonContainerDefinition.add_member(:pseudo_terminal, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "pseudoTerminal"))
    DaemonContainerDefinition.add_member(:restart_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRestartPolicy, name: "restartPolicy"))
    DaemonContainerDefinition.type = Types::DaemonContainerDefinition
    DaemonContainerDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonContainerDefinition, name: "member"))
    DaemonContainerImage.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName"))
    DaemonContainerImage.add_member(:image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "imageDigest"))
    DaemonContainerImage.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image"))
    DaemonContainerImage.type = Types::DaemonContainerImage
    DaemonContainerImages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonContainerImage, name: "member"))
    DaemonDeployment.add_member(:daemon_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonDeploymentArn"))
    DaemonDeployment.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    DaemonDeployment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentStatus, name: "status"))
    DaemonDeployment.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    DaemonDeployment.add_member(:target_daemon_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentRevisionDetail, name: "targetDaemonRevision"))
    DaemonDeployment.add_member(:source_daemon_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentRevisionDetailList, name: "sourceDaemonRevisions"))
    DaemonDeployment.add_member(:circuit_breaker, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonCircuitBreaker, name: "circuitBreaker"))
    DaemonDeployment.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentAlarms, name: "alarms"))
    DaemonDeployment.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonRollback, name: "rollback"))
    DaemonDeployment.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentConfiguration, name: "deploymentConfiguration"))
    DaemonDeployment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    DaemonDeployment.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedAt"))
    DaemonDeployment.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stoppedAt"))
    DaemonDeployment.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "finishedAt"))
    DaemonDeployment.type = Types::DaemonDeployment
    DaemonDeploymentAlarms.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentRollbackMonitorsStatus, name: "status"))
    DaemonDeploymentAlarms.add_member(:alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "alarmNames"))
    DaemonDeploymentAlarms.add_member(:triggered_alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "triggeredAlarmNames"))
    DaemonDeploymentAlarms.type = Types::DaemonDeploymentAlarms
    DaemonDeploymentCapacityProvider.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    DaemonDeploymentCapacityProvider.add_member(:running_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "runningInstanceCount"))
    DaemonDeploymentCapacityProvider.add_member(:without_daemon_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "withoutDaemonInstanceCount"))
    DaemonDeploymentCapacityProvider.add_member(:draining_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "drainingInstanceCount"))
    DaemonDeploymentCapacityProvider.type = Types::DaemonDeploymentCapacityProvider
    DaemonDeploymentCapacityProviderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentCapacityProvider, name: "member"))
    DaemonDeploymentConfiguration.add_member(:drain_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDrainPercent, name: "drainPercent"))
    DaemonDeploymentConfiguration.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonAlarmConfiguration, name: "alarms"))
    DaemonDeploymentConfiguration.add_member(:bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "bakeTimeInMinutes", traits: {"smithy.api#default" => 0}))
    DaemonDeploymentConfiguration.type = Types::DaemonDeploymentConfiguration
    DaemonDeploymentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeployment, name: "member"))
    DaemonDeploymentRevisionDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    DaemonDeploymentRevisionDetail.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentCapacityProviderList, name: "capacityProviders"))
    DaemonDeploymentRevisionDetail.add_member(:total_running_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "totalRunningInstanceCount"))
    DaemonDeploymentRevisionDetail.add_member(:total_without_daemon_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "totalWithoutDaemonInstanceCount"))
    DaemonDeploymentRevisionDetail.add_member(:total_draining_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "totalDrainingInstanceCount"))
    DaemonDeploymentRevisionDetail.type = Types::DaemonDeploymentRevisionDetail
    DaemonDeploymentRevisionDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentRevisionDetail, name: "member"))
    DaemonDeploymentRollbackMonitorsStatus.add_member(:triggered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRIGGERED", traits: {"smithy.api#enumValue" => "TRIGGERED"}))
    DaemonDeploymentRollbackMonitorsStatus.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONITORING", traits: {"smithy.api#enumValue" => "MONITORING"}))
    DaemonDeploymentRollbackMonitorsStatus.add_member(:monitoring_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONITORING_COMPLETE", traits: {"smithy.api#enumValue" => "MONITORING_COMPLETE"}))
    DaemonDeploymentRollbackMonitorsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DaemonDeploymentStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DaemonDeploymentStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    DaemonDeploymentStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    DaemonDeploymentStatus.add_member(:stop_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_REQUESTED", traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    DaemonDeploymentStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DaemonDeploymentStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    DaemonDeploymentStatus.add_member(:rollback_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_SUCCESSFUL", traits: {"smithy.api#enumValue" => "ROLLBACK_SUCCESSFUL"}))
    DaemonDeploymentStatus.add_member(:rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "ROLLBACK_FAILED"}))
    DaemonDeploymentStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentStatus, name: "member"))
    DaemonDeploymentSummary.add_member(:daemon_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonDeploymentArn"))
    DaemonDeploymentSummary.add_member(:daemon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonArn"))
    DaemonDeploymentSummary.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    DaemonDeploymentSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentStatus, name: "status"))
    DaemonDeploymentSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    DaemonDeploymentSummary.add_member(:target_daemon_revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetDaemonRevisionArn"))
    DaemonDeploymentSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    DaemonDeploymentSummary.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedAt"))
    DaemonDeploymentSummary.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stoppedAt"))
    DaemonDeploymentSummary.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "finishedAt"))
    DaemonDeploymentSummary.type = Types::DaemonDeploymentSummary
    DaemonDeploymentSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentSummary, name: "member"))
    DaemonDetail.add_member(:daemon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonArn"))
    DaemonDetail.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    DaemonDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonStatus, name: "status"))
    DaemonDetail.add_member(:current_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonRevisionDetailList, name: "currentRevisions"))
    DaemonDetail.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentArn"))
    DaemonDetail.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    DaemonDetail.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    DaemonDetail.type = Types::DaemonDetail
    DaemonIpcMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    DaemonIpcMode.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "shared"}))
    DaemonLinuxParameters.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: KernelCapabilities, name: "capabilities"))
    DaemonLinuxParameters.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DevicesList, name: "devices"))
    DaemonLinuxParameters.add_member(:init_process_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "initProcessEnabled"))
    DaemonLinuxParameters.add_member(:tmpfs, ::Smithy::Schema::Shapes::MemberShape.new(target: TmpfsList, name: "tmpfs"))
    DaemonLinuxParameters.type = Types::DaemonLinuxParameters
    DaemonNotActiveException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    DaemonNotActiveException.type = Types::DaemonNotActiveException
    DaemonNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    DaemonNotFoundException.type = Types::DaemonNotFoundException
    DaemonPidMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    DaemonPidMode.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "shared"}))
    DaemonPropagateTags.add_member(:daemon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAEMON", traits: {"smithy.api#enumValue" => "DAEMON"}))
    DaemonPropagateTags.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    DaemonRevision.add_member(:daemon_revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonRevisionArn"))
    DaemonRevision.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    DaemonRevision.add_member(:daemon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonArn"))
    DaemonRevision.add_member(:daemon_task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonTaskDefinitionArn"))
    DaemonRevision.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    DaemonRevision.add_member(:container_images, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonContainerImages, name: "containerImages"))
    DaemonRevision.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonPropagateTags, name: "propagateTags"))
    DaemonRevision.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enableECSManagedTags"))
    DaemonRevision.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enableExecuteCommand"))
    DaemonRevision.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "critical"))
    DaemonRevision.type = Types::DaemonRevision
    DaemonRevisionDetail.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    DaemonRevisionDetail.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonCapacityProviderList, name: "capacityProviders"))
    DaemonRevisionDetail.add_member(:total_running_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "totalRunningCount", traits: {"smithy.api#default" => 0}))
    DaemonRevisionDetail.add_member(:total_without_daemon_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "totalWithoutDaemonCount", traits: {"smithy.api#default" => 0}))
    DaemonRevisionDetail.type = Types::DaemonRevisionDetail
    DaemonRevisionDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonRevisionDetail, name: "member"))
    DaemonRevisions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonRevision, name: "member"))
    DaemonRollback.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    DaemonRollback.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedAt"))
    DaemonRollback.add_member(:rollback_target_daemon_revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rollbackTargetDaemonRevisionArn"))
    DaemonRollback.add_member(:rollback_capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "rollbackCapacityProviders"))
    DaemonRollback.type = Types::DaemonRollback
    DaemonStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DaemonStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DaemonSummariesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonSummary, name: "member"))
    DaemonSummary.add_member(:daemon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonArn"))
    DaemonSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonStatus, name: "status"))
    DaemonSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    DaemonSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    DaemonSummary.type = Types::DaemonSummary
    DaemonTaskDefinition.add_member(:daemon_task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonTaskDefinitionArn"))
    DaemonTaskDefinition.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "family"))
    DaemonTaskDefinition.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "revision", traits: {"smithy.api#default" => 0}))
    DaemonTaskDefinition.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskRoleArn"))
    DaemonTaskDefinition.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    DaemonTaskDefinition.add_member(:container_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonContainerDefinitionList, name: "containerDefinitions"))
    DaemonTaskDefinition.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonVolumeList, name: "volumes"))
    DaemonTaskDefinition.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpu"))
    DaemonTaskDefinition.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "memory"))
    DaemonTaskDefinition.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonTaskDefinitionStatus, name: "status"))
    DaemonTaskDefinition.add_member(:registered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "registeredAt"))
    DaemonTaskDefinition.add_member(:delete_requested_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "deleteRequestedAt"))
    DaemonTaskDefinition.add_member(:registered_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "registeredBy"))
    DaemonTaskDefinition.add_member(:pid_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonPidMode, name: "pidMode"))
    DaemonTaskDefinition.add_member(:ipc_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonIpcMode, name: "ipcMode"))
    DaemonTaskDefinition.type = Types::DaemonTaskDefinition
    DaemonTaskDefinitionRevisionFilter.add_member(:last_registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_REGISTERED", traits: {"smithy.api#enumValue" => "LAST_REGISTERED"}))
    DaemonTaskDefinitionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DaemonTaskDefinitionStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DaemonTaskDefinitionStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DaemonTaskDefinitionStatusFilter.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DaemonTaskDefinitionStatusFilter.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    DaemonTaskDefinitionStatusFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    DaemonTaskDefinitionSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonTaskDefinitionSummary, name: "member"))
    DaemonTaskDefinitionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    DaemonTaskDefinitionSummary.add_member(:registered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "registeredAt"))
    DaemonTaskDefinitionSummary.add_member(:registered_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "registeredBy"))
    DaemonTaskDefinitionSummary.add_member(:delete_requested_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "deleteRequestedAt"))
    DaemonTaskDefinitionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonTaskDefinitionStatus, name: "status"))
    DaemonTaskDefinitionSummary.type = Types::DaemonTaskDefinitionSummary
    DaemonVolume.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    DaemonVolume.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: HostVolumeProperties, name: "host"))
    DaemonVolume.type = Types::DaemonVolume
    DaemonVolumeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonVolume, name: "member"))
    DeleteAccountSettingRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingName, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteAccountSettingRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn"))
    DeleteAccountSettingRequest.type = Types::DeleteAccountSettingRequest
    DeleteAccountSettingResponse.add_member(:setting, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "setting"))
    DeleteAccountSettingResponse.type = Types::DeleteAccountSettingResponse
    DeleteAttributesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    DeleteAttributesRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "attributes", traits: {"smithy.api#required" => {}}))
    DeleteAttributesRequest.type = Types::DeleteAttributesRequest
    DeleteAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "attributes", traits: {"smithy.api#notProperty" => {}}))
    DeleteAttributesResponse.type = Types::DeleteAttributesResponse
    DeleteCapacityProviderRequest.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityProvider", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CapacityProviderName"}))
    DeleteCapacityProviderRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    DeleteCapacityProviderRequest.type = Types::DeleteCapacityProviderRequest
    DeleteCapacityProviderResponse.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, name: "capacityProvider", traits: {"smithy.api#notProperty" => {}}))
    DeleteCapacityProviderResponse.type = Types::DeleteCapacityProviderResponse
    DeleteClusterRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ClusterName"}))
    DeleteClusterRequest.type = Types::DeleteClusterRequest
    DeleteClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster", traits: {"smithy.api#notProperty" => {}}))
    DeleteClusterResponse.type = Types::DeleteClusterResponse
    DeleteDaemonRequest.add_member(:daemon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonArn", traits: {"smithy.api#required" => {}}))
    DeleteDaemonRequest.type = Types::DeleteDaemonRequest
    DeleteDaemonResponse.add_member(:daemon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonArn", traits: {"smithy.api#notProperty" => {}}))
    DeleteDaemonResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonStatus, name: "status", traits: {"smithy.api#notProperty" => {}}))
    DeleteDaemonResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#notProperty" => {}}))
    DeleteDaemonResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#notProperty" => {}}))
    DeleteDaemonResponse.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentArn", traits: {"smithy.api#notProperty" => {}}))
    DeleteDaemonResponse.type = Types::DeleteDaemonResponse
    DeleteDaemonTaskDefinitionRequest.add_member(:daemon_task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonTaskDefinition", traits: {"smithy.api#required" => {}}))
    DeleteDaemonTaskDefinitionRequest.type = Types::DeleteDaemonTaskDefinitionRequest
    DeleteDaemonTaskDefinitionResponse.add_member(:daemon_task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonTaskDefinitionArn", traits: {"smithy.api#notProperty" => {}}))
    DeleteDaemonTaskDefinitionResponse.type = Types::DeleteDaemonTaskDefinitionResponse
    DeleteExpressGatewayServiceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DeleteExpressGatewayServiceRequest.type = Types::DeleteExpressGatewayServiceRequest
    DeleteExpressGatewayServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSExpressGatewayService, name: "service", traits: {"smithy.api#notProperty" => {}}))
    DeleteExpressGatewayServiceResponse.type = Types::DeleteExpressGatewayServiceResponse
    DeleteServiceRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    DeleteServiceRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "service", traits: {"smithy.api#required" => {}}))
    DeleteServiceRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "force"))
    DeleteServiceRequest.type = Types::DeleteServiceRequest
    DeleteServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service", traits: {"smithy.api#notProperty" => {}}))
    DeleteServiceResponse.type = Types::DeleteServiceResponse
    DeleteTaskDefinitionsRequest.add_member(:task_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "taskDefinitions", traits: {"smithy.api#required" => {}}))
    DeleteTaskDefinitionsRequest.type = Types::DeleteTaskDefinitionsRequest
    DeleteTaskDefinitionsResponse.add_member(:task_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionList, name: "taskDefinitions", traits: {"smithy.api#notProperty" => {}}))
    DeleteTaskDefinitionsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    DeleteTaskDefinitionsResponse.type = Types::DeleteTaskDefinitionsResponse
    DeleteTaskSetRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ClusterName"}))
    DeleteTaskSetRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "service", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ServiceName"}))
    DeleteTaskSetRequest.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskSet", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "TaskSetId"}))
    DeleteTaskSetRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "force"))
    DeleteTaskSetRequest.type = Types::DeleteTaskSetRequest
    DeleteTaskSetResponse.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSet, name: "taskSet", traits: {"smithy.api#notProperty" => {}}))
    DeleteTaskSetResponse.type = Types::DeleteTaskSetResponse
    Deployment.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    Deployment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    Deployment.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinition"))
    Deployment.add_member(:desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "desiredCount", traits: {"smithy.api#default" => 0}))
    Deployment.add_member(:pending_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "pendingCount", traits: {"smithy.api#default" => 0}))
    Deployment.add_member(:running_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "runningCount", traits: {"smithy.api#default" => 0}))
    Deployment.add_member(:failed_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "failedTasks", traits: {"smithy.api#default" => 0}))
    Deployment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    Deployment.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    Deployment.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "capacityProviderStrategy"))
    Deployment.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "launchType"))
    Deployment.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    Deployment.add_member(:platform_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformFamily"))
    Deployment.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    Deployment.add_member(:rollout_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentRolloutState, name: "rolloutState"))
    Deployment.add_member(:rollout_state_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rolloutStateReason"))
    Deployment.add_member(:service_connect_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectConfiguration, name: "serviceConnectConfiguration"))
    Deployment.add_member(:service_connect_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectServiceResourceList, name: "serviceConnectResources"))
    Deployment.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVolumeConfigurations, name: "volumeConfigurations"))
    Deployment.add_member(:fargate_ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEphemeralStorage, name: "fargateEphemeralStorage"))
    Deployment.add_member(:vpc_lattice_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLatticeConfigurations, name: "vpcLatticeConfigurations"))
    Deployment.type = Types::Deployment
    DeploymentAlarms.add_member(:alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "alarmNames", traits: {"smithy.api#required" => {}}))
    DeploymentAlarms.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "rollback", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeploymentAlarms.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enable", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeploymentAlarms.type = Types::DeploymentAlarms
    DeploymentCircuitBreaker.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enable", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeploymentCircuitBreaker.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "rollback", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeploymentCircuitBreaker.add_member(:reset_on_healthy_task, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "resetOnHealthyTask"))
    DeploymentCircuitBreaker.add_member(:threshold_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ThresholdConfiguration, name: "thresholdConfiguration"))
    DeploymentCircuitBreaker.type = Types::DeploymentCircuitBreaker
    DeploymentConfiguration.add_member(:deployment_circuit_breaker, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentCircuitBreaker, name: "deploymentCircuitBreaker"))
    DeploymentConfiguration.add_member(:maximum_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maximumPercent"))
    DeploymentConfiguration.add_member(:minimum_healthy_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "minimumHealthyPercent"))
    DeploymentConfiguration.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentAlarms, name: "alarms"))
    DeploymentConfiguration.add_member(:strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStrategy, name: "strategy"))
    DeploymentConfiguration.add_member(:bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "bakeTimeInMinutes"))
    DeploymentConfiguration.add_member(:lifecycle_hooks, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookList, name: "lifecycleHooks"))
    DeploymentConfiguration.add_member(:linear_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LinearConfiguration, name: "linearConfiguration"))
    DeploymentConfiguration.add_member(:canary_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CanaryConfiguration, name: "canaryConfiguration"))
    DeploymentConfiguration.add_member(:early_success_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEarlySuccessCriteria, name: "earlySuccessCriteria"))
    DeploymentConfiguration.type = Types::DeploymentConfiguration
    DeploymentController.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentControllerType, name: "type", traits: {"smithy.api#required" => {}}))
    DeploymentController.type = Types::DeploymentController
    DeploymentControllerType.add_member(:ecs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS", traits: {"smithy.api#enumValue" => "ECS"}))
    DeploymentControllerType.add_member(:code_deploy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODE_DEPLOY", traits: {"smithy.api#enumValue" => "CODE_DEPLOY"}))
    DeploymentControllerType.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    DeploymentEarlySuccessCriteria.add_member(:enable, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enable", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    DeploymentEarlySuccessCriteria.add_member(:healthy_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthyPercentInteger, name: "healthyPercent"))
    DeploymentEarlySuccessCriteria.add_member(:source_service_revision_cleanup, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionCleanup, name: "sourceServiceRevisionCleanup"))
    DeploymentEarlySuccessCriteria.type = Types::DeploymentEarlySuccessCriteria
    DeploymentEphemeralStorage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kmsKeyId"))
    DeploymentEphemeralStorage.type = Types::DeploymentEphemeralStorage
    DeploymentLifecycleHook.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookTargetType, name: "targetType"))
    DeploymentLifecycleHook.add_member(:hook_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "hookTargetArn"))
    DeploymentLifecycleHook.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "roleArn"))
    DeploymentLifecycleHook.add_member(:lifecycle_stages, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookStageList, name: "lifecycleStages"))
    DeploymentLifecycleHook.add_member(:hook_details, ::Smithy::Schema::Shapes::MemberShape.new(target: HookDetails, name: "hookDetails"))
    DeploymentLifecycleHook.add_member(:timeout_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookTimeoutConfiguration, name: "timeoutConfiguration"))
    DeploymentLifecycleHook.type = Types::DeploymentLifecycleHook
    DeploymentLifecycleHookAction.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK", traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    DeploymentLifecycleHookAction.add_member(:continue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    DeploymentLifecycleHookDetail.add_member(:hook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "hookId"))
    DeploymentLifecycleHookDetail.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookTargetType, name: "targetType"))
    DeploymentLifecycleHookDetail.add_member(:target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetArn"))
    DeploymentLifecycleHookDetail.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookStatus, name: "status"))
    DeploymentLifecycleHookDetail.add_member(:expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expiresAt"))
    DeploymentLifecycleHookDetail.add_member(:timeout_action, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookAction, name: "timeoutAction"))
    DeploymentLifecycleHookDetail.type = Types::DeploymentLifecycleHookDetail
    DeploymentLifecycleHookDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookDetail, name: "member"))
    DeploymentLifecycleHookList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHook, name: "member"))
    DeploymentLifecycleHookStage.add_member(:reconcile_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECONCILE_SERVICE", traits: {"smithy.api#enumValue" => "RECONCILE_SERVICE"}))
    DeploymentLifecycleHookStage.add_member(:pre_scale_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_SCALE_UP", traits: {"smithy.api#enumValue" => "PRE_SCALE_UP"}))
    DeploymentLifecycleHookStage.add_member(:post_scale_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_SCALE_UP", traits: {"smithy.api#enumValue" => "POST_SCALE_UP"}))
    DeploymentLifecycleHookStage.add_member(:test_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "TEST_TRAFFIC_SHIFT"}))
    DeploymentLifecycleHookStage.add_member(:post_test_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_TEST_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "POST_TEST_TRAFFIC_SHIFT"}))
    DeploymentLifecycleHookStage.add_member(:pre_production_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_PRODUCTION_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "PRE_PRODUCTION_TRAFFIC_SHIFT"}))
    DeploymentLifecycleHookStage.add_member(:production_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCTION_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "PRODUCTION_TRAFFIC_SHIFT"}))
    DeploymentLifecycleHookStage.add_member(:post_production_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_PRODUCTION_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "POST_PRODUCTION_TRAFFIC_SHIFT"}))
    DeploymentLifecycleHookStageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookStage, name: "member"))
    DeploymentLifecycleHookStatus.add_member(:awaiting_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWAITING_ACTION", traits: {"smithy.api#enumValue" => "AWAITING_ACTION"}))
    DeploymentLifecycleHookStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeploymentLifecycleHookStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    DeploymentLifecycleHookStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DeploymentLifecycleHookStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    DeploymentLifecycleHookTargetType.add_member(:aws_lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_LAMBDA", traits: {"smithy.api#enumValue" => "AWS_LAMBDA"}))
    DeploymentLifecycleHookTargetType.add_member(:pause, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSE", traits: {"smithy.api#enumValue" => "PAUSE"}))
    DeploymentLifecycleHookTimeoutConfiguration.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookDuration, name: "timeoutInMinutes"))
    DeploymentLifecycleHookTimeoutConfiguration.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookAction, name: "action"))
    DeploymentLifecycleHookTimeoutConfiguration.type = Types::DeploymentLifecycleHookTimeoutConfiguration
    DeploymentRolloutState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeploymentRolloutState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DeploymentRolloutState.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeploymentStrategy.add_member(:rolling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLING", traits: {"smithy.api#enumValue" => "ROLLING"}))
    DeploymentStrategy.add_member(:blue_green, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLUE_GREEN", traits: {"smithy.api#enumValue" => "BLUE_GREEN"}))
    DeploymentStrategy.add_member(:linear, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINEAR", traits: {"smithy.api#enumValue" => "LINEAR"}))
    DeploymentStrategy.add_member(:canary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANARY", traits: {"smithy.api#enumValue" => "CANARY"}))
    Deployments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Deployment, name: "member"))
    DeregisterContainerInstanceRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    DeregisterContainerInstanceRequest.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerInstance", traits: {"smithy.api#required" => {}}))
    DeregisterContainerInstanceRequest.add_member(:force, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "force"))
    DeregisterContainerInstanceRequest.type = Types::DeregisterContainerInstanceRequest
    DeregisterContainerInstanceResponse.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstance, name: "containerInstance", traits: {"smithy.api#notProperty" => {}}))
    DeregisterContainerInstanceResponse.type = Types::DeregisterContainerInstanceResponse
    DeregisterTaskDefinitionRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinition", traits: {"smithy.api#required" => {}}))
    DeregisterTaskDefinitionRequest.type = Types::DeregisterTaskDefinitionRequest
    DeregisterTaskDefinitionResponse.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinition, name: "taskDefinition"))
    DeregisterTaskDefinitionResponse.type = Types::DeregisterTaskDefinitionResponse
    DescribeCapacityProvidersRequest.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "capacityProviders"))
    DescribeCapacityProvidersRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    DescribeCapacityProvidersRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderFieldList, name: "include"))
    DescribeCapacityProvidersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    DescribeCapacityProvidersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeCapacityProvidersRequest.type = Types::DescribeCapacityProvidersRequest
    DescribeCapacityProvidersResponse.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviders, name: "capacityProviders", traits: {"smithy.api#notProperty" => {}}))
    DescribeCapacityProvidersResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    DescribeCapacityProvidersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    DescribeCapacityProvidersResponse.type = Types::DescribeCapacityProvidersResponse
    DescribeClustersRequest.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "clusters"))
    DescribeClustersRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterFieldList, name: "include"))
    DescribeClustersRequest.type = Types::DescribeClustersRequest
    DescribeClustersResponse.add_member(:clusters, ::Smithy::Schema::Shapes::MemberShape.new(target: Clusters, name: "clusters", traits: {"smithy.api#notProperty" => {}}))
    DescribeClustersResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    DescribeClustersResponse.type = Types::DescribeClustersResponse
    DescribeContainerInstancesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    DescribeContainerInstancesRequest.add_member(:container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "containerInstances", traits: {"smithy.api#required" => {}}))
    DescribeContainerInstancesRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstanceFieldList, name: "include"))
    DescribeContainerInstancesRequest.type = Types::DescribeContainerInstancesRequest
    DescribeContainerInstancesResponse.add_member(:container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstances, name: "containerInstances", traits: {"smithy.api#notProperty" => {}}))
    DescribeContainerInstancesResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    DescribeContainerInstancesResponse.type = Types::DescribeContainerInstancesResponse
    DescribeDaemonDeploymentsRequest.add_member(:daemon_deployment_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "daemonDeploymentArns", traits: {"smithy.api#required" => {}}))
    DescribeDaemonDeploymentsRequest.type = Types::DescribeDaemonDeploymentsRequest
    DescribeDaemonDeploymentsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    DescribeDaemonDeploymentsResponse.add_member(:daemon_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentList, name: "daemonDeployments", traits: {"smithy.api#notProperty" => {}}))
    DescribeDaemonDeploymentsResponse.type = Types::DescribeDaemonDeploymentsResponse
    DescribeDaemonRequest.add_member(:daemon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonArn", traits: {"smithy.api#required" => {}}))
    DescribeDaemonRequest.type = Types::DescribeDaemonRequest
    DescribeDaemonResponse.add_member(:daemon, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDetail, name: "daemon", traits: {"smithy.api#notProperty" => {}}))
    DescribeDaemonResponse.type = Types::DescribeDaemonResponse
    DescribeDaemonRevisionsRequest.add_member(:daemon_revision_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "daemonRevisionArns", traits: {"smithy.api#required" => {}}))
    DescribeDaemonRevisionsRequest.type = Types::DescribeDaemonRevisionsRequest
    DescribeDaemonRevisionsResponse.add_member(:daemon_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonRevisions, name: "daemonRevisions", traits: {"smithy.api#notProperty" => {}}))
    DescribeDaemonRevisionsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    DescribeDaemonRevisionsResponse.type = Types::DescribeDaemonRevisionsResponse
    DescribeDaemonTaskDefinitionRequest.add_member(:daemon_task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonTaskDefinition", traits: {"smithy.api#required" => {}}))
    DescribeDaemonTaskDefinitionRequest.type = Types::DescribeDaemonTaskDefinitionRequest
    DescribeDaemonTaskDefinitionResponse.add_member(:daemon_task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonTaskDefinition, name: "daemonTaskDefinition", traits: {"smithy.api#notProperty" => {}}))
    DescribeDaemonTaskDefinitionResponse.type = Types::DescribeDaemonTaskDefinitionResponse
    DescribeExpressGatewayServiceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    DescribeExpressGatewayServiceRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceIncludeList, name: "include"))
    DescribeExpressGatewayServiceRequest.type = Types::DescribeExpressGatewayServiceRequest
    DescribeExpressGatewayServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSExpressGatewayService, name: "service", traits: {"smithy.api#notProperty" => {}}))
    DescribeExpressGatewayServiceResponse.type = Types::DescribeExpressGatewayServiceResponse
    DescribeServiceDeploymentsRequest.add_member(:service_deployment_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "serviceDeploymentArns", traits: {"smithy.api#required" => {}}))
    DescribeServiceDeploymentsRequest.type = Types::DescribeServiceDeploymentsRequest
    DescribeServiceDeploymentsResponse.add_member(:service_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeployments, name: "serviceDeployments", traits: {"smithy.api#notProperty" => {}}))
    DescribeServiceDeploymentsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    DescribeServiceDeploymentsResponse.type = Types::DescribeServiceDeploymentsResponse
    DescribeServiceRevisionsRequest.add_member(:service_revision_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "serviceRevisionArns", traits: {"smithy.api#required" => {}}))
    DescribeServiceRevisionsRequest.type = Types::DescribeServiceRevisionsRequest
    DescribeServiceRevisionsResponse.add_member(:service_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisions, name: "serviceRevisions", traits: {"smithy.api#notProperty" => {}}))
    DescribeServiceRevisionsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    DescribeServiceRevisionsResponse.type = Types::DescribeServiceRevisionsResponse
    DescribeServicesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    DescribeServicesRequest.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "services", traits: {"smithy.api#required" => {}}))
    DescribeServicesRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceFieldList, name: "include"))
    DescribeServicesRequest.type = Types::DescribeServicesRequest
    DescribeServicesResponse.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: Services, name: "services", traits: {"smithy.api#notProperty" => {}}))
    DescribeServicesResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    DescribeServicesResponse.type = Types::DescribeServicesResponse
    DescribeTaskDefinitionRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinition", traits: {"smithy.api#required" => {}}))
    DescribeTaskDefinitionRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionFieldList, name: "include"))
    DescribeTaskDefinitionRequest.type = Types::DescribeTaskDefinitionRequest
    DescribeTaskDefinitionResponse.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinition, name: "taskDefinition"))
    DescribeTaskDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    DescribeTaskDefinitionResponse.type = Types::DescribeTaskDefinitionResponse
    DescribeTaskSetsRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster", traits: {"smithy.api#required" => {}}))
    DescribeTaskSetsRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "service", traits: {"smithy.api#required" => {}}))
    DescribeTaskSetsRequest.add_member(:task_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "taskSets"))
    DescribeTaskSetsRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSetFieldList, name: "include"))
    DescribeTaskSetsRequest.type = Types::DescribeTaskSetsRequest
    DescribeTaskSetsResponse.add_member(:task_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSets, name: "taskSets", traits: {"smithy.api#notProperty" => {}}))
    DescribeTaskSetsResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    DescribeTaskSetsResponse.type = Types::DescribeTaskSetsResponse
    DescribeTasksRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    DescribeTasksRequest.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "tasks", traits: {"smithy.api#required" => {}}))
    DescribeTasksRequest.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFieldList, name: "include"))
    DescribeTasksRequest.type = Types::DescribeTasksRequest
    DescribeTasksResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Tasks, name: "tasks", traits: {"smithy.api#notProperty" => {}}))
    DescribeTasksResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    DescribeTasksResponse.type = Types::DescribeTasksResponse
    DesiredStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    DesiredStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DesiredStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    Device.add_member(:host_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "hostPath", traits: {"smithy.api#required" => {}}))
    Device.add_member(:container_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerPath"))
    Device.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCgroupPermissions, name: "permissions"))
    Device.type = Types::Device
    DeviceCgroupPermission.add_member(:read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ", traits: {"smithy.api#enumValue" => "read"}))
    DeviceCgroupPermission.add_member(:write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE", traits: {"smithy.api#enumValue" => "write"}))
    DeviceCgroupPermission.add_member(:mknod, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MKNOD", traits: {"smithy.api#enumValue" => "mknod"}))
    DeviceCgroupPermissions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceCgroupPermission, name: "member"))
    DevicesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Device, name: "member"))
    DiscoverPollEndpointRequest.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerInstance"))
    DiscoverPollEndpointRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    DiscoverPollEndpointRequest.type = Types::DiscoverPollEndpointRequest
    DiscoverPollEndpointResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "endpoint"))
    DiscoverPollEndpointResponse.add_member(:telemetry_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "telemetryEndpoint"))
    DiscoverPollEndpointResponse.add_member(:service_connect_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceConnectEndpoint"))
    DiscoverPollEndpointResponse.type = Types::DiscoverPollEndpointResponse
    DockerLabelsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    DockerLabelsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    DockerVolumeConfiguration.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: Scope, name: "scope"))
    DockerVolumeConfiguration.add_member(:autoprovision, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "autoprovision"))
    DockerVolumeConfiguration.add_member(:driver, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "driver"))
    DockerVolumeConfiguration.add_member(:driver_opts, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "driverOpts"))
    DockerVolumeConfiguration.add_member(:labels, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "labels"))
    DockerVolumeConfiguration.type = Types::DockerVolumeConfiguration
    EBSResourceType.add_member(:volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VOLUME", traits: {"smithy.api#enumValue" => "volume"}))
    EBSTagSpecification.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    EBSTagSpecification.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    EBSTagSpecification.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, name: "propagateTags"))
    EBSTagSpecification.type = Types::EBSTagSpecification
    EBSTagSpecifications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSTagSpecification, name: "member"))
    ECSExpressGatewayService.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    ECSExpressGatewayService.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceName"))
    ECSExpressGatewayService.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceArn"))
    ECSExpressGatewayService.add_member(:infrastructure_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "infrastructureRoleArn"))
    ECSExpressGatewayService.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceStatus, name: "status"))
    ECSExpressGatewayService.add_member(:current_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "currentDeployment"))
    ECSExpressGatewayService.add_member(:active_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceConfigurations, name: "activeConfigurations"))
    ECSExpressGatewayService.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ECSExpressGatewayService.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ECSExpressGatewayService.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    ECSExpressGatewayService.type = Types::ECSExpressGatewayService
    ECSManagedResources.add_member(:ingress_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedIngressPaths, name: "ingressPaths"))
    ECSManagedResources.add_member(:auto_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAutoScaling, name: "autoScaling"))
    ECSManagedResources.add_member(:metric_alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedMetricAlarms, name: "metricAlarms"))
    ECSManagedResources.add_member(:service_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSecurityGroups, name: "serviceSecurityGroups"))
    ECSManagedResources.add_member(:log_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLogGroups, name: "logGroups"))
    ECSManagedResources.type = Types::ECSManagedResources
    EFSAuthorizationConfig.add_member(:access_point_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessPointId"))
    EFSAuthorizationConfig.add_member(:iam, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSAuthorizationConfigIAM, name: "iam"))
    EFSAuthorizationConfig.type = Types::EFSAuthorizationConfig
    EFSAuthorizationConfigIAM.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EFSAuthorizationConfigIAM.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EFSTransitEncryption.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EFSTransitEncryption.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EFSVolumeConfiguration.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fileSystemId", traits: {"smithy.api#required" => {}}))
    EFSVolumeConfiguration.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootDirectory"))
    EFSVolumeConfiguration.add_member(:transit_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSTransitEncryption, name: "transitEncryption"))
    EFSVolumeConfiguration.add_member(:transit_encryption_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "transitEncryptionPort"))
    EFSVolumeConfiguration.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSAuthorizationConfig, name: "authorizationConfig"))
    EFSVolumeConfiguration.type = Types::EFSVolumeConfiguration
    EnvironmentFile.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value", traits: {"smithy.api#required" => {}}))
    EnvironmentFile.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentFileType, name: "type", traits: {"smithy.api#required" => {}}))
    EnvironmentFile.type = Types::EnvironmentFile
    EnvironmentFileType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "s3"}))
    EnvironmentFiles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentFile, name: "member"))
    EnvironmentVariables.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuePair, name: "member"))
    EphemeralStorage.add_member(:size_in_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGiB", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    EphemeralStorage.type = Types::EphemeralStorage
    ExcludedInstanceTypeSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedInstanceType, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    ExecuteCommandConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kmsKeyId"))
    ExecuteCommandConfiguration.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecuteCommandLogging, name: "logging"))
    ExecuteCommandConfiguration.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecuteCommandLogConfiguration, name: "logConfiguration"))
    ExecuteCommandConfiguration.type = Types::ExecuteCommandConfiguration
    ExecuteCommandLogConfiguration.add_member(:cloud_watch_log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cloudWatchLogGroupName"))
    ExecuteCommandLogConfiguration.add_member(:cloud_watch_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "cloudWatchEncryptionEnabled", traits: {"smithy.api#default" => false}))
    ExecuteCommandLogConfiguration.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3BucketName"))
    ExecuteCommandLogConfiguration.add_member(:s3_encryption_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "s3EncryptionEnabled", traits: {"smithy.api#default" => false}))
    ExecuteCommandLogConfiguration.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3KeyPrefix"))
    ExecuteCommandLogConfiguration.type = Types::ExecuteCommandLogConfiguration
    ExecuteCommandLogging.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ExecuteCommandLogging.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "DEFAULT"}))
    ExecuteCommandLogging.add_member(:override, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERRIDE", traits: {"smithy.api#enumValue" => "OVERRIDE"}))
    ExecuteCommandRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    ExecuteCommandRequest.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "container"))
    ExecuteCommandRequest.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "command", traits: {"smithy.api#required" => {}}))
    ExecuteCommandRequest.add_member(:interactive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "interactive", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ExecuteCommandRequest.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "task", traits: {"smithy.api#required" => {}}))
    ExecuteCommandRequest.type = Types::ExecuteCommandRequest
    ExecuteCommandResponse.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn", traits: {"smithy.api#notProperty" => {}}))
    ExecuteCommandResponse.add_member(:container_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerArn", traits: {"smithy.api#notProperty" => {}}))
    ExecuteCommandResponse.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName", traits: {"smithy.api#notProperty" => {}}))
    ExecuteCommandResponse.add_member(:interactive, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "interactive", traits: {"smithy.api#default" => false, "smithy.api#notProperty" => {}}))
    ExecuteCommandResponse.add_member(:session, ::Smithy::Schema::Shapes::MemberShape.new(target: Session, name: "session", traits: {"smithy.api#notProperty" => {}}))
    ExecuteCommandResponse.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskArn", traits: {"smithy.api#notProperty" => {}}))
    ExecuteCommandResponse.type = Types::ExecuteCommandResponse
    ExpressCpuArchitecture.add_member(:x86_64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "X86_64", traits: {"smithy.api#enumValue" => "X86_64"}))
    ExpressCpuArchitecture.add_member(:arm64, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARM64", traits: {"smithy.api#enumValue" => "ARM64"}))
    ExpressGatewayContainer.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "image", traits: {"smithy.api#required" => {}}))
    ExpressGatewayContainer.add_member(:container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "containerPort"))
    ExpressGatewayContainer.add_member(:aws_logs_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceAwsLogsConfiguration, name: "awsLogsConfiguration"))
    ExpressGatewayContainer.add_member(:repository_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayRepositoryCredentials, name: "repositoryCredentials"))
    ExpressGatewayContainer.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command"))
    ExpressGatewayContainer.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environment"))
    ExpressGatewayContainer.add_member(:secrets, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretList, name: "secrets"))
    ExpressGatewayContainer.type = Types::ExpressGatewayContainer
    ExpressGatewayRepositoryCredentials.add_member(:credentials_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "credentialsParameter"))
    ExpressGatewayRepositoryCredentials.type = Types::ExpressGatewayRepositoryCredentials
    ExpressGatewayScalingTarget.add_member(:min_task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "minTaskCount"))
    ExpressGatewayScalingTarget.add_member(:max_task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxTaskCount"))
    ExpressGatewayScalingTarget.add_member(:auto_scaling_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceScalingMetric, name: "autoScalingMetric"))
    ExpressGatewayScalingTarget.add_member(:auto_scaling_target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "autoScalingTargetValue"))
    ExpressGatewayScalingTarget.type = Types::ExpressGatewayScalingTarget
    ExpressGatewayServiceAwsLogsConfiguration.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logGroup", traits: {"smithy.api#required" => {}}))
    ExpressGatewayServiceAwsLogsConfiguration.add_member(:log_stream_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logStreamPrefix", traits: {"smithy.api#required" => {}}))
    ExpressGatewayServiceAwsLogsConfiguration.type = Types::ExpressGatewayServiceAwsLogsConfiguration
    ExpressGatewayServiceConfiguration.add_member(:service_revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceRevisionArn"))
    ExpressGatewayServiceConfiguration.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    ExpressGatewayServiceConfiguration.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskRoleArn"))
    ExpressGatewayServiceConfiguration.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinitionArn"))
    ExpressGatewayServiceConfiguration.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpu"))
    ExpressGatewayServiceConfiguration.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "memory"))
    ExpressGatewayServiceConfiguration.add_member(:cpu_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressCpuArchitecture, name: "cpuArchitecture"))
    ExpressGatewayServiceConfiguration.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceNetworkConfiguration, name: "networkConfiguration"))
    ExpressGatewayServiceConfiguration.add_member(:health_check_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "healthCheckPath"))
    ExpressGatewayServiceConfiguration.add_member(:primary_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayContainer, name: "primaryContainer"))
    ExpressGatewayServiceConfiguration.add_member(:scaling_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayScalingTarget, name: "scalingTarget"))
    ExpressGatewayServiceConfiguration.add_member(:ingress_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPathSummaries, name: "ingressPaths"))
    ExpressGatewayServiceConfiguration.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ExpressGatewayServiceConfiguration.type = Types::ExpressGatewayServiceConfiguration
    ExpressGatewayServiceConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceConfiguration, name: "member"))
    ExpressGatewayServiceInclude.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    ExpressGatewayServiceIncludeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceInclude, name: "member"))
    ExpressGatewayServiceNetworkConfiguration.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "securityGroups"))
    ExpressGatewayServiceNetworkConfiguration.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnets"))
    ExpressGatewayServiceNetworkConfiguration.type = Types::ExpressGatewayServiceNetworkConfiguration
    ExpressGatewayServiceScalingMetric.add_member(:average_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AverageCPUUtilization", traits: {"smithy.api#enumValue" => "AVERAGE_CPU"}))
    ExpressGatewayServiceScalingMetric.add_member(:average_memory_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AverageMemoryUtilization", traits: {"smithy.api#enumValue" => "AVERAGE_MEMORY"}))
    ExpressGatewayServiceScalingMetric.add_member(:request_count_per_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RequestCountPerTarget", traits: {"smithy.api#enumValue" => "REQUEST_COUNT_PER_TARGET"}))
    ExpressGatewayServiceStatus.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceStatusCode, name: "statusCode"))
    ExpressGatewayServiceStatus.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ExpressGatewayServiceStatus.type = Types::ExpressGatewayServiceStatus
    ExpressGatewayServiceStatusCode.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ExpressGatewayServiceStatusCode.add_member(:draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRAINING", traits: {"smithy.api#enumValue" => "DRAINING"}))
    ExpressGatewayServiceStatusCode.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    FSxWindowsFileServerAuthorizationConfig.add_member(:credentials_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "credentialsParameter", traits: {"smithy.api#required" => {}}))
    FSxWindowsFileServerAuthorizationConfig.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domain", traits: {"smithy.api#required" => {}}))
    FSxWindowsFileServerAuthorizationConfig.type = Types::FSxWindowsFileServerAuthorizationConfig
    FSxWindowsFileServerVolumeConfiguration.add_member(:file_system_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fileSystemId", traits: {"smithy.api#required" => {}}))
    FSxWindowsFileServerVolumeConfiguration.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootDirectory", traits: {"smithy.api#required" => {}}))
    FSxWindowsFileServerVolumeConfiguration.add_member(:authorization_config, ::Smithy::Schema::Shapes::MemberShape.new(target: FSxWindowsFileServerAuthorizationConfig, name: "authorizationConfig", traits: {"smithy.api#required" => {}}))
    FSxWindowsFileServerVolumeConfiguration.type = Types::FSxWindowsFileServerVolumeConfiguration
    Failure.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    Failure.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    Failure.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "detail"))
    Failure.type = Types::Failure
    Failures.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Failure, name: "member"))
    FirelensConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FirelensConfigurationType, name: "type", traits: {"smithy.api#required" => {}}))
    FirelensConfiguration.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: FirelensConfigurationOptionsMap, name: "options"))
    FirelensConfiguration.type = Types::FirelensConfiguration
    FirelensConfigurationOptionsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    FirelensConfigurationOptionsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    FirelensConfigurationType.add_member(:fluentd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLUENTD", traits: {"smithy.api#enumValue" => "fluentd"}))
    FirelensConfigurationType.add_member(:fluentbit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLUENTBIT", traits: {"smithy.api#enumValue" => "fluentbit"}))
    GetTaskProtectionRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster", traits: {"smithy.api#required" => {}}))
    GetTaskProtectionRequest.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "tasks"))
    GetTaskProtectionRequest.type = Types::GetTaskProtectionRequest
    GetTaskProtectionResponse.add_member(:protected_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedTasks, name: "protectedTasks", traits: {"smithy.api#notProperty" => {}}))
    GetTaskProtectionResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    GetTaskProtectionResponse.type = Types::GetTaskProtectionResponse
    GpuIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    HealthCheck.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "command", traits: {"smithy.api#required" => {}}))
    HealthCheck.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "interval"))
    HealthCheck.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "timeout"))
    HealthCheck.add_member(:retries, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "retries"))
    HealthCheck.add_member(:start_period, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "startPeriod"))
    HealthCheck.type = Types::HealthCheck
    HealthStatus.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    HealthStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNHEALTHY", traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    HealthStatus.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    HostEntry.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "hostname", traits: {"smithy.api#required" => {}}))
    HostEntry.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ipAddress", traits: {"smithy.api#required" => {}}))
    HostEntry.type = Types::HostEntry
    HostEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HostEntry, name: "member"))
    HostVolumeProperties.add_member(:source_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourcePath"))
    HostVolumeProperties.type = Types::HostVolumeProperties
    InferenceAccelerator.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deviceName", traits: {"smithy.api#required" => {}}))
    InferenceAccelerator.add_member(:device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deviceType", traits: {"smithy.api#required" => {}}))
    InferenceAccelerator.type = Types::InferenceAccelerator
    InferenceAcceleratorOverride.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deviceName"))
    InferenceAcceleratorOverride.add_member(:device_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deviceType"))
    InferenceAcceleratorOverride.type = Types::InferenceAcceleratorOverride
    InferenceAcceleratorOverrides.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAcceleratorOverride, name: "member"))
    InferenceAccelerators.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAccelerator, name: "member"))
    InfrastructureOptimization.add_member(:scale_in_after, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "scaleInAfter"))
    InfrastructureOptimization.type = Types::InfrastructureOptimization
    IngressPathSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IngressPathSummary, name: "member"))
    IngressPathSummary.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "accessType", traits: {"smithy.api#required" => {}}))
    IngressPathSummary.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "endpoint", traits: {"smithy.api#required" => {}}))
    IngressPathSummary.type = Types::IngressPathSummary
    InstanceGeneration.add_member(:current, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CURRENT", traits: {"smithy.api#enumValue" => "current"}))
    InstanceGeneration.add_member(:previous, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREVIOUS", traits: {"smithy.api#enumValue" => "previous"}))
    InstanceGenerationSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGeneration, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    InstanceHealthCheckResult.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthCheckType, name: "type"))
    InstanceHealthCheckResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthCheckState, name: "status"))
    InstanceHealthCheckResult.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    InstanceHealthCheckResult.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdated"))
    InstanceHealthCheckResult.add_member(:last_status_change, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastStatusChange"))
    InstanceHealthCheckResult.type = Types::InstanceHealthCheckResult
    InstanceHealthCheckResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceHealthCheckResult, name: "member"))
    InstanceHealthCheckState.add_member(:ok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OK", traits: {"smithy.api#enumValue" => "OK"}))
    InstanceHealthCheckState.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPAIRED", traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    InstanceHealthCheckState.add_member(:insufficient_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_DATA", traits: {"smithy.api#enumValue" => "INSUFFICIENT_DATA"}))
    InstanceHealthCheckState.add_member(:initializing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZING", traits: {"smithy.api#enumValue" => "INITIALIZING"}))
    InstanceHealthCheckType.add_member(:container_runtime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINER_RUNTIME", traits: {"smithy.api#enumValue" => "CONTAINER_RUNTIME"}))
    InstanceHealthCheckType.add_member(:accelerated_compute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCELERATED_COMPUTE", traits: {"smithy.api#enumValue" => "ACCELERATED_COMPUTE"}))
    InstanceHealthCheckType.add_member(:daemon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAEMON", traits: {"smithy.api#enumValue" => "DAEMON"}))
    InstanceHealthCheckType.add_member(:agent_connectivity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT_CONNECTIVITY", traits: {"smithy.api#enumValue" => "AGENT_CONNECTIVITY"}))
    InstanceLaunchTemplate.add_member(:ec2_instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ec2InstanceProfileArn", traits: {"smithy.api#required" => {}}))
    InstanceLaunchTemplate.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesNetworkConfiguration, name: "networkConfiguration", traits: {"smithy.api#required" => {}}))
    InstanceLaunchTemplate.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesStorageConfiguration, name: "storageConfiguration"))
    InstanceLaunchTemplate.add_member(:local_storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesLocalStorageConfiguration, name: "localStorageConfiguration"))
    InstanceLaunchTemplate.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesMonitoringOptions, name: "monitoring"))
    InstanceLaunchTemplate.add_member(:capacity_option_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityOptionType, name: "capacityOptionType"))
    InstanceLaunchTemplate.add_member(:instance_metadata_tags_propagation, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "instanceMetadataTagsPropagation"))
    InstanceLaunchTemplate.add_member(:instance_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRequirementsRequest, name: "instanceRequirements"))
    InstanceLaunchTemplate.add_member(:fips_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "fipsEnabled"))
    InstanceLaunchTemplate.add_member(:capacity_reservations, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationRequest, name: "capacityReservations"))
    InstanceLaunchTemplate.type = Types::InstanceLaunchTemplate
    InstanceLaunchTemplateUpdate.add_member(:ec2_instance_profile_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ec2InstanceProfileArn"))
    InstanceLaunchTemplateUpdate.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesNetworkConfiguration, name: "networkConfiguration"))
    InstanceLaunchTemplateUpdate.add_member(:storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesStorageConfiguration, name: "storageConfiguration"))
    InstanceLaunchTemplateUpdate.add_member(:instance_metadata_tags_propagation, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "instanceMetadataTagsPropagation"))
    InstanceLaunchTemplateUpdate.add_member(:local_storage_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesLocalStorageConfiguration, name: "localStorageConfiguration"))
    InstanceLaunchTemplateUpdate.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedInstancesMonitoringOptions, name: "monitoring"))
    InstanceLaunchTemplateUpdate.add_member(:instance_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRequirementsRequest, name: "instanceRequirements"))
    InstanceLaunchTemplateUpdate.add_member(:capacity_reservations, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityReservationRequest, name: "capacityReservations"))
    InstanceLaunchTemplateUpdate.type = Types::InstanceLaunchTemplateUpdate
    InstanceRequirementsRequest.add_member(:v_cpu_count, ::Smithy::Schema::Shapes::MemberShape.new(target: VCpuCountRangeRequest, name: "vCpuCount", traits: {"smithy.api#required" => {}}))
    InstanceRequirementsRequest.add_member(:memory_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryMiBRequest, name: "memoryMiB", traits: {"smithy.api#required" => {}}))
    InstanceRequirementsRequest.add_member(:cpu_manufacturers, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuManufacturerSet, name: "cpuManufacturers", traits: {"smithy.api#xmlName" => "CpuManufacturer"}))
    InstanceRequirementsRequest.add_member(:memory_gi_b_per_v_cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: MemoryGiBPerVCpuRequest, name: "memoryGiBPerVCpu"))
    InstanceRequirementsRequest.add_member(:excluded_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludedInstanceTypeSet, name: "excludedInstanceTypes", traits: {"smithy.api#xmlName" => "ExcludedInstanceType"}))
    InstanceRequirementsRequest.add_member(:instance_generations, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceGenerationSet, name: "instanceGenerations", traits: {"smithy.api#xmlName" => "InstanceGeneration"}))
    InstanceRequirementsRequest.add_member(:spot_max_price_percentage_over_lowest_price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "spotMaxPricePercentageOverLowestPrice"))
    InstanceRequirementsRequest.add_member(:on_demand_max_price_percentage_over_lowest_price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "onDemandMaxPricePercentageOverLowestPrice"))
    InstanceRequirementsRequest.add_member(:bare_metal, ::Smithy::Schema::Shapes::MemberShape.new(target: BareMetal, name: "bareMetal"))
    InstanceRequirementsRequest.add_member(:burstable_performance, ::Smithy::Schema::Shapes::MemberShape.new(target: BurstablePerformance, name: "burstablePerformance"))
    InstanceRequirementsRequest.add_member(:require_hibernate_support, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "requireHibernateSupport"))
    InstanceRequirementsRequest.add_member(:network_interface_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterfaceCountRequest, name: "networkInterfaceCount"))
    InstanceRequirementsRequest.add_member(:local_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStorage, name: "localStorage"))
    InstanceRequirementsRequest.add_member(:local_storage_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStorageTypeSet, name: "localStorageTypes", traits: {"smithy.api#xmlName" => "LocalStorageType"}))
    InstanceRequirementsRequest.add_member(:total_local_storage_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalLocalStorageGBRequest, name: "totalLocalStorageGB"))
    InstanceRequirementsRequest.add_member(:baseline_ebs_bandwidth_mbps, ::Smithy::Schema::Shapes::MemberShape.new(target: BaselineEbsBandwidthMbpsRequest, name: "baselineEbsBandwidthMbps"))
    InstanceRequirementsRequest.add_member(:accelerator_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorTypeSet, name: "acceleratorTypes", traits: {"smithy.api#xmlName" => "AcceleratorType"}))
    InstanceRequirementsRequest.add_member(:accelerator_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorCountRequest, name: "acceleratorCount"))
    InstanceRequirementsRequest.add_member(:accelerator_manufacturers, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorManufacturerSet, name: "acceleratorManufacturers", traits: {"smithy.api#xmlName" => "AcceleratorManufacturer"}))
    InstanceRequirementsRequest.add_member(:accelerator_names, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorNameSet, name: "acceleratorNames", traits: {"smithy.api#xmlName" => "AcceleratorName"}))
    InstanceRequirementsRequest.add_member(:accelerator_total_memory_mi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceleratorTotalMemoryMiBRequest, name: "acceleratorTotalMemoryMiB"))
    InstanceRequirementsRequest.add_member(:network_bandwidth_gbps, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkBandwidthGbpsRequest, name: "networkBandwidthGbps"))
    InstanceRequirementsRequest.add_member(:allowed_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedInstanceTypeSet, name: "allowedInstanceTypes", traits: {"smithy.api#xmlName" => "AllowedInstanceType"}))
    InstanceRequirementsRequest.add_member(:max_spot_price_as_percentage_of_optimal_on_demand_price, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxSpotPriceAsPercentageOfOptimalOnDemandPrice"))
    InstanceRequirementsRequest.type = Types::InstanceRequirementsRequest
    IntegerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "member"))
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    IpcMode.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOST", traits: {"smithy.api#enumValue" => "host"}))
    IpcMode.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK", traits: {"smithy.api#enumValue" => "task"}))
    IpcMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    KernelCapabilities.add_member(:add, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "add"))
    KernelCapabilities.add_member(:drop, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "drop"))
    KernelCapabilities.type = Types::KernelCapabilities
    KeyValuePair.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    KeyValuePair.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    KeyValuePair.type = Types::KeyValuePair
    LaunchType.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    LaunchType.add_member(:fargate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE", traits: {"smithy.api#enumValue" => "FARGATE"}))
    LaunchType.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    LaunchType.add_member(:managed_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_INSTANCES", traits: {"smithy.api#enumValue" => "MANAGED_INSTANCES"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    LinearConfiguration.add_member(:step_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "stepPercent", traits: {"smithy.api#default" => nil}))
    LinearConfiguration.add_member(:step_bake_time_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "stepBakeTimeInMinutes", traits: {"smithy.api#default" => nil}))
    LinearConfiguration.type = Types::LinearConfiguration
    LinuxParameters.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: KernelCapabilities, name: "capabilities"))
    LinuxParameters.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DevicesList, name: "devices"))
    LinuxParameters.add_member(:init_process_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "initProcessEnabled"))
    LinuxParameters.add_member(:shared_memory_size, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "sharedMemorySize"))
    LinuxParameters.add_member(:tmpfs, ::Smithy::Schema::Shapes::MemberShape.new(target: TmpfsList, name: "tmpfs"))
    LinuxParameters.add_member(:max_swap, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxSwap"))
    LinuxParameters.add_member(:swappiness, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "swappiness"))
    LinuxParameters.type = Types::LinuxParameters
    ListAccountSettingsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingName, name: "name"))
    ListAccountSettingsRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    ListAccountSettingsRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn"))
    ListAccountSettingsRequest.add_member(:effective_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "effectiveSettings", traits: {"smithy.api#default" => false}))
    ListAccountSettingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListAccountSettingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults", traits: {"smithy.api#default" => 0}))
    ListAccountSettingsRequest.type = Types::ListAccountSettingsRequest
    ListAccountSettingsResponse.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: Settings, name: "settings"))
    ListAccountSettingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListAccountSettingsResponse.type = Types::ListAccountSettingsResponse
    ListAttributesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    ListAttributesRequest.add_member(:target_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetType, name: "targetType", traits: {"smithy.api#required" => {}}))
    ListAttributesRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "attributeName"))
    ListAttributesRequest.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "attributeValue"))
    ListAttributesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListAttributesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListAttributesRequest.type = Types::ListAttributesRequest
    ListAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "attributes", traits: {"smithy.api#notProperty" => {}}))
    ListAttributesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListAttributesResponse.type = Types::ListAttributesResponse
    ListClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListClustersRequest.type = Types::ListClustersRequest
    ListClustersResponse.add_member(:cluster_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "clusterArns", traits: {"smithy.api#notProperty" => {}}))
    ListClustersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListClustersResponse.type = Types::ListClustersResponse
    ListContainerInstancesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    ListContainerInstancesRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "filter"))
    ListContainerInstancesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListContainerInstancesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListContainerInstancesRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstanceStatus, name: "status"))
    ListContainerInstancesRequest.type = Types::ListContainerInstancesRequest
    ListContainerInstancesResponse.add_member(:container_instance_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "containerInstanceArns", traits: {"smithy.api#notProperty" => {}}))
    ListContainerInstancesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListContainerInstancesResponse.type = Types::ListContainerInstancesResponse
    ListDaemonDeploymentsRequest.add_member(:daemon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonArn", traits: {"smithy.api#required" => {}}))
    ListDaemonDeploymentsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentStatusList, name: "status"))
    ListDaemonDeploymentsRequest.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt"))
    ListDaemonDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListDaemonDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListDaemonDeploymentsRequest.type = Types::ListDaemonDeploymentsRequest
    ListDaemonDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListDaemonDeploymentsResponse.add_member(:daemon_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentSummaryList, name: "daemonDeployments", traits: {"smithy.api#notProperty" => {}}))
    ListDaemonDeploymentsResponse.type = Types::ListDaemonDeploymentsResponse
    ListDaemonTaskDefinitionsRequest.add_member(:family_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "familyPrefix"))
    ListDaemonTaskDefinitionsRequest.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "family"))
    ListDaemonTaskDefinitionsRequest.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonTaskDefinitionRevisionFilter, name: "revision"))
    ListDaemonTaskDefinitionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonTaskDefinitionStatusFilter, name: "status"))
    ListDaemonTaskDefinitionsRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sort"))
    ListDaemonTaskDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListDaemonTaskDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListDaemonTaskDefinitionsRequest.type = Types::ListDaemonTaskDefinitionsRequest
    ListDaemonTaskDefinitionsResponse.add_member(:daemon_task_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonTaskDefinitionSummaries, name: "daemonTaskDefinitions", traits: {"smithy.api#notProperty" => {}}))
    ListDaemonTaskDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListDaemonTaskDefinitionsResponse.type = Types::ListDaemonTaskDefinitionsResponse
    ListDaemonsRequest.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    ListDaemonsRequest.add_member(:capacity_provider_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "capacityProviderArns"))
    ListDaemonsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListDaemonsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListDaemonsRequest.type = Types::ListDaemonsRequest
    ListDaemonsResponse.add_member(:daemon_summaries_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonSummariesList, name: "daemonSummariesList", traits: {"smithy.api#notProperty" => {}}))
    ListDaemonsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListDaemonsResponse.type = Types::ListDaemonsResponse
    ListServiceDeploymentsRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "service", traits: {"smithy.api#required" => {}}))
    ListServiceDeploymentsRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    ListServiceDeploymentsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentStatusList, name: "status"))
    ListServiceDeploymentsRequest.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: CreatedAt, name: "createdAt"))
    ListServiceDeploymentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListServiceDeploymentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListServiceDeploymentsRequest.type = Types::ListServiceDeploymentsRequest
    ListServiceDeploymentsResponse.add_member(:service_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentsBrief, name: "serviceDeployments", traits: {"smithy.api#notProperty" => {}}))
    ListServiceDeploymentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListServiceDeploymentsResponse.type = Types::ListServiceDeploymentsResponse
    ListServicesByNamespaceRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace", traits: {"smithy.api#required" => {}}))
    ListServicesByNamespaceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListServicesByNamespaceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListServicesByNamespaceRequest.type = Types::ListServicesByNamespaceRequest
    ListServicesByNamespaceResponse.add_member(:service_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "serviceArns"))
    ListServicesByNamespaceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListServicesByNamespaceResponse.type = Types::ListServicesByNamespaceResponse
    ListServicesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    ListServicesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListServicesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListServicesRequest.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "launchType"))
    ListServicesRequest.add_member(:scheduling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingStrategy, name: "schedulingStrategy"))
    ListServicesRequest.add_member(:resource_management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceManagementType, name: "resourceManagementType"))
    ListServicesRequest.type = Types::ListServicesRequest
    ListServicesResponse.add_member(:service_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "serviceArns", traits: {"smithy.api#notProperty" => {}}))
    ListServicesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListServicesResponse.type = Types::ListServicesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTaskDefinitionFamiliesRequest.add_member(:family_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "familyPrefix"))
    ListTaskDefinitionFamiliesRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionFamilyStatus, name: "status"))
    ListTaskDefinitionFamiliesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListTaskDefinitionFamiliesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListTaskDefinitionFamiliesRequest.type = Types::ListTaskDefinitionFamiliesRequest
    ListTaskDefinitionFamiliesResponse.add_member(:families, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "families"))
    ListTaskDefinitionFamiliesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListTaskDefinitionFamiliesResponse.type = Types::ListTaskDefinitionFamiliesResponse
    ListTaskDefinitionsRequest.add_member(:family_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "familyPrefix"))
    ListTaskDefinitionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionStatus, name: "status"))
    ListTaskDefinitionsRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sort"))
    ListTaskDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListTaskDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListTaskDefinitionsRequest.type = Types::ListTaskDefinitionsRequest
    ListTaskDefinitionsResponse.add_member(:task_definition_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "taskDefinitionArns", traits: {"smithy.api#notProperty" => {}}))
    ListTaskDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListTaskDefinitionsResponse.type = Types::ListTaskDefinitionsResponse
    ListTasksRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    ListTasksRequest.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerInstance"))
    ListTasksRequest.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "family"))
    ListTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "maxResults"))
    ListTasksRequest.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "startedBy"))
    ListTasksRequest.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceName"))
    ListTasksRequest.add_member(:desired_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredStatus, name: "desiredStatus"))
    ListTasksRequest.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "launchType"))
    ListTasksRequest.add_member(:daemon_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonName"))
    ListTasksRequest.type = Types::ListTasksRequest
    ListTasksResponse.add_member(:task_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "taskArns", traits: {"smithy.api#notProperty" => {}}))
    ListTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#notProperty" => {}}))
    ListTasksResponse.type = Types::ListTasksResponse
    LoadBalancer.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetGroupArn"))
    LoadBalancer.add_member(:load_balancer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "loadBalancerName"))
    LoadBalancer.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName"))
    LoadBalancer.add_member(:container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "containerPort"))
    LoadBalancer.add_member(:advanced_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdvancedConfiguration, name: "advancedConfiguration"))
    LoadBalancer.type = Types::LoadBalancer
    LoadBalancers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancer, name: "member"))
    LocalStorage.add_member(:included, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUDED", traits: {"smithy.api#enumValue" => "included"}))
    LocalStorage.add_member(:required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED", traits: {"smithy.api#enumValue" => "required"}))
    LocalStorage.add_member(:excluded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDED", traits: {"smithy.api#enumValue" => "excluded"}))
    LocalStorageType.add_member(:hdd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HDD", traits: {"smithy.api#enumValue" => "hdd"}))
    LocalStorageType.add_member(:ssd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSD", traits: {"smithy.api#enumValue" => "ssd"}))
    LocalStorageTypeSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LocalStorageType, name: "member", traits: {"smithy.api#xmlName" => "item"}))
    LogConfiguration.add_member(:log_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDriver, name: "logDriver", traits: {"smithy.api#required" => {}}))
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
    ManagedAgent.add_member(:last_started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastStartedAt"))
    ManagedAgent.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgentName, name: "name"))
    ManagedAgent.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    ManagedAgent.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lastStatus"))
    ManagedAgent.type = Types::ManagedAgent
    ManagedAgentName.add_member(:execute_command_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExecuteCommandAgent", traits: {"smithy.api#enumValue" => "ExecuteCommandAgent"}))
    ManagedAgentStateChange.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName", traits: {"smithy.api#required" => {}}))
    ManagedAgentStateChange.add_member(:managed_agent_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgentName, name: "managedAgentName", traits: {"smithy.api#required" => {}}))
    ManagedAgentStateChange.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status", traits: {"smithy.api#required" => {}}))
    ManagedAgentStateChange.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    ManagedAgentStateChange.type = Types::ManagedAgentStateChange
    ManagedAgentStateChanges.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgentStateChange, name: "member"))
    ManagedAgents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgent, name: "member"))
    ManagedApplicationAutoScalingPolicies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedApplicationAutoScalingPolicy, name: "member"))
    ManagedApplicationAutoScalingPolicy.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ManagedApplicationAutoScalingPolicy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ManagedApplicationAutoScalingPolicy.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ManagedApplicationAutoScalingPolicy.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ManagedApplicationAutoScalingPolicy.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "policyType", traits: {"smithy.api#required" => {}}))
    ManagedApplicationAutoScalingPolicy.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "targetValue", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ManagedApplicationAutoScalingPolicy.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "metric", traits: {"smithy.api#required" => {}}))
    ManagedApplicationAutoScalingPolicy.type = Types::ManagedApplicationAutoScalingPolicy
    ManagedAutoScaling.add_member(:scalable_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalableTarget, name: "scalableTarget"))
    ManagedAutoScaling.add_member(:application_auto_scaling_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedApplicationAutoScalingPolicies, name: "applicationAutoScalingPolicies"))
    ManagedAutoScaling.type = Types::ManagedAutoScaling
    ManagedCertificate.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ManagedCertificate.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ManagedCertificate.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ManagedCertificate.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ManagedCertificate.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domainName", traits: {"smithy.api#required" => {}}))
    ManagedCertificate.type = Types::ManagedCertificate
    ManagedDraining.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ManagedDraining.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ManagedIngressPath.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "accessType", traits: {"smithy.api#required" => {}}))
    ManagedIngressPath.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "endpoint", traits: {"smithy.api#required" => {}}))
    ManagedIngressPath.add_member(:load_balancer, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLoadBalancer, name: "loadBalancer"))
    ManagedIngressPath.add_member(:load_balancer_security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSecurityGroups, name: "loadBalancerSecurityGroups"))
    ManagedIngressPath.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedCertificate, name: "certificate"))
    ManagedIngressPath.add_member(:listener, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedListener, name: "listener"))
    ManagedIngressPath.add_member(:rule, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedListenerRule, name: "rule"))
    ManagedIngressPath.add_member(:target_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedTargetGroups, name: "targetGroups"))
    ManagedIngressPath.type = Types::ManagedIngressPath
    ManagedIngressPaths.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedIngressPath, name: "member"))
    ManagedInstancesLocalStorageConfiguration.add_member(:use_local_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "useLocalStorage", traits: {"smithy.api#default" => false}))
    ManagedInstancesLocalStorageConfiguration.type = Types::ManagedInstancesLocalStorageConfiguration
    ManagedInstancesMonitoringOptions.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC", traits: {"smithy.api#enumValue" => "BASIC"}))
    ManagedInstancesMonitoringOptions.add_member(:detailed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DETAILED", traits: {"smithy.api#enumValue" => "DETAILED"}))
    ManagedInstancesNetworkConfiguration.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnets"))
    ManagedInstancesNetworkConfiguration.add_member(:security_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "securityGroups"))
    ManagedInstancesNetworkConfiguration.type = Types::ManagedInstancesNetworkConfiguration
    ManagedInstancesProvider.add_member(:infrastructure_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "infrastructureRoleArn"))
    ManagedInstancesProvider.add_member(:instance_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceLaunchTemplate, name: "instanceLaunchTemplate"))
    ManagedInstancesProvider.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateMITags, name: "propagateTags"))
    ManagedInstancesProvider.add_member(:infrastructure_optimization, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureOptimization, name: "infrastructureOptimization"))
    ManagedInstancesProvider.add_member(:auto_repair_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRepairConfiguration, name: "autoRepairConfiguration"))
    ManagedInstancesProvider.type = Types::ManagedInstancesProvider
    ManagedInstancesStorageConfiguration.add_member(:storage_size_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskVolumeStorageGiB, name: "storageSizeGiB"))
    ManagedInstancesStorageConfiguration.type = Types::ManagedInstancesStorageConfiguration
    ManagedListener.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ManagedListener.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ManagedListener.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ManagedListener.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ManagedListener.type = Types::ManagedListener
    ManagedListenerRule.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ManagedListenerRule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ManagedListenerRule.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ManagedListenerRule.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ManagedListenerRule.type = Types::ManagedListenerRule
    ManagedLoadBalancer.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ManagedLoadBalancer.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ManagedLoadBalancer.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ManagedLoadBalancer.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ManagedLoadBalancer.add_member(:scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "scheme", traits: {"smithy.api#required" => {}}))
    ManagedLoadBalancer.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "subnetIds"))
    ManagedLoadBalancer.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "securityGroupIds"))
    ManagedLoadBalancer.type = Types::ManagedLoadBalancer
    ManagedLogGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ManagedLogGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ManagedLogGroup.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ManagedLogGroup.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ManagedLogGroup.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "logGroupName", traits: {"smithy.api#required" => {}}))
    ManagedLogGroup.type = Types::ManagedLogGroup
    ManagedLogGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedLogGroup, name: "member"))
    ManagedMetricAlarm.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ManagedMetricAlarm.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ManagedMetricAlarm.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ManagedMetricAlarm.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ManagedMetricAlarm.type = Types::ManagedMetricAlarm
    ManagedMetricAlarms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedMetricAlarm, name: "member"))
    ManagedResourceStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    ManagedResourceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ManagedResourceStatus.add_member(:deprovisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPROVISIONING", traits: {"smithy.api#enumValue" => "DEPROVISIONING"}))
    ManagedResourceStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ManagedResourceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ManagedScalableTarget.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ManagedScalableTarget.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ManagedScalableTarget.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ManagedScalableTarget.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ManagedScalableTarget.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "minCapacity", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ManagedScalableTarget.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxCapacity", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ManagedScalableTarget.type = Types::ManagedScalableTarget
    ManagedScaling.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingStatus, name: "status"))
    ManagedScaling.add_member(:target_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingTargetCapacity, name: "targetCapacity"))
    ManagedScaling.add_member(:minimum_scaling_step_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingStepSize, name: "minimumScalingStepSize"))
    ManagedScaling.add_member(:maximum_scaling_step_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingStepSize, name: "maximumScalingStepSize"))
    ManagedScaling.add_member(:instance_warmup_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedScalingInstanceWarmupPeriod, name: "instanceWarmupPeriod"))
    ManagedScaling.type = Types::ManagedScaling
    ManagedScalingStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ManagedScalingStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ManagedSecurityGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ManagedSecurityGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ManagedSecurityGroup.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ManagedSecurityGroup.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ManagedSecurityGroup.type = Types::ManagedSecurityGroup
    ManagedSecurityGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedSecurityGroup, name: "member"))
    ManagedStorageConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kmsKeyId"))
    ManagedStorageConfiguration.add_member(:fargate_ephemeral_storage_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fargateEphemeralStorageKmsKeyId"))
    ManagedStorageConfiguration.type = Types::ManagedStorageConfiguration
    ManagedTargetGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ManagedTargetGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedResourceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    ManagedTargetGroup.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ManagedTargetGroup.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ManagedTargetGroup.add_member(:health_check_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "healthCheckPath", traits: {"smithy.api#required" => {}}))
    ManagedTargetGroup.add_member(:health_check_port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "healthCheckPort", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ManagedTargetGroup.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "port", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ManagedTargetGroup.type = Types::ManagedTargetGroup
    ManagedTargetGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedTargetGroup, name: "member"))
    ManagedTerminationProtection.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ManagedTerminationProtection.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    MemoryGiBPerVCpuRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, name: "min"))
    MemoryGiBPerVCpuRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, name: "max"))
    MemoryGiBPerVCpuRequest.type = Types::MemoryGiBPerVCpuRequest
    MemoryMiBRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "min", traits: {"smithy.api#required" => {}}))
    MemoryMiBRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "max"))
    MemoryMiBRequest.type = Types::MemoryMiBRequest
    MetricConfiguration.add_member(:metric_names, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNamesList, name: "metricNames", traits: {"smithy.api#required" => {}}))
    MetricConfiguration.add_member(:resolution_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricResolutionSeconds, name: "resolutionSeconds", traits: {"smithy.api#required" => {}}))
    MetricConfiguration.type = Types::MetricConfiguration
    MetricConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricConfiguration, name: "member"))
    MetricNamesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "member"))
    MissingVersionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    MissingVersionException.type = Types::MissingVersionException
    MonitoringConfiguration.add_member(:metric_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricConfigurationList, name: "metricConfigurations"))
    MonitoringConfiguration.type = Types::MonitoringConfiguration
    MountPoint.add_member(:source_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceVolume"))
    MountPoint.add_member(:container_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerPath"))
    MountPoint.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "readOnly"))
    MountPoint.type = Types::MountPoint
    MountPointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MountPoint, name: "member"))
    NamespaceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    NamespaceNotFoundException.type = Types::NamespaceNotFoundException
    NetworkBandwidthGbpsRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, name: "min"))
    NetworkBandwidthGbpsRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, name: "max"))
    NetworkBandwidthGbpsRequest.type = Types::NetworkBandwidthGbpsRequest
    NetworkBinding.add_member(:bind_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bindIP"))
    NetworkBinding.add_member(:container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "containerPort"))
    NetworkBinding.add_member(:host_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "hostPort"))
    NetworkBinding.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: TransportProtocol, name: "protocol"))
    NetworkBinding.add_member(:container_port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerPortRange"))
    NetworkBinding.add_member(:host_port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "hostPortRange"))
    NetworkBinding.type = Types::NetworkBinding
    NetworkBindings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkBinding, name: "member"))
    NetworkConfiguration.add_member(:awsvpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsVpcConfiguration, name: "awsvpcConfiguration"))
    NetworkConfiguration.type = Types::NetworkConfiguration
    NetworkInterface.add_member(:attachment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "attachmentId"))
    NetworkInterface.add_member(:private_ipv4_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "privateIpv4Address"))
    NetworkInterface.add_member(:ipv6_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ipv6Address"))
    NetworkInterface.type = Types::NetworkInterface
    NetworkInterfaceCountRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "min"))
    NetworkInterfaceCountRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "max"))
    NetworkInterfaceCountRequest.type = Types::NetworkInterfaceCountRequest
    NetworkInterfaces.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface, name: "member"))
    NetworkMode.add_member(:bridge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BRIDGE", traits: {"smithy.api#enumValue" => "bridge"}))
    NetworkMode.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOST", traits: {"smithy.api#enumValue" => "host"}))
    NetworkMode.add_member(:awsvpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSVPC", traits: {"smithy.api#enumValue" => "awsvpc"}))
    NetworkMode.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "none"}))
    NeuronDeviceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    NoUpdateAvailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    NoUpdateAvailableException.type = Types::NoUpdateAvailableException
    OSFamily.add_member(:windows_server_2019_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2019_FULL", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019_FULL"}))
    OSFamily.add_member(:windows_server_2019_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2019_CORE", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019_CORE"}))
    OSFamily.add_member(:windows_server_2016_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2016_FULL", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2016_FULL"}))
    OSFamily.add_member(:windows_server_2004_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2004_CORE", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2004_CORE"}))
    OSFamily.add_member(:windows_server_2022_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2022_CORE", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2022_CORE"}))
    OSFamily.add_member(:windows_server_2022_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2022_FULL", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2022_FULL"}))
    OSFamily.add_member(:windows_server_2025_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2025_CORE", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2025_CORE"}))
    OSFamily.add_member(:windows_server_2025_full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2025_FULL", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2025_FULL"}))
    OSFamily.add_member(:windows_server_20_h2_core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_20H2_CORE", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_20H2_CORE"}))
    OSFamily.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX", traits: {"smithy.api#enumValue" => "LINUX"}))
    PidMode.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOST", traits: {"smithy.api#enumValue" => "host"}))
    PidMode.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK", traits: {"smithy.api#enumValue" => "task"}))
    PlacementConstraint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraintType, name: "type"))
    PlacementConstraint.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "expression"))
    PlacementConstraint.type = Types::PlacementConstraint
    PlacementConstraintType.add_member(:distinct_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTINCT_INSTANCE", traits: {"smithy.api#enumValue" => "distinctInstance"}))
    PlacementConstraintType.add_member(:member_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_OF", traits: {"smithy.api#enumValue" => "memberOf"}))
    PlacementConstraints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraint, name: "member"))
    PlacementStrategies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategy, name: "member"))
    PlacementStrategy.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategyType, name: "type"))
    PlacementStrategy.add_member(:field, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "field"))
    PlacementStrategy.type = Types::PlacementStrategy
    PlacementStrategyType.add_member(:random, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RANDOM", traits: {"smithy.api#enumValue" => "random"}))
    PlacementStrategyType.add_member(:spread, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPREAD", traits: {"smithy.api#enumValue" => "spread"}))
    PlacementStrategyType.add_member(:binpack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BINPACK", traits: {"smithy.api#enumValue" => "binpack"}))
    PlatformDevice.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#required" => {}}))
    PlatformDevice.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformDeviceType, name: "type", traits: {"smithy.api#required" => {}}))
    PlatformDevice.type = Types::PlatformDevice
    PlatformDeviceType.add_member(:gpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU", traits: {"smithy.api#enumValue" => "GPU"}))
    PlatformDeviceType.add_member(:neuron_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEURON_DEVICE", traits: {"smithy.api#enumValue" => "NEURON_DEVICE"}))
    PlatformDevices.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformDevice, name: "member"))
    PlatformTaskDefinitionIncompatibilityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    PlatformTaskDefinitionIncompatibilityException.type = Types::PlatformTaskDefinitionIncompatibilityException
    PlatformUnknownException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    PlatformUnknownException.type = Types::PlatformUnknownException
    PortMapping.add_member(:container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "containerPort"))
    PortMapping.add_member(:host_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "hostPort"))
    PortMapping.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: TransportProtocol, name: "protocol"))
    PortMapping.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    PortMapping.add_member(:app_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationProtocol, name: "appProtocol"))
    PortMapping.add_member(:container_port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerPortRange"))
    PortMapping.type = Types::PortMapping
    PortMappingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PortMapping, name: "member"))
    PropagateMITags.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPACITY_PROVIDER", traits: {"smithy.api#enumValue" => "CAPACITY_PROVIDER"}))
    PropagateMITags.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    PropagateTags.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK_DEFINITION", traits: {"smithy.api#enumValue" => "TASK_DEFINITION"}))
    PropagateTags.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE", traits: {"smithy.api#enumValue" => "SERVICE"}))
    PropagateTags.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ProtectedTask.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskArn"))
    ProtectedTask.add_member(:protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "protectionEnabled", traits: {"smithy.api#default" => false}))
    ProtectedTask.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expirationDate"))
    ProtectedTask.type = Types::ProtectedTask
    ProtectedTasks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedTask, name: "member"))
    ProxyConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigurationType, name: "type"))
    ProxyConfiguration.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName", traits: {"smithy.api#required" => {}}))
    ProxyConfiguration.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfigurationProperties, name: "properties"))
    ProxyConfiguration.type = Types::ProxyConfiguration
    ProxyConfigurationProperties.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuePair, name: "member"))
    ProxyConfigurationType.add_member(:appmesh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPMESH", traits: {"smithy.api#enumValue" => "APPMESH"}))
    PutAccountSettingDefaultRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingName, name: "name", traits: {"smithy.api#required" => {}}))
    PutAccountSettingDefaultRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value", traits: {"smithy.api#required" => {}}))
    PutAccountSettingDefaultRequest.type = Types::PutAccountSettingDefaultRequest
    PutAccountSettingDefaultResponse.add_member(:setting, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "setting"))
    PutAccountSettingDefaultResponse.type = Types::PutAccountSettingDefaultResponse
    PutAccountSettingRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingName, name: "name", traits: {"smithy.api#required" => {}}))
    PutAccountSettingRequest.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value", traits: {"smithy.api#required" => {}}))
    PutAccountSettingRequest.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn"))
    PutAccountSettingRequest.type = Types::PutAccountSettingRequest
    PutAccountSettingResponse.add_member(:setting, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "setting"))
    PutAccountSettingResponse.type = Types::PutAccountSettingResponse
    PutAttributesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    PutAttributesRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "attributes", traits: {"smithy.api#required" => {}}))
    PutAttributesRequest.type = Types::PutAttributesRequest
    PutAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "attributes", traits: {"smithy.api#notProperty" => {}}))
    PutAttributesResponse.type = Types::PutAttributesResponse
    PutClusterCapacityProvidersRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ClusterName"}))
    PutClusterCapacityProvidersRequest.add_member(:capacity_providers, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "capacityProviders", traits: {"smithy.api#required" => {}}))
    PutClusterCapacityProvidersRequest.add_member(:default_capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "defaultCapacityProviderStrategy", traits: {"smithy.api#required" => {}}))
    PutClusterCapacityProvidersRequest.type = Types::PutClusterCapacityProvidersRequest
    PutClusterCapacityProvidersResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster", traits: {"smithy.api#notProperty" => {}}))
    PutClusterCapacityProvidersResponse.type = Types::PutClusterCapacityProvidersResponse
    RegisterContainerInstanceRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    RegisterContainerInstanceRequest.add_member(:instance_identity_document, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "instanceIdentityDocument"))
    RegisterContainerInstanceRequest.add_member(:instance_identity_document_signature, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "instanceIdentityDocumentSignature"))
    RegisterContainerInstanceRequest.add_member(:total_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Resources, name: "totalResources"))
    RegisterContainerInstanceRequest.add_member(:version_info, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionInfo, name: "versionInfo"))
    RegisterContainerInstanceRequest.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerInstanceArn"))
    RegisterContainerInstanceRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "attributes"))
    RegisterContainerInstanceRequest.add_member(:platform_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformDevices, name: "platformDevices"))
    RegisterContainerInstanceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    RegisterContainerInstanceRequest.type = Types::RegisterContainerInstanceRequest
    RegisterContainerInstanceResponse.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstance, name: "containerInstance", traits: {"smithy.api#notProperty" => {}}))
    RegisterContainerInstanceResponse.type = Types::RegisterContainerInstanceResponse
    RegisterDaemonTaskDefinitionRequest.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "family", traits: {"smithy.api#required" => {}}))
    RegisterDaemonTaskDefinitionRequest.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskRoleArn"))
    RegisterDaemonTaskDefinitionRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    RegisterDaemonTaskDefinitionRequest.add_member(:container_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonContainerDefinitionList, name: "containerDefinitions", traits: {"smithy.api#required" => {}}))
    RegisterDaemonTaskDefinitionRequest.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpu"))
    RegisterDaemonTaskDefinitionRequest.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "memory"))
    RegisterDaemonTaskDefinitionRequest.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonVolumeList, name: "volumes"))
    RegisterDaemonTaskDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    RegisterDaemonTaskDefinitionRequest.add_member(:pid_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonPidMode, name: "pidMode"))
    RegisterDaemonTaskDefinitionRequest.add_member(:ipc_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonIpcMode, name: "ipcMode"))
    RegisterDaemonTaskDefinitionRequest.type = Types::RegisterDaemonTaskDefinitionRequest
    RegisterDaemonTaskDefinitionResponse.add_member(:daemon_task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonTaskDefinitionArn", traits: {"smithy.api#notProperty" => {}}))
    RegisterDaemonTaskDefinitionResponse.type = Types::RegisterDaemonTaskDefinitionResponse
    RegisterTaskDefinitionRequest.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "family", traits: {"smithy.api#required" => {}}))
    RegisterTaskDefinitionRequest.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskRoleArn"))
    RegisterTaskDefinitionRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    RegisterTaskDefinitionRequest.add_member(:network_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMode, name: "networkMode"))
    RegisterTaskDefinitionRequest.add_member(:container_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDefinitions, name: "containerDefinitions", traits: {"smithy.api#required" => {}}))
    RegisterTaskDefinitionRequest.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeList, name: "volumes"))
    RegisterTaskDefinitionRequest.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionPlacementConstraints, name: "placementConstraints"))
    RegisterTaskDefinitionRequest.add_member(:requires_compatibilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibilityList, name: "requiresCompatibilities"))
    RegisterTaskDefinitionRequest.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpu"))
    RegisterTaskDefinitionRequest.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "memory"))
    RegisterTaskDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    RegisterTaskDefinitionRequest.add_member(:pid_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PidMode, name: "pidMode"))
    RegisterTaskDefinitionRequest.add_member(:ipc_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: IpcMode, name: "ipcMode"))
    RegisterTaskDefinitionRequest.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "proxyConfiguration"))
    RegisterTaskDefinitionRequest.add_member(:inference_accelerators, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAccelerators, name: "inferenceAccelerators", traits: {"smithy.api#deprecated" => {"message" => "This feature is no longer available.", "since" => "2023-04-15"}}))
    RegisterTaskDefinitionRequest.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "ephemeralStorage"))
    RegisterTaskDefinitionRequest.add_member(:runtime_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimePlatform, name: "runtimePlatform"))
    RegisterTaskDefinitionRequest.add_member(:enable_fault_injection, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enableFaultInjection"))
    RegisterTaskDefinitionRequest.type = Types::RegisterTaskDefinitionRequest
    RegisterTaskDefinitionResponse.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinition, name: "taskDefinition", traits: {"smithy.api#notProperty" => {}}))
    RegisterTaskDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    RegisterTaskDefinitionResponse.type = Types::RegisterTaskDefinitionResponse
    RepositoryCredentials.add_member(:credentials_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "credentialsParameter", traits: {"smithy.api#required" => {}}))
    RepositoryCredentials.type = Types::RepositoryCredentials
    RequiresAttributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Attribute, name: "member"))
    ResolvedConfiguration.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionLoadBalancers, name: "loadBalancers"))
    ResolvedConfiguration.add_member(:vpc_lattice_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionVpcLatticeConfigurations, name: "vpcLatticeConfigurations"))
    ResolvedConfiguration.type = Types::ResolvedConfiguration
    Resource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    Resource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    Resource.add_member(:double_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "doubleValue", traits: {"smithy.api#default" => 0}))
    Resource.add_member(:long_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "longValue", traits: {"smithy.api#default" => 0}))
    Resource.add_member(:integer_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "integerValue", traits: {"smithy.api#default" => 0}))
    Resource.add_member(:string_set_value, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "stringSetValue"))
    Resource.type = Types::Resource
    ResourceIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceManagementType.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER", traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    ResourceManagementType.add_member(:ecs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS", traits: {"smithy.api#enumValue" => "ECS"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceRequirement.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value", traits: {"smithy.api#required" => {}}))
    ResourceRequirement.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "type", traits: {"smithy.api#required" => {}}))
    ResourceRequirement.type = Types::ResourceRequirement
    ResourceRequirements.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceRequirement, name: "member"))
    ResourceType.add_member(:gpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GPU", traits: {"smithy.api#enumValue" => "GPU"}))
    ResourceType.add_member(:inference_accelerator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFERENCE_ACCELERATOR", traits: {"smithy.api#enumValue" => "InferenceAccelerator"}))
    ResourceType.add_member(:neuron_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEURON_DEVICE", traits: {"smithy.api#enumValue" => "NeuronDevice"}))
    Resources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Resource, name: "member"))
    Rollback.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    Rollback.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedAt"))
    Rollback.add_member(:service_revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceRevisionArn"))
    Rollback.type = Types::Rollback
    RunTaskRequest.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "capacityProviderStrategy"))
    RunTaskRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    RunTaskRequest.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "count"))
    RunTaskRequest.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableECSManagedTags", traits: {"smithy.api#default" => false}))
    RunTaskRequest.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    RunTaskRequest.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "group"))
    RunTaskRequest.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "launchType"))
    RunTaskRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    RunTaskRequest.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskOverride, name: "overrides"))
    RunTaskRequest.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraints, name: "placementConstraints"))
    RunTaskRequest.add_member(:placement_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategies, name: "placementStrategy"))
    RunTaskRequest.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    RunTaskRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, name: "propagateTags"))
    RunTaskRequest.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "referenceId"))
    RunTaskRequest.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "startedBy"))
    RunTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    RunTaskRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinition", traits: {"smithy.api#required" => {}}))
    RunTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    RunTaskRequest.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskVolumeConfigurations, name: "volumeConfigurations"))
    RunTaskRequest.type = Types::RunTaskRequest
    RunTaskResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Tasks, name: "tasks", traits: {"smithy.api#notProperty" => {}}))
    RunTaskResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    RunTaskResponse.type = Types::RunTaskResponse
    RuntimePlatform.add_member(:cpu_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: CPUArchitecture, name: "cpuArchitecture"))
    RuntimePlatform.add_member(:operating_system_family, ::Smithy::Schema::Shapes::MemberShape.new(target: OSFamily, name: "operatingSystemFamily"))
    RuntimePlatform.type = Types::RuntimePlatform
    RuntimePlatformOverride.add_member(:cpu_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpuArchitecture"))
    RuntimePlatformOverride.type = Types::RuntimePlatformOverride
    S3FilesVolumeConfiguration.add_member(:file_system_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fileSystemArn", traits: {"smithy.api#required" => {}}))
    S3FilesVolumeConfiguration.add_member(:root_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "rootDirectory"))
    S3FilesVolumeConfiguration.add_member(:transit_encryption_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "transitEncryptionPort"))
    S3FilesVolumeConfiguration.add_member(:access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accessPointArn"))
    S3FilesVolumeConfiguration.type = Types::S3FilesVolumeConfiguration
    Scale.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "value", traits: {"smithy.api#default" => 0}))
    Scale.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: ScaleUnit, name: "unit"))
    Scale.type = Types::Scale
    ScaleUnit.add_member(:percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERCENT", traits: {"smithy.api#enumValue" => "PERCENT"}))
    SchedulingStrategy.add_member(:replica, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPLICA", traits: {"smithy.api#enumValue" => "REPLICA"}))
    SchedulingStrategy.add_member(:daemon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAEMON", traits: {"smithy.api#enumValue" => "DAEMON"}))
    Scope.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK", traits: {"smithy.api#enumValue" => "task"}))
    Scope.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "shared"}))
    Secret.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    Secret.add_member(:value_from, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "valueFrom", traits: {"smithy.api#required" => {}}))
    Secret.type = Types::Secret
    SecretList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Secret, name: "member"))
    ServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServerException.type = Types::ServerException
    Service.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceArn"))
    Service.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceName"))
    Service.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    Service.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, name: "loadBalancers"))
    Service.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, name: "serviceRegistries"))
    Service.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    Service.add_member(:desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "desiredCount", traits: {"smithy.api#default" => 0}))
    Service.add_member(:running_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "runningCount", traits: {"smithy.api#default" => 0}))
    Service.add_member(:pending_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "pendingCount", traits: {"smithy.api#default" => 0}))
    Service.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "launchType"))
    Service.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "capacityProviderStrategy"))
    Service.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    Service.add_member(:platform_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformFamily"))
    Service.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinition"))
    Service.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, name: "deploymentConfiguration"))
    Service.add_member(:task_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSets, name: "taskSets"))
    Service.add_member(:deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: Deployments, name: "deployments"))
    Service.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleArn"))
    Service.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEvents, name: "events"))
    Service.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    Service.add_member(:current_service_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "currentServiceDeployment"))
    Service.add_member(:current_service_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCurrentRevisionSummaryList, name: "currentServiceRevisions"))
    Service.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraints, name: "placementConstraints"))
    Service.add_member(:placement_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategies, name: "placementStrategy"))
    Service.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    Service.add_member(:health_check_grace_period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "healthCheckGracePeriodSeconds"))
    Service.add_member(:scheduling_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulingStrategy, name: "schedulingStrategy"))
    Service.add_member(:deployment_controller, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentController, name: "deploymentController"))
    Service.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    Service.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "createdBy"))
    Service.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableECSManagedTags", traits: {"smithy.api#default" => false}))
    Service.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, name: "propagateTags"))
    Service.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    Service.add_member(:availability_zone_rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneRebalancing, name: "availabilityZoneRebalancing"))
    Service.add_member(:resource_management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceManagementType, name: "resourceManagementType"))
    Service.type = Types::Service
    ServiceConnectAccessLogConfiguration.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectAccessLoggingFormat, name: "format", traits: {"smithy.api#required" => {}}))
    ServiceConnectAccessLogConfiguration.add_member(:include_query_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectIncludeQueryParameters, name: "includeQueryParameters"))
    ServiceConnectAccessLogConfiguration.type = Types::ServiceConnectAccessLogConfiguration
    ServiceConnectAccessLoggingFormat.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "TEXT"}))
    ServiceConnectAccessLoggingFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    ServiceConnectClientAlias.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, name: "port", traits: {"smithy.api#required" => {}}))
    ServiceConnectClientAlias.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "dnsName"))
    ServiceConnectClientAlias.add_member(:test_traffic_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectTestTrafficRules, name: "testTrafficRules"))
    ServiceConnectClientAlias.type = Types::ServiceConnectClientAlias
    ServiceConnectClientAliasList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectClientAlias, name: "member"))
    ServiceConnectConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    ServiceConnectConfiguration.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace"))
    ServiceConnectConfiguration.add_member(:services, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectServiceList, name: "services"))
    ServiceConnectConfiguration.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, name: "logConfiguration"))
    ServiceConnectConfiguration.add_member(:access_log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectAccessLogConfiguration, name: "accessLogConfiguration"))
    ServiceConnectConfiguration.type = Types::ServiceConnectConfiguration
    ServiceConnectIncludeQueryParameters.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ServiceConnectIncludeQueryParameters.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ServiceConnectService.add_member(:port_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "portName", traits: {"smithy.api#required" => {}}))
    ServiceConnectService.add_member(:discovery_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "discoveryName"))
    ServiceConnectService.add_member(:client_aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectClientAliasList, name: "clientAliases"))
    ServiceConnectService.add_member(:ingress_port_override, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, name: "ingressPortOverride"))
    ServiceConnectService.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeoutConfiguration, name: "timeout"))
    ServiceConnectService.add_member(:tls, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectTlsConfiguration, name: "tls"))
    ServiceConnectService.type = Types::ServiceConnectService
    ServiceConnectServiceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectService, name: "member"))
    ServiceConnectServiceResource.add_member(:discovery_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "discoveryName"))
    ServiceConnectServiceResource.add_member(:discovery_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "discoveryArn"))
    ServiceConnectServiceResource.type = Types::ServiceConnectServiceResource
    ServiceConnectServiceResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectServiceResource, name: "member"))
    ServiceConnectTestTrafficHeaderMatchRules.add_member(:exact, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "exact", traits: {"smithy.api#required" => {}}))
    ServiceConnectTestTrafficHeaderMatchRules.type = Types::ServiceConnectTestTrafficHeaderMatchRules
    ServiceConnectTestTrafficHeaderRules.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    ServiceConnectTestTrafficHeaderRules.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectTestTrafficHeaderMatchRules, name: "value"))
    ServiceConnectTestTrafficHeaderRules.type = Types::ServiceConnectTestTrafficHeaderRules
    ServiceConnectTestTrafficRules.add_member(:header, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectTestTrafficHeaderRules, name: "header", traits: {"smithy.api#required" => {}}))
    ServiceConnectTestTrafficRules.type = Types::ServiceConnectTestTrafficRules
    ServiceConnectTlsCertificateAuthority.add_member(:aws_pca_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "awsPcaAuthorityArn"))
    ServiceConnectTlsCertificateAuthority.type = Types::ServiceConnectTlsCertificateAuthority
    ServiceConnectTlsConfiguration.add_member(:issuer_certificate_authority, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectTlsCertificateAuthority, name: "issuerCertificateAuthority", traits: {"smithy.api#required" => {}}))
    ServiceConnectTlsConfiguration.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kmsKey"))
    ServiceConnectTlsConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "roleArn"))
    ServiceConnectTlsConfiguration.type = Types::ServiceConnectTlsConfiguration
    ServiceCurrentRevisionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ServiceCurrentRevisionSummary.add_member(:requested_task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "requestedTaskCount", traits: {"smithy.api#default" => 0}))
    ServiceCurrentRevisionSummary.add_member(:running_task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "runningTaskCount", traits: {"smithy.api#default" => 0}))
    ServiceCurrentRevisionSummary.add_member(:pending_task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "pendingTaskCount", traits: {"smithy.api#default" => 0}))
    ServiceCurrentRevisionSummary.type = Types::ServiceCurrentRevisionSummary
    ServiceCurrentRevisionSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceCurrentRevisionSummary, name: "member"))
    ServiceDeployment.add_member(:service_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceDeploymentArn"))
    ServiceDeployment.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceArn"))
    ServiceDeployment.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    ServiceDeployment.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ServiceDeployment.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedAt"))
    ServiceDeployment.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "finishedAt"))
    ServiceDeployment.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stoppedAt"))
    ServiceDeployment.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    ServiceDeployment.add_member(:source_service_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionsSummaryList, name: "sourceServiceRevisions"))
    ServiceDeployment.add_member(:target_service_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionSummary, name: "targetServiceRevision"))
    ServiceDeployment.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentStatus, name: "status"))
    ServiceDeployment.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ServiceDeployment.add_member(:lifecycle_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentLifecycleStage, name: "lifecycleStage"))
    ServiceDeployment.add_member(:lifecycle_hook_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentLifecycleHookDetailList, name: "lifecycleHookDetails"))
    ServiceDeployment.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, name: "deploymentConfiguration"))
    ServiceDeployment.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: Rollback, name: "rollback"))
    ServiceDeployment.add_member(:deployment_circuit_breaker, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentCircuitBreaker, name: "deploymentCircuitBreaker"))
    ServiceDeployment.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentAlarms, name: "alarms"))
    ServiceDeployment.type = Types::ServiceDeployment
    ServiceDeploymentAlarms.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentRollbackMonitorsStatus, name: "status"))
    ServiceDeploymentAlarms.add_member(:alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "alarmNames"))
    ServiceDeploymentAlarms.add_member(:triggered_alarm_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "triggeredAlarmNames"))
    ServiceDeploymentAlarms.type = Types::ServiceDeploymentAlarms
    ServiceDeploymentBrief.add_member(:service_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceDeploymentArn"))
    ServiceDeploymentBrief.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceArn"))
    ServiceDeploymentBrief.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    ServiceDeploymentBrief.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedAt"))
    ServiceDeploymentBrief.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ServiceDeploymentBrief.add_member(:finished_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "finishedAt"))
    ServiceDeploymentBrief.add_member(:target_service_revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetServiceRevisionArn"))
    ServiceDeploymentBrief.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentStatus, name: "status"))
    ServiceDeploymentBrief.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusReason"))
    ServiceDeploymentBrief.type = Types::ServiceDeploymentBrief
    ServiceDeploymentCircuitBreaker.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentRollbackMonitorsStatus, name: "status"))
    ServiceDeploymentCircuitBreaker.add_member(:failure_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "failureCount", traits: {"smithy.api#default" => 0}))
    ServiceDeploymentCircuitBreaker.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "threshold", traits: {"smithy.api#default" => 0}))
    ServiceDeploymentCircuitBreaker.type = Types::ServiceDeploymentCircuitBreaker
    ServiceDeploymentLifecycleStage.add_member(:reconcile_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECONCILE_SERVICE", traits: {"smithy.api#enumValue" => "RECONCILE_SERVICE"}))
    ServiceDeploymentLifecycleStage.add_member(:pre_scale_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_SCALE_UP", traits: {"smithy.api#enumValue" => "PRE_SCALE_UP"}))
    ServiceDeploymentLifecycleStage.add_member(:scale_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCALE_UP", traits: {"smithy.api#enumValue" => "SCALE_UP"}))
    ServiceDeploymentLifecycleStage.add_member(:post_scale_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_SCALE_UP", traits: {"smithy.api#enumValue" => "POST_SCALE_UP"}))
    ServiceDeploymentLifecycleStage.add_member(:test_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "TEST_TRAFFIC_SHIFT"}))
    ServiceDeploymentLifecycleStage.add_member(:post_test_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_TEST_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "POST_TEST_TRAFFIC_SHIFT"}))
    ServiceDeploymentLifecycleStage.add_member(:production_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCTION_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "PRODUCTION_TRAFFIC_SHIFT"}))
    ServiceDeploymentLifecycleStage.add_member(:post_production_traffic_shift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_PRODUCTION_TRAFFIC_SHIFT", traits: {"smithy.api#enumValue" => "POST_PRODUCTION_TRAFFIC_SHIFT"}))
    ServiceDeploymentLifecycleStage.add_member(:bake_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BAKE_TIME", traits: {"smithy.api#enumValue" => "BAKE_TIME"}))
    ServiceDeploymentLifecycleStage.add_member(:clean_up, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLEAN_UP", traits: {"smithy.api#enumValue" => "CLEAN_UP"}))
    ServiceDeploymentNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceDeploymentNotFoundException.type = Types::ServiceDeploymentNotFoundException
    ServiceDeploymentRollbackMonitorsStatus.add_member(:triggered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRIGGERED", traits: {"smithy.api#enumValue" => "TRIGGERED"}))
    ServiceDeploymentRollbackMonitorsStatus.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONITORING", traits: {"smithy.api#enumValue" => "MONITORING"}))
    ServiceDeploymentRollbackMonitorsStatus.add_member(:monitoring_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONITORING_COMPLETE", traits: {"smithy.api#enumValue" => "MONITORING_COMPLETE"}))
    ServiceDeploymentRollbackMonitorsStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ServiceDeploymentStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ServiceDeploymentStatus.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESSFUL", traits: {"smithy.api#enumValue" => "SUCCESSFUL"}))
    ServiceDeploymentStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ServiceDeploymentStatus.add_member(:stop_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP_REQUESTED", traits: {"smithy.api#enumValue" => "STOP_REQUESTED"}))
    ServiceDeploymentStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ServiceDeploymentStatus.add_member(:rollback_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_REQUESTED", traits: {"smithy.api#enumValue" => "ROLLBACK_REQUESTED"}))
    ServiceDeploymentStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    ServiceDeploymentStatus.add_member(:rollback_successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_SUCCESSFUL", traits: {"smithy.api#enumValue" => "ROLLBACK_SUCCESSFUL"}))
    ServiceDeploymentStatus.add_member(:rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "ROLLBACK_FAILED"}))
    ServiceDeploymentStatusList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentStatus, name: "member"))
    ServiceDeployments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeployment, name: "member"))
    ServiceDeploymentsBrief.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceDeploymentBrief, name: "member"))
    ServiceEvent.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    ServiceEvent.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ServiceEvent.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceEvent.type = Types::ServiceEvent
    ServiceEvents.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEvent, name: "member"))
    ServiceField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    ServiceFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceField, name: "member"))
    ServiceManagedEBSVolumeConfiguration.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "encrypted"))
    ServiceManagedEBSVolumeConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSKMSKeyId, name: "kmsKeyId"))
    ServiceManagedEBSVolumeConfiguration.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSVolumeType, name: "volumeType"))
    ServiceManagedEBSVolumeConfiguration.add_member(:size_in_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "sizeInGiB"))
    ServiceManagedEBSVolumeConfiguration.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSSnapshotId, name: "snapshotId"))
    ServiceManagedEBSVolumeConfiguration.add_member(:volume_initialization_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "volumeInitializationRate"))
    ServiceManagedEBSVolumeConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "iops"))
    ServiceManagedEBSVolumeConfiguration.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "throughput"))
    ServiceManagedEBSVolumeConfiguration.add_member(:tag_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSTagSpecifications, name: "tagSpecifications"))
    ServiceManagedEBSVolumeConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    ServiceManagedEBSVolumeConfiguration.add_member(:filesystem_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFilesystemType, name: "filesystemType"))
    ServiceManagedEBSVolumeConfiguration.type = Types::ServiceManagedEBSVolumeConfiguration
    ServiceNotActiveException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceNotActiveException.type = Types::ServiceNotActiveException
    ServiceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceNotFoundException.type = Types::ServiceNotFoundException
    ServiceRegistries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistry, name: "member"))
    ServiceRegistry.add_member(:registry_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "registryArn"))
    ServiceRegistry.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "port"))
    ServiceRegistry.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName"))
    ServiceRegistry.add_member(:container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "containerPort"))
    ServiceRegistry.type = Types::ServiceRegistry
    ServiceRevision.add_member(:service_revision_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceRevisionArn"))
    ServiceRevision.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceArn"))
    ServiceRevision.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    ServiceRevision.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinition"))
    ServiceRevision.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "capacityProviderStrategy"))
    ServiceRevision.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "launchType"))
    ServiceRevision.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    ServiceRevision.add_member(:platform_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformFamily"))
    ServiceRevision.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, name: "loadBalancers"))
    ServiceRevision.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, name: "serviceRegistries"))
    ServiceRevision.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    ServiceRevision.add_member(:container_images, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerImages, name: "containerImages"))
    ServiceRevision.add_member(:guard_duty_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "guardDutyEnabled", traits: {"smithy.api#default" => false}))
    ServiceRevision.add_member(:service_connect_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectConfiguration, name: "serviceConnectConfiguration"))
    ServiceRevision.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVolumeConfigurations, name: "volumeConfigurations"))
    ServiceRevision.add_member(:fargate_ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEphemeralStorage, name: "fargateEphemeralStorage"))
    ServiceRevision.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ServiceRevision.add_member(:vpc_lattice_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLatticeConfigurations, name: "vpcLatticeConfigurations"))
    ServiceRevision.add_member(:resolved_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedConfiguration, name: "resolvedConfiguration"))
    ServiceRevision.add_member(:ecs_managed_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSManagedResources, name: "ecsManagedResources"))
    ServiceRevision.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionOverrides, name: "overrides"))
    ServiceRevision.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "monitoring"))
    ServiceRevision.type = Types::ServiceRevision
    ServiceRevisionCleanup.add_member(:blocking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCKING", traits: {"smithy.api#enumValue" => "BLOCKING"}))
    ServiceRevisionCleanup.add_member(:deferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFERRED", traits: {"smithy.api#enumValue" => "DEFERRED"}))
    ServiceRevisionLoadBalancer.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetGroupArn"))
    ServiceRevisionLoadBalancer.add_member(:production_listener_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "productionListenerRule"))
    ServiceRevisionLoadBalancer.type = Types::ServiceRevisionLoadBalancer
    ServiceRevisionLoadBalancers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionLoadBalancer, name: "member"))
    ServiceRevisionOverrides.add_member(:runtime_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimePlatformOverride, name: "runtimePlatform"))
    ServiceRevisionOverrides.type = Types::ServiceRevisionOverrides
    ServiceRevisionSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    ServiceRevisionSummary.add_member(:requested_task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "requestedTaskCount", traits: {"smithy.api#default" => 0}))
    ServiceRevisionSummary.add_member(:running_task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "runningTaskCount", traits: {"smithy.api#default" => 0}))
    ServiceRevisionSummary.add_member(:pending_task_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "pendingTaskCount", traits: {"smithy.api#default" => 0}))
    ServiceRevisionSummary.add_member(:requested_test_traffic_weight, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "requestedTestTrafficWeight", traits: {"smithy.api#default" => nil}))
    ServiceRevisionSummary.add_member(:requested_production_traffic_weight, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "requestedProductionTrafficWeight", traits: {"smithy.api#default" => nil}))
    ServiceRevisionSummary.type = Types::ServiceRevisionSummary
    ServiceRevisionVpcLatticeConfiguration.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetGroupArn"))
    ServiceRevisionVpcLatticeConfiguration.add_member(:production_listener_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "productionListenerRule"))
    ServiceRevisionVpcLatticeConfiguration.type = Types::ServiceRevisionVpcLatticeConfiguration
    ServiceRevisionVpcLatticeConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionVpcLatticeConfiguration, name: "member"))
    ServiceRevisions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevision, name: "member"))
    ServiceRevisionsSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRevisionSummary, name: "member"))
    ServiceVolumeConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSVolumeName, name: "name", traits: {"smithy.api#required" => {}}))
    ServiceVolumeConfiguration.add_member(:managed_ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedEBSVolumeConfiguration, name: "managedEBSVolume"))
    ServiceVolumeConfiguration.type = Types::ServiceVolumeConfiguration
    ServiceVolumeConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVolumeConfiguration, name: "member"))
    Services.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "member"))
    Session.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sessionId"))
    Session.add_member(:stream_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "streamUrl"))
    Session.add_member(:token_value, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "tokenValue"))
    Session.type = Types::Session
    Setting.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingName, name: "name"))
    Setting.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    Setting.add_member(:principal_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "principalArn"))
    Setting.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingType, name: "type"))
    Setting.type = Types::Setting
    SettingName.add_member(:service_long_arn_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_LONG_ARN_FORMAT", traits: {"smithy.api#enumValue" => "serviceLongArnFormat"}))
    SettingName.add_member(:task_long_arn_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK_LONG_ARN_FORMAT", traits: {"smithy.api#enumValue" => "taskLongArnFormat"}))
    SettingName.add_member(:container_instance_long_arn_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINER_INSTANCE_LONG_ARN_FORMAT", traits: {"smithy.api#enumValue" => "containerInstanceLongArnFormat"}))
    SettingName.add_member(:awsvpc_trunking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWSVPC_TRUNKING", traits: {"smithy.api#enumValue" => "awsvpcTrunking"}))
    SettingName.add_member(:container_insights, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINER_INSIGHTS", traits: {"smithy.api#enumValue" => "containerInsights"}))
    SettingName.add_member(:fargate_fips_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE_FIPS_MODE", traits: {"smithy.api#enumValue" => "fargateFIPSMode"}))
    SettingName.add_member(:tag_resource_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG_RESOURCE_AUTHORIZATION", traits: {"smithy.api#enumValue" => "tagResourceAuthorization"}))
    SettingName.add_member(:fargate_task_retirement_wait_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE_TASK_RETIREMENT_WAIT_PERIOD", traits: {"smithy.api#enumValue" => "fargateTaskRetirementWaitPeriod"}))
    SettingName.add_member(:guard_duty_activate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GUARD_DUTY_ACTIVATE", traits: {"smithy.api#enumValue" => "guardDutyActivate"}))
    SettingName.add_member(:default_log_driver_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_LOG_DRIVER_MODE", traits: {"smithy.api#enumValue" => "defaultLogDriverMode"}))
    SettingName.add_member(:fargate_event_windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FARGATE_EVENT_WINDOWS", traits: {"smithy.api#enumValue" => "fargateEventWindows"}))
    SettingType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "user"}))
    SettingType.add_member(:aws_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MANAGED", traits: {"smithy.api#enumValue" => "aws_managed"}))
    Settings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Setting, name: "member"))
    SortOrder.add_member(:asc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASC", traits: {"smithy.api#enumValue" => "ASC"}))
    SortOrder.add_member(:desc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESC", traits: {"smithy.api#enumValue" => "DESC"}))
    StabilityStatus.add_member(:steady_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STEADY_STATE", traits: {"smithy.api#enumValue" => "STEADY_STATE"}))
    StabilityStatus.add_member(:stabilizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STABILIZING", traits: {"smithy.api#enumValue" => "STABILIZING"}))
    StartTaskRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    StartTaskRequest.add_member(:container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "containerInstances", traits: {"smithy.api#required" => {}}))
    StartTaskRequest.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableECSManagedTags", traits: {"smithy.api#default" => false}))
    StartTaskRequest.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    StartTaskRequest.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "group"))
    StartTaskRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    StartTaskRequest.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskOverride, name: "overrides"))
    StartTaskRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, name: "propagateTags"))
    StartTaskRequest.add_member(:reference_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "referenceId"))
    StartTaskRequest.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "startedBy"))
    StartTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    StartTaskRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinition", traits: {"smithy.api#required" => {}}))
    StartTaskRequest.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskVolumeConfigurations, name: "volumeConfigurations"))
    StartTaskRequest.type = Types::StartTaskRequest
    StartTaskResponse.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: Tasks, name: "tasks", traits: {"smithy.api#notProperty" => {}}))
    StartTaskResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    StartTaskResponse.type = Types::StartTaskResponse
    Statistics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyValuePair, name: "member"))
    StopServiceDeploymentRequest.add_member(:service_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceDeploymentArn", traits: {"smithy.api#required" => {}}))
    StopServiceDeploymentRequest.add_member(:stop_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StopServiceDeploymentStopType, name: "stopType"))
    StopServiceDeploymentRequest.type = Types::StopServiceDeploymentRequest
    StopServiceDeploymentResponse.add_member(:service_deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceDeploymentArn", traits: {"smithy.api#notProperty" => {}}))
    StopServiceDeploymentResponse.type = Types::StopServiceDeploymentResponse
    StopServiceDeploymentStopType.add_member(:abort, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORT", traits: {"smithy.api#enumValue" => "ABORT"}))
    StopServiceDeploymentStopType.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK", traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    StopTaskRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    StopTaskRequest.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "task", traits: {"smithy.api#required" => {}}))
    StopTaskRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    StopTaskRequest.type = Types::StopTaskRequest
    StopTaskResponse.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: Task, name: "task", traits: {"smithy.api#notProperty" => {}}))
    StopTaskResponse.type = Types::StopTaskResponse
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    StringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    StringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    SubmitAttachmentStateChangesRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    SubmitAttachmentStateChangesRequest.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStateChanges, name: "attachments", traits: {"smithy.api#required" => {}}))
    SubmitAttachmentStateChangesRequest.type = Types::SubmitAttachmentStateChangesRequest
    SubmitAttachmentStateChangesResponse.add_member(:acknowledgment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "acknowledgment", traits: {"smithy.api#notProperty" => {}}))
    SubmitAttachmentStateChangesResponse.type = Types::SubmitAttachmentStateChangesResponse
    SubmitContainerStateChangeRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    SubmitContainerStateChangeRequest.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "task"))
    SubmitContainerStateChangeRequest.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerName"))
    SubmitContainerStateChangeRequest.add_member(:runtime_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "runtimeId"))
    SubmitContainerStateChangeRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    SubmitContainerStateChangeRequest.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "exitCode"))
    SubmitContainerStateChangeRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    SubmitContainerStateChangeRequest.add_member(:network_bindings, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkBindings, name: "networkBindings"))
    SubmitContainerStateChangeRequest.type = Types::SubmitContainerStateChangeRequest
    SubmitContainerStateChangeResponse.add_member(:acknowledgment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "acknowledgment", traits: {"smithy.api#notProperty" => {}}))
    SubmitContainerStateChangeResponse.type = Types::SubmitContainerStateChangeResponse
    SubmitTaskStateChangeRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    SubmitTaskStateChangeRequest.add_member(:task, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "task"))
    SubmitTaskStateChangeRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    SubmitTaskStateChangeRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reason"))
    SubmitTaskStateChangeRequest.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerStateChanges, name: "containers"))
    SubmitTaskStateChangeRequest.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachmentStateChanges, name: "attachments"))
    SubmitTaskStateChangeRequest.add_member(:managed_agents, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedAgentStateChanges, name: "managedAgents"))
    SubmitTaskStateChangeRequest.add_member(:pull_started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "pullStartedAt"))
    SubmitTaskStateChangeRequest.add_member(:pull_stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "pullStoppedAt"))
    SubmitTaskStateChangeRequest.add_member(:execution_stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "executionStoppedAt"))
    SubmitTaskStateChangeRequest.type = Types::SubmitTaskStateChangeRequest
    SubmitTaskStateChangeResponse.add_member(:acknowledgment, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "acknowledgment", traits: {"smithy.api#notProperty" => {}}))
    SubmitTaskStateChangeResponse.type = Types::SubmitTaskStateChangeResponse
    SystemControl.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "namespace"))
    SystemControl.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    SystemControl.type = Types::SystemControl
    SystemControls.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemControl, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    Tag.type = Types::Tag
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TargetNotConnectedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TargetNotConnectedException.type = Types::TargetNotConnectedException
    TargetNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TargetNotFoundException.type = Types::TargetNotFoundException
    TargetType.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINER_INSTANCE", traits: {"smithy.api#enumValue" => "container-instance"}))
    Task.add_member(:attachments, ::Smithy::Schema::Shapes::MemberShape.new(target: Attachments, name: "attachments"))
    Task.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: Attributes, name: "attributes"))
    Task.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "availabilityZone"))
    Task.add_member(:capacity_provider_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityProviderName"))
    Task.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    Task.add_member(:connectivity, ::Smithy::Schema::Shapes::MemberShape.new(target: Connectivity, name: "connectivity"))
    Task.add_member(:connectivity_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "connectivityAt"))
    Task.add_member(:container_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerInstanceArn"))
    Task.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: Containers, name: "containers"))
    Task.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpu"))
    Task.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    Task.add_member(:desired_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "desiredStatus"))
    Task.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    Task.add_member(:execution_stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "executionStoppedAt"))
    Task.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "group"))
    Task.add_member(:health_status, ::Smithy::Schema::Shapes::MemberShape.new(target: HealthStatus, name: "healthStatus"))
    Task.add_member(:inference_accelerators, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAccelerators, name: "inferenceAccelerators"))
    Task.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lastStatus"))
    Task.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "launchType"))
    Task.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "memory"))
    Task.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskOverride, name: "overrides"))
    Task.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    Task.add_member(:platform_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformFamily"))
    Task.add_member(:pull_started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "pullStartedAt"))
    Task.add_member(:pull_stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "pullStoppedAt"))
    Task.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedAt"))
    Task.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "startedBy"))
    Task.add_member(:stop_code, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStopCode, name: "stopCode"))
    Task.add_member(:stopped_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stoppedAt"))
    Task.add_member(:stopped_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "stoppedReason"))
    Task.add_member(:stopping_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stoppingAt"))
    Task.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    Task.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskArn"))
    Task.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinitionArn"))
    Task.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "version", traits: {"smithy.api#default" => 0}))
    Task.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "ephemeralStorage"))
    Task.add_member(:fargate_ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskEphemeralStorage, name: "fargateEphemeralStorage"))
    Task.type = Types::Task
    TaskDefinition.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinitionArn"))
    TaskDefinition.add_member(:container_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDefinitions, name: "containerDefinitions"))
    TaskDefinition.add_member(:family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "family"))
    TaskDefinition.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskRoleArn"))
    TaskDefinition.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    TaskDefinition.add_member(:network_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkMode, name: "networkMode"))
    TaskDefinition.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "revision", traits: {"smithy.api#default" => 0}))
    TaskDefinition.add_member(:volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeList, name: "volumes"))
    TaskDefinition.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionStatus, name: "status"))
    TaskDefinition.add_member(:requires_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: RequiresAttributes, name: "requiresAttributes"))
    TaskDefinition.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionPlacementConstraints, name: "placementConstraints"))
    TaskDefinition.add_member(:compatibilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibilityList, name: "compatibilities"))
    TaskDefinition.add_member(:runtime_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimePlatform, name: "runtimePlatform"))
    TaskDefinition.add_member(:requires_compatibilities, ::Smithy::Schema::Shapes::MemberShape.new(target: CompatibilityList, name: "requiresCompatibilities"))
    TaskDefinition.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpu"))
    TaskDefinition.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "memory"))
    TaskDefinition.add_member(:inference_accelerators, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAccelerators, name: "inferenceAccelerators"))
    TaskDefinition.add_member(:pid_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PidMode, name: "pidMode"))
    TaskDefinition.add_member(:ipc_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: IpcMode, name: "ipcMode"))
    TaskDefinition.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "proxyConfiguration"))
    TaskDefinition.add_member(:registered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "registeredAt"))
    TaskDefinition.add_member(:deregistered_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "deregisteredAt"))
    TaskDefinition.add_member(:delete_requested_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "deleteRequestedAt"))
    TaskDefinition.add_member(:registered_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "registeredBy"))
    TaskDefinition.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "ephemeralStorage"))
    TaskDefinition.add_member(:enable_fault_injection, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enableFaultInjection"))
    TaskDefinition.type = Types::TaskDefinition
    TaskDefinitionFamilyStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TaskDefinitionFamilyStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    TaskDefinitionFamilyStatus.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    TaskDefinitionField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    TaskDefinitionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionField, name: "member"))
    TaskDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinition, name: "member"))
    TaskDefinitionPlacementConstraint.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionPlacementConstraintType, name: "type"))
    TaskDefinitionPlacementConstraint.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "expression"))
    TaskDefinitionPlacementConstraint.type = Types::TaskDefinitionPlacementConstraint
    TaskDefinitionPlacementConstraintType.add_member(:member_of, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER_OF", traits: {"smithy.api#enumValue" => "memberOf"}))
    TaskDefinitionPlacementConstraints.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskDefinitionPlacementConstraint, name: "member"))
    TaskDefinitionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TaskDefinitionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    TaskDefinitionStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    TaskEphemeralStorage.add_member(:size_in_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "sizeInGiB", traits: {"smithy.api#default" => 0}))
    TaskEphemeralStorage.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "kmsKeyId"))
    TaskEphemeralStorage.type = Types::TaskEphemeralStorage
    TaskField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    TaskFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskField, name: "member"))
    TaskFilesystemType.add_member(:ext3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXT3", traits: {"smithy.api#enumValue" => "ext3"}))
    TaskFilesystemType.add_member(:ext4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXT4", traits: {"smithy.api#enumValue" => "ext4"}))
    TaskFilesystemType.add_member(:xfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XFS", traits: {"smithy.api#enumValue" => "xfs"}))
    TaskFilesystemType.add_member(:ntfs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NTFS", traits: {"smithy.api#enumValue" => "ntfs"}))
    TaskManagedEBSVolumeConfiguration.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "encrypted"))
    TaskManagedEBSVolumeConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSKMSKeyId, name: "kmsKeyId"))
    TaskManagedEBSVolumeConfiguration.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSVolumeType, name: "volumeType"))
    TaskManagedEBSVolumeConfiguration.add_member(:size_in_gi_b, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "sizeInGiB"))
    TaskManagedEBSVolumeConfiguration.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSSnapshotId, name: "snapshotId"))
    TaskManagedEBSVolumeConfiguration.add_member(:volume_initialization_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "volumeInitializationRate"))
    TaskManagedEBSVolumeConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "iops"))
    TaskManagedEBSVolumeConfiguration.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "throughput"))
    TaskManagedEBSVolumeConfiguration.add_member(:tag_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: EBSTagSpecifications, name: "tagSpecifications"))
    TaskManagedEBSVolumeConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    TaskManagedEBSVolumeConfiguration.add_member(:termination_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskManagedEBSVolumeTerminationPolicy, name: "terminationPolicy"))
    TaskManagedEBSVolumeConfiguration.add_member(:filesystem_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskFilesystemType, name: "filesystemType"))
    TaskManagedEBSVolumeConfiguration.type = Types::TaskManagedEBSVolumeConfiguration
    TaskManagedEBSVolumeTerminationPolicy.add_member(:delete_on_termination, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "deleteOnTermination", traits: {"smithy.api#required" => {}}))
    TaskManagedEBSVolumeTerminationPolicy.type = Types::TaskManagedEBSVolumeTerminationPolicy
    TaskOverride.add_member(:container_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOverrides, name: "containerOverrides"))
    TaskOverride.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpu"))
    TaskOverride.add_member(:inference_accelerator_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceAcceleratorOverrides, name: "inferenceAcceleratorOverrides"))
    TaskOverride.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    TaskOverride.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "memory"))
    TaskOverride.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskRoleArn"))
    TaskOverride.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: EphemeralStorage, name: "ephemeralStorage"))
    TaskOverride.type = Types::TaskOverride
    TaskSet.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    TaskSet.add_member(:task_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskSetArn"))
    TaskSet.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceArn"))
    TaskSet.add_member(:cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "clusterArn"))
    TaskSet.add_member(:started_by, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "startedBy"))
    TaskSet.add_member(:external_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "externalId"))
    TaskSet.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    TaskSet.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinition"))
    TaskSet.add_member(:computed_desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "computedDesiredCount", traits: {"smithy.api#default" => 0}))
    TaskSet.add_member(:pending_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "pendingCount", traits: {"smithy.api#default" => 0}))
    TaskSet.add_member(:running_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "runningCount", traits: {"smithy.api#default" => 0}))
    TaskSet.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    TaskSet.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    TaskSet.add_member(:launch_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchType, name: "launchType"))
    TaskSet.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "capacityProviderStrategy"))
    TaskSet.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    TaskSet.add_member(:platform_family, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformFamily"))
    TaskSet.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    TaskSet.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, name: "loadBalancers"))
    TaskSet.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, name: "serviceRegistries"))
    TaskSet.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: Scale, name: "scale"))
    TaskSet.add_member(:stability_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StabilityStatus, name: "stabilityStatus"))
    TaskSet.add_member(:stability_status_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "stabilityStatusAt"))
    TaskSet.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "tags"))
    TaskSet.add_member(:fargate_ephemeral_storage, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentEphemeralStorage, name: "fargateEphemeralStorage"))
    TaskSet.type = Types::TaskSet
    TaskSetField.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAGS", traits: {"smithy.api#enumValue" => "TAGS"}))
    TaskSetFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSetField, name: "member"))
    TaskSetNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TaskSetNotFoundException.type = Types::TaskSetNotFoundException
    TaskSets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSet, name: "member"))
    TaskStopCode.add_member(:task_failed_to_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TASK_FAILED_TO_START", traits: {"smithy.api#enumValue" => "TaskFailedToStart"}))
    TaskStopCode.add_member(:essential_container_exited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ESSENTIAL_CONTAINER_EXITED", traits: {"smithy.api#enumValue" => "EssentialContainerExited"}))
    TaskStopCode.add_member(:user_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_INITIATED", traits: {"smithy.api#enumValue" => "UserInitiated"}))
    TaskStopCode.add_member(:service_scheduler_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_SCHEDULER_INITIATED", traits: {"smithy.api#enumValue" => "ServiceSchedulerInitiated"}))
    TaskStopCode.add_member(:spot_interruption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOT_INTERRUPTION", traits: {"smithy.api#enumValue" => "SpotInterruption"}))
    TaskStopCode.add_member(:termination_notice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATION_NOTICE", traits: {"smithy.api#enumValue" => "TerminationNotice"}))
    TaskStopCode.add_member(:infrastructure_health, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFRASTRUCTURE_HEALTH", traits: {"smithy.api#enumValue" => "InfrastructureHealth"}))
    TaskVolumeConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ECSVolumeName, name: "name", traits: {"smithy.api#required" => {}}))
    TaskVolumeConfiguration.add_member(:managed_ebs_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskManagedEBSVolumeConfiguration, name: "managedEBSVolume"))
    TaskVolumeConfiguration.type = Types::TaskVolumeConfiguration
    TaskVolumeConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskVolumeConfiguration, name: "member"))
    Tasks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Task, name: "member"))
    ThresholdConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ThresholdType, name: "type", traits: {"smithy.api#required" => {}}))
    ThresholdConfiguration.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "value", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    ThresholdConfiguration.type = Types::ThresholdConfiguration
    ThresholdType.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    ThresholdType.add_member(:bounded_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOUNDED_PERCENT", traits: {"smithy.api#enumValue" => "BOUNDED_PERCENT"}))
    ThresholdType.add_member(:unbounded_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNBOUNDED_PERCENT", traits: {"smithy.api#enumValue" => "UNBOUNDED_PERCENT"}))
    TimeoutConfiguration.add_member(:idle_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "idleTimeoutSeconds"))
    TimeoutConfiguration.add_member(:per_request_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "perRequestTimeoutSeconds"))
    TimeoutConfiguration.type = Types::TimeoutConfiguration
    Tmpfs.add_member(:container_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerPath", traits: {"smithy.api#required" => {}}))
    Tmpfs.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "size", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Tmpfs.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "mountOptions"))
    Tmpfs.type = Types::Tmpfs
    TmpfsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tmpfs, name: "member"))
    TotalLocalStorageGBRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, name: "min"))
    TotalLocalStorageGBRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedDouble, name: "max"))
    TotalLocalStorageGBRequest.type = Types::TotalLocalStorageGBRequest
    TransportProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TCP", traits: {"smithy.api#enumValue" => "tcp"}))
    TransportProtocol.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UDP", traits: {"smithy.api#enumValue" => "udp"}))
    Ulimit.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: UlimitName, name: "name", traits: {"smithy.api#required" => {}}))
    Ulimit.add_member(:soft_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "softLimit", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Ulimit.add_member(:hard_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "hardLimit", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    Ulimit.type = Types::Ulimit
    UlimitList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ulimit, name: "member"))
    UlimitName.add_member(:core, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CORE", traits: {"smithy.api#enumValue" => "core"}))
    UlimitName.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CPU", traits: {"smithy.api#enumValue" => "cpu"}))
    UlimitName.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA", traits: {"smithy.api#enumValue" => "data"}))
    UlimitName.add_member(:fsize, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FSIZE", traits: {"smithy.api#enumValue" => "fsize"}))
    UlimitName.add_member(:locks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCKS", traits: {"smithy.api#enumValue" => "locks"}))
    UlimitName.add_member(:memlock, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMLOCK", traits: {"smithy.api#enumValue" => "memlock"}))
    UlimitName.add_member(:msgqueue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MSGQUEUE", traits: {"smithy.api#enumValue" => "msgqueue"}))
    UlimitName.add_member(:nice, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NICE", traits: {"smithy.api#enumValue" => "nice"}))
    UlimitName.add_member(:nofile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOFILE", traits: {"smithy.api#enumValue" => "nofile"}))
    UlimitName.add_member(:nproc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NPROC", traits: {"smithy.api#enumValue" => "nproc"}))
    UlimitName.add_member(:rss, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSS", traits: {"smithy.api#enumValue" => "rss"}))
    UlimitName.add_member(:rtprio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RTPRIO", traits: {"smithy.api#enumValue" => "rtprio"}))
    UlimitName.add_member(:rttime, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RTTIME", traits: {"smithy.api#enumValue" => "rttime"}))
    UlimitName.add_member(:sigpending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIGPENDING", traits: {"smithy.api#enumValue" => "sigpending"}))
    UlimitName.add_member(:stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STACK", traits: {"smithy.api#enumValue" => "stack"}))
    UnsupportedFeatureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UnsupportedFeatureException.type = Types::UnsupportedFeatureException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateCapacityProviderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "CapacityProviderName"}))
    UpdateCapacityProviderRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    UpdateCapacityProviderRequest.add_member(:auto_scaling_group_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupProviderUpdate, name: "autoScalingGroupProvider"))
    UpdateCapacityProviderRequest.add_member(:managed_instances_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateManagedInstancesProviderConfiguration, name: "managedInstancesProvider"))
    UpdateCapacityProviderRequest.type = Types::UpdateCapacityProviderRequest
    UpdateCapacityProviderResponse.add_member(:capacity_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProvider, name: "capacityProvider", traits: {"smithy.api#notProperty" => {}}))
    UpdateCapacityProviderResponse.type = Types::UpdateCapacityProviderResponse
    UpdateClusterRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ClusterName"}))
    UpdateClusterRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSettings, name: "settings"))
    UpdateClusterRequest.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterConfiguration, name: "configuration"))
    UpdateClusterRequest.add_member(:service_connect_defaults, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterServiceConnectDefaultsRequest, name: "serviceConnectDefaults"))
    UpdateClusterRequest.type = Types::UpdateClusterRequest
    UpdateClusterResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster", traits: {"smithy.api#notProperty" => {}}))
    UpdateClusterResponse.type = Types::UpdateClusterResponse
    UpdateClusterSettingsRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ClusterName"}))
    UpdateClusterSettingsRequest.add_member(:settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterSettings, name: "settings", traits: {"smithy.api#required" => {}}))
    UpdateClusterSettingsRequest.type = Types::UpdateClusterSettingsRequest
    UpdateClusterSettingsResponse.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: Cluster, name: "cluster", traits: {"smithy.api#notProperty" => {}}))
    UpdateClusterSettingsResponse.type = Types::UpdateClusterSettingsResponse
    UpdateContainerAgentRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    UpdateContainerAgentRequest.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "containerInstance", traits: {"smithy.api#required" => {}}))
    UpdateContainerAgentRequest.type = Types::UpdateContainerAgentRequest
    UpdateContainerAgentResponse.add_member(:container_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstance, name: "containerInstance", traits: {"smithy.api#notProperty" => {}}))
    UpdateContainerAgentResponse.type = Types::UpdateContainerAgentResponse
    UpdateContainerInstancesStateRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    UpdateContainerInstancesStateRequest.add_member(:container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "containerInstances", traits: {"smithy.api#required" => {}}))
    UpdateContainerInstancesStateRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstanceStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdateContainerInstancesStateRequest.type = Types::UpdateContainerInstancesStateRequest
    UpdateContainerInstancesStateResponse.add_member(:container_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerInstances, name: "containerInstances", traits: {"smithy.api#notProperty" => {}}))
    UpdateContainerInstancesStateResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    UpdateContainerInstancesStateResponse.type = Types::UpdateContainerInstancesStateResponse
    UpdateDaemonRequest.add_member(:daemon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonArn", traits: {"smithy.api#required" => {}}))
    UpdateDaemonRequest.add_member(:daemon_task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonTaskDefinitionArn", traits: {"smithy.api#required" => {}}))
    UpdateDaemonRequest.add_member(:capacity_provider_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "capacityProviderArns", traits: {"smithy.api#required" => {}}))
    UpdateDaemonRequest.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonDeploymentConfiguration, name: "deploymentConfiguration"))
    UpdateDaemonRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonPropagateTags, name: "propagateTags"))
    UpdateDaemonRequest.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableECSManagedTags", traits: {"smithy.api#default" => false}))
    UpdateDaemonRequest.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enableExecuteCommand", traits: {"smithy.api#default" => false}))
    UpdateDaemonRequest.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "critical"))
    UpdateDaemonRequest.type = Types::UpdateDaemonRequest
    UpdateDaemonResponse.add_member(:daemon_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "daemonArn", traits: {"smithy.api#notProperty" => {}}))
    UpdateDaemonResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DaemonStatus, name: "status", traits: {"smithy.api#notProperty" => {}}))
    UpdateDaemonResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt", traits: {"smithy.api#notProperty" => {}}))
    UpdateDaemonResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt", traits: {"smithy.api#notProperty" => {}}))
    UpdateDaemonResponse.add_member(:deployment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deploymentArn", traits: {"smithy.api#notProperty" => {}}))
    UpdateDaemonResponse.type = Types::UpdateDaemonResponse
    UpdateExpressGatewayServiceRequest.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceArn", traits: {"smithy.api#required" => {}}))
    UpdateExpressGatewayServiceRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionRoleArn"))
    UpdateExpressGatewayServiceRequest.add_member(:health_check_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "healthCheckPath"))
    UpdateExpressGatewayServiceRequest.add_member(:primary_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayContainer, name: "primaryContainer"))
    UpdateExpressGatewayServiceRequest.add_member(:task_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskRoleArn"))
    UpdateExpressGatewayServiceRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceNetworkConfiguration, name: "networkConfiguration"))
    UpdateExpressGatewayServiceRequest.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpu"))
    UpdateExpressGatewayServiceRequest.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "memory"))
    UpdateExpressGatewayServiceRequest.add_member(:cpu_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressCpuArchitecture, name: "cpuArchitecture"))
    UpdateExpressGatewayServiceRequest.add_member(:scaling_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayScalingTarget, name: "scalingTarget"))
    UpdateExpressGatewayServiceRequest.add_member(:task_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinitionArn"))
    UpdateExpressGatewayServiceRequest.type = Types::UpdateExpressGatewayServiceRequest
    UpdateExpressGatewayServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdatedExpressGatewayService, name: "service", traits: {"smithy.api#notProperty" => {}}))
    UpdateExpressGatewayServiceResponse.type = Types::UpdateExpressGatewayServiceResponse
    UpdateInProgressException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    UpdateInProgressException.type = Types::UpdateInProgressException
    UpdateManagedInstancesProviderConfiguration.add_member(:infrastructure_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "infrastructureRoleArn", traits: {"smithy.api#required" => {}}))
    UpdateManagedInstancesProviderConfiguration.add_member(:instance_launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceLaunchTemplateUpdate, name: "instanceLaunchTemplate", traits: {"smithy.api#required" => {}}))
    UpdateManagedInstancesProviderConfiguration.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateMITags, name: "propagateTags"))
    UpdateManagedInstancesProviderConfiguration.add_member(:infrastructure_optimization, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureOptimization, name: "infrastructureOptimization"))
    UpdateManagedInstancesProviderConfiguration.add_member(:auto_repair_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRepairConfiguration, name: "autoRepairConfiguration"))
    UpdateManagedInstancesProviderConfiguration.type = Types::UpdateManagedInstancesProviderConfiguration
    UpdateServicePrimaryTaskSetRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ClusterName"}))
    UpdateServicePrimaryTaskSetRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "service", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ServiceName"}))
    UpdateServicePrimaryTaskSetRequest.add_member(:primary_task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "primaryTaskSet", traits: {"smithy.api#required" => {}}))
    UpdateServicePrimaryTaskSetRequest.type = Types::UpdateServicePrimaryTaskSetRequest
    UpdateServicePrimaryTaskSetResponse.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSet, name: "taskSet", traits: {"smithy.api#notProperty" => {}}))
    UpdateServicePrimaryTaskSetResponse.type = Types::UpdateServicePrimaryTaskSetResponse
    UpdateServiceRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    UpdateServiceRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "service", traits: {"smithy.api#required" => {}}))
    UpdateServiceRequest.add_member(:desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "desiredCount"))
    UpdateServiceRequest.add_member(:task_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskDefinition"))
    UpdateServiceRequest.add_member(:capacity_provider_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityProviderStrategy, name: "capacityProviderStrategy"))
    UpdateServiceRequest.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, name: "deploymentConfiguration"))
    UpdateServiceRequest.add_member(:availability_zone_rebalancing, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityZoneRebalancing, name: "availabilityZoneRebalancing"))
    UpdateServiceRequest.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    UpdateServiceRequest.add_member(:placement_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementConstraints, name: "placementConstraints"))
    UpdateServiceRequest.add_member(:placement_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStrategies, name: "placementStrategy"))
    UpdateServiceRequest.add_member(:platform_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "platformVersion"))
    UpdateServiceRequest.add_member(:force_new_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "forceNewDeployment", traits: {"smithy.api#default" => false}))
    UpdateServiceRequest.add_member(:health_check_grace_period_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "healthCheckGracePeriodSeconds"))
    UpdateServiceRequest.add_member(:deployment_controller, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentController, name: "deploymentController"))
    UpdateServiceRequest.add_member(:enable_execute_command, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enableExecuteCommand"))
    UpdateServiceRequest.add_member(:enable_ecs_managed_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "enableECSManagedTags"))
    UpdateServiceRequest.add_member(:load_balancers, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadBalancers, name: "loadBalancers"))
    UpdateServiceRequest.add_member(:propagate_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: PropagateTags, name: "propagateTags"))
    UpdateServiceRequest.add_member(:service_registries, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRegistries, name: "serviceRegistries"))
    UpdateServiceRequest.add_member(:service_connect_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceConnectConfiguration, name: "serviceConnectConfiguration"))
    UpdateServiceRequest.add_member(:volume_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceVolumeConfigurations, name: "volumeConfigurations"))
    UpdateServiceRequest.add_member(:vpc_lattice_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLatticeConfigurations, name: "vpcLatticeConfigurations"))
    UpdateServiceRequest.add_member(:monitoring, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "monitoring"))
    UpdateServiceRequest.type = Types::UpdateServiceRequest
    UpdateServiceResponse.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: Service, name: "service", traits: {"smithy.api#notProperty" => {}}))
    UpdateServiceResponse.type = Types::UpdateServiceResponse
    UpdateTaskProtectionRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster", traits: {"smithy.api#required" => {}}))
    UpdateTaskProtectionRequest.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "tasks", traits: {"smithy.api#required" => {}}))
    UpdateTaskProtectionRequest.add_member(:protection_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "protectionEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    UpdateTaskProtectionRequest.add_member(:expires_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "expiresInMinutes"))
    UpdateTaskProtectionRequest.type = Types::UpdateTaskProtectionRequest
    UpdateTaskProtectionResponse.add_member(:protected_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectedTasks, name: "protectedTasks", traits: {"smithy.api#notProperty" => {}}))
    UpdateTaskProtectionResponse.add_member(:failures, ::Smithy::Schema::Shapes::MemberShape.new(target: Failures, name: "failures", traits: {"smithy.api#notProperty" => {}}))
    UpdateTaskProtectionResponse.type = Types::UpdateTaskProtectionResponse
    UpdateTaskSetRequest.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ClusterName"}))
    UpdateTaskSetRequest.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "service", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "ServiceName"}))
    UpdateTaskSetRequest.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "taskSet", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "TaskSetId"}))
    UpdateTaskSetRequest.add_member(:scale, ::Smithy::Schema::Shapes::MemberShape.new(target: Scale, name: "scale", traits: {"smithy.api#required" => {}}))
    UpdateTaskSetRequest.type = Types::UpdateTaskSetRequest
    UpdateTaskSetResponse.add_member(:task_set, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSet, name: "taskSet", traits: {"smithy.api#notProperty" => {}}))
    UpdateTaskSetResponse.type = Types::UpdateTaskSetResponse
    UpdatedExpressGatewayService.add_member(:service_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceArn"))
    UpdatedExpressGatewayService.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cluster"))
    UpdatedExpressGatewayService.add_member(:service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serviceName"))
    UpdatedExpressGatewayService.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceStatus, name: "status"))
    UpdatedExpressGatewayService.add_member(:target_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressGatewayServiceConfiguration, name: "targetConfiguration"))
    UpdatedExpressGatewayService.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    UpdatedExpressGatewayService.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    UpdatedExpressGatewayService.type = Types::UpdatedExpressGatewayService
    VCpuCountRangeRequest.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "min", traits: {"smithy.api#required" => {}}))
    VCpuCountRangeRequest.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedInteger, name: "max"))
    VCpuCountRangeRequest.type = Types::VCpuCountRangeRequest
    VersionConsistency.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "enabled"}))
    VersionConsistency.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "disabled"}))
    VersionInfo.add_member(:agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "agentVersion"))
    VersionInfo.add_member(:agent_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "agentHash"))
    VersionInfo.add_member(:docker_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "dockerVersion"))
    VersionInfo.type = Types::VersionInfo
    Volume.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    Volume.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: HostVolumeProperties, name: "host"))
    Volume.add_member(:docker_volume_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DockerVolumeConfiguration, name: "dockerVolumeConfiguration"))
    Volume.add_member(:efs_volume_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EFSVolumeConfiguration, name: "efsVolumeConfiguration"))
    Volume.add_member(:s3files_volume_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3FilesVolumeConfiguration, name: "s3filesVolumeConfiguration"))
    Volume.add_member(:fsx_windows_file_server_volume_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FSxWindowsFileServerVolumeConfiguration, name: "fsxWindowsFileServerVolumeConfiguration"))
    Volume.add_member(:configured_at_launch, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "configuredAtLaunch"))
    Volume.type = Types::Volume
    VolumeFrom.add_member(:source_container, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceContainer"))
    VolumeFrom.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BoxedBoolean, name: "readOnly"))
    VolumeFrom.type = Types::VolumeFrom
    VolumeFromList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeFrom, name: "member"))
    VolumeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "member"))
    VpcLatticeAdvancedConfiguration.add_member(:alternate_target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "alternateTargetGroupArn"))
    VpcLatticeAdvancedConfiguration.add_member(:production_listener_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "productionListenerRule"))
    VpcLatticeAdvancedConfiguration.add_member(:test_listener_rule, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "testListenerRule"))
    VpcLatticeAdvancedConfiguration.type = Types::VpcLatticeAdvancedConfiguration
    VpcLatticeConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    VpcLatticeConfiguration.add_member(:target_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetGroupArn", traits: {"smithy.api#required" => {}}))
    VpcLatticeConfiguration.add_member(:port_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "portName", traits: {"smithy.api#required" => {}}))
    VpcLatticeConfiguration.add_member(:advanced_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLatticeAdvancedConfiguration, name: "advancedConfiguration"))
    VpcLatticeConfiguration.type = Types::VpcLatticeConfiguration
    VpcLatticeConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcLatticeConfiguration, name: "member"))

    AmazonEC2ContainerServiceV20141113 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ecs#AmazonEC2ContainerServiceV20141113"
      service.name = "AmazonEC2ContainerServiceV20141113"
      service.version = "2014-11-13"
      service.traits = {"aws.api#service" => {"sdkId" => "ECS", "arnNamespace" => "ecs", "cloudFormationName" => "ECS", "cloudTrailEventSource" => "ecs.amazonaws.com", "endpointPrefix" => "ecs", "cloudWatchNamespace" => "AWS/ECS"}, "aws.api#tagEnabled" => {}, "aws.auth#sigv4" => {"name" => "ecs"}, "aws.iam#defineConditionKeys" => {"ecs:cluster" => {"type" => "ARN", "documentation" => "Filters access by the ARN of an Amazon ECS cluster", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:service" => {"type" => "ARN", "documentation" => "Filters access by the ARN of an Amazon ECS service", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:task-definition" => {"type" => "ARN", "documentation" => "Filters access by the ARN of an Amazon ECS task definition", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:container-instances" => {"type" => "ARN", "documentation" => "Filters access by the ARN of an Amazon ECS container instance", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:capacity-provider" => {"type" => "ArrayOfARN", "documentation" => "Filters access by the ARN of an Amazon ECS capacity provider", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:task" => {"type" => "ARN", "documentation" => "Filters access by the ARN of an Amazon ECS task", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:container-name" => {"type" => "String", "documentation" => "Filters access by the name of an Amazon ECS container which is defined in the ECS task definition", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:enable-ebs-volumes" => {"type" => "String", "documentation" => "Filters access by the Amazon ECS managed Amazon EBS volume capability of your ECS task or service", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:enable-execute-command" => {"type" => "String", "documentation" => "Filters access by the execute-command capability of your Amazon ECS task or Amazon ECS service", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:enable-service-connect" => {"type" => "String", "documentation" => "Filters access by the enable field value in the Service Connect configuration", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:enable-vpc-lattice" => {"type" => "String", "documentation" => "Filters access by the VPC lattice capability of your Amazon ECS service", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:namespace" => {"type" => "ARN", "documentation" => "Filters access by the ARN of AWS Cloud Map namespace which is defined in the Service Connect Configuration", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tag key-value pairs attached to the resource", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tag key-value pairs attached to the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}, "ecs:CreateAction" => {"type" => "String", "documentation" => "Filters access by the name of a resource-creating API action", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-createaction"}, "ecs:account-setting" => {"type" => "String", "documentation" => "Filters access by the Amazon ECS account setting name", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:fargate-ephemeral-storage-kms-key" => {"type" => "String", "documentation" => "Filters access by the AWS KMS key id provided in the request", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:enable-ecs-managed-tags" => {"type" => "Bool", "documentation" => "Filters access by the enableECSManagedTags configuration of your Amazon ECS task or Amazon ECS service", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:auto-assign-public-ip" => {"type" => "Bool", "documentation" => "Filters access by the public IP assignment configuration of your Amazon ECS task or Amazon ECS service that uses awsvpc network mode", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:propagate-tags" => {"type" => "String", "documentation" => "Filters access by the tag propagation configuration of your Amazon ECS task or Amazon ECS service", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:instance-metadata-tags-propagation" => {"type" => "Bool", "documentation" => "Filters access by the instance metadata tags propagation setting of your Amazon ECS capacity provider", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:subnet" => {"type" => "ArrayOfString", "documentation" => "Filters access by the subnet configuration of your Amazon ECS task or Amazon ECS service that uses awsvpc network mode", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:compute-compatibility" => {"type" => "ArrayOfString", "documentation" => "Filters access by the required compatibilities field provided in the request", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:privileged" => {"type" => "String", "documentation" => "Filters access by the privileged field provided in the request", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:task-cpu" => {"type" => "Numeric", "documentation" => "Filters access by the task cpu, as an integer with 1024 = 1 vCPU, provided in the request", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:task-memory" => {"type" => "Numeric", "documentation" => "Filters access by the task memory, as an integer representing MiB, provided in the request", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:daemon" => {"type" => "ARN", "documentation" => "Filters access by the ARN of an Amazon ECS daemon", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}, "ecs:daemon-task-definition" => {"type" => "ARN", "documentation" => "Filters access by the ARN of an Amazon ECS daemon task definition", "relativeDocumentation" => "security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-conditionkeys"}}, "aws.iam#disableConditionKeyInference" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon EC2 Container Service", "smithy.api#xmlNamespace" => {"uri" => "http://ecs.amazonaws.com/doc/2014-11-13/"}, "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://ecs-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ecs-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ecs.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://ecs.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:continue_service_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ContinueServiceDeployment"
        operation.name = "ContinueServiceDeployment"
        operation.input = ContinueServiceDeploymentRequest
        operation.output = ContinueServiceDeploymentResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceDeploymentNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to continue a paused service deployment", "relativeDocumentation" => "API_ContinueServiceDeployment.html", "resources" => {"required" => {"service-deployment" => {"conditionKeys" => ["ecs:service", "ecs:cluster", "aws:ResourceTag/${TagKey}"]}, "service" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:create_capacity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#CreateCapacityProvider"
        operation.name = "CreateCapacityProvider"
        operation.input = CreateCapacityProviderRequest
        operation.output = CreateCapacityProviderResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.errors << UpdateInProgressException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:instance-metadata-tags-propagation", "ecs:propagate-tags", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"createsResources" => ["capacity-provider"], "documentation" => "Grants permission to create a new capacity provider. Capacity providers are associated with an Amazon ECS cluster and are used in capacity provider strategies to facilitate cluster auto scaling", "relativeDocumentation" => "API_CreateCapacityProvider.html", "resources" => {"required" => {"capacity-provider" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#CreateCluster"
        operation.name = "CreateCluster"
        operation.input = CreateClusterRequest
        operation.output = CreateClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << NamespaceNotFoundException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:capacity-provider", "ecs:fargate-ephemeral-storage-kms-key", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"createsResources" => ["cluster"], "documentation" => "Grants permission to create a new Amazon ECS cluster", "relativeDocumentation" => "API_CreateCluster.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:create_daemon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#CreateDaemon"
        operation.name = "CreateDaemon"
        operation.input = CreateDaemonRequest
        operation.output = CreateDaemonResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << PlatformUnknownException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "ecs:capacity-provider", "ecs:daemon-task-definition", "ecs:enable-ecs-managed-tags", "ecs:enable-execute-command", "ecs:propagate-tags", "ecs:task-cpu", "ecs:task-memory"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create a new daemon in a specified cluster", "createsResources" => ["daemon"], "resources" => {"required" => {"daemon" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:create_express_gateway_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#CreateExpressGatewayService"
        operation.name = "CreateExpressGatewayService"
        operation.input = CreateExpressGatewayServiceRequest
        operation.output = CreateExpressGatewayServiceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << PlatformTaskDefinitionIncompatibilityException
        operation.errors << PlatformUnknownException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:task-cpu", "ecs:task-memory", "ecs:task-definition", "aws:RequestTag/${TagKey}", "aws:TagKeys", "ecs:propagate-tags", "ecs:subnet", "ecs:enable-ecs-managed-tags"], "aws.iam#iamAction" => {"createsResources" => ["service"], "documentation" => "Grants permission to create a new Amazon ECS Express Gateway service with cluster and task definition", "relativeDocumentation" => "API_CreateExpressGatewayService.html", "requiredActions" => ["iam:PassRole", "ecs:RegisterTaskDefinition"], "resources" => {"required" => {"service" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:enable-ebs-volumes", "ecs:enable-execute-command", "ecs:task-cpu", "aws:RequestTag/${TagKey}", "ecs:enable-service-connect", "ecs:enable-ecs-managed-tags", "ecs:capacity-provider", "ecs:namespace", "ecs:auto-assign-public-ip", "ecs:enable-vpc-lattice", "ecs:task-memory", "ecs:task-definition", "aws:TagKeys", "ecs:propagate-tags", "ecs:subnet"], "aws.iam#iamAction" => {"createsResources" => ["service"], "documentation" => "Grants permission to run and maintain a desired number of tasks from a specified task definition via service creation", "relativeDocumentation" => "API_CreateService.html", "resources" => {"required" => {"service" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}}
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
        operation.errors << LimitExceededException
        operation.errors << NamespaceNotFoundException
        operation.errors << PlatformTaskDefinitionIncompatibilityException
        operation.errors << PlatformUnknownException
        operation.errors << ServerException
        operation.errors << ServiceNotActiveException
        operation.errors << ServiceNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:capacity-provider", "ecs:task-definition", "aws:RequestTag/${TagKey}", "ecs:cluster", "aws:TagKeys", "ecs:service"], "aws.iam#iamAction" => {"createsResources" => ["task-set"], "documentation" => "Grants permission to create a new Amazon ECS task set", "relativeDocumentation" => "API_CreateTaskSet.html", "resources" => {"required" => {"task-set" => {}}}}}
      end)
      service.add_operation(:delete_account_setting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteAccountSetting"
        operation.name = "DeleteAccountSetting"
        operation.input = DeleteAccountSettingRequest
        operation.output = DeleteAccountSettingResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:account-setting"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the ARN and resource ID format of a resource for a specified IAM user, IAM role, or the root user for an account. You can specify whether the new ARN and resource ID format are disabled for new resources that are created", "relativeDocumentation" => "API_DeleteAccountSetting.html"}}
      end)
      service.add_operation(:delete_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteAttributes"
        operation.name = "DeleteAttributes"
        operation.input = DeleteAttributesRequest
        operation.output = DeleteAttributesResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << TargetNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete one or more custom attributes from an Amazon ECS resource", "relativeDocumentation" => "API_DeleteAttributes.html", "resources" => {"required" => {"container-instance" => {}}}}}
      end)
      service.add_operation(:delete_capacity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteCapacityProvider"
        operation.name = "DeleteCapacityProvider"
        operation.input = DeleteCapacityProviderRequest
        operation.output = DeleteCapacityProviderResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.errors << UpdateInProgressException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete the specified capacity provider", "relativeDocumentation" => "API_DeleteCapacityProvider.html", "resources" => {"required" => {"capacity-provider" => {}}}}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteCluster"
        operation.name = "DeleteCluster"
        operation.input = DeleteClusterRequest
        operation.output = DeleteClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterContainsCapacityProviderException
        operation.errors << ClusterContainsContainerInstancesException
        operation.errors << ClusterContainsServicesException
        operation.errors << ClusterContainsTasksException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UpdateInProgressException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the specified cluster", "relativeDocumentation" => "API_DeleteCluster.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_daemon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteDaemon"
        operation.name = "DeleteDaemon"
        operation.input = DeleteDaemonRequest
        operation.output = DeleteDaemonResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << DaemonNotActiveException
        operation.errors << DaemonNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a specified daemon within a cluster", "resources" => {"required" => {"daemon" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_daemon_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteDaemonTaskDefinition"
        operation.name = "DeleteDaemonTaskDefinition"
        operation.input = DeleteDaemonTaskDefinitionRequest
        operation.output = DeleteDaemonTaskDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete the specified daemon task definition", "resources" => {"required" => {"daemon-task-definition" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:delete_express_gateway_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteExpressGatewayService"
        operation.name = "DeleteExpressGatewayService"
        operation.input = DeleteExpressGatewayServiceRequest
        operation.output = DeleteExpressGatewayServiceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotActiveException
        operation.errors << ServiceNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to delete a specified Express Gateway service", "relativeDocumentation" => "API_DeleteExpressGatewayService.html", "resources" => {"required" => {"service" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:delete_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeleteService"
        operation.name = "DeleteService"
        operation.input = DeleteServiceRequest
        operation.output = DeleteServiceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete a specified service within a cluster", "relativeDocumentation" => "API_DeleteService.html", "resources" => {"required" => {"service" => {}}}}, "smithy.api#idempotent" => {}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete the specified task definitions by family and revision", "relativeDocumentation" => "API_DeleteTaskDefinitions.html", "resources" => {"required" => {"task-definition" => {}}}}}
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
        operation.errors << LimitExceededException
        operation.errors << ServerException
        operation.errors << ServiceNotActiveException
        operation.errors << ServiceNotFoundException
        operation.errors << TaskSetNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster", "ecs:service"], "aws.iam#iamAction" => {"documentation" => "Grants permission to delete the specified task set", "relativeDocumentation" => "API_DeleteTaskSet.html", "resources" => {"required" => {"task-set" => {}}}}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_container_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeregisterContainerInstance"
        operation.name = "DeregisterContainerInstance"
        operation.input = DeregisterContainerInstanceRequest
        operation.output = DeregisterContainerInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to deregister an Amazon ECS container instance from the specified cluster", "relativeDocumentation" => "API_DeregisterContainerInstance.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:deregister_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DeregisterTaskDefinition"
        operation.name = "DeregisterTaskDefinition"
        operation.input = DeregisterTaskDefinitionRequest
        operation.output = DeregisterTaskDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to deregister the specified task definition by family and revision", "relativeDocumentation" => "API_DeregisterTaskDefinition.html"}}
      end)
      service.add_operation(:describe_capacity_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeCapacityProviders"
        operation.name = "DescribeCapacityProviders"
        operation.input = DescribeCapacityProvidersRequest
        operation.output = DescribeCapacityProvidersResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to describe one or more Amazon ECS capacity providers", "relativeDocumentation" => "API_DescribeCapacityProviders.html", "resources" => {"required" => {"capacity-provider" => {}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeClusters"
        operation.name = "DescribeClusters"
        operation.input = DescribeClustersRequest
        operation.output = DescribeClustersResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describes one or more of your clusters", "relativeDocumentation" => "API_DescribeClusters.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_container_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeContainerInstances"
        operation.name = "DescribeContainerInstances"
        operation.input = DescribeContainerInstancesRequest
        operation.output = DescribeContainerInstancesResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to describes Amazon ECS container instances", "relativeDocumentation" => "API_DescribeContainerInstances.html", "resources" => {"required" => {"container-instance" => {}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_daemon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeDaemon"
        operation.name = "DescribeDaemon"
        operation.input = DescribeDaemonRequest
        operation.output = DescribeDaemonResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << DaemonNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe the specified daemon running in your cluster", "resources" => {"required" => {"daemon" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_daemon_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeDaemonDeployments"
        operation.name = "DescribeDaemonDeployments"
        operation.input = DescribeDaemonDeploymentsRequest
        operation.output = DescribeDaemonDeploymentsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe one or more of your daemon deployments", "resources" => {"required" => {"daemon-deployment" => {"conditionKeys" => ["ecs:cluster", "ecs:daemon", "aws:ResourceTag/${TagKey}"]}, "daemon" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_daemon_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeDaemonRevisions"
        operation.name = "DescribeDaemonRevisions"
        operation.input = DescribeDaemonRevisionsRequest
        operation.output = DescribeDaemonRevisionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe one or more of your daemon revisions", "resources" => {"required" => {"daemon-revision" => {"conditionKeys" => ["ecs:cluster", "ecs:daemon", "aws:ResourceTag/${TagKey}"]}, "daemon" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_daemon_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeDaemonTaskDefinition"
        operation.name = "DescribeDaemonTaskDefinition"
        operation.input = DescribeDaemonTaskDefinitionRequest
        operation.output = DescribeDaemonTaskDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe a daemon task definition", "resources" => {"required" => {"daemon-task-definition" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_express_gateway_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeExpressGatewayService"
        operation.name = "DescribeExpressGatewayService"
        operation.input = DescribeExpressGatewayServiceRequest
        operation.output = DescribeExpressGatewayServiceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe the specified Express Gateway service", "relativeDocumentation" => "API_DescribeExpressGatewayService.html", "resources" => {"required" => {"service" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe one or more of your service deployments", "relativeDocumentation" => "API_DescribeServiceDeployments.html", "resources" => {"required" => {"service-deployment" => {"conditionKeys" => ["ecs:service", "ecs:cluster", "aws:ResourceTag/${TagKey}"]}, "service" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe one or more of your service revisions", "relativeDocumentation" => "API_DescribeServiceRevisions.html", "resources" => {"required" => {"service" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}, "service-revision" => {"conditionKeys" => ["ecs:service", "ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeServices"
        operation.name = "DescribeServices"
        operation.input = DescribeServicesRequest
        operation.output = DescribeServicesResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to describe the specified services running in your cluster", "relativeDocumentation" => "API_DescribeServices.html", "resources" => {"required" => {"service" => {}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeTaskDefinition"
        operation.name = "DescribeTaskDefinition"
        operation.input = DescribeTaskDefinitionRequest
        operation.output = DescribeTaskDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to describe a task definition. You can specify a family and revision to find information about a specific task definition, or you can simply specify the family to find the latest ACTIVE revision in that family", "relativeDocumentation" => "API_DescribeTaskDefinition.html"}, "smithy.api#readonly" => {}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster", "ecs:service"], "aws.iam#iamAction" => {"documentation" => "Grants permission to describe Amazon ECS task sets", "relativeDocumentation" => "API_DescribeTaskSets.html", "resources" => {"required" => {"task-set" => {}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DescribeTasks"
        operation.name = "DescribeTasks"
        operation.input = DescribeTasksRequest
        operation.output = DescribeTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to describe a specified task or tasks", "relativeDocumentation" => "API_DescribeTasks.html", "resources" => {"required" => {"task" => {}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:discover_poll_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#DiscoverPollEndpoint"
        operation.name = "DiscoverPollEndpoint"
        operation.input = DiscoverPollEndpointRequest
        operation.output = DiscoverPollEndpointResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get an endpoint for the Amazon ECS agent to poll for updates", "relativeDocumentation" => "API_DiscoverPollEndpoint.html"}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:cluster", "ecs:container-name", "ecs:task", "aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to run a command remotely on an Amazon ECS container", "relativeDocumentation" => "API_ExecuteCommand.html", "resources" => {"required" => {"cluster" => {}, "task" => {}}}}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve the protection status of tasks in an Amazon ECS service", "relativeDocumentation" => "API_GetTaskProtection.html", "resources" => {"required" => {"task" => {}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListAccountSettings"
        operation.name = "ListAccountSettings"
        operation.input = ListAccountSettingsRequest
        operation.output = ListAccountSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list the account settings for an Amazon ECS resource for a specified principal", "relativeDocumentation" => "API_ListAccountSettings.html"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAccountSettings.new
      end)
      service.add_operation(:list_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListAttributes"
        operation.name = "ListAttributes"
        operation.input = ListAttributesRequest
        operation.output = ListAttributesResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to lists the attributes for Amazon ECS resources within a specified target type and cluster", "relativeDocumentation" => "API_ListAttributes.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAttributes.new
      end)
      service.add_operation(:list_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListClusters"
        operation.name = "ListClusters"
        operation.input = ListClustersRequest
        operation.output = ListClustersResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of existing clusters", "relativeDocumentation" => "API_ListClusters.html"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListClustersSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListClusters.new
      end)
      service.add_operation(:list_container_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListContainerInstances"
        operation.name = "ListContainerInstances"
        operation.input = ListContainerInstancesRequest
        operation.output = ListContainerInstancesResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of container instances in a specified cluster", "relativeDocumentation" => "API_ListContainerInstances.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListContainerInstances.new
      end)
      service.add_operation(:list_daemon_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListDaemonDeployments"
        operation.name = "ListDaemonDeployments"
        operation.input = ListDaemonDeploymentsRequest
        operation.output = ListDaemonDeploymentsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of daemon deployments for a specified daemon", "resources" => {"required" => {"daemon" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"]}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_daemon_task_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListDaemonTaskDefinitions"
        operation.name = "ListDaemonTaskDefinitions"
        operation.input = ListDaemonTaskDefinitionsRequest
        operation.output = ListDaemonTaskDefinitionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of daemon task definitions that are registered to your account"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_daemons, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListDaemons"
        operation.name = "ListDaemons"
        operation.input = ListDaemonsRequest
        operation.output = ListDaemonsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of daemons that are running in a specified cluster"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_service_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListServiceDeployments"
        operation.name = "ListServiceDeployments"
        operation.input = ListServiceDeploymentsRequest
        operation.output = ListServiceDeploymentsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of service deployments for a specified service", "relativeDocumentation" => "API_ListServiceDeployments.html", "resources" => {"required" => {"service" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_services, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListServices"
        operation.name = "ListServices"
        operation.input = ListServicesRequest
        operation.output = ListServicesResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of services that are running in a specified cluster", "relativeDocumentation" => "API_ListServices.html"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServices.new
      end)
      service.add_operation(:list_services_by_namespace, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListServicesByNamespace"
        operation.name = "ListServicesByNamespace"
        operation.input = ListServicesByNamespaceRequest
        operation.output = ListServicesByNamespaceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << NamespaceNotFoundException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:namespace"], "aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of services that are running in a specified AWS Cloud Map Namespace", "relativeDocumentation" => "API_ListServicesByNamespace.html"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListServicesByNamespace.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of tags for the specified resource", "relativeDocumentation" => "API_ListTagsForResource.html", "resources" => {"optional" => {"cluster" => {}, "task" => {}, "container-instance" => {}, "task-definition" => {}, "service" => {}, "task-set" => {}, "capacity-provider" => {}}}}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_task_definition_families, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListTaskDefinitionFamilies"
        operation.name = "ListTaskDefinitionFamilies"
        operation.input = ListTaskDefinitionFamiliesRequest
        operation.output = ListTaskDefinitionFamiliesResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of task definition families that are registered to your account (which may include task definition families that no longer have any ACTIVE task definitions)", "relativeDocumentation" => "API_ListTaskDefinitionFamilies.html"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTaskDefinitionFamilies.new
      end)
      service.add_operation(:list_task_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListTaskDefinitions"
        operation.name = "ListTaskDefinitions"
        operation.input = ListTaskDefinitionsRequest
        operation.output = ListTaskDefinitionsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of task definitions that are registered to your account", "relativeDocumentation" => "API_ListTaskDefinitions.html"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTaskDefinitions.new
      end)
      service.add_operation(:list_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#ListTasks"
        operation.name = "ListTasks"
        operation.input = ListTasksRequest
        operation.output = ListTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to get a list of tasks for a specified cluster", "relativeDocumentation" => "API_ListTasks.html", "resources" => {"required" => {"container-instance" => {}}}}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTasks.new
      end)
      service.add_operation(:put_account_setting, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#PutAccountSetting"
        operation.name = "PutAccountSetting"
        operation.input = PutAccountSettingRequest
        operation.output = PutAccountSettingResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:account-setting"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the ARN and resource ID format of a resource for a specified IAM user, IAM role, or the root user for an account. You can specify whether the new ARN and resource ID format are enabled for new resources that are created. Enabling this setting is required to use new Amazon ECS features such as resource tagging", "relativeDocumentation" => "API_PutAccountSetting.html"}}
      end)
      service.add_operation(:put_account_setting_default, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#PutAccountSettingDefault"
        operation.name = "PutAccountSettingDefault"
        operation.input = PutAccountSettingDefaultRequest
        operation.output = PutAccountSettingDefaultResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:account-setting"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the ARN and resource ID format of a resource type for all IAM users on an account for which no individual account setting has been set. Enabling this setting is required to use new Amazon ECS features such as resource tagging", "relativeDocumentation" => "API_PutAccountSettingDefault.html"}}
      end)
      service.add_operation(:put_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#PutAttributes"
        operation.name = "PutAttributes"
        operation.input = PutAttributesRequest
        operation.output = PutAttributesResponse
        operation.errors << AccessDeniedException
        operation.errors << AttributeLimitExceededException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << TargetNotFoundException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create or update an attribute on an Amazon ECS resource", "relativeDocumentation" => "API_PutAttributes.html", "resources" => {"required" => {"container-instance" => {}}}}}
      end)
      service.add_operation(:put_cluster_capacity_providers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#PutClusterCapacityProviders"
        operation.name = "PutClusterCapacityProviders"
        operation.input = PutClusterCapacityProvidersRequest
        operation.output = PutClusterCapacityProvidersResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ResourceInUseException
        operation.errors << ServerException
        operation.errors << UpdateInProgressException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:capacity-provider"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the available capacity providers and the default capacity provider strategy for a cluster", "relativeDocumentation" => "API_PutClusterCapacityProviders.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:register_container_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#RegisterContainerInstance"
        operation.name = "RegisterContainerInstance"
        operation.input = RegisterContainerInstanceRequest
        operation.output = RegisterContainerInstanceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#iamAction" => {"createsResources" => ["container-instance"], "documentation" => "Grants permission to register an EC2 instance into the specified cluster", "relativeDocumentation" => "API_RegisterContainerInstance.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:register_daemon_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#RegisterDaemonTaskDefinition"
        operation.name = "RegisterDaemonTaskDefinition"
        operation.input = RegisterDaemonTaskDefinitionRequest
        operation.output = RegisterDaemonTaskDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys", "ecs:privileged", "ecs:task-cpu", "ecs:task-memory"], "aws.iam#iamAction" => {"documentation" => "Grants permission to register a new daemon task definition from the supplied family and containerDefinitions", "createsResources" => ["daemon-task-definition"], "resources" => {"required" => {"daemon-task-definition" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:register_task_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#RegisterTaskDefinition"
        operation.name = "RegisterTaskDefinition"
        operation.input = RegisterTaskDefinitionRequest
        operation.output = RegisterTaskDefinitionResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:task-memory", "ecs:compute-compatibility", "aws:RequestTag/${TagKey}", "aws:TagKeys", "ecs:privileged", "ecs:task-cpu"], "aws.iam#iamAction" => {"createsResources" => ["task-definition"], "documentation" => "Grants permission to register a new task definition from the supplied family and containerDefinitions", "relativeDocumentation" => "API_RegisterTaskDefinition.html", "resources" => {"required" => {"task-definition" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:capacity-provider", "ecs:enable-ebs-volumes", "ecs:enable-execute-command", "aws:RequestTag/${TagKey}", "ecs:cluster", "aws:TagKeys", "aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"createsResources" => ["task"], "documentation" => "Grants permission to start a task using random placement and the default Amazon ECS scheduler", "relativeDocumentation" => "API_RunTask.html", "requiredActions" => ["iam:PassRole"], "resources" => {"required" => {"task-definition" => {}}}}}
      end)
      service.add_operation(:start_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#StartTask"
        operation.name = "StartTask"
        operation.input = StartTaskRequest
        operation.output = StartTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << NamespaceNotFoundException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:enable-ebs-volumes", "ecs:container-instances", "ecs:enable-execute-command", "aws:RequestTag/${TagKey}", "ecs:cluster", "aws:TagKeys", "aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"createsResources" => ["task"], "documentation" => "Grants permission to start a new task from the specified task definition on the specified container instance or instances", "relativeDocumentation" => "API_StartTask.html", "requiredActions" => ["iam:PassRole"], "resources" => {"required" => {"task-definition" => {}}}}}
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
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to stop an ongoing service deployment", "relativeDocumentation" => "API_StopServiceDeployment.html", "resources" => {"required" => {"service-deployment" => {"conditionKeys" => ["ecs:service", "ecs:cluster", "aws:ResourceTag/${TagKey}"]}, "service" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:stop_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#StopTask"
        operation.name = "StopTask"
        operation.input = StopTaskRequest
        operation.output = StopTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to stop a running task", "relativeDocumentation" => "API_StopTask.html", "resources" => {"required" => {"task" => {}}}}}
      end)
      service.add_operation(:submit_attachment_state_changes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#SubmitAttachmentStateChanges"
        operation.name = "SubmitAttachmentStateChanges"
        operation.input = SubmitAttachmentStateChangesRequest
        operation.output = SubmitAttachmentStateChangesResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to send an acknowledgement that attachments changed states", "relativeDocumentation" => "API_SubmitAttachmentStateChanges.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:submit_container_state_change, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#SubmitContainerStateChange"
        operation.name = "SubmitContainerStateChange"
        operation.input = SubmitContainerStateChangeRequest
        operation.output = SubmitContainerStateChangeResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to send an acknowledgement that a container changed states", "relativeDocumentation" => "API_SubmitContainerStateChange.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:submit_task_state_change, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#SubmitTaskStateChange"
        operation.name = "SubmitTaskStateChange"
        operation.input = SubmitTaskStateChangeRequest
        operation.output = SubmitTaskStateChangeResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to send an acknowledgement that a task changed states", "relativeDocumentation" => "API_SubmitTaskStateChange.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:CreateAction", "aws:RequestTag/${TagKey}", "aws:TagKeys", "aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to tag the specified resource", "relativeDocumentation" => "API_TagResource.html", "resources" => {"optional" => {"cluster" => {}, "task" => {}, "container-instance" => {}, "task-definition" => {}, "service" => {}, "task-set" => {}, "capacity-provider" => {}, "daemon" => {}, "daemon-task-definition" => {}}}}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to untag the specified resource", "relativeDocumentation" => "API_UntagResource.html", "resources" => {"optional" => {"cluster" => {}, "task" => {}, "container-instance" => {}, "task-definition" => {}, "service" => {}, "task-set" => {}, "capacity-provider" => {}, "daemon" => {}, "daemon-task-definition" => {}}}}}
      end)
      service.add_operation(:update_capacity_provider, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateCapacityProvider"
        operation.name = "UpdateCapacityProvider"
        operation.input = UpdateCapacityProviderRequest
        operation.output = UpdateCapacityProviderResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:instance-metadata-tags-propagation", "ecs:propagate-tags", "aws:ResourceTag/${TagKey}"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update the specified capacity provider", "relativeDocumentation" => "API_UpdateCapacityProvider.html", "resources" => {"required" => {"capacity-provider" => {}}}}}
      end)
      service.add_operation(:update_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateCluster"
        operation.name = "UpdateCluster"
        operation.input = UpdateClusterRequest
        operation.output = UpdateClusterResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << NamespaceNotFoundException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:fargate-ephemeral-storage-kms-key"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the configuration or settings to use for a cluster", "relativeDocumentation" => "API_UpdateCluster.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:update_cluster_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateClusterSettings"
        operation.name = "UpdateClusterSettings"
        operation.input = UpdateClusterSettingsRequest
        operation.output = UpdateClusterSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << UpdateInProgressException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to modify the settings to use for a cluster", "relativeDocumentation" => "API_UpdateClusterSettings.html", "resources" => {"required" => {"cluster" => {"conditionKeys" => ["aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:update_container_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateContainerAgent"
        operation.name = "UpdateContainerAgent"
        operation.input = UpdateContainerAgentRequest
        operation.output = UpdateContainerAgentResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << MissingVersionException
        operation.errors << NoUpdateAvailableException
        operation.errors << ServerException
        operation.errors << UpdateInProgressException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update the Amazon ECS container agent on a specified container instance", "relativeDocumentation" => "API_UpdateContainerAgent.html", "resources" => {"required" => {"container-instance" => {}}}}}
      end)
      service.add_operation(:update_container_instances_state, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateContainerInstancesState"
        operation.name = "UpdateContainerInstancesState"
        operation.input = UpdateContainerInstancesStateRequest
        operation.output = UpdateContainerInstancesStateResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to the user to modify the status of an Amazon ECS container instance", "relativeDocumentation" => "API_UpdateContainerInstancesState.html", "resources" => {"required" => {"container-instance" => {}}}}}
      end)
      service.add_operation(:update_daemon, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateDaemon"
        operation.name = "UpdateDaemon"
        operation.input = UpdateDaemonRequest
        operation.output = UpdateDaemonResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << DaemonNotActiveException
        operation.errors << DaemonNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << PlatformUnknownException
        operation.errors << ServerException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:capacity-provider", "ecs:daemon-task-definition", "ecs:enable-ecs-managed-tags", "ecs:enable-execute-command", "ecs:propagate-tags", "ecs:task-cpu", "ecs:task-memory"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the parameters of a daemon", "resources" => {"required" => {"daemon" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}}
      end)
      service.add_operation(:update_express_gateway_service, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ecs#UpdateExpressGatewayService"
        operation.name = "UpdateExpressGatewayService"
        operation.input = UpdateExpressGatewayServiceRequest
        operation.output = UpdateExpressGatewayServiceResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ClusterNotFoundException
        operation.errors << InvalidParameterException
        operation.errors << ServerException
        operation.errors << ServiceNotActiveException
        operation.errors << ServiceNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:task-memory", "ecs:propagate-tags", "ecs:subnet", "ecs:enable-ecs-managed-tags", "ecs:task-cpu", "ecs:task-definition"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the parameters of an Express Gateway service", "relativeDocumentation" => "API_UpdateExpressGatewayService.html", "resources" => {"required" => {"service" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["ecs:enable-ebs-volumes", "ecs:enable-execute-command", "ecs:task-cpu", "ecs:enable-service-connect", "ecs:enable-ecs-managed-tags", "ecs:capacity-provider", "ecs:namespace", "ecs:auto-assign-public-ip", "ecs:enable-vpc-lattice", "ecs:task-memory", "ecs:task-definition", "ecs:propagate-tags", "ecs:subnet"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the parameters of a service", "relativeDocumentation" => "API_UpdateService.html", "resources" => {"required" => {"service" => {"conditionKeys" => ["ecs:cluster", "aws:ResourceTag/${TagKey}"]}}}}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the primary task set used in a service", "relativeDocumentation" => "API_UpdateServicePrimaryTaskSet.html", "resources" => {"required" => {"service" => {}}}}}
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
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster"], "aws.iam#iamAction" => {"documentation" => "Grants permission to modify the protection status of a task", "relativeDocumentation" => "API_UpdateTaskProtection.html", "resources" => {"required" => {"task" => {}}}}}
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
        operation.errors << LimitExceededException
        operation.errors << ServerException
        operation.errors << ServiceNotActiveException
        operation.errors << ServiceNotFoundException
        operation.errors << TaskSetNotFoundException
        operation.errors << UnsupportedFeatureException
        operation.traits = {"aws.iam#conditionKeys" => ["aws:ResourceTag/${TagKey}", "ecs:cluster", "ecs:service"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update the specified task set", "relativeDocumentation" => "API_UpdateTaskSet.html", "resources" => {"required" => {"task-set" => {}}}}}
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
