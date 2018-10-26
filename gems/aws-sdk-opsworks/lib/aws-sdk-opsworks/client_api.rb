# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpsWorks
  # @api private
  module ClientApi

    include Seahorse::Model

    AgentVersion = Shapes::StructureShape.new(name: 'AgentVersion')
    AgentVersions = Shapes::ListShape.new(name: 'AgentVersions')
    App = Shapes::StructureShape.new(name: 'App')
    AppAttributes = Shapes::MapShape.new(name: 'AppAttributes')
    AppAttributesKeys = Shapes::StringShape.new(name: 'AppAttributesKeys')
    AppType = Shapes::StringShape.new(name: 'AppType')
    Apps = Shapes::ListShape.new(name: 'Apps')
    Architecture = Shapes::StringShape.new(name: 'Architecture')
    AssignInstanceRequest = Shapes::StructureShape.new(name: 'AssignInstanceRequest')
    AssignVolumeRequest = Shapes::StructureShape.new(name: 'AssignVolumeRequest')
    AssociateElasticIpRequest = Shapes::StructureShape.new(name: 'AssociateElasticIpRequest')
    AttachElasticLoadBalancerRequest = Shapes::StructureShape.new(name: 'AttachElasticLoadBalancerRequest')
    AutoScalingThresholds = Shapes::StructureShape.new(name: 'AutoScalingThresholds')
    AutoScalingType = Shapes::StringShape.new(name: 'AutoScalingType')
    BlockDeviceMapping = Shapes::StructureShape.new(name: 'BlockDeviceMapping')
    BlockDeviceMappings = Shapes::ListShape.new(name: 'BlockDeviceMappings')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChefConfiguration = Shapes::StructureShape.new(name: 'ChefConfiguration')
    CloneStackRequest = Shapes::StructureShape.new(name: 'CloneStackRequest')
    CloneStackResult = Shapes::StructureShape.new(name: 'CloneStackResult')
    CloudWatchLogsConfiguration = Shapes::StructureShape.new(name: 'CloudWatchLogsConfiguration')
    CloudWatchLogsEncoding = Shapes::StringShape.new(name: 'CloudWatchLogsEncoding')
    CloudWatchLogsInitialPosition = Shapes::StringShape.new(name: 'CloudWatchLogsInitialPosition')
    CloudWatchLogsLogStream = Shapes::StructureShape.new(name: 'CloudWatchLogsLogStream')
    CloudWatchLogsLogStreams = Shapes::ListShape.new(name: 'CloudWatchLogsLogStreams')
    CloudWatchLogsTimeZone = Shapes::StringShape.new(name: 'CloudWatchLogsTimeZone')
    Command = Shapes::StructureShape.new(name: 'Command')
    Commands = Shapes::ListShape.new(name: 'Commands')
    CreateAppRequest = Shapes::StructureShape.new(name: 'CreateAppRequest')
    CreateAppResult = Shapes::StructureShape.new(name: 'CreateAppResult')
    CreateDeploymentRequest = Shapes::StructureShape.new(name: 'CreateDeploymentRequest')
    CreateDeploymentResult = Shapes::StructureShape.new(name: 'CreateDeploymentResult')
    CreateInstanceRequest = Shapes::StructureShape.new(name: 'CreateInstanceRequest')
    CreateInstanceResult = Shapes::StructureShape.new(name: 'CreateInstanceResult')
    CreateLayerRequest = Shapes::StructureShape.new(name: 'CreateLayerRequest')
    CreateLayerResult = Shapes::StructureShape.new(name: 'CreateLayerResult')
    CreateStackRequest = Shapes::StructureShape.new(name: 'CreateStackRequest')
    CreateStackResult = Shapes::StructureShape.new(name: 'CreateStackResult')
    CreateUserProfileRequest = Shapes::StructureShape.new(name: 'CreateUserProfileRequest')
    CreateUserProfileResult = Shapes::StructureShape.new(name: 'CreateUserProfileResult')
    DailyAutoScalingSchedule = Shapes::MapShape.new(name: 'DailyAutoScalingSchedule')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSources = Shapes::ListShape.new(name: 'DataSources')
    DateTime = Shapes::StringShape.new(name: 'DateTime')
    DeleteAppRequest = Shapes::StructureShape.new(name: 'DeleteAppRequest')
    DeleteInstanceRequest = Shapes::StructureShape.new(name: 'DeleteInstanceRequest')
    DeleteLayerRequest = Shapes::StructureShape.new(name: 'DeleteLayerRequest')
    DeleteStackRequest = Shapes::StructureShape.new(name: 'DeleteStackRequest')
    DeleteUserProfileRequest = Shapes::StructureShape.new(name: 'DeleteUserProfileRequest')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentCommand = Shapes::StructureShape.new(name: 'DeploymentCommand')
    DeploymentCommandArgs = Shapes::MapShape.new(name: 'DeploymentCommandArgs')
    DeploymentCommandName = Shapes::StringShape.new(name: 'DeploymentCommandName')
    Deployments = Shapes::ListShape.new(name: 'Deployments')
    DeregisterEcsClusterRequest = Shapes::StructureShape.new(name: 'DeregisterEcsClusterRequest')
    DeregisterElasticIpRequest = Shapes::StructureShape.new(name: 'DeregisterElasticIpRequest')
    DeregisterInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterInstanceRequest')
    DeregisterRdsDbInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterRdsDbInstanceRequest')
    DeregisterVolumeRequest = Shapes::StructureShape.new(name: 'DeregisterVolumeRequest')
    DescribeAgentVersionsRequest = Shapes::StructureShape.new(name: 'DescribeAgentVersionsRequest')
    DescribeAgentVersionsResult = Shapes::StructureShape.new(name: 'DescribeAgentVersionsResult')
    DescribeAppsRequest = Shapes::StructureShape.new(name: 'DescribeAppsRequest')
    DescribeAppsResult = Shapes::StructureShape.new(name: 'DescribeAppsResult')
    DescribeCommandsRequest = Shapes::StructureShape.new(name: 'DescribeCommandsRequest')
    DescribeCommandsResult = Shapes::StructureShape.new(name: 'DescribeCommandsResult')
    DescribeDeploymentsRequest = Shapes::StructureShape.new(name: 'DescribeDeploymentsRequest')
    DescribeDeploymentsResult = Shapes::StructureShape.new(name: 'DescribeDeploymentsResult')
    DescribeEcsClustersRequest = Shapes::StructureShape.new(name: 'DescribeEcsClustersRequest')
    DescribeEcsClustersResult = Shapes::StructureShape.new(name: 'DescribeEcsClustersResult')
    DescribeElasticIpsRequest = Shapes::StructureShape.new(name: 'DescribeElasticIpsRequest')
    DescribeElasticIpsResult = Shapes::StructureShape.new(name: 'DescribeElasticIpsResult')
    DescribeElasticLoadBalancersRequest = Shapes::StructureShape.new(name: 'DescribeElasticLoadBalancersRequest')
    DescribeElasticLoadBalancersResult = Shapes::StructureShape.new(name: 'DescribeElasticLoadBalancersResult')
    DescribeInstancesRequest = Shapes::StructureShape.new(name: 'DescribeInstancesRequest')
    DescribeInstancesResult = Shapes::StructureShape.new(name: 'DescribeInstancesResult')
    DescribeLayersRequest = Shapes::StructureShape.new(name: 'DescribeLayersRequest')
    DescribeLayersResult = Shapes::StructureShape.new(name: 'DescribeLayersResult')
    DescribeLoadBasedAutoScalingRequest = Shapes::StructureShape.new(name: 'DescribeLoadBasedAutoScalingRequest')
    DescribeLoadBasedAutoScalingResult = Shapes::StructureShape.new(name: 'DescribeLoadBasedAutoScalingResult')
    DescribeMyUserProfileResult = Shapes::StructureShape.new(name: 'DescribeMyUserProfileResult')
    DescribeOperatingSystemsResponse = Shapes::StructureShape.new(name: 'DescribeOperatingSystemsResponse')
    DescribePermissionsRequest = Shapes::StructureShape.new(name: 'DescribePermissionsRequest')
    DescribePermissionsResult = Shapes::StructureShape.new(name: 'DescribePermissionsResult')
    DescribeRaidArraysRequest = Shapes::StructureShape.new(name: 'DescribeRaidArraysRequest')
    DescribeRaidArraysResult = Shapes::StructureShape.new(name: 'DescribeRaidArraysResult')
    DescribeRdsDbInstancesRequest = Shapes::StructureShape.new(name: 'DescribeRdsDbInstancesRequest')
    DescribeRdsDbInstancesResult = Shapes::StructureShape.new(name: 'DescribeRdsDbInstancesResult')
    DescribeServiceErrorsRequest = Shapes::StructureShape.new(name: 'DescribeServiceErrorsRequest')
    DescribeServiceErrorsResult = Shapes::StructureShape.new(name: 'DescribeServiceErrorsResult')
    DescribeStackProvisioningParametersRequest = Shapes::StructureShape.new(name: 'DescribeStackProvisioningParametersRequest')
    DescribeStackProvisioningParametersResult = Shapes::StructureShape.new(name: 'DescribeStackProvisioningParametersResult')
    DescribeStackSummaryRequest = Shapes::StructureShape.new(name: 'DescribeStackSummaryRequest')
    DescribeStackSummaryResult = Shapes::StructureShape.new(name: 'DescribeStackSummaryResult')
    DescribeStacksRequest = Shapes::StructureShape.new(name: 'DescribeStacksRequest')
    DescribeStacksResult = Shapes::StructureShape.new(name: 'DescribeStacksResult')
    DescribeTimeBasedAutoScalingRequest = Shapes::StructureShape.new(name: 'DescribeTimeBasedAutoScalingRequest')
    DescribeTimeBasedAutoScalingResult = Shapes::StructureShape.new(name: 'DescribeTimeBasedAutoScalingResult')
    DescribeUserProfilesRequest = Shapes::StructureShape.new(name: 'DescribeUserProfilesRequest')
    DescribeUserProfilesResult = Shapes::StructureShape.new(name: 'DescribeUserProfilesResult')
    DescribeVolumesRequest = Shapes::StructureShape.new(name: 'DescribeVolumesRequest')
    DescribeVolumesResult = Shapes::StructureShape.new(name: 'DescribeVolumesResult')
    DetachElasticLoadBalancerRequest = Shapes::StructureShape.new(name: 'DetachElasticLoadBalancerRequest')
    DisassociateElasticIpRequest = Shapes::StructureShape.new(name: 'DisassociateElasticIpRequest')
    Double = Shapes::FloatShape.new(name: 'Double')
    EbsBlockDevice = Shapes::StructureShape.new(name: 'EbsBlockDevice')
    EcsCluster = Shapes::StructureShape.new(name: 'EcsCluster')
    EcsClusters = Shapes::ListShape.new(name: 'EcsClusters')
    ElasticIp = Shapes::StructureShape.new(name: 'ElasticIp')
    ElasticIps = Shapes::ListShape.new(name: 'ElasticIps')
    ElasticLoadBalancer = Shapes::StructureShape.new(name: 'ElasticLoadBalancer')
    ElasticLoadBalancers = Shapes::ListShape.new(name: 'ElasticLoadBalancers')
    EnvironmentVariable = Shapes::StructureShape.new(name: 'EnvironmentVariable')
    EnvironmentVariables = Shapes::ListShape.new(name: 'EnvironmentVariables')
    GetHostnameSuggestionRequest = Shapes::StructureShape.new(name: 'GetHostnameSuggestionRequest')
    GetHostnameSuggestionResult = Shapes::StructureShape.new(name: 'GetHostnameSuggestionResult')
    GrantAccessRequest = Shapes::StructureShape.new(name: 'GrantAccessRequest')
    GrantAccessResult = Shapes::StructureShape.new(name: 'GrantAccessResult')
    Hour = Shapes::StringShape.new(name: 'Hour')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceIdentity = Shapes::StructureShape.new(name: 'InstanceIdentity')
    Instances = Shapes::ListShape.new(name: 'Instances')
    InstancesCount = Shapes::StructureShape.new(name: 'InstancesCount')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    Layer = Shapes::StructureShape.new(name: 'Layer')
    LayerAttributes = Shapes::MapShape.new(name: 'LayerAttributes')
    LayerAttributesKeys = Shapes::StringShape.new(name: 'LayerAttributesKeys')
    LayerType = Shapes::StringShape.new(name: 'LayerType')
    Layers = Shapes::ListShape.new(name: 'Layers')
    LifecycleEventConfiguration = Shapes::StructureShape.new(name: 'LifecycleEventConfiguration')
    ListTagsRequest = Shapes::StructureShape.new(name: 'ListTagsRequest')
    ListTagsResult = Shapes::StructureShape.new(name: 'ListTagsResult')
    LoadBasedAutoScalingConfiguration = Shapes::StructureShape.new(name: 'LoadBasedAutoScalingConfiguration')
    LoadBasedAutoScalingConfigurations = Shapes::ListShape.new(name: 'LoadBasedAutoScalingConfigurations')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Minute = Shapes::IntegerShape.new(name: 'Minute')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OperatingSystem = Shapes::StructureShape.new(name: 'OperatingSystem')
    OperatingSystemConfigurationManager = Shapes::StructureShape.new(name: 'OperatingSystemConfigurationManager')
    OperatingSystemConfigurationManagers = Shapes::ListShape.new(name: 'OperatingSystemConfigurationManagers')
    OperatingSystems = Shapes::ListShape.new(name: 'OperatingSystems')
    Parameters = Shapes::MapShape.new(name: 'Parameters')
    Permission = Shapes::StructureShape.new(name: 'Permission')
    Permissions = Shapes::ListShape.new(name: 'Permissions')
    RaidArray = Shapes::StructureShape.new(name: 'RaidArray')
    RaidArrays = Shapes::ListShape.new(name: 'RaidArrays')
    RdsDbInstance = Shapes::StructureShape.new(name: 'RdsDbInstance')
    RdsDbInstances = Shapes::ListShape.new(name: 'RdsDbInstances')
    RebootInstanceRequest = Shapes::StructureShape.new(name: 'RebootInstanceRequest')
    Recipes = Shapes::StructureShape.new(name: 'Recipes')
    RegisterEcsClusterRequest = Shapes::StructureShape.new(name: 'RegisterEcsClusterRequest')
    RegisterEcsClusterResult = Shapes::StructureShape.new(name: 'RegisterEcsClusterResult')
    RegisterElasticIpRequest = Shapes::StructureShape.new(name: 'RegisterElasticIpRequest')
    RegisterElasticIpResult = Shapes::StructureShape.new(name: 'RegisterElasticIpResult')
    RegisterInstanceRequest = Shapes::StructureShape.new(name: 'RegisterInstanceRequest')
    RegisterInstanceResult = Shapes::StructureShape.new(name: 'RegisterInstanceResult')
    RegisterRdsDbInstanceRequest = Shapes::StructureShape.new(name: 'RegisterRdsDbInstanceRequest')
    RegisterVolumeRequest = Shapes::StructureShape.new(name: 'RegisterVolumeRequest')
    RegisterVolumeResult = Shapes::StructureShape.new(name: 'RegisterVolumeResult')
    ReportedOs = Shapes::StructureShape.new(name: 'ReportedOs')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RootDeviceType = Shapes::StringShape.new(name: 'RootDeviceType')
    SelfUserProfile = Shapes::StructureShape.new(name: 'SelfUserProfile')
    ServiceError = Shapes::StructureShape.new(name: 'ServiceError')
    ServiceErrors = Shapes::ListShape.new(name: 'ServiceErrors')
    SetLoadBasedAutoScalingRequest = Shapes::StructureShape.new(name: 'SetLoadBasedAutoScalingRequest')
    SetPermissionRequest = Shapes::StructureShape.new(name: 'SetPermissionRequest')
    SetTimeBasedAutoScalingRequest = Shapes::StructureShape.new(name: 'SetTimeBasedAutoScalingRequest')
    ShutdownEventConfiguration = Shapes::StructureShape.new(name: 'ShutdownEventConfiguration')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    SslConfiguration = Shapes::StructureShape.new(name: 'SslConfiguration')
    Stack = Shapes::StructureShape.new(name: 'Stack')
    StackAttributes = Shapes::MapShape.new(name: 'StackAttributes')
    StackAttributesKeys = Shapes::StringShape.new(name: 'StackAttributesKeys')
    StackConfigurationManager = Shapes::StructureShape.new(name: 'StackConfigurationManager')
    StackSummary = Shapes::StructureShape.new(name: 'StackSummary')
    Stacks = Shapes::ListShape.new(name: 'Stacks')
    StartInstanceRequest = Shapes::StructureShape.new(name: 'StartInstanceRequest')
    StartStackRequest = Shapes::StructureShape.new(name: 'StartStackRequest')
    StopInstanceRequest = Shapes::StructureShape.new(name: 'StopInstanceRequest')
    StopStackRequest = Shapes::StructureShape.new(name: 'StopStackRequest')
    String = Shapes::StringShape.new(name: 'String')
    Strings = Shapes::ListShape.new(name: 'Strings')
    Switch = Shapes::StringShape.new(name: 'Switch')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TemporaryCredential = Shapes::StructureShape.new(name: 'TemporaryCredential')
    TimeBasedAutoScalingConfiguration = Shapes::StructureShape.new(name: 'TimeBasedAutoScalingConfiguration')
    TimeBasedAutoScalingConfigurations = Shapes::ListShape.new(name: 'TimeBasedAutoScalingConfigurations')
    UnassignInstanceRequest = Shapes::StructureShape.new(name: 'UnassignInstanceRequest')
    UnassignVolumeRequest = Shapes::StructureShape.new(name: 'UnassignVolumeRequest')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateAppRequest = Shapes::StructureShape.new(name: 'UpdateAppRequest')
    UpdateElasticIpRequest = Shapes::StructureShape.new(name: 'UpdateElasticIpRequest')
    UpdateInstanceRequest = Shapes::StructureShape.new(name: 'UpdateInstanceRequest')
    UpdateLayerRequest = Shapes::StructureShape.new(name: 'UpdateLayerRequest')
    UpdateMyUserProfileRequest = Shapes::StructureShape.new(name: 'UpdateMyUserProfileRequest')
    UpdateRdsDbInstanceRequest = Shapes::StructureShape.new(name: 'UpdateRdsDbInstanceRequest')
    UpdateStackRequest = Shapes::StructureShape.new(name: 'UpdateStackRequest')
    UpdateUserProfileRequest = Shapes::StructureShape.new(name: 'UpdateUserProfileRequest')
    UpdateVolumeRequest = Shapes::StructureShape.new(name: 'UpdateVolumeRequest')
    UserProfile = Shapes::StructureShape.new(name: 'UserProfile')
    UserProfiles = Shapes::ListShape.new(name: 'UserProfiles')
    ValidForInMinutes = Shapes::IntegerShape.new(name: 'ValidForInMinutes')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VirtualizationType = Shapes::StringShape.new(name: 'VirtualizationType')
    Volume = Shapes::StructureShape.new(name: 'Volume')
    VolumeConfiguration = Shapes::StructureShape.new(name: 'VolumeConfiguration')
    VolumeConfigurations = Shapes::ListShape.new(name: 'VolumeConfigurations')
    VolumeType = Shapes::StringShape.new(name: 'VolumeType')
    Volumes = Shapes::ListShape.new(name: 'Volumes')
    WeeklyAutoScalingSchedule = Shapes::StructureShape.new(name: 'WeeklyAutoScalingSchedule')

    AgentVersion.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    AgentVersion.add_member(:configuration_manager, Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: "ConfigurationManager"))
    AgentVersion.struct_class = Types::AgentVersion

    AgentVersions.member = Shapes::ShapeRef.new(shape: AgentVersion)

    App.add_member(:app_id, Shapes::ShapeRef.new(shape: String, location_name: "AppId"))
    App.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    App.add_member(:shortname, Shapes::ShapeRef.new(shape: String, location_name: "Shortname"))
    App.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    App.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    App.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "DataSources"))
    App.add_member(:type, Shapes::ShapeRef.new(shape: AppType, location_name: "Type"))
    App.add_member(:app_source, Shapes::ShapeRef.new(shape: Source, location_name: "AppSource"))
    App.add_member(:domains, Shapes::ShapeRef.new(shape: Strings, location_name: "Domains"))
    App.add_member(:enable_ssl, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableSsl"))
    App.add_member(:ssl_configuration, Shapes::ShapeRef.new(shape: SslConfiguration, location_name: "SslConfiguration"))
    App.add_member(:attributes, Shapes::ShapeRef.new(shape: AppAttributes, location_name: "Attributes"))
    App.add_member(:created_at, Shapes::ShapeRef.new(shape: String, location_name: "CreatedAt"))
    App.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "Environment"))
    App.struct_class = Types::App

    AppAttributes.key = Shapes::ShapeRef.new(shape: AppAttributesKeys)
    AppAttributes.value = Shapes::ShapeRef.new(shape: String)

    Apps.member = Shapes::ShapeRef.new(shape: App)

    AssignInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    AssignInstanceRequest.add_member(:layer_ids, Shapes::ShapeRef.new(shape: Strings, required: true, location_name: "LayerIds"))
    AssignInstanceRequest.struct_class = Types::AssignInstanceRequest

    AssignVolumeRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VolumeId"))
    AssignVolumeRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    AssignVolumeRequest.struct_class = Types::AssignVolumeRequest

    AssociateElasticIpRequest.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ElasticIp"))
    AssociateElasticIpRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    AssociateElasticIpRequest.struct_class = Types::AssociateElasticIpRequest

    AttachElasticLoadBalancerRequest.add_member(:elastic_load_balancer_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ElasticLoadBalancerName"))
    AttachElasticLoadBalancerRequest.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LayerId"))
    AttachElasticLoadBalancerRequest.struct_class = Types::AttachElasticLoadBalancerRequest

    AutoScalingThresholds.add_member(:instance_count, Shapes::ShapeRef.new(shape: Integer, location_name: "InstanceCount"))
    AutoScalingThresholds.add_member(:thresholds_wait_time, Shapes::ShapeRef.new(shape: Minute, location_name: "ThresholdsWaitTime"))
    AutoScalingThresholds.add_member(:ignore_metrics_time, Shapes::ShapeRef.new(shape: Minute, location_name: "IgnoreMetricsTime"))
    AutoScalingThresholds.add_member(:cpu_threshold, Shapes::ShapeRef.new(shape: Double, location_name: "CpuThreshold"))
    AutoScalingThresholds.add_member(:memory_threshold, Shapes::ShapeRef.new(shape: Double, location_name: "MemoryThreshold"))
    AutoScalingThresholds.add_member(:load_threshold, Shapes::ShapeRef.new(shape: Double, location_name: "LoadThreshold"))
    AutoScalingThresholds.add_member(:alarms, Shapes::ShapeRef.new(shape: Strings, location_name: "Alarms"))
    AutoScalingThresholds.struct_class = Types::AutoScalingThresholds

    BlockDeviceMapping.add_member(:device_name, Shapes::ShapeRef.new(shape: String, location_name: "DeviceName"))
    BlockDeviceMapping.add_member(:no_device, Shapes::ShapeRef.new(shape: String, location_name: "NoDevice"))
    BlockDeviceMapping.add_member(:virtual_name, Shapes::ShapeRef.new(shape: String, location_name: "VirtualName"))
    BlockDeviceMapping.add_member(:ebs, Shapes::ShapeRef.new(shape: EbsBlockDevice, location_name: "Ebs"))
    BlockDeviceMapping.struct_class = Types::BlockDeviceMapping

    BlockDeviceMappings.member = Shapes::ShapeRef.new(shape: BlockDeviceMapping)

    ChefConfiguration.add_member(:manage_berkshelf, Shapes::ShapeRef.new(shape: Boolean, location_name: "ManageBerkshelf"))
    ChefConfiguration.add_member(:berkshelf_version, Shapes::ShapeRef.new(shape: String, location_name: "BerkshelfVersion"))
    ChefConfiguration.struct_class = Types::ChefConfiguration

    CloneStackRequest.add_member(:source_stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "SourceStackId"))
    CloneStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    CloneStackRequest.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    CloneStackRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    CloneStackRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: StackAttributes, location_name: "Attributes"))
    CloneStackRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceRoleArn"))
    CloneStackRequest.add_member(:default_instance_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "DefaultInstanceProfileArn"))
    CloneStackRequest.add_member(:default_os, Shapes::ShapeRef.new(shape: String, location_name: "DefaultOs"))
    CloneStackRequest.add_member(:hostname_theme, Shapes::ShapeRef.new(shape: String, location_name: "HostnameTheme"))
    CloneStackRequest.add_member(:default_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "DefaultAvailabilityZone"))
    CloneStackRequest.add_member(:default_subnet_id, Shapes::ShapeRef.new(shape: String, location_name: "DefaultSubnetId"))
    CloneStackRequest.add_member(:custom_json, Shapes::ShapeRef.new(shape: String, location_name: "CustomJson"))
    CloneStackRequest.add_member(:configuration_manager, Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: "ConfigurationManager"))
    CloneStackRequest.add_member(:chef_configuration, Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: "ChefConfiguration"))
    CloneStackRequest.add_member(:use_custom_cookbooks, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseCustomCookbooks"))
    CloneStackRequest.add_member(:use_opsworks_security_groups, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseOpsworksSecurityGroups"))
    CloneStackRequest.add_member(:custom_cookbooks_source, Shapes::ShapeRef.new(shape: Source, location_name: "CustomCookbooksSource"))
    CloneStackRequest.add_member(:default_ssh_key_name, Shapes::ShapeRef.new(shape: String, location_name: "DefaultSshKeyName"))
    CloneStackRequest.add_member(:clone_permissions, Shapes::ShapeRef.new(shape: Boolean, location_name: "ClonePermissions"))
    CloneStackRequest.add_member(:clone_app_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "CloneAppIds"))
    CloneStackRequest.add_member(:default_root_device_type, Shapes::ShapeRef.new(shape: RootDeviceType, location_name: "DefaultRootDeviceType"))
    CloneStackRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: String, location_name: "AgentVersion"))
    CloneStackRequest.struct_class = Types::CloneStackRequest

    CloneStackResult.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    CloneStackResult.struct_class = Types::CloneStackResult

    CloudWatchLogsConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enabled"))
    CloudWatchLogsConfiguration.add_member(:log_streams, Shapes::ShapeRef.new(shape: CloudWatchLogsLogStreams, location_name: "LogStreams"))
    CloudWatchLogsConfiguration.struct_class = Types::CloudWatchLogsConfiguration

    CloudWatchLogsLogStream.add_member(:log_group_name, Shapes::ShapeRef.new(shape: String, location_name: "LogGroupName"))
    CloudWatchLogsLogStream.add_member(:datetime_format, Shapes::ShapeRef.new(shape: String, location_name: "DatetimeFormat"))
    CloudWatchLogsLogStream.add_member(:time_zone, Shapes::ShapeRef.new(shape: CloudWatchLogsTimeZone, location_name: "TimeZone"))
    CloudWatchLogsLogStream.add_member(:file, Shapes::ShapeRef.new(shape: String, location_name: "File"))
    CloudWatchLogsLogStream.add_member(:file_fingerprint_lines, Shapes::ShapeRef.new(shape: String, location_name: "FileFingerprintLines"))
    CloudWatchLogsLogStream.add_member(:multi_line_start_pattern, Shapes::ShapeRef.new(shape: String, location_name: "MultiLineStartPattern"))
    CloudWatchLogsLogStream.add_member(:initial_position, Shapes::ShapeRef.new(shape: CloudWatchLogsInitialPosition, location_name: "InitialPosition"))
    CloudWatchLogsLogStream.add_member(:encoding, Shapes::ShapeRef.new(shape: CloudWatchLogsEncoding, location_name: "Encoding"))
    CloudWatchLogsLogStream.add_member(:buffer_duration, Shapes::ShapeRef.new(shape: Integer, location_name: "BufferDuration"))
    CloudWatchLogsLogStream.add_member(:batch_count, Shapes::ShapeRef.new(shape: Integer, location_name: "BatchCount"))
    CloudWatchLogsLogStream.add_member(:batch_size, Shapes::ShapeRef.new(shape: Integer, location_name: "BatchSize"))
    CloudWatchLogsLogStream.struct_class = Types::CloudWatchLogsLogStream

    CloudWatchLogsLogStreams.member = Shapes::ShapeRef.new(shape: CloudWatchLogsLogStream)

    Command.add_member(:command_id, Shapes::ShapeRef.new(shape: String, location_name: "CommandId"))
    Command.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    Command.add_member(:deployment_id, Shapes::ShapeRef.new(shape: String, location_name: "DeploymentId"))
    Command.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Command.add_member(:acknowledged_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "AcknowledgedAt"))
    Command.add_member(:completed_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletedAt"))
    Command.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Command.add_member(:exit_code, Shapes::ShapeRef.new(shape: Integer, location_name: "ExitCode"))
    Command.add_member(:log_url, Shapes::ShapeRef.new(shape: String, location_name: "LogUrl"))
    Command.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    Command.struct_class = Types::Command

    Commands.member = Shapes::ShapeRef.new(shape: Command)

    CreateAppRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    CreateAppRequest.add_member(:shortname, Shapes::ShapeRef.new(shape: String, location_name: "Shortname"))
    CreateAppRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CreateAppRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateAppRequest.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "DataSources"))
    CreateAppRequest.add_member(:type, Shapes::ShapeRef.new(shape: AppType, required: true, location_name: "Type"))
    CreateAppRequest.add_member(:app_source, Shapes::ShapeRef.new(shape: Source, location_name: "AppSource"))
    CreateAppRequest.add_member(:domains, Shapes::ShapeRef.new(shape: Strings, location_name: "Domains"))
    CreateAppRequest.add_member(:enable_ssl, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableSsl"))
    CreateAppRequest.add_member(:ssl_configuration, Shapes::ShapeRef.new(shape: SslConfiguration, location_name: "SslConfiguration"))
    CreateAppRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: AppAttributes, location_name: "Attributes"))
    CreateAppRequest.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "Environment"))
    CreateAppRequest.struct_class = Types::CreateAppRequest

    CreateAppResult.add_member(:app_id, Shapes::ShapeRef.new(shape: String, location_name: "AppId"))
    CreateAppResult.struct_class = Types::CreateAppResult

    CreateDeploymentRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    CreateDeploymentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, location_name: "AppId"))
    CreateDeploymentRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "InstanceIds"))
    CreateDeploymentRequest.add_member(:layer_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "LayerIds"))
    CreateDeploymentRequest.add_member(:command, Shapes::ShapeRef.new(shape: DeploymentCommand, required: true, location_name: "Command"))
    CreateDeploymentRequest.add_member(:comment, Shapes::ShapeRef.new(shape: String, location_name: "Comment"))
    CreateDeploymentRequest.add_member(:custom_json, Shapes::ShapeRef.new(shape: String, location_name: "CustomJson"))
    CreateDeploymentRequest.struct_class = Types::CreateDeploymentRequest

    CreateDeploymentResult.add_member(:deployment_id, Shapes::ShapeRef.new(shape: String, location_name: "DeploymentId"))
    CreateDeploymentResult.struct_class = Types::CreateDeploymentResult

    CreateInstanceRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    CreateInstanceRequest.add_member(:layer_ids, Shapes::ShapeRef.new(shape: Strings, required: true, location_name: "LayerIds"))
    CreateInstanceRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    CreateInstanceRequest.add_member(:auto_scaling_type, Shapes::ShapeRef.new(shape: AutoScalingType, location_name: "AutoScalingType"))
    CreateInstanceRequest.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "Hostname"))
    CreateInstanceRequest.add_member(:os, Shapes::ShapeRef.new(shape: String, location_name: "Os"))
    CreateInstanceRequest.add_member(:ami_id, Shapes::ShapeRef.new(shape: String, location_name: "AmiId"))
    CreateInstanceRequest.add_member(:ssh_key_name, Shapes::ShapeRef.new(shape: String, location_name: "SshKeyName"))
    CreateInstanceRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    CreateInstanceRequest.add_member(:virtualization_type, Shapes::ShapeRef.new(shape: String, location_name: "VirtualizationType"))
    CreateInstanceRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: String, location_name: "SubnetId"))
    CreateInstanceRequest.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "Architecture"))
    CreateInstanceRequest.add_member(:root_device_type, Shapes::ShapeRef.new(shape: RootDeviceType, location_name: "RootDeviceType"))
    CreateInstanceRequest.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: "BlockDeviceMappings"))
    CreateInstanceRequest.add_member(:install_updates_on_boot, Shapes::ShapeRef.new(shape: Boolean, location_name: "InstallUpdatesOnBoot"))
    CreateInstanceRequest.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: Boolean, location_name: "EbsOptimized"))
    CreateInstanceRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: String, location_name: "AgentVersion"))
    CreateInstanceRequest.add_member(:tenancy, Shapes::ShapeRef.new(shape: String, location_name: "Tenancy"))
    CreateInstanceRequest.struct_class = Types::CreateInstanceRequest

    CreateInstanceResult.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    CreateInstanceResult.struct_class = Types::CreateInstanceResult

    CreateLayerRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    CreateLayerRequest.add_member(:type, Shapes::ShapeRef.new(shape: LayerType, required: true, location_name: "Type"))
    CreateLayerRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CreateLayerRequest.add_member(:shortname, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Shortname"))
    CreateLayerRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: LayerAttributes, location_name: "Attributes"))
    CreateLayerRequest.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: CloudWatchLogsConfiguration, location_name: "CloudWatchLogsConfiguration"))
    CreateLayerRequest.add_member(:custom_instance_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "CustomInstanceProfileArn"))
    CreateLayerRequest.add_member(:custom_json, Shapes::ShapeRef.new(shape: String, location_name: "CustomJson"))
    CreateLayerRequest.add_member(:custom_security_group_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "CustomSecurityGroupIds"))
    CreateLayerRequest.add_member(:packages, Shapes::ShapeRef.new(shape: Strings, location_name: "Packages"))
    CreateLayerRequest.add_member(:volume_configurations, Shapes::ShapeRef.new(shape: VolumeConfigurations, location_name: "VolumeConfigurations"))
    CreateLayerRequest.add_member(:enable_auto_healing, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableAutoHealing"))
    CreateLayerRequest.add_member(:auto_assign_elastic_ips, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoAssignElasticIps"))
    CreateLayerRequest.add_member(:auto_assign_public_ips, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoAssignPublicIps"))
    CreateLayerRequest.add_member(:custom_recipes, Shapes::ShapeRef.new(shape: Recipes, location_name: "CustomRecipes"))
    CreateLayerRequest.add_member(:install_updates_on_boot, Shapes::ShapeRef.new(shape: Boolean, location_name: "InstallUpdatesOnBoot"))
    CreateLayerRequest.add_member(:use_ebs_optimized_instances, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseEbsOptimizedInstances"))
    CreateLayerRequest.add_member(:lifecycle_event_configuration, Shapes::ShapeRef.new(shape: LifecycleEventConfiguration, location_name: "LifecycleEventConfiguration"))
    CreateLayerRequest.struct_class = Types::CreateLayerRequest

    CreateLayerResult.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, location_name: "LayerId"))
    CreateLayerResult.struct_class = Types::CreateLayerResult

    CreateStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    CreateStackRequest.add_member(:region, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Region"))
    CreateStackRequest.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    CreateStackRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: StackAttributes, location_name: "Attributes"))
    CreateStackRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ServiceRoleArn"))
    CreateStackRequest.add_member(:default_instance_profile_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DefaultInstanceProfileArn"))
    CreateStackRequest.add_member(:default_os, Shapes::ShapeRef.new(shape: String, location_name: "DefaultOs"))
    CreateStackRequest.add_member(:hostname_theme, Shapes::ShapeRef.new(shape: String, location_name: "HostnameTheme"))
    CreateStackRequest.add_member(:default_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "DefaultAvailabilityZone"))
    CreateStackRequest.add_member(:default_subnet_id, Shapes::ShapeRef.new(shape: String, location_name: "DefaultSubnetId"))
    CreateStackRequest.add_member(:custom_json, Shapes::ShapeRef.new(shape: String, location_name: "CustomJson"))
    CreateStackRequest.add_member(:configuration_manager, Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: "ConfigurationManager"))
    CreateStackRequest.add_member(:chef_configuration, Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: "ChefConfiguration"))
    CreateStackRequest.add_member(:use_custom_cookbooks, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseCustomCookbooks"))
    CreateStackRequest.add_member(:use_opsworks_security_groups, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseOpsworksSecurityGroups"))
    CreateStackRequest.add_member(:custom_cookbooks_source, Shapes::ShapeRef.new(shape: Source, location_name: "CustomCookbooksSource"))
    CreateStackRequest.add_member(:default_ssh_key_name, Shapes::ShapeRef.new(shape: String, location_name: "DefaultSshKeyName"))
    CreateStackRequest.add_member(:default_root_device_type, Shapes::ShapeRef.new(shape: RootDeviceType, location_name: "DefaultRootDeviceType"))
    CreateStackRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: String, location_name: "AgentVersion"))
    CreateStackRequest.struct_class = Types::CreateStackRequest

    CreateStackResult.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    CreateStackResult.struct_class = Types::CreateStackResult

    CreateUserProfileRequest.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "IamUserArn"))
    CreateUserProfileRequest.add_member(:ssh_username, Shapes::ShapeRef.new(shape: String, location_name: "SshUsername"))
    CreateUserProfileRequest.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: String, location_name: "SshPublicKey"))
    CreateUserProfileRequest.add_member(:allow_self_management, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowSelfManagement"))
    CreateUserProfileRequest.struct_class = Types::CreateUserProfileRequest

    CreateUserProfileResult.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamUserArn"))
    CreateUserProfileResult.struct_class = Types::CreateUserProfileResult

    DailyAutoScalingSchedule.key = Shapes::ShapeRef.new(shape: Hour)
    DailyAutoScalingSchedule.value = Shapes::ShapeRef.new(shape: Switch)

    DataSource.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    DataSource.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    DataSource.add_member(:database_name, Shapes::ShapeRef.new(shape: String, location_name: "DatabaseName"))
    DataSource.struct_class = Types::DataSource

    DataSources.member = Shapes::ShapeRef.new(shape: DataSource)

    DeleteAppRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AppId"))
    DeleteAppRequest.struct_class = Types::DeleteAppRequest

    DeleteInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    DeleteInstanceRequest.add_member(:delete_elastic_ip, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteElasticIp"))
    DeleteInstanceRequest.add_member(:delete_volumes, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteVolumes"))
    DeleteInstanceRequest.struct_class = Types::DeleteInstanceRequest

    DeleteLayerRequest.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LayerId"))
    DeleteLayerRequest.struct_class = Types::DeleteLayerRequest

    DeleteStackRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    DeleteStackRequest.struct_class = Types::DeleteStackRequest

    DeleteUserProfileRequest.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "IamUserArn"))
    DeleteUserProfileRequest.struct_class = Types::DeleteUserProfileRequest

    Deployment.add_member(:deployment_id, Shapes::ShapeRef.new(shape: String, location_name: "DeploymentId"))
    Deployment.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    Deployment.add_member(:app_id, Shapes::ShapeRef.new(shape: String, location_name: "AppId"))
    Deployment.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Deployment.add_member(:completed_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletedAt"))
    Deployment.add_member(:duration, Shapes::ShapeRef.new(shape: Integer, location_name: "Duration"))
    Deployment.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamUserArn"))
    Deployment.add_member(:comment, Shapes::ShapeRef.new(shape: String, location_name: "Comment"))
    Deployment.add_member(:command, Shapes::ShapeRef.new(shape: DeploymentCommand, location_name: "Command"))
    Deployment.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Deployment.add_member(:custom_json, Shapes::ShapeRef.new(shape: String, location_name: "CustomJson"))
    Deployment.add_member(:instance_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "InstanceIds"))
    Deployment.struct_class = Types::Deployment

    DeploymentCommand.add_member(:name, Shapes::ShapeRef.new(shape: DeploymentCommandName, required: true, location_name: "Name"))
    DeploymentCommand.add_member(:args, Shapes::ShapeRef.new(shape: DeploymentCommandArgs, location_name: "Args"))
    DeploymentCommand.struct_class = Types::DeploymentCommand

    DeploymentCommandArgs.key = Shapes::ShapeRef.new(shape: String)
    DeploymentCommandArgs.value = Shapes::ShapeRef.new(shape: Strings)

    Deployments.member = Shapes::ShapeRef.new(shape: Deployment)

    DeregisterEcsClusterRequest.add_member(:ecs_cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EcsClusterArn"))
    DeregisterEcsClusterRequest.struct_class = Types::DeregisterEcsClusterRequest

    DeregisterElasticIpRequest.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ElasticIp"))
    DeregisterElasticIpRequest.struct_class = Types::DeregisterElasticIpRequest

    DeregisterInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    DeregisterInstanceRequest.struct_class = Types::DeregisterInstanceRequest

    DeregisterRdsDbInstanceRequest.add_member(:rds_db_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RdsDbInstanceArn"))
    DeregisterRdsDbInstanceRequest.struct_class = Types::DeregisterRdsDbInstanceRequest

    DeregisterVolumeRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VolumeId"))
    DeregisterVolumeRequest.struct_class = Types::DeregisterVolumeRequest

    DescribeAgentVersionsRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribeAgentVersionsRequest.add_member(:configuration_manager, Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: "ConfigurationManager"))
    DescribeAgentVersionsRequest.struct_class = Types::DescribeAgentVersionsRequest

    DescribeAgentVersionsResult.add_member(:agent_versions, Shapes::ShapeRef.new(shape: AgentVersions, location_name: "AgentVersions"))
    DescribeAgentVersionsResult.struct_class = Types::DescribeAgentVersionsResult

    DescribeAppsRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribeAppsRequest.add_member(:app_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "AppIds"))
    DescribeAppsRequest.struct_class = Types::DescribeAppsRequest

    DescribeAppsResult.add_member(:apps, Shapes::ShapeRef.new(shape: Apps, location_name: "Apps"))
    DescribeAppsResult.struct_class = Types::DescribeAppsResult

    DescribeCommandsRequest.add_member(:deployment_id, Shapes::ShapeRef.new(shape: String, location_name: "DeploymentId"))
    DescribeCommandsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    DescribeCommandsRequest.add_member(:command_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "CommandIds"))
    DescribeCommandsRequest.struct_class = Types::DescribeCommandsRequest

    DescribeCommandsResult.add_member(:commands, Shapes::ShapeRef.new(shape: Commands, location_name: "Commands"))
    DescribeCommandsResult.struct_class = Types::DescribeCommandsResult

    DescribeDeploymentsRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribeDeploymentsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, location_name: "AppId"))
    DescribeDeploymentsRequest.add_member(:deployment_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "DeploymentIds"))
    DescribeDeploymentsRequest.struct_class = Types::DescribeDeploymentsRequest

    DescribeDeploymentsResult.add_member(:deployments, Shapes::ShapeRef.new(shape: Deployments, location_name: "Deployments"))
    DescribeDeploymentsResult.struct_class = Types::DescribeDeploymentsResult

    DescribeEcsClustersRequest.add_member(:ecs_cluster_arns, Shapes::ShapeRef.new(shape: Strings, location_name: "EcsClusterArns"))
    DescribeEcsClustersRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribeEcsClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeEcsClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxResults"))
    DescribeEcsClustersRequest.struct_class = Types::DescribeEcsClustersRequest

    DescribeEcsClustersResult.add_member(:ecs_clusters, Shapes::ShapeRef.new(shape: EcsClusters, location_name: "EcsClusters"))
    DescribeEcsClustersResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeEcsClustersResult.struct_class = Types::DescribeEcsClustersResult

    DescribeElasticIpsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    DescribeElasticIpsRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribeElasticIpsRequest.add_member(:ips, Shapes::ShapeRef.new(shape: Strings, location_name: "Ips"))
    DescribeElasticIpsRequest.struct_class = Types::DescribeElasticIpsRequest

    DescribeElasticIpsResult.add_member(:elastic_ips, Shapes::ShapeRef.new(shape: ElasticIps, location_name: "ElasticIps"))
    DescribeElasticIpsResult.struct_class = Types::DescribeElasticIpsResult

    DescribeElasticLoadBalancersRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribeElasticLoadBalancersRequest.add_member(:layer_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "LayerIds"))
    DescribeElasticLoadBalancersRequest.struct_class = Types::DescribeElasticLoadBalancersRequest

    DescribeElasticLoadBalancersResult.add_member(:elastic_load_balancers, Shapes::ShapeRef.new(shape: ElasticLoadBalancers, location_name: "ElasticLoadBalancers"))
    DescribeElasticLoadBalancersResult.struct_class = Types::DescribeElasticLoadBalancersResult

    DescribeInstancesRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribeInstancesRequest.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, location_name: "LayerId"))
    DescribeInstancesRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "InstanceIds"))
    DescribeInstancesRequest.struct_class = Types::DescribeInstancesRequest

    DescribeInstancesResult.add_member(:instances, Shapes::ShapeRef.new(shape: Instances, location_name: "Instances"))
    DescribeInstancesResult.struct_class = Types::DescribeInstancesResult

    DescribeLayersRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribeLayersRequest.add_member(:layer_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "LayerIds"))
    DescribeLayersRequest.struct_class = Types::DescribeLayersRequest

    DescribeLayersResult.add_member(:layers, Shapes::ShapeRef.new(shape: Layers, location_name: "Layers"))
    DescribeLayersResult.struct_class = Types::DescribeLayersResult

    DescribeLoadBasedAutoScalingRequest.add_member(:layer_ids, Shapes::ShapeRef.new(shape: Strings, required: true, location_name: "LayerIds"))
    DescribeLoadBasedAutoScalingRequest.struct_class = Types::DescribeLoadBasedAutoScalingRequest

    DescribeLoadBasedAutoScalingResult.add_member(:load_based_auto_scaling_configurations, Shapes::ShapeRef.new(shape: LoadBasedAutoScalingConfigurations, location_name: "LoadBasedAutoScalingConfigurations"))
    DescribeLoadBasedAutoScalingResult.struct_class = Types::DescribeLoadBasedAutoScalingResult

    DescribeMyUserProfileResult.add_member(:user_profile, Shapes::ShapeRef.new(shape: SelfUserProfile, location_name: "UserProfile"))
    DescribeMyUserProfileResult.struct_class = Types::DescribeMyUserProfileResult

    DescribeOperatingSystemsResponse.add_member(:operating_systems, Shapes::ShapeRef.new(shape: OperatingSystems, location_name: "OperatingSystems"))
    DescribeOperatingSystemsResponse.struct_class = Types::DescribeOperatingSystemsResponse

    DescribePermissionsRequest.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamUserArn"))
    DescribePermissionsRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribePermissionsRequest.struct_class = Types::DescribePermissionsRequest

    DescribePermissionsResult.add_member(:permissions, Shapes::ShapeRef.new(shape: Permissions, location_name: "Permissions"))
    DescribePermissionsResult.struct_class = Types::DescribePermissionsResult

    DescribeRaidArraysRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    DescribeRaidArraysRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribeRaidArraysRequest.add_member(:raid_array_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "RaidArrayIds"))
    DescribeRaidArraysRequest.struct_class = Types::DescribeRaidArraysRequest

    DescribeRaidArraysResult.add_member(:raid_arrays, Shapes::ShapeRef.new(shape: RaidArrays, location_name: "RaidArrays"))
    DescribeRaidArraysResult.struct_class = Types::DescribeRaidArraysResult

    DescribeRdsDbInstancesRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    DescribeRdsDbInstancesRequest.add_member(:rds_db_instance_arns, Shapes::ShapeRef.new(shape: Strings, location_name: "RdsDbInstanceArns"))
    DescribeRdsDbInstancesRequest.struct_class = Types::DescribeRdsDbInstancesRequest

    DescribeRdsDbInstancesResult.add_member(:rds_db_instances, Shapes::ShapeRef.new(shape: RdsDbInstances, location_name: "RdsDbInstances"))
    DescribeRdsDbInstancesResult.struct_class = Types::DescribeRdsDbInstancesResult

    DescribeServiceErrorsRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribeServiceErrorsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    DescribeServiceErrorsRequest.add_member(:service_error_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "ServiceErrorIds"))
    DescribeServiceErrorsRequest.struct_class = Types::DescribeServiceErrorsRequest

    DescribeServiceErrorsResult.add_member(:service_errors, Shapes::ShapeRef.new(shape: ServiceErrors, location_name: "ServiceErrors"))
    DescribeServiceErrorsResult.struct_class = Types::DescribeServiceErrorsResult

    DescribeStackProvisioningParametersRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    DescribeStackProvisioningParametersRequest.struct_class = Types::DescribeStackProvisioningParametersRequest

    DescribeStackProvisioningParametersResult.add_member(:agent_installer_url, Shapes::ShapeRef.new(shape: String, location_name: "AgentInstallerUrl"))
    DescribeStackProvisioningParametersResult.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    DescribeStackProvisioningParametersResult.struct_class = Types::DescribeStackProvisioningParametersResult

    DescribeStackSummaryRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    DescribeStackSummaryRequest.struct_class = Types::DescribeStackSummaryRequest

    DescribeStackSummaryResult.add_member(:stack_summary, Shapes::ShapeRef.new(shape: StackSummary, location_name: "StackSummary"))
    DescribeStackSummaryResult.struct_class = Types::DescribeStackSummaryResult

    DescribeStacksRequest.add_member(:stack_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "StackIds"))
    DescribeStacksRequest.struct_class = Types::DescribeStacksRequest

    DescribeStacksResult.add_member(:stacks, Shapes::ShapeRef.new(shape: Stacks, location_name: "Stacks"))
    DescribeStacksResult.struct_class = Types::DescribeStacksResult

    DescribeTimeBasedAutoScalingRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: Strings, required: true, location_name: "InstanceIds"))
    DescribeTimeBasedAutoScalingRequest.struct_class = Types::DescribeTimeBasedAutoScalingRequest

    DescribeTimeBasedAutoScalingResult.add_member(:time_based_auto_scaling_configurations, Shapes::ShapeRef.new(shape: TimeBasedAutoScalingConfigurations, location_name: "TimeBasedAutoScalingConfigurations"))
    DescribeTimeBasedAutoScalingResult.struct_class = Types::DescribeTimeBasedAutoScalingResult

    DescribeUserProfilesRequest.add_member(:iam_user_arns, Shapes::ShapeRef.new(shape: Strings, location_name: "IamUserArns"))
    DescribeUserProfilesRequest.struct_class = Types::DescribeUserProfilesRequest

    DescribeUserProfilesResult.add_member(:user_profiles, Shapes::ShapeRef.new(shape: UserProfiles, location_name: "UserProfiles"))
    DescribeUserProfilesResult.struct_class = Types::DescribeUserProfilesResult

    DescribeVolumesRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    DescribeVolumesRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    DescribeVolumesRequest.add_member(:raid_array_id, Shapes::ShapeRef.new(shape: String, location_name: "RaidArrayId"))
    DescribeVolumesRequest.add_member(:volume_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "VolumeIds"))
    DescribeVolumesRequest.struct_class = Types::DescribeVolumesRequest

    DescribeVolumesResult.add_member(:volumes, Shapes::ShapeRef.new(shape: Volumes, location_name: "Volumes"))
    DescribeVolumesResult.struct_class = Types::DescribeVolumesResult

    DetachElasticLoadBalancerRequest.add_member(:elastic_load_balancer_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ElasticLoadBalancerName"))
    DetachElasticLoadBalancerRequest.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LayerId"))
    DetachElasticLoadBalancerRequest.struct_class = Types::DetachElasticLoadBalancerRequest

    DisassociateElasticIpRequest.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ElasticIp"))
    DisassociateElasticIpRequest.struct_class = Types::DisassociateElasticIpRequest

    EbsBlockDevice.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: String, location_name: "SnapshotId"))
    EbsBlockDevice.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "Iops"))
    EbsBlockDevice.add_member(:volume_size, Shapes::ShapeRef.new(shape: Integer, location_name: "VolumeSize"))
    EbsBlockDevice.add_member(:volume_type, Shapes::ShapeRef.new(shape: VolumeType, location_name: "VolumeType"))
    EbsBlockDevice.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: Boolean, location_name: "DeleteOnTermination"))
    EbsBlockDevice.struct_class = Types::EbsBlockDevice

    EcsCluster.add_member(:ecs_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "EcsClusterArn"))
    EcsCluster.add_member(:ecs_cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "EcsClusterName"))
    EcsCluster.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    EcsCluster.add_member(:registered_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "RegisteredAt"))
    EcsCluster.struct_class = Types::EcsCluster

    EcsClusters.member = Shapes::ShapeRef.new(shape: EcsCluster)

    ElasticIp.add_member(:ip, Shapes::ShapeRef.new(shape: String, location_name: "Ip"))
    ElasticIp.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ElasticIp.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    ElasticIp.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    ElasticIp.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    ElasticIp.struct_class = Types::ElasticIp

    ElasticIps.member = Shapes::ShapeRef.new(shape: ElasticIp)

    ElasticLoadBalancer.add_member(:elastic_load_balancer_name, Shapes::ShapeRef.new(shape: String, location_name: "ElasticLoadBalancerName"))
    ElasticLoadBalancer.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    ElasticLoadBalancer.add_member(:dns_name, Shapes::ShapeRef.new(shape: String, location_name: "DnsName"))
    ElasticLoadBalancer.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    ElasticLoadBalancer.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, location_name: "LayerId"))
    ElasticLoadBalancer.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    ElasticLoadBalancer.add_member(:availability_zones, Shapes::ShapeRef.new(shape: Strings, location_name: "AvailabilityZones"))
    ElasticLoadBalancer.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "SubnetIds"))
    ElasticLoadBalancer.add_member(:ec2_instance_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "Ec2InstanceIds"))
    ElasticLoadBalancer.struct_class = Types::ElasticLoadBalancer

    ElasticLoadBalancers.member = Shapes::ShapeRef.new(shape: ElasticLoadBalancer)

    EnvironmentVariable.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Key"))
    EnvironmentVariable.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    EnvironmentVariable.add_member(:secure, Shapes::ShapeRef.new(shape: Boolean, location_name: "Secure"))
    EnvironmentVariable.struct_class = Types::EnvironmentVariable

    EnvironmentVariables.member = Shapes::ShapeRef.new(shape: EnvironmentVariable)

    GetHostnameSuggestionRequest.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LayerId"))
    GetHostnameSuggestionRequest.struct_class = Types::GetHostnameSuggestionRequest

    GetHostnameSuggestionResult.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, location_name: "LayerId"))
    GetHostnameSuggestionResult.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "Hostname"))
    GetHostnameSuggestionResult.struct_class = Types::GetHostnameSuggestionResult

    GrantAccessRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    GrantAccessRequest.add_member(:valid_for_in_minutes, Shapes::ShapeRef.new(shape: ValidForInMinutes, location_name: "ValidForInMinutes"))
    GrantAccessRequest.struct_class = Types::GrantAccessRequest

    GrantAccessResult.add_member(:temporary_credential, Shapes::ShapeRef.new(shape: TemporaryCredential, location_name: "TemporaryCredential"))
    GrantAccessResult.struct_class = Types::GrantAccessResult

    Instance.add_member(:agent_version, Shapes::ShapeRef.new(shape: String, location_name: "AgentVersion"))
    Instance.add_member(:ami_id, Shapes::ShapeRef.new(shape: String, location_name: "AmiId"))
    Instance.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "Architecture"))
    Instance.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Instance.add_member(:auto_scaling_type, Shapes::ShapeRef.new(shape: AutoScalingType, location_name: "AutoScalingType"))
    Instance.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    Instance.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: "BlockDeviceMappings"))
    Instance.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Instance.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: Boolean, location_name: "EbsOptimized"))
    Instance.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: String, location_name: "Ec2InstanceId"))
    Instance.add_member(:ecs_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "EcsClusterArn"))
    Instance.add_member(:ecs_container_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "EcsContainerInstanceArn"))
    Instance.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: String, location_name: "ElasticIp"))
    Instance.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "Hostname"))
    Instance.add_member(:infrastructure_class, Shapes::ShapeRef.new(shape: String, location_name: "InfrastructureClass"))
    Instance.add_member(:install_updates_on_boot, Shapes::ShapeRef.new(shape: Boolean, location_name: "InstallUpdatesOnBoot"))
    Instance.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    Instance.add_member(:instance_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileArn"))
    Instance.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    Instance.add_member(:last_service_error_id, Shapes::ShapeRef.new(shape: String, location_name: "LastServiceErrorId"))
    Instance.add_member(:layer_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "LayerIds"))
    Instance.add_member(:os, Shapes::ShapeRef.new(shape: String, location_name: "Os"))
    Instance.add_member(:platform, Shapes::ShapeRef.new(shape: String, location_name: "Platform"))
    Instance.add_member(:private_dns, Shapes::ShapeRef.new(shape: String, location_name: "PrivateDns"))
    Instance.add_member(:private_ip, Shapes::ShapeRef.new(shape: String, location_name: "PrivateIp"))
    Instance.add_member(:public_dns, Shapes::ShapeRef.new(shape: String, location_name: "PublicDns"))
    Instance.add_member(:public_ip, Shapes::ShapeRef.new(shape: String, location_name: "PublicIp"))
    Instance.add_member(:registered_by, Shapes::ShapeRef.new(shape: String, location_name: "RegisteredBy"))
    Instance.add_member(:reported_agent_version, Shapes::ShapeRef.new(shape: String, location_name: "ReportedAgentVersion"))
    Instance.add_member(:reported_os, Shapes::ShapeRef.new(shape: ReportedOs, location_name: "ReportedOs"))
    Instance.add_member(:root_device_type, Shapes::ShapeRef.new(shape: RootDeviceType, location_name: "RootDeviceType"))
    Instance.add_member(:root_device_volume_id, Shapes::ShapeRef.new(shape: String, location_name: "RootDeviceVolumeId"))
    Instance.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "SecurityGroupIds"))
    Instance.add_member(:ssh_host_dsa_key_fingerprint, Shapes::ShapeRef.new(shape: String, location_name: "SshHostDsaKeyFingerprint"))
    Instance.add_member(:ssh_host_rsa_key_fingerprint, Shapes::ShapeRef.new(shape: String, location_name: "SshHostRsaKeyFingerprint"))
    Instance.add_member(:ssh_key_name, Shapes::ShapeRef.new(shape: String, location_name: "SshKeyName"))
    Instance.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    Instance.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Instance.add_member(:subnet_id, Shapes::ShapeRef.new(shape: String, location_name: "SubnetId"))
    Instance.add_member(:tenancy, Shapes::ShapeRef.new(shape: String, location_name: "Tenancy"))
    Instance.add_member(:virtualization_type, Shapes::ShapeRef.new(shape: VirtualizationType, location_name: "VirtualizationType"))
    Instance.struct_class = Types::Instance

    InstanceIdentity.add_member(:document, Shapes::ShapeRef.new(shape: String, location_name: "Document"))
    InstanceIdentity.add_member(:signature, Shapes::ShapeRef.new(shape: String, location_name: "Signature"))
    InstanceIdentity.struct_class = Types::InstanceIdentity

    Instances.member = Shapes::ShapeRef.new(shape: Instance)

    InstancesCount.add_member(:assigning, Shapes::ShapeRef.new(shape: Integer, location_name: "Assigning"))
    InstancesCount.add_member(:booting, Shapes::ShapeRef.new(shape: Integer, location_name: "Booting"))
    InstancesCount.add_member(:connection_lost, Shapes::ShapeRef.new(shape: Integer, location_name: "ConnectionLost"))
    InstancesCount.add_member(:deregistering, Shapes::ShapeRef.new(shape: Integer, location_name: "Deregistering"))
    InstancesCount.add_member(:online, Shapes::ShapeRef.new(shape: Integer, location_name: "Online"))
    InstancesCount.add_member(:pending, Shapes::ShapeRef.new(shape: Integer, location_name: "Pending"))
    InstancesCount.add_member(:rebooting, Shapes::ShapeRef.new(shape: Integer, location_name: "Rebooting"))
    InstancesCount.add_member(:registered, Shapes::ShapeRef.new(shape: Integer, location_name: "Registered"))
    InstancesCount.add_member(:registering, Shapes::ShapeRef.new(shape: Integer, location_name: "Registering"))
    InstancesCount.add_member(:requested, Shapes::ShapeRef.new(shape: Integer, location_name: "Requested"))
    InstancesCount.add_member(:running_setup, Shapes::ShapeRef.new(shape: Integer, location_name: "RunningSetup"))
    InstancesCount.add_member(:setup_failed, Shapes::ShapeRef.new(shape: Integer, location_name: "SetupFailed"))
    InstancesCount.add_member(:shutting_down, Shapes::ShapeRef.new(shape: Integer, location_name: "ShuttingDown"))
    InstancesCount.add_member(:start_failed, Shapes::ShapeRef.new(shape: Integer, location_name: "StartFailed"))
    InstancesCount.add_member(:stop_failed, Shapes::ShapeRef.new(shape: Integer, location_name: "StopFailed"))
    InstancesCount.add_member(:stopped, Shapes::ShapeRef.new(shape: Integer, location_name: "Stopped"))
    InstancesCount.add_member(:stopping, Shapes::ShapeRef.new(shape: Integer, location_name: "Stopping"))
    InstancesCount.add_member(:terminated, Shapes::ShapeRef.new(shape: Integer, location_name: "Terminated"))
    InstancesCount.add_member(:terminating, Shapes::ShapeRef.new(shape: Integer, location_name: "Terminating"))
    InstancesCount.add_member(:unassigning, Shapes::ShapeRef.new(shape: Integer, location_name: "Unassigning"))
    InstancesCount.struct_class = Types::InstancesCount

    Layer.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Layer.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    Layer.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, location_name: "LayerId"))
    Layer.add_member(:type, Shapes::ShapeRef.new(shape: LayerType, location_name: "Type"))
    Layer.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Layer.add_member(:shortname, Shapes::ShapeRef.new(shape: String, location_name: "Shortname"))
    Layer.add_member(:attributes, Shapes::ShapeRef.new(shape: LayerAttributes, location_name: "Attributes"))
    Layer.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: CloudWatchLogsConfiguration, location_name: "CloudWatchLogsConfiguration"))
    Layer.add_member(:custom_instance_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "CustomInstanceProfileArn"))
    Layer.add_member(:custom_json, Shapes::ShapeRef.new(shape: String, location_name: "CustomJson"))
    Layer.add_member(:custom_security_group_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "CustomSecurityGroupIds"))
    Layer.add_member(:default_security_group_names, Shapes::ShapeRef.new(shape: Strings, location_name: "DefaultSecurityGroupNames"))
    Layer.add_member(:packages, Shapes::ShapeRef.new(shape: Strings, location_name: "Packages"))
    Layer.add_member(:volume_configurations, Shapes::ShapeRef.new(shape: VolumeConfigurations, location_name: "VolumeConfigurations"))
    Layer.add_member(:enable_auto_healing, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableAutoHealing"))
    Layer.add_member(:auto_assign_elastic_ips, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoAssignElasticIps"))
    Layer.add_member(:auto_assign_public_ips, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoAssignPublicIps"))
    Layer.add_member(:default_recipes, Shapes::ShapeRef.new(shape: Recipes, location_name: "DefaultRecipes"))
    Layer.add_member(:custom_recipes, Shapes::ShapeRef.new(shape: Recipes, location_name: "CustomRecipes"))
    Layer.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Layer.add_member(:install_updates_on_boot, Shapes::ShapeRef.new(shape: Boolean, location_name: "InstallUpdatesOnBoot"))
    Layer.add_member(:use_ebs_optimized_instances, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseEbsOptimizedInstances"))
    Layer.add_member(:lifecycle_event_configuration, Shapes::ShapeRef.new(shape: LifecycleEventConfiguration, location_name: "LifecycleEventConfiguration"))
    Layer.struct_class = Types::Layer

    LayerAttributes.key = Shapes::ShapeRef.new(shape: LayerAttributesKeys)
    LayerAttributes.value = Shapes::ShapeRef.new(shape: String)

    Layers.member = Shapes::ShapeRef.new(shape: Layer)

    LifecycleEventConfiguration.add_member(:shutdown, Shapes::ShapeRef.new(shape: ShutdownEventConfiguration, location_name: "Shutdown"))
    LifecycleEventConfiguration.struct_class = Types::LifecycleEventConfiguration

    ListTagsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsRequest.struct_class = Types::ListTagsRequest

    ListTagsResult.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    ListTagsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagsResult.struct_class = Types::ListTagsResult

    LoadBasedAutoScalingConfiguration.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, location_name: "LayerId"))
    LoadBasedAutoScalingConfiguration.add_member(:enable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enable"))
    LoadBasedAutoScalingConfiguration.add_member(:up_scaling, Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: "UpScaling"))
    LoadBasedAutoScalingConfiguration.add_member(:down_scaling, Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: "DownScaling"))
    LoadBasedAutoScalingConfiguration.struct_class = Types::LoadBasedAutoScalingConfiguration

    LoadBasedAutoScalingConfigurations.member = Shapes::ShapeRef.new(shape: LoadBasedAutoScalingConfiguration)

    OperatingSystem.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    OperatingSystem.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    OperatingSystem.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    OperatingSystem.add_member(:configuration_managers, Shapes::ShapeRef.new(shape: OperatingSystemConfigurationManagers, location_name: "ConfigurationManagers"))
    OperatingSystem.add_member(:reported_name, Shapes::ShapeRef.new(shape: String, location_name: "ReportedName"))
    OperatingSystem.add_member(:reported_version, Shapes::ShapeRef.new(shape: String, location_name: "ReportedVersion"))
    OperatingSystem.add_member(:supported, Shapes::ShapeRef.new(shape: Boolean, location_name: "Supported"))
    OperatingSystem.struct_class = Types::OperatingSystem

    OperatingSystemConfigurationManager.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    OperatingSystemConfigurationManager.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    OperatingSystemConfigurationManager.struct_class = Types::OperatingSystemConfigurationManager

    OperatingSystemConfigurationManagers.member = Shapes::ShapeRef.new(shape: OperatingSystemConfigurationManager)

    OperatingSystems.member = Shapes::ShapeRef.new(shape: OperatingSystem)

    Parameters.key = Shapes::ShapeRef.new(shape: String)
    Parameters.value = Shapes::ShapeRef.new(shape: String)

    Permission.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    Permission.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamUserArn"))
    Permission.add_member(:allow_ssh, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowSsh"))
    Permission.add_member(:allow_sudo, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowSudo"))
    Permission.add_member(:level, Shapes::ShapeRef.new(shape: String, location_name: "Level"))
    Permission.struct_class = Types::Permission

    Permissions.member = Shapes::ShapeRef.new(shape: Permission)

    RaidArray.add_member(:raid_array_id, Shapes::ShapeRef.new(shape: String, location_name: "RaidArrayId"))
    RaidArray.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    RaidArray.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    RaidArray.add_member(:raid_level, Shapes::ShapeRef.new(shape: Integer, location_name: "RaidLevel"))
    RaidArray.add_member(:number_of_disks, Shapes::ShapeRef.new(shape: Integer, location_name: "NumberOfDisks"))
    RaidArray.add_member(:size, Shapes::ShapeRef.new(shape: Integer, location_name: "Size"))
    RaidArray.add_member(:device, Shapes::ShapeRef.new(shape: String, location_name: "Device"))
    RaidArray.add_member(:mount_point, Shapes::ShapeRef.new(shape: String, location_name: "MountPoint"))
    RaidArray.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    RaidArray.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    RaidArray.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    RaidArray.add_member(:volume_type, Shapes::ShapeRef.new(shape: String, location_name: "VolumeType"))
    RaidArray.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "Iops"))
    RaidArray.struct_class = Types::RaidArray

    RaidArrays.member = Shapes::ShapeRef.new(shape: RaidArray)

    RdsDbInstance.add_member(:rds_db_instance_arn, Shapes::ShapeRef.new(shape: String, location_name: "RdsDbInstanceArn"))
    RdsDbInstance.add_member(:db_instance_identifier, Shapes::ShapeRef.new(shape: String, location_name: "DbInstanceIdentifier"))
    RdsDbInstance.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    RdsDbInstance.add_member(:db_password, Shapes::ShapeRef.new(shape: String, location_name: "DbPassword"))
    RdsDbInstance.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    RdsDbInstance.add_member(:address, Shapes::ShapeRef.new(shape: String, location_name: "Address"))
    RdsDbInstance.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    RdsDbInstance.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    RdsDbInstance.add_member(:missing_on_rds, Shapes::ShapeRef.new(shape: Boolean, location_name: "MissingOnRds"))
    RdsDbInstance.struct_class = Types::RdsDbInstance

    RdsDbInstances.member = Shapes::ShapeRef.new(shape: RdsDbInstance)

    RebootInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    RebootInstanceRequest.struct_class = Types::RebootInstanceRequest

    Recipes.add_member(:setup, Shapes::ShapeRef.new(shape: Strings, location_name: "Setup"))
    Recipes.add_member(:configure, Shapes::ShapeRef.new(shape: Strings, location_name: "Configure"))
    Recipes.add_member(:deploy, Shapes::ShapeRef.new(shape: Strings, location_name: "Deploy"))
    Recipes.add_member(:undeploy, Shapes::ShapeRef.new(shape: Strings, location_name: "Undeploy"))
    Recipes.add_member(:shutdown, Shapes::ShapeRef.new(shape: Strings, location_name: "Shutdown"))
    Recipes.struct_class = Types::Recipes

    RegisterEcsClusterRequest.add_member(:ecs_cluster_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "EcsClusterArn"))
    RegisterEcsClusterRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    RegisterEcsClusterRequest.struct_class = Types::RegisterEcsClusterRequest

    RegisterEcsClusterResult.add_member(:ecs_cluster_arn, Shapes::ShapeRef.new(shape: String, location_name: "EcsClusterArn"))
    RegisterEcsClusterResult.struct_class = Types::RegisterEcsClusterResult

    RegisterElasticIpRequest.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ElasticIp"))
    RegisterElasticIpRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    RegisterElasticIpRequest.struct_class = Types::RegisterElasticIpRequest

    RegisterElasticIpResult.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: String, location_name: "ElasticIp"))
    RegisterElasticIpResult.struct_class = Types::RegisterElasticIpResult

    RegisterInstanceRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    RegisterInstanceRequest.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "Hostname"))
    RegisterInstanceRequest.add_member(:public_ip, Shapes::ShapeRef.new(shape: String, location_name: "PublicIp"))
    RegisterInstanceRequest.add_member(:private_ip, Shapes::ShapeRef.new(shape: String, location_name: "PrivateIp"))
    RegisterInstanceRequest.add_member(:rsa_public_key, Shapes::ShapeRef.new(shape: String, location_name: "RsaPublicKey"))
    RegisterInstanceRequest.add_member(:rsa_public_key_fingerprint, Shapes::ShapeRef.new(shape: String, location_name: "RsaPublicKeyFingerprint"))
    RegisterInstanceRequest.add_member(:instance_identity, Shapes::ShapeRef.new(shape: InstanceIdentity, location_name: "InstanceIdentity"))
    RegisterInstanceRequest.struct_class = Types::RegisterInstanceRequest

    RegisterInstanceResult.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    RegisterInstanceResult.struct_class = Types::RegisterInstanceResult

    RegisterRdsDbInstanceRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    RegisterRdsDbInstanceRequest.add_member(:rds_db_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RdsDbInstanceArn"))
    RegisterRdsDbInstanceRequest.add_member(:db_user, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DbUser"))
    RegisterRdsDbInstanceRequest.add_member(:db_password, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DbPassword"))
    RegisterRdsDbInstanceRequest.struct_class = Types::RegisterRdsDbInstanceRequest

    RegisterVolumeRequest.add_member(:ec2_volume_id, Shapes::ShapeRef.new(shape: String, location_name: "Ec2VolumeId"))
    RegisterVolumeRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    RegisterVolumeRequest.struct_class = Types::RegisterVolumeRequest

    RegisterVolumeResult.add_member(:volume_id, Shapes::ShapeRef.new(shape: String, location_name: "VolumeId"))
    RegisterVolumeResult.struct_class = Types::RegisterVolumeResult

    ReportedOs.add_member(:family, Shapes::ShapeRef.new(shape: String, location_name: "Family"))
    ReportedOs.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ReportedOs.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    ReportedOs.struct_class = Types::ReportedOs

    SelfUserProfile.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamUserArn"))
    SelfUserProfile.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    SelfUserProfile.add_member(:ssh_username, Shapes::ShapeRef.new(shape: String, location_name: "SshUsername"))
    SelfUserProfile.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: String, location_name: "SshPublicKey"))
    SelfUserProfile.struct_class = Types::SelfUserProfile

    ServiceError.add_member(:service_error_id, Shapes::ShapeRef.new(shape: String, location_name: "ServiceErrorId"))
    ServiceError.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    ServiceError.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    ServiceError.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    ServiceError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceError.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    ServiceError.struct_class = Types::ServiceError

    ServiceErrors.member = Shapes::ShapeRef.new(shape: ServiceError)

    SetLoadBasedAutoScalingRequest.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LayerId"))
    SetLoadBasedAutoScalingRequest.add_member(:enable, Shapes::ShapeRef.new(shape: Boolean, location_name: "Enable"))
    SetLoadBasedAutoScalingRequest.add_member(:up_scaling, Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: "UpScaling"))
    SetLoadBasedAutoScalingRequest.add_member(:down_scaling, Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: "DownScaling"))
    SetLoadBasedAutoScalingRequest.struct_class = Types::SetLoadBasedAutoScalingRequest

    SetPermissionRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    SetPermissionRequest.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "IamUserArn"))
    SetPermissionRequest.add_member(:allow_ssh, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowSsh"))
    SetPermissionRequest.add_member(:allow_sudo, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowSudo"))
    SetPermissionRequest.add_member(:level, Shapes::ShapeRef.new(shape: String, location_name: "Level"))
    SetPermissionRequest.struct_class = Types::SetPermissionRequest

    SetTimeBasedAutoScalingRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    SetTimeBasedAutoScalingRequest.add_member(:auto_scaling_schedule, Shapes::ShapeRef.new(shape: WeeklyAutoScalingSchedule, location_name: "AutoScalingSchedule"))
    SetTimeBasedAutoScalingRequest.struct_class = Types::SetTimeBasedAutoScalingRequest

    ShutdownEventConfiguration.add_member(:execution_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "ExecutionTimeout"))
    ShutdownEventConfiguration.add_member(:delay_until_elb_connections_drained, Shapes::ShapeRef.new(shape: Boolean, location_name: "DelayUntilElbConnectionsDrained"))
    ShutdownEventConfiguration.struct_class = Types::ShutdownEventConfiguration

    Source.add_member(:type, Shapes::ShapeRef.new(shape: SourceType, location_name: "Type"))
    Source.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "Url"))
    Source.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    Source.add_member(:password, Shapes::ShapeRef.new(shape: String, location_name: "Password"))
    Source.add_member(:ssh_key, Shapes::ShapeRef.new(shape: String, location_name: "SshKey"))
    Source.add_member(:revision, Shapes::ShapeRef.new(shape: String, location_name: "Revision"))
    Source.struct_class = Types::Source

    SslConfiguration.add_member(:certificate, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Certificate"))
    SslConfiguration.add_member(:private_key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "PrivateKey"))
    SslConfiguration.add_member(:chain, Shapes::ShapeRef.new(shape: String, location_name: "Chain"))
    SslConfiguration.struct_class = Types::SslConfiguration

    Stack.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    Stack.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Stack.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    Stack.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    Stack.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VpcId"))
    Stack.add_member(:attributes, Shapes::ShapeRef.new(shape: StackAttributes, location_name: "Attributes"))
    Stack.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceRoleArn"))
    Stack.add_member(:default_instance_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "DefaultInstanceProfileArn"))
    Stack.add_member(:default_os, Shapes::ShapeRef.new(shape: String, location_name: "DefaultOs"))
    Stack.add_member(:hostname_theme, Shapes::ShapeRef.new(shape: String, location_name: "HostnameTheme"))
    Stack.add_member(:default_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "DefaultAvailabilityZone"))
    Stack.add_member(:default_subnet_id, Shapes::ShapeRef.new(shape: String, location_name: "DefaultSubnetId"))
    Stack.add_member(:custom_json, Shapes::ShapeRef.new(shape: String, location_name: "CustomJson"))
    Stack.add_member(:configuration_manager, Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: "ConfigurationManager"))
    Stack.add_member(:chef_configuration, Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: "ChefConfiguration"))
    Stack.add_member(:use_custom_cookbooks, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseCustomCookbooks"))
    Stack.add_member(:use_opsworks_security_groups, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseOpsworksSecurityGroups"))
    Stack.add_member(:custom_cookbooks_source, Shapes::ShapeRef.new(shape: Source, location_name: "CustomCookbooksSource"))
    Stack.add_member(:default_ssh_key_name, Shapes::ShapeRef.new(shape: String, location_name: "DefaultSshKeyName"))
    Stack.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    Stack.add_member(:default_root_device_type, Shapes::ShapeRef.new(shape: RootDeviceType, location_name: "DefaultRootDeviceType"))
    Stack.add_member(:agent_version, Shapes::ShapeRef.new(shape: String, location_name: "AgentVersion"))
    Stack.struct_class = Types::Stack

    StackAttributes.key = Shapes::ShapeRef.new(shape: StackAttributesKeys)
    StackAttributes.value = Shapes::ShapeRef.new(shape: String)

    StackConfigurationManager.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    StackConfigurationManager.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    StackConfigurationManager.struct_class = Types::StackConfigurationManager

    StackSummary.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, location_name: "StackId"))
    StackSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    StackSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    StackSummary.add_member(:layers_count, Shapes::ShapeRef.new(shape: Integer, location_name: "LayersCount"))
    StackSummary.add_member(:apps_count, Shapes::ShapeRef.new(shape: Integer, location_name: "AppsCount"))
    StackSummary.add_member(:instances_count, Shapes::ShapeRef.new(shape: InstancesCount, location_name: "InstancesCount"))
    StackSummary.struct_class = Types::StackSummary

    Stacks.member = Shapes::ShapeRef.new(shape: Stack)

    StartInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    StartInstanceRequest.struct_class = Types::StartInstanceRequest

    StartStackRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    StartStackRequest.struct_class = Types::StartStackRequest

    StopInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    StopInstanceRequest.add_member(:force, Shapes::ShapeRef.new(shape: Boolean, location_name: "Force"))
    StopInstanceRequest.struct_class = Types::StopInstanceRequest

    StopStackRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    StopStackRequest.struct_class = Types::StopStackRequest

    Strings.member = Shapes::ShapeRef.new(shape: String)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TemporaryCredential.add_member(:username, Shapes::ShapeRef.new(shape: String, location_name: "Username"))
    TemporaryCredential.add_member(:password, Shapes::ShapeRef.new(shape: String, location_name: "Password"))
    TemporaryCredential.add_member(:valid_for_in_minutes, Shapes::ShapeRef.new(shape: Integer, location_name: "ValidForInMinutes"))
    TemporaryCredential.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    TemporaryCredential.struct_class = Types::TemporaryCredential

    TimeBasedAutoScalingConfiguration.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    TimeBasedAutoScalingConfiguration.add_member(:auto_scaling_schedule, Shapes::ShapeRef.new(shape: WeeklyAutoScalingSchedule, location_name: "AutoScalingSchedule"))
    TimeBasedAutoScalingConfiguration.struct_class = Types::TimeBasedAutoScalingConfiguration

    TimeBasedAutoScalingConfigurations.member = Shapes::ShapeRef.new(shape: TimeBasedAutoScalingConfiguration)

    UnassignInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    UnassignInstanceRequest.struct_class = Types::UnassignInstanceRequest

    UnassignVolumeRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VolumeId"))
    UnassignVolumeRequest.struct_class = Types::UnassignVolumeRequest

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateAppRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AppId"))
    UpdateAppRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    UpdateAppRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    UpdateAppRequest.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSources, location_name: "DataSources"))
    UpdateAppRequest.add_member(:type, Shapes::ShapeRef.new(shape: AppType, location_name: "Type"))
    UpdateAppRequest.add_member(:app_source, Shapes::ShapeRef.new(shape: Source, location_name: "AppSource"))
    UpdateAppRequest.add_member(:domains, Shapes::ShapeRef.new(shape: Strings, location_name: "Domains"))
    UpdateAppRequest.add_member(:enable_ssl, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableSsl"))
    UpdateAppRequest.add_member(:ssl_configuration, Shapes::ShapeRef.new(shape: SslConfiguration, location_name: "SslConfiguration"))
    UpdateAppRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: AppAttributes, location_name: "Attributes"))
    UpdateAppRequest.add_member(:environment, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "Environment"))
    UpdateAppRequest.struct_class = Types::UpdateAppRequest

    UpdateElasticIpRequest.add_member(:elastic_ip, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ElasticIp"))
    UpdateElasticIpRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    UpdateElasticIpRequest.struct_class = Types::UpdateElasticIpRequest

    UpdateInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceId"))
    UpdateInstanceRequest.add_member(:layer_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "LayerIds"))
    UpdateInstanceRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    UpdateInstanceRequest.add_member(:auto_scaling_type, Shapes::ShapeRef.new(shape: AutoScalingType, location_name: "AutoScalingType"))
    UpdateInstanceRequest.add_member(:hostname, Shapes::ShapeRef.new(shape: String, location_name: "Hostname"))
    UpdateInstanceRequest.add_member(:os, Shapes::ShapeRef.new(shape: String, location_name: "Os"))
    UpdateInstanceRequest.add_member(:ami_id, Shapes::ShapeRef.new(shape: String, location_name: "AmiId"))
    UpdateInstanceRequest.add_member(:ssh_key_name, Shapes::ShapeRef.new(shape: String, location_name: "SshKeyName"))
    UpdateInstanceRequest.add_member(:architecture, Shapes::ShapeRef.new(shape: Architecture, location_name: "Architecture"))
    UpdateInstanceRequest.add_member(:install_updates_on_boot, Shapes::ShapeRef.new(shape: Boolean, location_name: "InstallUpdatesOnBoot"))
    UpdateInstanceRequest.add_member(:ebs_optimized, Shapes::ShapeRef.new(shape: Boolean, location_name: "EbsOptimized"))
    UpdateInstanceRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: String, location_name: "AgentVersion"))
    UpdateInstanceRequest.struct_class = Types::UpdateInstanceRequest

    UpdateLayerRequest.add_member(:layer_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "LayerId"))
    UpdateLayerRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    UpdateLayerRequest.add_member(:shortname, Shapes::ShapeRef.new(shape: String, location_name: "Shortname"))
    UpdateLayerRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: LayerAttributes, location_name: "Attributes"))
    UpdateLayerRequest.add_member(:cloud_watch_logs_configuration, Shapes::ShapeRef.new(shape: CloudWatchLogsConfiguration, location_name: "CloudWatchLogsConfiguration"))
    UpdateLayerRequest.add_member(:custom_instance_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "CustomInstanceProfileArn"))
    UpdateLayerRequest.add_member(:custom_json, Shapes::ShapeRef.new(shape: String, location_name: "CustomJson"))
    UpdateLayerRequest.add_member(:custom_security_group_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "CustomSecurityGroupIds"))
    UpdateLayerRequest.add_member(:packages, Shapes::ShapeRef.new(shape: Strings, location_name: "Packages"))
    UpdateLayerRequest.add_member(:volume_configurations, Shapes::ShapeRef.new(shape: VolumeConfigurations, location_name: "VolumeConfigurations"))
    UpdateLayerRequest.add_member(:enable_auto_healing, Shapes::ShapeRef.new(shape: Boolean, location_name: "EnableAutoHealing"))
    UpdateLayerRequest.add_member(:auto_assign_elastic_ips, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoAssignElasticIps"))
    UpdateLayerRequest.add_member(:auto_assign_public_ips, Shapes::ShapeRef.new(shape: Boolean, location_name: "AutoAssignPublicIps"))
    UpdateLayerRequest.add_member(:custom_recipes, Shapes::ShapeRef.new(shape: Recipes, location_name: "CustomRecipes"))
    UpdateLayerRequest.add_member(:install_updates_on_boot, Shapes::ShapeRef.new(shape: Boolean, location_name: "InstallUpdatesOnBoot"))
    UpdateLayerRequest.add_member(:use_ebs_optimized_instances, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseEbsOptimizedInstances"))
    UpdateLayerRequest.add_member(:lifecycle_event_configuration, Shapes::ShapeRef.new(shape: LifecycleEventConfiguration, location_name: "LifecycleEventConfiguration"))
    UpdateLayerRequest.struct_class = Types::UpdateLayerRequest

    UpdateMyUserProfileRequest.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: String, location_name: "SshPublicKey"))
    UpdateMyUserProfileRequest.struct_class = Types::UpdateMyUserProfileRequest

    UpdateRdsDbInstanceRequest.add_member(:rds_db_instance_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RdsDbInstanceArn"))
    UpdateRdsDbInstanceRequest.add_member(:db_user, Shapes::ShapeRef.new(shape: String, location_name: "DbUser"))
    UpdateRdsDbInstanceRequest.add_member(:db_password, Shapes::ShapeRef.new(shape: String, location_name: "DbPassword"))
    UpdateRdsDbInstanceRequest.struct_class = Types::UpdateRdsDbInstanceRequest

    UpdateStackRequest.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "StackId"))
    UpdateStackRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    UpdateStackRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: StackAttributes, location_name: "Attributes"))
    UpdateStackRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceRoleArn"))
    UpdateStackRequest.add_member(:default_instance_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "DefaultInstanceProfileArn"))
    UpdateStackRequest.add_member(:default_os, Shapes::ShapeRef.new(shape: String, location_name: "DefaultOs"))
    UpdateStackRequest.add_member(:hostname_theme, Shapes::ShapeRef.new(shape: String, location_name: "HostnameTheme"))
    UpdateStackRequest.add_member(:default_availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "DefaultAvailabilityZone"))
    UpdateStackRequest.add_member(:default_subnet_id, Shapes::ShapeRef.new(shape: String, location_name: "DefaultSubnetId"))
    UpdateStackRequest.add_member(:custom_json, Shapes::ShapeRef.new(shape: String, location_name: "CustomJson"))
    UpdateStackRequest.add_member(:configuration_manager, Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: "ConfigurationManager"))
    UpdateStackRequest.add_member(:chef_configuration, Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: "ChefConfiguration"))
    UpdateStackRequest.add_member(:use_custom_cookbooks, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseCustomCookbooks"))
    UpdateStackRequest.add_member(:custom_cookbooks_source, Shapes::ShapeRef.new(shape: Source, location_name: "CustomCookbooksSource"))
    UpdateStackRequest.add_member(:default_ssh_key_name, Shapes::ShapeRef.new(shape: String, location_name: "DefaultSshKeyName"))
    UpdateStackRequest.add_member(:default_root_device_type, Shapes::ShapeRef.new(shape: RootDeviceType, location_name: "DefaultRootDeviceType"))
    UpdateStackRequest.add_member(:use_opsworks_security_groups, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseOpsworksSecurityGroups"))
    UpdateStackRequest.add_member(:agent_version, Shapes::ShapeRef.new(shape: String, location_name: "AgentVersion"))
    UpdateStackRequest.struct_class = Types::UpdateStackRequest

    UpdateUserProfileRequest.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "IamUserArn"))
    UpdateUserProfileRequest.add_member(:ssh_username, Shapes::ShapeRef.new(shape: String, location_name: "SshUsername"))
    UpdateUserProfileRequest.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: String, location_name: "SshPublicKey"))
    UpdateUserProfileRequest.add_member(:allow_self_management, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowSelfManagement"))
    UpdateUserProfileRequest.struct_class = Types::UpdateUserProfileRequest

    UpdateVolumeRequest.add_member(:volume_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "VolumeId"))
    UpdateVolumeRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    UpdateVolumeRequest.add_member(:mount_point, Shapes::ShapeRef.new(shape: String, location_name: "MountPoint"))
    UpdateVolumeRequest.struct_class = Types::UpdateVolumeRequest

    UserProfile.add_member(:iam_user_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamUserArn"))
    UserProfile.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    UserProfile.add_member(:ssh_username, Shapes::ShapeRef.new(shape: String, location_name: "SshUsername"))
    UserProfile.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: String, location_name: "SshPublicKey"))
    UserProfile.add_member(:allow_self_management, Shapes::ShapeRef.new(shape: Boolean, location_name: "AllowSelfManagement"))
    UserProfile.struct_class = Types::UserProfile

    UserProfiles.member = Shapes::ShapeRef.new(shape: UserProfile)

    Volume.add_member(:volume_id, Shapes::ShapeRef.new(shape: String, location_name: "VolumeId"))
    Volume.add_member(:ec2_volume_id, Shapes::ShapeRef.new(shape: String, location_name: "Ec2VolumeId"))
    Volume.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Volume.add_member(:raid_array_id, Shapes::ShapeRef.new(shape: String, location_name: "RaidArrayId"))
    Volume.add_member(:instance_id, Shapes::ShapeRef.new(shape: String, location_name: "InstanceId"))
    Volume.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Volume.add_member(:size, Shapes::ShapeRef.new(shape: Integer, location_name: "Size"))
    Volume.add_member(:device, Shapes::ShapeRef.new(shape: String, location_name: "Device"))
    Volume.add_member(:mount_point, Shapes::ShapeRef.new(shape: String, location_name: "MountPoint"))
    Volume.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    Volume.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    Volume.add_member(:volume_type, Shapes::ShapeRef.new(shape: String, location_name: "VolumeType"))
    Volume.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "Iops"))
    Volume.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    Volume.struct_class = Types::Volume

    VolumeConfiguration.add_member(:mount_point, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MountPoint"))
    VolumeConfiguration.add_member(:raid_level, Shapes::ShapeRef.new(shape: Integer, location_name: "RaidLevel"))
    VolumeConfiguration.add_member(:number_of_disks, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "NumberOfDisks"))
    VolumeConfiguration.add_member(:size, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Size"))
    VolumeConfiguration.add_member(:volume_type, Shapes::ShapeRef.new(shape: String, location_name: "VolumeType"))
    VolumeConfiguration.add_member(:iops, Shapes::ShapeRef.new(shape: Integer, location_name: "Iops"))
    VolumeConfiguration.add_member(:encrypted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Encrypted"))
    VolumeConfiguration.struct_class = Types::VolumeConfiguration

    VolumeConfigurations.member = Shapes::ShapeRef.new(shape: VolumeConfiguration)

    Volumes.member = Shapes::ShapeRef.new(shape: Volume)

    WeeklyAutoScalingSchedule.add_member(:monday, Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: "Monday"))
    WeeklyAutoScalingSchedule.add_member(:tuesday, Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: "Tuesday"))
    WeeklyAutoScalingSchedule.add_member(:wednesday, Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: "Wednesday"))
    WeeklyAutoScalingSchedule.add_member(:thursday, Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: "Thursday"))
    WeeklyAutoScalingSchedule.add_member(:friday, Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: "Friday"))
    WeeklyAutoScalingSchedule.add_member(:saturday, Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: "Saturday"))
    WeeklyAutoScalingSchedule.add_member(:sunday, Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: "Sunday"))
    WeeklyAutoScalingSchedule.struct_class = Types::WeeklyAutoScalingSchedule


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2013-02-18"

      api.metadata = {
        "apiVersion" => "2013-02-18",
        "endpointPrefix" => "opsworks",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS OpsWorks",
        "serviceId" => "OpsWorks",
        "signatureVersion" => "v4",
        "targetPrefix" => "OpsWorks_20130218",
        "uid" => "opsworks-2013-02-18",
      }

      api.add_operation(:assign_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssignInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssignInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:assign_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssignVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssignVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:associate_elastic_ip, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateElasticIp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateElasticIpRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:attach_elastic_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AttachElasticLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AttachElasticLoadBalancerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:clone_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CloneStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CloneStackRequest)
        o.output = Shapes::ShapeRef.new(shape: CloneStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAppRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_layer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLayer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateLayerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLayerResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateStackRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateStackResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateUserProfileResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_layer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLayer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLayerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteStackRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:deregister_ecs_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterEcsCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterEcsClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:deregister_elastic_ip, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterElasticIp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterElasticIpRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:deregister_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:deregister_rds_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterRdsDbInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterRdsDbInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:deregister_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_agent_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAgentVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAgentVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAgentVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_apps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApps"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAppsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAppsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_commands, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCommands"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeCommandsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCommandsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDeployments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDeploymentsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDeploymentsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_ecs_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEcsClusters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEcsClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEcsClustersResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_elastic_ips, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeElasticIps"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeElasticIpsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeElasticIpsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_elastic_load_balancers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeElasticLoadBalancers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeElasticLoadBalancersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeElasticLoadBalancersResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstancesResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_layers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLayers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLayersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLayersResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_load_based_auto_scaling, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeLoadBasedAutoScaling"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeLoadBasedAutoScalingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeLoadBasedAutoScalingResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_my_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMyUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeMyUserProfileResult)
      end)

      api.add_operation(:describe_operating_systems, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOperatingSystems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeOperatingSystemsResponse)
      end)

      api.add_operation(:describe_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePermissionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_raid_arrays, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRaidArrays"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRaidArraysRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRaidArraysResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_rds_db_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRdsDbInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRdsDbInstancesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRdsDbInstancesResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_service_errors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServiceErrors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServiceErrorsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServiceErrorsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_stack_provisioning_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackProvisioningParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackProvisioningParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackProvisioningParametersResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_stack_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStackSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStackSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStackSummaryResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_stacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeStacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeStacksRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeStacksResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_time_based_auto_scaling, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTimeBasedAutoScaling"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTimeBasedAutoScalingRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTimeBasedAutoScalingResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_user_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUserProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserProfilesResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_volumes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVolumes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeVolumesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVolumesResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:detach_elastic_load_balancer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DetachElasticLoadBalancer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DetachElasticLoadBalancerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_elastic_ip, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateElasticIp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateElasticIpRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_hostname_suggestion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetHostnameSuggestion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetHostnameSuggestionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetHostnameSuggestionResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:grant_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GrantAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GrantAccessRequest)
        o.output = Shapes::ShapeRef.new(shape: GrantAccessResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:reboot_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebootInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebootInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:register_ecs_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterEcsCluster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterEcsClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterEcsClusterResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:register_elastic_ip, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterElasticIp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterElasticIpRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterElasticIpResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:register_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterInstanceResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:register_rds_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterRdsDbInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterRdsDbInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:register_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterVolumeResult)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:set_load_based_auto_scaling, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetLoadBasedAutoScaling"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetLoadBasedAutoScalingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:set_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetPermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:set_time_based_auto_scaling, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetTimeBasedAutoScaling"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetTimeBasedAutoScalingRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartStackRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:stop_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:stop_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopStackRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:unassign_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnassignInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UnassignInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:unassign_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UnassignVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UnassignVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_elastic_ip, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateElasticIp"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateElasticIpRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_layer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLayer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateLayerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_my_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMyUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMyUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_rds_db_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRdsDbInstance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRdsDbInstanceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_stack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateStack"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateStackRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_user_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUserProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_volume, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVolume"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateVolumeRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
