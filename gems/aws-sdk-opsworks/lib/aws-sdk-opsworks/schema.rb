# frozen_string_literal: true

# This is generated code!

module Aws::OpsWorks
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AgentVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AgentVersion', name: 'AgentVersion')
    AgentVersions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#AgentVersions', name: 'AgentVersions')
    App = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#App', name: 'App')
    AppAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#AppAttributes', name: 'AppAttributes')
    AppAttributesKeys = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#AppAttributesKeys', name: 'AppAttributesKeys')
    AppType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#AppType', name: 'AppType')
    Apps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Apps', name: 'Apps')
    Architecture = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#Architecture', name: 'Architecture')
    AssignInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AssignInstanceRequest', name: 'AssignInstanceRequest')
    AssignVolumeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AssignVolumeRequest', name: 'AssignVolumeRequest')
    AssociateElasticIpRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AssociateElasticIpRequest', name: 'AssociateElasticIpRequest')
    AttachElasticLoadBalancerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AttachElasticLoadBalancerRequest', name: 'AttachElasticLoadBalancerRequest')
    AutoScalingThresholds = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AutoScalingThresholds', name: 'AutoScalingThresholds')
    AutoScalingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#AutoScalingType', name: 'AutoScalingType')
    BlockDeviceMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#BlockDeviceMapping', name: 'BlockDeviceMapping')
    BlockDeviceMappings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#BlockDeviceMappings', name: 'BlockDeviceMappings')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.opsworks#Boolean', name: 'Boolean')
    ChefConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ChefConfiguration', name: 'ChefConfiguration')
    CloneStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CloneStackRequest', name: 'CloneStackRequest')
    CloneStackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CloneStackResult', name: 'CloneStackResult')
    CloudWatchLogsConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsConfiguration', name: 'CloudWatchLogsConfiguration')
    CloudWatchLogsEncoding = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsEncoding', name: 'CloudWatchLogsEncoding')
    CloudWatchLogsInitialPosition = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsInitialPosition', name: 'CloudWatchLogsInitialPosition')
    CloudWatchLogsLogStream = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsLogStream', name: 'CloudWatchLogsLogStream')
    CloudWatchLogsLogStreams = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsLogStreams', name: 'CloudWatchLogsLogStreams')
    CloudWatchLogsTimeZone = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsTimeZone', name: 'CloudWatchLogsTimeZone')
    Command = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Command', name: 'Command')
    Commands = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Commands', name: 'Commands')
    CreateAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateAppRequest', name: 'CreateAppRequest')
    CreateAppResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateAppResult', name: 'CreateAppResult')
    CreateDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateDeploymentRequest', name: 'CreateDeploymentRequest')
    CreateDeploymentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateDeploymentResult', name: 'CreateDeploymentResult')
    CreateInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateInstanceRequest', name: 'CreateInstanceRequest')
    CreateInstanceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateInstanceResult', name: 'CreateInstanceResult')
    CreateLayerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateLayerRequest', name: 'CreateLayerRequest')
    CreateLayerResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateLayerResult', name: 'CreateLayerResult')
    CreateStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateStackRequest', name: 'CreateStackRequest')
    CreateStackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateStackResult', name: 'CreateStackResult')
    CreateUserProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateUserProfileRequest', name: 'CreateUserProfileRequest')
    CreateUserProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateUserProfileResult', name: 'CreateUserProfileResult')
    DailyAutoScalingSchedule = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#DailyAutoScalingSchedule', name: 'DailyAutoScalingSchedule')
    DataSource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DataSource', name: 'DataSource')
    DataSources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#DataSources', name: 'DataSources')
    DateTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#DateTime', name: 'DateTime')
    DeleteAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeleteAppRequest', name: 'DeleteAppRequest')
    DeleteInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeleteInstanceRequest', name: 'DeleteInstanceRequest')
    DeleteLayerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeleteLayerRequest', name: 'DeleteLayerRequest')
    DeleteStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeleteStackRequest', name: 'DeleteStackRequest')
    DeleteUserProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeleteUserProfileRequest', name: 'DeleteUserProfileRequest')
    Deployment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Deployment', name: 'Deployment')
    DeploymentCommand = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeploymentCommand', name: 'DeploymentCommand')
    DeploymentCommandArgs = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#DeploymentCommandArgs', name: 'DeploymentCommandArgs')
    DeploymentCommandName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#DeploymentCommandName', name: 'DeploymentCommandName')
    Deployments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Deployments', name: 'Deployments')
    DeregisterEcsClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeregisterEcsClusterRequest', name: 'DeregisterEcsClusterRequest')
    DeregisterElasticIpRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeregisterElasticIpRequest', name: 'DeregisterElasticIpRequest')
    DeregisterInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeregisterInstanceRequest', name: 'DeregisterInstanceRequest')
    DeregisterRdsDbInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeregisterRdsDbInstanceRequest', name: 'DeregisterRdsDbInstanceRequest')
    DeregisterVolumeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeregisterVolumeRequest', name: 'DeregisterVolumeRequest')
    DescribeAgentVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeAgentVersionsRequest', name: 'DescribeAgentVersionsRequest')
    DescribeAgentVersionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeAgentVersionsResult', name: 'DescribeAgentVersionsResult')
    DescribeAppsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeAppsRequest', name: 'DescribeAppsRequest')
    DescribeAppsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeAppsResult', name: 'DescribeAppsResult')
    DescribeCommandsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeCommandsRequest', name: 'DescribeCommandsRequest')
    DescribeCommandsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeCommandsResult', name: 'DescribeCommandsResult')
    DescribeDeploymentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeDeploymentsRequest', name: 'DescribeDeploymentsRequest')
    DescribeDeploymentsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeDeploymentsResult', name: 'DescribeDeploymentsResult')
    DescribeEcsClustersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeEcsClustersRequest', name: 'DescribeEcsClustersRequest')
    DescribeEcsClustersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeEcsClustersResult', name: 'DescribeEcsClustersResult')
    DescribeElasticIpsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeElasticIpsRequest', name: 'DescribeElasticIpsRequest')
    DescribeElasticIpsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeElasticIpsResult', name: 'DescribeElasticIpsResult')
    DescribeElasticLoadBalancersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeElasticLoadBalancersRequest', name: 'DescribeElasticLoadBalancersRequest')
    DescribeElasticLoadBalancersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeElasticLoadBalancersResult', name: 'DescribeElasticLoadBalancersResult')
    DescribeInstancesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeInstancesRequest', name: 'DescribeInstancesRequest')
    DescribeInstancesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeInstancesResult', name: 'DescribeInstancesResult')
    DescribeLayersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeLayersRequest', name: 'DescribeLayersRequest')
    DescribeLayersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeLayersResult', name: 'DescribeLayersResult')
    DescribeLoadBasedAutoScalingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeLoadBasedAutoScalingRequest', name: 'DescribeLoadBasedAutoScalingRequest')
    DescribeLoadBasedAutoScalingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeLoadBasedAutoScalingResult', name: 'DescribeLoadBasedAutoScalingResult')
    DescribeMyUserProfileResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeMyUserProfileResult', name: 'DescribeMyUserProfileResult')
    DescribeOperatingSystemsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeOperatingSystemsResponse', name: 'DescribeOperatingSystemsResponse')
    DescribePermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribePermissionsRequest', name: 'DescribePermissionsRequest')
    DescribePermissionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribePermissionsResult', name: 'DescribePermissionsResult')
    DescribeRaidArraysRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeRaidArraysRequest', name: 'DescribeRaidArraysRequest')
    DescribeRaidArraysResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeRaidArraysResult', name: 'DescribeRaidArraysResult')
    DescribeRdsDbInstancesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeRdsDbInstancesRequest', name: 'DescribeRdsDbInstancesRequest')
    DescribeRdsDbInstancesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeRdsDbInstancesResult', name: 'DescribeRdsDbInstancesResult')
    DescribeServiceErrorsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeServiceErrorsRequest', name: 'DescribeServiceErrorsRequest')
    DescribeServiceErrorsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeServiceErrorsResult', name: 'DescribeServiceErrorsResult')
    DescribeStackProvisioningParametersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStackProvisioningParametersRequest', name: 'DescribeStackProvisioningParametersRequest')
    DescribeStackProvisioningParametersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStackProvisioningParametersResult', name: 'DescribeStackProvisioningParametersResult')
    DescribeStackSummaryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStackSummaryRequest', name: 'DescribeStackSummaryRequest')
    DescribeStackSummaryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStackSummaryResult', name: 'DescribeStackSummaryResult')
    DescribeStacksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStacksRequest', name: 'DescribeStacksRequest')
    DescribeStacksResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStacksResult', name: 'DescribeStacksResult')
    DescribeTimeBasedAutoScalingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeTimeBasedAutoScalingRequest', name: 'DescribeTimeBasedAutoScalingRequest')
    DescribeTimeBasedAutoScalingResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeTimeBasedAutoScalingResult', name: 'DescribeTimeBasedAutoScalingResult')
    DescribeUserProfilesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeUserProfilesRequest', name: 'DescribeUserProfilesRequest')
    DescribeUserProfilesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeUserProfilesResult', name: 'DescribeUserProfilesResult')
    DescribeVolumesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeVolumesRequest', name: 'DescribeVolumesRequest')
    DescribeVolumesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeVolumesResult', name: 'DescribeVolumesResult')
    DetachElasticLoadBalancerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DetachElasticLoadBalancerRequest', name: 'DetachElasticLoadBalancerRequest')
    DisassociateElasticIpRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DisassociateElasticIpRequest', name: 'DisassociateElasticIpRequest')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.opsworks#Double', name: 'Double')
    EbsBlockDevice = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#EbsBlockDevice', name: 'EbsBlockDevice')
    EcsCluster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#EcsCluster', name: 'EcsCluster')
    EcsClusters = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#EcsClusters', name: 'EcsClusters')
    ElasticIp = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ElasticIp', name: 'ElasticIp')
    ElasticIps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#ElasticIps', name: 'ElasticIps')
    ElasticLoadBalancer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ElasticLoadBalancer', name: 'ElasticLoadBalancer')
    ElasticLoadBalancers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#ElasticLoadBalancers', name: 'ElasticLoadBalancers')
    EnvironmentVariable = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#EnvironmentVariable', name: 'EnvironmentVariable')
    EnvironmentVariables = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#EnvironmentVariables', name: 'EnvironmentVariables')
    GetHostnameSuggestionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#GetHostnameSuggestionRequest', name: 'GetHostnameSuggestionRequest')
    GetHostnameSuggestionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#GetHostnameSuggestionResult', name: 'GetHostnameSuggestionResult')
    GrantAccessRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#GrantAccessRequest', name: 'GrantAccessRequest')
    GrantAccessResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#GrantAccessResult', name: 'GrantAccessResult')
    Hour = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#Hour', name: 'Hour')
    Instance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Instance', name: 'Instance')
    InstanceIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#InstanceIdentity', name: 'InstanceIdentity')
    Instances = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Instances', name: 'Instances')
    InstancesCount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#InstancesCount', name: 'InstancesCount')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworks#Integer', name: 'Integer')
    Layer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Layer', name: 'Layer')
    LayerAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#LayerAttributes', name: 'LayerAttributes')
    LayerAttributesKeys = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#LayerAttributesKeys', name: 'LayerAttributesKeys')
    LayerType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#LayerType', name: 'LayerType')
    Layers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Layers', name: 'Layers')
    LifecycleEventConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#LifecycleEventConfiguration', name: 'LifecycleEventConfiguration')
    ListTagsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ListTagsRequest', name: 'ListTagsRequest')
    ListTagsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ListTagsResult', name: 'ListTagsResult')
    LoadBasedAutoScalingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#LoadBasedAutoScalingConfiguration', name: 'LoadBasedAutoScalingConfiguration')
    LoadBasedAutoScalingConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#LoadBasedAutoScalingConfigurations', name: 'LoadBasedAutoScalingConfigurations')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworks#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 0})
    Minute = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworks#Minute', name: 'Minute', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#NextToken', name: 'NextToken')
    OperatingSystem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#OperatingSystem', name: 'OperatingSystem')
    OperatingSystemConfigurationManager = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#OperatingSystemConfigurationManager', name: 'OperatingSystemConfigurationManager')
    OperatingSystemConfigurationManagers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#OperatingSystemConfigurationManagers', name: 'OperatingSystemConfigurationManagers')
    OperatingSystems = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#OperatingSystems', name: 'OperatingSystems')
    Parameters = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#Parameters', name: 'Parameters')
    Permission = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Permission', name: 'Permission')
    Permissions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Permissions', name: 'Permissions')
    RaidArray = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RaidArray', name: 'RaidArray')
    RaidArrays = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#RaidArrays', name: 'RaidArrays')
    RdsDbInstance = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RdsDbInstance', name: 'RdsDbInstance')
    RdsDbInstances = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#RdsDbInstances', name: 'RdsDbInstances')
    RebootInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RebootInstanceRequest', name: 'RebootInstanceRequest')
    Recipes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Recipes', name: 'Recipes')
    RegisterEcsClusterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterEcsClusterRequest', name: 'RegisterEcsClusterRequest')
    RegisterEcsClusterResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterEcsClusterResult', name: 'RegisterEcsClusterResult')
    RegisterElasticIpRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterElasticIpRequest', name: 'RegisterElasticIpRequest')
    RegisterElasticIpResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterElasticIpResult', name: 'RegisterElasticIpResult')
    RegisterInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterInstanceRequest', name: 'RegisterInstanceRequest')
    RegisterInstanceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterInstanceResult', name: 'RegisterInstanceResult')
    RegisterRdsDbInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterRdsDbInstanceRequest', name: 'RegisterRdsDbInstanceRequest')
    RegisterVolumeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterVolumeRequest', name: 'RegisterVolumeRequest')
    RegisterVolumeResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterVolumeResult', name: 'RegisterVolumeResult')
    ReportedOs = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ReportedOs', name: 'ReportedOs')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#ResourceArn', name: 'ResourceArn')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    RootDeviceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#RootDeviceType', name: 'RootDeviceType')
    SelfUserProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#SelfUserProfile', name: 'SelfUserProfile')
    ServiceError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ServiceError', name: 'ServiceError')
    ServiceErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#ServiceErrors', name: 'ServiceErrors')
    SetLoadBasedAutoScalingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#SetLoadBasedAutoScalingRequest', name: 'SetLoadBasedAutoScalingRequest')
    SetPermissionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#SetPermissionRequest', name: 'SetPermissionRequest')
    SetTimeBasedAutoScalingRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#SetTimeBasedAutoScalingRequest', name: 'SetTimeBasedAutoScalingRequest')
    ShutdownEventConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ShutdownEventConfiguration', name: 'ShutdownEventConfiguration')
    Source = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Source', name: 'Source')
    SourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#SourceType', name: 'SourceType')
    SslConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#SslConfiguration', name: 'SslConfiguration')
    Stack = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Stack', name: 'Stack')
    StackAttributes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#StackAttributes', name: 'StackAttributes')
    StackAttributesKeys = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#StackAttributesKeys', name: 'StackAttributesKeys')
    StackConfigurationManager = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StackConfigurationManager', name: 'StackConfigurationManager')
    StackSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StackSummary', name: 'StackSummary')
    Stacks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Stacks', name: 'Stacks')
    StartInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StartInstanceRequest', name: 'StartInstanceRequest')
    StartStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StartStackRequest', name: 'StartStackRequest')
    StopInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StopInstanceRequest', name: 'StopInstanceRequest')
    StopStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StopStackRequest', name: 'StopStackRequest')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#String', name: 'String')
    Strings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Strings', name: 'Strings')
    Switch = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#Switch', name: 'Switch')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#TagKey', name: 'TagKey')
    TagKeys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#TagKeys', name: 'TagKeys')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#TagValue', name: 'TagValue')
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#Tags', name: 'Tags')
    TemporaryCredential = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#TemporaryCredential', name: 'TemporaryCredential')
    TimeBasedAutoScalingConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#TimeBasedAutoScalingConfiguration', name: 'TimeBasedAutoScalingConfiguration')
    TimeBasedAutoScalingConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#TimeBasedAutoScalingConfigurations', name: 'TimeBasedAutoScalingConfigurations')
    UnassignInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UnassignInstanceRequest', name: 'UnassignInstanceRequest')
    UnassignVolumeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UnassignVolumeRequest', name: 'UnassignVolumeRequest')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateAppRequest', name: 'UpdateAppRequest')
    UpdateElasticIpRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateElasticIpRequest', name: 'UpdateElasticIpRequest')
    UpdateInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateInstanceRequest', name: 'UpdateInstanceRequest')
    UpdateLayerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateLayerRequest', name: 'UpdateLayerRequest')
    UpdateMyUserProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateMyUserProfileRequest', name: 'UpdateMyUserProfileRequest')
    UpdateRdsDbInstanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateRdsDbInstanceRequest', name: 'UpdateRdsDbInstanceRequest')
    UpdateStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateStackRequest', name: 'UpdateStackRequest')
    UpdateUserProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateUserProfileRequest', name: 'UpdateUserProfileRequest')
    UpdateVolumeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateVolumeRequest', name: 'UpdateVolumeRequest')
    UserProfile = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UserProfile', name: 'UserProfile')
    UserProfiles = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#UserProfiles', name: 'UserProfiles')
    ValidForInMinutes = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworks#ValidForInMinutes', name: 'ValidForInMinutes', traits: {"smithy.api#range" => {"min" => 60, "max" => 1440}})
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})
    VirtualizationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#VirtualizationType', name: 'VirtualizationType')
    Volume = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Volume', name: 'Volume')
    VolumeConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#VolumeConfiguration', name: 'VolumeConfiguration')
    VolumeConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#VolumeConfigurations', name: 'VolumeConfigurations')
    VolumeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#VolumeType', name: 'VolumeType')
    Volumes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Volumes', name: 'Volumes')
    WeeklyAutoScalingSchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#WeeklyAutoScalingSchedule', name: 'WeeklyAutoScalingSchedule')

    AgentVersion.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The agent version.</p>"}))
    AgentVersion.add_member(:configuration_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager', traits: {"smithy.api#documentation" => "<p>The configuration manager.</p>"}))
    AgentVersion.type = Types::AgentVersion
    AgentVersions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersion)
    App.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>"}))
    App.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The app stack ID.</p>"}))
    App.add_member(:shortname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Shortname', traits: {"smithy.api#documentation" => "<p>The app's short name.</p>"}))
    App.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The app name.</p>"}))
    App.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the app.</p>"}))
    App.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'DataSources', traits: {"smithy.api#documentation" => "<p>The app's data sources.</p>"}))
    App.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AppType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The app type.</p>"}))
    App.add_member(:app_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'AppSource', traits: {"smithy.api#documentation" => "<p>A <code>Source</code> object that describes the app repository.</p>"}))
    App.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>The app vhost settings with multiple domains separated by commas. For example:\n        <code>'www.example.com, example.com'</code>\n         </p>"}))
    App.add_member(:enable_ssl, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableSsl', traits: {"smithy.api#documentation" => "<p>Whether to enable SSL for the app.</p>"}))
    App.add_member(:ssl_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SslConfiguration, location_name: 'SslConfiguration', traits: {"smithy.api#documentation" => "<p>An <code>SslConfiguration</code> object with the SSL configuration.</p>"}))
    App.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AppAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The stack attributes.</p>"}))
    App.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>When the app was created.</p>"}))
    App.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'Environment', traits: {"smithy.api#documentation" => "<p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be\n      associated with the app. After you deploy the app, these variables are defined on the\n      associated app server instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment\"> Environment Variables</a>. </p>\n         <note>\n            <p>There is no specific limit on the number of environment variables. \n          However, the size of the associated data structure - which includes the variable names, values, and protected flag \n          values - cannot exceed 20 KB. This limit should accommodate most if not all use cases, but if you do exceed it, you \n          will cause an exception (API) with an \"Environment: is too large (maximum is 20 KB)\" message.</p>\n         </note>"}))
    App.type = Types::App
    AppAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: AppAttributesKeys)
    AppAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AppAttributesKeys.add_member(:document_root, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DocumentRoot', traits: {"smithy.api#enumValue" => "DocumentRoot"}))
    AppAttributesKeys.add_member(:rails_env, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RailsEnv', traits: {"smithy.api#enumValue" => "RailsEnv"}))
    AppAttributesKeys.add_member(:auto_bundle_on_deploy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AutoBundleOnDeploy', traits: {"smithy.api#enumValue" => "AutoBundleOnDeploy"}))
    AppAttributesKeys.add_member(:aws_flow_ruby_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AwsFlowRubySettings', traits: {"smithy.api#enumValue" => "AwsFlowRubySettings"}))
    AppType.add_member(:aws_flow_ruby, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_flow_ruby', traits: {"smithy.api#enumValue" => "aws-flow-ruby"}))
    AppType.add_member(:java, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'java', traits: {"smithy.api#enumValue" => "java"}))
    AppType.add_member(:rails, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rails', traits: {"smithy.api#enumValue" => "rails"}))
    AppType.add_member(:php, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'php', traits: {"smithy.api#enumValue" => "php"}))
    AppType.add_member(:nodejs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'nodejs', traits: {"smithy.api#enumValue" => "nodejs"}))
    AppType.add_member(:static, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'static', traits: {"smithy.api#enumValue" => "static"}))
    AppType.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'other', traits: {"smithy.api#enumValue" => "other"}))
    Apps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: App)
    Architecture.add_member(:x86_64, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'x86_64', traits: {"smithy.api#enumValue" => "x86_64"}))
    Architecture.add_member(:i386, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i386', traits: {"smithy.api#enumValue" => "i386"}))
    AssignInstanceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>", "smithy.api#required" => {}}))
    AssignInstanceRequest.add_member(:layer_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds', traits: {"smithy.api#documentation" => "<p>The layer ID, which must correspond to a custom layer. You cannot assign a registered instance to a built-in layer.</p>", "smithy.api#required" => {}}))
    AssignInstanceRequest.type = Types::AssignInstanceRequest
    AssignVolumeRequest.add_member(:volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId', traits: {"smithy.api#documentation" => "<p>The volume ID.</p>", "smithy.api#required" => {}}))
    AssignVolumeRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>"}))
    AssignVolumeRequest.type = Types::AssignVolumeRequest
    AssociateElasticIpRequest.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#documentation" => "<p>The Elastic IP address.</p>", "smithy.api#required" => {}}))
    AssociateElasticIpRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>"}))
    AssociateElasticIpRequest.type = Types::AssociateElasticIpRequest
    AttachElasticLoadBalancerRequest.add_member(:elastic_load_balancer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticLoadBalancerName', traits: {"smithy.api#documentation" => "<p>The Elastic Load Balancing instance's name.</p>", "smithy.api#required" => {}}))
    AttachElasticLoadBalancerRequest.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>The ID of the layer to which the Elastic Load Balancing instance is to be attached.</p>", "smithy.api#required" => {}}))
    AttachElasticLoadBalancerRequest.type = Types::AttachElasticLoadBalancerRequest
    AutoScalingThresholds.add_member(:instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InstanceCount', traits: {"smithy.api#documentation" => "<p>The number of instances to add or remove when the load exceeds a threshold.</p>"}))
    AutoScalingThresholds.add_member(:thresholds_wait_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Minute, location_name: 'ThresholdsWaitTime', traits: {"smithy.api#documentation" => "<p>The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.</p>"}))
    AutoScalingThresholds.add_member(:ignore_metrics_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Minute, location_name: 'IgnoreMetricsTime', traits: {"smithy.api#documentation" => "<p>The amount of time (in minutes) after a scaling event occurs that OpsWorks Stacks should ignore metrics\n          and suppress additional scaling events. For example, OpsWorks Stacks adds new instances following\n      an upscaling event but the instances won't start reducing the load until they have been booted\n      and configured. There is no point in raising additional scaling events during that operation,\n      which typically takes several minutes. <code>IgnoreMetricsTime</code> allows you to direct\n          OpsWorks Stacks to suppress scaling events long enough to get the new instances online.</p>"}))
    AutoScalingThresholds.add_member(:cpu_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'CpuThreshold', traits: {"smithy.api#documentation" => "<p>The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold.</p>"}))
    AutoScalingThresholds.add_member(:memory_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'MemoryThreshold', traits: {"smithy.api#documentation" => "<p>The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold.</p>"}))
    AutoScalingThresholds.add_member(:load_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'LoadThreshold', traits: {"smithy.api#documentation" => "<p>The load threshold. A value of -1 disables the threshold. For more information about how load is computed, \n          see <a href=\"http://en.wikipedia.org/wiki/Load_%28computing%29\">Load (computing)</a>.</p>"}))
    AutoScalingThresholds.add_member(:alarms, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Alarms', traits: {"smithy.api#documentation" => "<p>Custom CloudWatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names,\n          which are case sensitive and must be in the same region as the stack.</p>\n         <note>\n            <p>To use custom alarms, you must update your service role to allow\n          <code>cloudwatch:DescribeAlarms</code>. You can either have OpsWorks Stacks update the role for\n      you when you first use this feature or you can edit the role manually. For more information,\n      see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-servicerole.html\">Allowing OpsWorks Stacks to Act on Your Behalf</a>.</p>\n         </note>"}))
    AutoScalingThresholds.type = Types::AutoScalingThresholds
    AutoScalingType.add_member(:load, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'load', traits: {"smithy.api#enumValue" => "load"}))
    AutoScalingType.add_member(:timer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'timer', traits: {"smithy.api#enumValue" => "timer"}))
    BlockDeviceMapping.add_member(:device_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeviceName', traits: {"smithy.api#documentation" => "<p>The device name that is exposed to the instance, such as <code>/dev/sdh</code>. For the root\n      device, you can use the explicit device name or you can set this parameter to\n          <code>ROOT_DEVICE</code> and OpsWorks Stacks will provide the correct device name.</p>"}))
    BlockDeviceMapping.add_member(:no_device, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NoDevice', traits: {"smithy.api#documentation" => "<p>Suppresses the specified device included in the AMI's block device mapping.</p>"}))
    BlockDeviceMapping.add_member(:virtual_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VirtualName', traits: {"smithy.api#documentation" => "<p>The virtual device name. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_BlockDeviceMapping.html\">BlockDeviceMapping</a>.</p>"}))
    BlockDeviceMapping.add_member(:ebs, Smithy::Schema::Shapes::ShapeRef.new(shape: EbsBlockDevice, location_name: 'Ebs', traits: {"smithy.api#documentation" => "<p>An <code>EBSBlockDevice</code> that defines how to configure an Amazon EBS volume when the\n      instance is launched.</p>"}))
    BlockDeviceMapping.type = Types::BlockDeviceMapping
    BlockDeviceMappings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BlockDeviceMapping)
    ChefConfiguration.add_member(:manage_berkshelf, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ManageBerkshelf', traits: {"smithy.api#documentation" => "<p>Whether to enable Berkshelf.</p>"}))
    ChefConfiguration.add_member(:berkshelf_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BerkshelfVersion', traits: {"smithy.api#documentation" => "<p>The Berkshelf version.</p>"}))
    ChefConfiguration.type = Types::ChefConfiguration
    CloneStackRequest.add_member(:source_stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceStackId', traits: {"smithy.api#documentation" => "<p>The source stack ID.</p>", "smithy.api#required" => {}}))
    CloneStackRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The cloned stack name. Stack names can be a maximum of 64 characters.</p>"}))
    CloneStackRequest.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The cloned stack Amazon Web Services Region, such as <code>ap-northeast-2</code>. For more information \n          about Amazon Web Services Regions, see\n        <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"}))
    CloneStackRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC that the cloned stack is to be launched into. It must be in the specified region. All\n          instances are launched into this VPC, and you cannot change the ID later.</p>\n         <ul>\n            <li>\n               <p>If your account supports EC2 Classic, the default value is no VPC.</p>\n            </li>\n            <li>\n               <p>If your account does not support EC2 Classic, the default value is the default VPC for the specified region.</p>\n            </li>\n         </ul>\n         <p>If the VPC ID corresponds to a default VPC and you have specified either the\n        <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only,\n          OpsWorks Stacks infers the value of the other parameter. If you specify neither parameter, OpsWorks Stacks sets\n      these parameters to the first valid Availability Zone for the specified region and the\n      corresponding default VPC subnet ID, respectively. </p>\n         <p>If you specify a nondefault VPC ID, note the following:</p>\n         <ul>\n            <li>\n               <p>It must belong to a VPC in your account that is in the specified region.</p>\n            </li>\n            <li>\n               <p>You must specify a value for <code>DefaultSubnetId</code>.</p>\n            </li>\n         </ul>\n         <p>For more information about how to use OpsWorks Stacks with a VPC, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html\">Running a Stack in a\n        VPC</a>. For more information about default VPC and EC2 Classic, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported\n        Platforms</a>. </p>"}))
    CloneStackRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>A list of stack attributes and values as key/value pairs to be added to the cloned stack.</p>"}))
    CloneStackRequest.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The stack Identity and Access Management (IAM) role, which allows OpsWorks Stacks to work with Amazon Web Services\n      resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an\n      existing IAM role. If you create a stack by using the OpsWorkss Stacks console, it creates the role for\n          you. You can obtain an existing stack's IAM ARN programmatically by calling\n          <a>DescribePermissions</a>. For more information about IAM ARNs, see \n          <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using\n      Identifiers</a>.</p>\n         <note>\n            <p>You must set this parameter to a valid service role ARN or the action will fail; there is no default value. \n             You can specify the source stack's service role ARN, if you prefer, but you must do so explicitly.</p>\n         </note>", "smithy.api#required" => {}}))
    CloneStackRequest.add_member(:default_instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultInstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's \n          EC2 instances.\n          For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using\n      Identifiers</a>.</p>"}))
    CloneStackRequest.add_member(:default_os, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultOs', traits: {"smithy.api#documentation" => "<p>The stack's operating system, which must be set to one of the following.</p>\n         <ul>\n            <li>\n               <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux\n        2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>\n            </li>\n            <li>\n               <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CentOS Linux 7</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Red Hat Enterprise Linux 7</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, \n              <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>\n            </li>\n            <li>\n               <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when\n             you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using\n          Custom AMIs</a>.</p>\n            </li>\n         </ul>\n         <p>The default option is the parent stack's operating system.\n      Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,\n      see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">OpsWorks Stacks Operating Systems</a>.</p>\n         <note>\n            <p>You can specify a different Linux operating system for the cloned stack, but you cannot change from Linux to \n          Windows or Windows to Linux.</p>\n         </note>"}))
    CloneStackRequest.add_member(:hostname_theme, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostnameTheme', traits: {"smithy.api#documentation" => "<p>The stack's host name theme, with spaces are replaced by underscores. The theme is used to\n      generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set\n      to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's\n      short name. The other themes are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Baked_Goods</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Clouds</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Europe_Cities</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Fruits</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Greek_Deities_and_Titans</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Legendary_creatures_from_Japan</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Planets_and_Moons</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Roman_Deities</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Scottish_Islands</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>US_Cities</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Wild_Cats</code>\n               </p>\n            </li>\n         </ul>\n         <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a\n      host name based on the current theme.</p>"}))
    CloneStackRequest.add_member(:default_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAvailabilityZone', traits: {"smithy.api#documentation" => "<p>The cloned stack's default Availability Zone, which must be in the specified region. For more\n      information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and\n        Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must\n      be in the same zone. For more information, see the <code>VpcId</code> parameter description.\n    </p>"}))
    CloneStackRequest.add_member(:default_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubnetId', traits: {"smithy.api#documentation" => "<p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the\n        <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify\n      otherwise when you create the instance. If you also specify a value for\n        <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on\n      default values and when this parameter is required, see the <code>VpcId</code> parameter\n      description. </p>"}))
    CloneStackRequest.add_member(:custom_json, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson', traits: {"smithy.api#documentation" => "<p>A string that contains user-defined, custom JSON. It is used to override the corresponding default stack configuration \n          JSON values. The string should be in the following format:</p>\n         <p>\n            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>\n         </p>\n         <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to\n        Modify the Stack Configuration Attributes</a>\n         </p>"}))
    CloneStackRequest.add_member(:configuration_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager', traits: {"smithy.api#documentation" => "<p>The configuration manager. When you clone a stack we recommend that you use the configuration manager to specify the \n          Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>"}))
    CloneStackRequest.add_member(:chef_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: 'ChefConfiguration', traits: {"smithy.api#documentation" => "<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the\n      Berkshelf version on Chef 11.10 stacks. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>"}))
    CloneStackRequest.add_member(:use_custom_cookbooks, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseCustomCookbooks', traits: {"smithy.api#documentation" => "<p>Whether to use custom cookbooks.</p>"}))
    CloneStackRequest.add_member(:use_opsworks_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOpsworksSecurityGroups', traits: {"smithy.api#documentation" => "<p>Whether to associate the OpsWorks Stacks built-in security groups with the stack's layers.</p>\n         <p>OpsWorks Stacks provides a standard set of security groups, one for each layer, which are\n      associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead\n      provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the\n      following settings: </p>\n         <ul>\n            <li>\n               <p>True - OpsWorks Stacks automatically associates the appropriate built-in security group with \n              each layer (default setting). You can associate additional security groups with a layer after you create it but you cannot \n              delete the built-in security group.</p>\n            </li>\n            <li>\n               <p>False - OpsWorks Stacks does not associate built-in security groups with layers. \n              You must create appropriate Amazon EC2 security groups and associate a security group with each \n              layer that you create. However, you can still manually associate a built-in security group with a layer on creation; \n              custom security groups are required only for those layers that need custom settings.</p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New\n        Stack</a>.</p>"}))
    CloneStackRequest.add_member(:custom_cookbooks_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'CustomCookbooksSource', traits: {"smithy.api#documentation" => "<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, \n            see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or \n            <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>"}))
    CloneStackRequest.add_member(:default_ssh_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSshKeyName', traits: {"smithy.api#documentation" => "<p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, \n          OpsWorks installs the public key on the instance and you can use the private key with an SSH\n      client to log in to the instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html\"> Using SSH to\n        Communicate with an Instance</a> and <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html\"> Managing SSH\n        Access</a>. You can override this setting by specifying a different key pair, or no key\n      pair, when you <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html\">\n        create an instance</a>. </p>"}))
    CloneStackRequest.add_member(:clone_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ClonePermissions', traits: {"smithy.api#documentation" => "<p>Whether to clone the source stack's permissions.</p>"}))
    CloneStackRequest.add_member(:clone_app_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'CloneAppIds', traits: {"smithy.api#documentation" => "<p>A list of source stack app IDs to be included in the cloned stack.</p>"}))
    CloneStackRequest.add_member(:default_root_device_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'DefaultRootDeviceType', traits: {"smithy.api#documentation" => "<p>The default root device type. This value is used by default for all instances in the cloned\n      stack, but you can override it when you create an instance. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"}))
    CloneStackRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion', traits: {"smithy.api#documentation" => "<p>The default OpsWorks Stacks agent version. You have the following options:</p>\n         <ul>\n            <li>\n               <p>Auto-update - Set this parameter to <code>LATEST</code>. OpsWorks Stacks\n      automatically installs new agent versions on the stack's instances as soon as\n      they are available.</p>\n            </li>\n            <li>\n               <p>Fixed version - Set this parameter to your preferred agent version. To update \n             the agent version, you must edit the stack configuration and specify a new version. \n             OpsWorks Stacks automatically installs that version on the stack's instances.</p>\n            </li>\n         </ul>\n         <p>The default setting is <code>LATEST</code>. To specify an agent version,\n      you must use the complete version number, not the abbreviated number shown on the console.\n      For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>\n         <note>\n            <p>You can also specify an agent version when you create or update an instance, which overrides the stack's \n          default setting.</p>\n         </note>"}))
    CloneStackRequest.type = Types::CloneStackRequest
    CloneStackResult.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The cloned stack ID.</p>"}))
    CloneStackResult.type = Types::CloneStackResult
    CloudWatchLogsConfiguration.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Whether CloudWatch Logs is enabled for a layer.</p>"}))
    CloudWatchLogsConfiguration.add_member(:log_streams, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogStreams, location_name: 'LogStreams', traits: {"smithy.api#documentation" => "<p>A list of configuration options for CloudWatch Logs.</p>"}))
    CloudWatchLogsConfiguration.type = Types::CloudWatchLogsConfiguration
    CloudWatchLogsEncoding.add_member(:ascii, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ascii', traits: {"smithy.api#enumValue" => "ascii"}))
    CloudWatchLogsEncoding.add_member(:big5, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'big5', traits: {"smithy.api#enumValue" => "big5"}))
    CloudWatchLogsEncoding.add_member(:big5hkscs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'big5hkscs', traits: {"smithy.api#enumValue" => "big5hkscs"}))
    CloudWatchLogsEncoding.add_member(:cp037, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp037', traits: {"smithy.api#enumValue" => "cp037"}))
    CloudWatchLogsEncoding.add_member(:cp424, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp424', traits: {"smithy.api#enumValue" => "cp424"}))
    CloudWatchLogsEncoding.add_member(:cp437, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp437', traits: {"smithy.api#enumValue" => "cp437"}))
    CloudWatchLogsEncoding.add_member(:cp500, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp500', traits: {"smithy.api#enumValue" => "cp500"}))
    CloudWatchLogsEncoding.add_member(:cp720, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp720', traits: {"smithy.api#enumValue" => "cp720"}))
    CloudWatchLogsEncoding.add_member(:cp737, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp737', traits: {"smithy.api#enumValue" => "cp737"}))
    CloudWatchLogsEncoding.add_member(:cp775, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp775', traits: {"smithy.api#enumValue" => "cp775"}))
    CloudWatchLogsEncoding.add_member(:cp850, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp850', traits: {"smithy.api#enumValue" => "cp850"}))
    CloudWatchLogsEncoding.add_member(:cp852, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp852', traits: {"smithy.api#enumValue" => "cp852"}))
    CloudWatchLogsEncoding.add_member(:cp855, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp855', traits: {"smithy.api#enumValue" => "cp855"}))
    CloudWatchLogsEncoding.add_member(:cp856, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp856', traits: {"smithy.api#enumValue" => "cp856"}))
    CloudWatchLogsEncoding.add_member(:cp857, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp857', traits: {"smithy.api#enumValue" => "cp857"}))
    CloudWatchLogsEncoding.add_member(:cp858, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp858', traits: {"smithy.api#enumValue" => "cp858"}))
    CloudWatchLogsEncoding.add_member(:cp860, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp860', traits: {"smithy.api#enumValue" => "cp860"}))
    CloudWatchLogsEncoding.add_member(:cp861, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp861', traits: {"smithy.api#enumValue" => "cp861"}))
    CloudWatchLogsEncoding.add_member(:cp862, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp862', traits: {"smithy.api#enumValue" => "cp862"}))
    CloudWatchLogsEncoding.add_member(:cp863, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp863', traits: {"smithy.api#enumValue" => "cp863"}))
    CloudWatchLogsEncoding.add_member(:cp864, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp864', traits: {"smithy.api#enumValue" => "cp864"}))
    CloudWatchLogsEncoding.add_member(:cp865, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp865', traits: {"smithy.api#enumValue" => "cp865"}))
    CloudWatchLogsEncoding.add_member(:cp866, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp866', traits: {"smithy.api#enumValue" => "cp866"}))
    CloudWatchLogsEncoding.add_member(:cp869, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp869', traits: {"smithy.api#enumValue" => "cp869"}))
    CloudWatchLogsEncoding.add_member(:cp874, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp874', traits: {"smithy.api#enumValue" => "cp874"}))
    CloudWatchLogsEncoding.add_member(:cp875, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp875', traits: {"smithy.api#enumValue" => "cp875"}))
    CloudWatchLogsEncoding.add_member(:cp932, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp932', traits: {"smithy.api#enumValue" => "cp932"}))
    CloudWatchLogsEncoding.add_member(:cp949, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp949', traits: {"smithy.api#enumValue" => "cp949"}))
    CloudWatchLogsEncoding.add_member(:cp950, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp950', traits: {"smithy.api#enumValue" => "cp950"}))
    CloudWatchLogsEncoding.add_member(:cp1006, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1006', traits: {"smithy.api#enumValue" => "cp1006"}))
    CloudWatchLogsEncoding.add_member(:cp1026, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1026', traits: {"smithy.api#enumValue" => "cp1026"}))
    CloudWatchLogsEncoding.add_member(:cp1140, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1140', traits: {"smithy.api#enumValue" => "cp1140"}))
    CloudWatchLogsEncoding.add_member(:cp1250, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1250', traits: {"smithy.api#enumValue" => "cp1250"}))
    CloudWatchLogsEncoding.add_member(:cp1251, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1251', traits: {"smithy.api#enumValue" => "cp1251"}))
    CloudWatchLogsEncoding.add_member(:cp1252, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1252', traits: {"smithy.api#enumValue" => "cp1252"}))
    CloudWatchLogsEncoding.add_member(:cp1253, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1253', traits: {"smithy.api#enumValue" => "cp1253"}))
    CloudWatchLogsEncoding.add_member(:cp1254, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1254', traits: {"smithy.api#enumValue" => "cp1254"}))
    CloudWatchLogsEncoding.add_member(:cp1255, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1255', traits: {"smithy.api#enumValue" => "cp1255"}))
    CloudWatchLogsEncoding.add_member(:cp1256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1256', traits: {"smithy.api#enumValue" => "cp1256"}))
    CloudWatchLogsEncoding.add_member(:cp1257, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1257', traits: {"smithy.api#enumValue" => "cp1257"}))
    CloudWatchLogsEncoding.add_member(:cp1258, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1258', traits: {"smithy.api#enumValue" => "cp1258"}))
    CloudWatchLogsEncoding.add_member(:euc_jp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'euc_jp', traits: {"smithy.api#enumValue" => "euc_jp"}))
    CloudWatchLogsEncoding.add_member(:euc_jis_2004, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'euc_jis_2004', traits: {"smithy.api#enumValue" => "euc_jis_2004"}))
    CloudWatchLogsEncoding.add_member(:euc_jisx0213, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'euc_jisx0213', traits: {"smithy.api#enumValue" => "euc_jisx0213"}))
    CloudWatchLogsEncoding.add_member(:euc_kr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'euc_kr', traits: {"smithy.api#enumValue" => "euc_kr"}))
    CloudWatchLogsEncoding.add_member(:gb2312, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gb2312', traits: {"smithy.api#enumValue" => "gb2312"}))
    CloudWatchLogsEncoding.add_member(:gbk, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gbk', traits: {"smithy.api#enumValue" => "gbk"}))
    CloudWatchLogsEncoding.add_member(:gb18030, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gb18030', traits: {"smithy.api#enumValue" => "gb18030"}))
    CloudWatchLogsEncoding.add_member(:hz, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hz', traits: {"smithy.api#enumValue" => "hz"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp', traits: {"smithy.api#enumValue" => "iso2022_jp"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp_1', traits: {"smithy.api#enumValue" => "iso2022_jp_1"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp_2', traits: {"smithy.api#enumValue" => "iso2022_jp_2"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp_2004, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp_2004', traits: {"smithy.api#enumValue" => "iso2022_jp_2004"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp_3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp_3', traits: {"smithy.api#enumValue" => "iso2022_jp_3"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp_ext, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp_ext', traits: {"smithy.api#enumValue" => "iso2022_jp_ext"}))
    CloudWatchLogsEncoding.add_member(:iso2022_kr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_kr', traits: {"smithy.api#enumValue" => "iso2022_kr"}))
    CloudWatchLogsEncoding.add_member(:latin_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'latin_1', traits: {"smithy.api#enumValue" => "latin_1"}))
    CloudWatchLogsEncoding.add_member(:iso8859_2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_2', traits: {"smithy.api#enumValue" => "iso8859_2"}))
    CloudWatchLogsEncoding.add_member(:iso8859_3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_3', traits: {"smithy.api#enumValue" => "iso8859_3"}))
    CloudWatchLogsEncoding.add_member(:iso8859_4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_4', traits: {"smithy.api#enumValue" => "iso8859_4"}))
    CloudWatchLogsEncoding.add_member(:iso8859_5, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_5', traits: {"smithy.api#enumValue" => "iso8859_5"}))
    CloudWatchLogsEncoding.add_member(:iso8859_6, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_6', traits: {"smithy.api#enumValue" => "iso8859_6"}))
    CloudWatchLogsEncoding.add_member(:iso8859_7, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_7', traits: {"smithy.api#enumValue" => "iso8859_7"}))
    CloudWatchLogsEncoding.add_member(:iso8859_8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_8', traits: {"smithy.api#enumValue" => "iso8859_8"}))
    CloudWatchLogsEncoding.add_member(:iso8859_9, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_9', traits: {"smithy.api#enumValue" => "iso8859_9"}))
    CloudWatchLogsEncoding.add_member(:iso8859_10, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_10', traits: {"smithy.api#enumValue" => "iso8859_10"}))
    CloudWatchLogsEncoding.add_member(:iso8859_13, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_13', traits: {"smithy.api#enumValue" => "iso8859_13"}))
    CloudWatchLogsEncoding.add_member(:iso8859_14, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_14', traits: {"smithy.api#enumValue" => "iso8859_14"}))
    CloudWatchLogsEncoding.add_member(:iso8859_15, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_15', traits: {"smithy.api#enumValue" => "iso8859_15"}))
    CloudWatchLogsEncoding.add_member(:iso8859_16, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_16', traits: {"smithy.api#enumValue" => "iso8859_16"}))
    CloudWatchLogsEncoding.add_member(:johab, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'johab', traits: {"smithy.api#enumValue" => "johab"}))
    CloudWatchLogsEncoding.add_member(:koi8_r, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'koi8_r', traits: {"smithy.api#enumValue" => "koi8_r"}))
    CloudWatchLogsEncoding.add_member(:koi8_u, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'koi8_u', traits: {"smithy.api#enumValue" => "koi8_u"}))
    CloudWatchLogsEncoding.add_member(:mac_cyrillic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_cyrillic', traits: {"smithy.api#enumValue" => "mac_cyrillic"}))
    CloudWatchLogsEncoding.add_member(:mac_greek, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_greek', traits: {"smithy.api#enumValue" => "mac_greek"}))
    CloudWatchLogsEncoding.add_member(:mac_iceland, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_iceland', traits: {"smithy.api#enumValue" => "mac_iceland"}))
    CloudWatchLogsEncoding.add_member(:mac_latin2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_latin2', traits: {"smithy.api#enumValue" => "mac_latin2"}))
    CloudWatchLogsEncoding.add_member(:mac_roman, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_roman', traits: {"smithy.api#enumValue" => "mac_roman"}))
    CloudWatchLogsEncoding.add_member(:mac_turkish, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_turkish', traits: {"smithy.api#enumValue" => "mac_turkish"}))
    CloudWatchLogsEncoding.add_member(:ptcp154, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ptcp154', traits: {"smithy.api#enumValue" => "ptcp154"}))
    CloudWatchLogsEncoding.add_member(:shift_jis, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'shift_jis', traits: {"smithy.api#enumValue" => "shift_jis"}))
    CloudWatchLogsEncoding.add_member(:shift_jis_2004, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'shift_jis_2004', traits: {"smithy.api#enumValue" => "shift_jis_2004"}))
    CloudWatchLogsEncoding.add_member(:shift_jisx0213, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'shift_jisx0213', traits: {"smithy.api#enumValue" => "shift_jisx0213"}))
    CloudWatchLogsEncoding.add_member(:utf_32, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_32', traits: {"smithy.api#enumValue" => "utf_32"}))
    CloudWatchLogsEncoding.add_member(:utf_32_be, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_32_be', traits: {"smithy.api#enumValue" => "utf_32_be"}))
    CloudWatchLogsEncoding.add_member(:utf_32_le, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_32_le', traits: {"smithy.api#enumValue" => "utf_32_le"}))
    CloudWatchLogsEncoding.add_member(:utf_16, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_16', traits: {"smithy.api#enumValue" => "utf_16"}))
    CloudWatchLogsEncoding.add_member(:utf_16_be, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_16_be', traits: {"smithy.api#enumValue" => "utf_16_be"}))
    CloudWatchLogsEncoding.add_member(:utf_16_le, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_16_le', traits: {"smithy.api#enumValue" => "utf_16_le"}))
    CloudWatchLogsEncoding.add_member(:utf_7, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_7', traits: {"smithy.api#enumValue" => "utf_7"}))
    CloudWatchLogsEncoding.add_member(:utf_8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_8', traits: {"smithy.api#enumValue" => "utf_8"}))
    CloudWatchLogsEncoding.add_member(:utf_8_sig, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_8_sig', traits: {"smithy.api#enumValue" => "utf_8_sig"}))
    CloudWatchLogsInitialPosition.add_member(:start_of_file, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'start_of_file', traits: {"smithy.api#enumValue" => "start_of_file"}))
    CloudWatchLogsInitialPosition.add_member(:end_of_file, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'end_of_file', traits: {"smithy.api#enumValue" => "end_of_file"}))
    CloudWatchLogsLogStream.add_member(:log_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogGroupName', traits: {"smithy.api#documentation" => "<p>Specifies the destination log group. A log group is created automatically if it doesn't already exist. \n            Log group names can be between 1 and 512 characters long. Allowed characters include a-z, A-Z, 0-9, '_' (underscore), \n            '-' (hyphen), '/' (forward slash), and '.' (period).</p>"}))
    CloudWatchLogsLogStream.add_member(:datetime_format, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatetimeFormat', traits: {"smithy.api#documentation" => "<p>Specifies how the time stamp is extracted from logs. For more information, see the \n            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html\">CloudWatch Logs Agent Reference</a>.</p>"}))
    CloudWatchLogsLogStream.add_member(:time_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsTimeZone, location_name: 'TimeZone', traits: {"smithy.api#documentation" => "<p>Specifies the time zone of log event time stamps.</p>"}))
    CloudWatchLogsLogStream.add_member(:file, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'File', traits: {"smithy.api#documentation" => "<p>Specifies log files that you want to push to CloudWatch Logs.</p>\n         <p>\n            <code>File</code> can point to a specific file or multiple files (by using wild card characters such \n            as <code>/var/log/system.log*</code>).\n            Only the latest file is pushed to CloudWatch Logs, based on file modification time. We recommend that you use \n            wild card characters to specify a series\n            of files of the same type, such as <code>access_log.2014-06-01-01</code>, <code>access_log.2014-06-01-02</code>, and so on\n            by using a pattern like <code>access_log.*</code>. Don't use a wildcard to match multiple file types,\n            such as <code>access_log_80</code> and <code>access_log_443</code>. To specify multiple, different file types, add another\n            log stream entry to the configuration file, so that each log file type is stored in a different log group.</p>\n         <p>Zipped files are not supported.</p>"}))
    CloudWatchLogsLogStream.add_member(:file_fingerprint_lines, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FileFingerprintLines', traits: {"smithy.api#documentation" => "<p>Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, \n            such as '1', '2-5'. The default value is '1', meaning the first line is used to calculate the fingerprint. \n            Fingerprint lines are \n            not sent to CloudWatch Logs unless all specified lines are available.</p>"}))
    CloudWatchLogsLogStream.add_member(:multi_line_start_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiLineStartPattern', traits: {"smithy.api#documentation" => "<p>Specifies the pattern for identifying the start of a log message.</p>"}))
    CloudWatchLogsLogStream.add_member(:initial_position, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsInitialPosition, location_name: 'InitialPosition', traits: {"smithy.api#documentation" => "<p>Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file. \n            This setting is only used if there is no state persisted for that log stream.</p>"}))
    CloudWatchLogsLogStream.add_member(:encoding, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsEncoding, location_name: 'Encoding', traits: {"smithy.api#documentation" => "<p>Specifies the encoding of the log file so that the file can be read correctly. \n            The default is <code>utf_8</code>. Encodings supported by Python <code>codecs.decode()</code> can be used here.</p>"}))
    CloudWatchLogsLogStream.add_member(:buffer_duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BufferDuration', traits: {"smithy.api#documentation" => "<p>Specifies the time duration for the batching of log events. The minimum value is 5000ms and default value is 5000ms.</p>"}))
    CloudWatchLogsLogStream.add_member(:batch_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BatchCount', traits: {"smithy.api#documentation" => "<p>Specifies the max number of log events in a batch, up to 10000. The default value is 1000.</p>"}))
    CloudWatchLogsLogStream.add_member(:batch_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BatchSize', traits: {"smithy.api#documentation" => "<p>Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. \n            The default value is 32768 bytes. This size is calculated as the sum of all event messages \n            in UTF-8, plus 26 bytes for each log event.</p>"}))
    CloudWatchLogsLogStream.type = Types::CloudWatchLogsLogStream
    CloudWatchLogsLogStreams.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogStream)
    CloudWatchLogsTimeZone.add_member(:local, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL', traits: {"smithy.api#enumValue" => "LOCAL"}))
    CloudWatchLogsTimeZone.add_member(:utc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UTC', traits: {"smithy.api#enumValue" => "UTC"}))
    Command.add_member(:command_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CommandId', traits: {"smithy.api#documentation" => "<p>The command ID.</p>"}))
    Command.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the instance where the command was executed.</p>"}))
    Command.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId', traits: {"smithy.api#documentation" => "<p>The command deployment ID.</p>"}))
    Command.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>Date and time when the command was run.</p>"}))
    Command.add_member(:acknowledged_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'AcknowledgedAt', traits: {"smithy.api#documentation" => "<p>Date and time when the command was acknowledged.</p>"}))
    Command.add_member(:completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletedAt', traits: {"smithy.api#documentation" => "<p>Date when the command completed.</p>"}))
    Command.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The command status:</p>\n         <ul>\n            <li>\n               <p>failed</p>\n            </li>\n            <li>\n               <p>successful</p>\n            </li>\n            <li>\n               <p>skipped</p>\n            </li>\n            <li>\n               <p>pending</p>\n            </li>\n         </ul>"}))
    Command.add_member(:exit_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ExitCode', traits: {"smithy.api#documentation" => "<p>The command exit code.</p>"}))
    Command.add_member(:log_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogUrl', traits: {"smithy.api#documentation" => "<p>The URL of the command log.</p>"}))
    Command.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The command type:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>configure</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>deploy</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>execute_recipes</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>install_dependencies</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>restart</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>rollback</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>setup</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>start</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>stop</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>undeploy</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>update_custom_cookbooks</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>update_dependencies</code>\n               </p>\n            </li>\n         </ul>"}))
    Command.type = Types::Command
    Commands.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Command)
    CreateAppRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    CreateAppRequest.add_member(:shortname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Shortname', traits: {"smithy.api#documentation" => "<p>The app's short name.</p>"}))
    CreateAppRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The app name.</p>", "smithy.api#required" => {}}))
    CreateAppRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the app.</p>"}))
    CreateAppRequest.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'DataSources', traits: {"smithy.api#documentation" => "<p>The app's data source.</p>"}))
    CreateAppRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AppType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The app type. Each supported type is associated with a particular layer. For example, PHP\n          applications are associated with a PHP layer. OpsWorks Stacks deploys an application to those instances\n      that are members of the corresponding layer. If your app isn't one of the standard types, or\n      you prefer to implement your own Deploy recipes, specify <code>other</code>.</p>", "smithy.api#required" => {}}))
    CreateAppRequest.add_member(:app_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'AppSource', traits: {"smithy.api#documentation" => "<p>A <code>Source</code> object that specifies the app repository.</p>"}))
    CreateAppRequest.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>The app virtual host settings, with multiple domains separated by commas. For example:\n        <code>'www.example.com, example.com'</code>\n         </p>"}))
    CreateAppRequest.add_member(:enable_ssl, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableSsl', traits: {"smithy.api#documentation" => "<p>Whether to enable SSL for the app.</p>"}))
    CreateAppRequest.add_member(:ssl_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SslConfiguration, location_name: 'SslConfiguration', traits: {"smithy.api#documentation" => "<p>An <code>SslConfiguration</code> object with the SSL configuration.</p>"}))
    CreateAppRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AppAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more user-defined key/value pairs to be added to the stack attributes.</p>"}))
    CreateAppRequest.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'Environment', traits: {"smithy.api#documentation" => "<p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be\n      associated with the app. After you deploy the app, these variables are defined on the\n      associated app server instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment\"> Environment Variables</a>.</p>\n         <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most if not all use cases. Exceeding it will cause an exception with the message, \"Environment: is too large (maximum is 20KB).\"</p>\n         <note>\n            <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p>\n         </note>"}))
    CreateAppRequest.type = Types::CreateAppRequest
    CreateAppResult.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>"}))
    CreateAppResult.type = Types::CreateAppResult
    CreateDeploymentRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID. This parameter is required for app deployments, but not for other deployment commands.</p>"}))
    CreateDeploymentRequest.add_member(:instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'InstanceIds', traits: {"smithy.api#documentation" => "<p>The instance IDs for the deployment targets.</p>"}))
    CreateDeploymentRequest.add_member(:layer_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds', traits: {"smithy.api#documentation" => "<p>The layer IDs for the deployment targets.</p>"}))
    CreateDeploymentRequest.add_member(:command, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCommand, location_name: 'Command', traits: {"smithy.api#documentation" => "<p>A <code>DeploymentCommand</code> object that specifies the deployment command and any\n      associated arguments.</p>", "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A user-defined comment.</p>"}))
    CreateDeploymentRequest.add_member(:custom_json, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson', traits: {"smithy.api#documentation" => "<p>A string that contains user-defined, custom JSON. You can use this parameter to override some corresponding default \n          stack configuration JSON values. The string should be in the following format:</p>\n         <p>\n            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>\n         </p>\n         <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to\n          Modify the Stack Configuration Attributes</a> and \n          <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html\">Overriding Attributes With Custom \n              JSON</a>.</p>"}))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDeploymentResult.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId', traits: {"smithy.api#documentation" => "<p>The deployment ID, which can be used with other requests to identify the deployment.</p>"}))
    CreateDeploymentResult.type = Types::CreateDeploymentResult
    CreateInstanceRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    CreateInstanceRequest.add_member(:layer_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds', traits: {"smithy.api#documentation" => "<p>An array that contains the instance's layer IDs.</p>", "smithy.api#required" => {}}))
    CreateInstanceRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types,\n      open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>.\n      The <b>Size</b> list contains the currently supported types. \n          For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance\n        Families and Types</a>. The parameter values that you use to specify the various types are\n      in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>", "smithy.api#required" => {}}))
    CreateInstanceRequest.add_member(:auto_scaling_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingType, location_name: 'AutoScalingType', traits: {"smithy.api#documentation" => "<p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>"}))
    CreateInstanceRequest.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Hostname', traits: {"smithy.api#documentation" => "<p>The instance host name. The following are character limits for instance host names.</p>\n         <ul>\n            <li>\n               <p>Linux-based instances: 63 characters</p>\n            </li>\n            <li>\n               <p>Windows-based instances: 15 characters</p>\n            </li>\n         </ul>"}))
    CreateInstanceRequest.add_member(:os, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Os', traits: {"smithy.api#documentation" => "<p>The instance's operating system, which must be set to one of the following.</p>\n         <ul>\n            <li>\n               <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, \n              <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>\n            </li>\n            <li>\n               <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CentOS Linux 7</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Red Hat Enterprise Linux 7</code>\n               </p>\n            </li>\n            <li>\n               <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, \n\t\t\t   <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>\n            </li>\n            <li>\n               <p>A custom AMI: <code>Custom</code>.</p>\n            </li>\n         </ul>\n         <p>Not all operating systems are supported with all versions of Chef. For more information about the supported operating systems,\n          see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">OpsWorks Stacks Operating Systems</a>.</p>\n         <p>The default option is the current Amazon Linux version. If you set this parameter to\n        <code>Custom</code>, you must use the <a>CreateInstance</a> action's AmiId parameter to\n      specify the custom AMI that you want to use. Block device mappings are not supported if the value is <code>Custom</code>. \n          For more information about how to use custom AMIs with OpsWorks Stacks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using\n        Custom AMIs</a>.</p>"}))
    CreateInstanceRequest.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmiId', traits: {"smithy.api#documentation" => "<p>A custom AMI ID to be used to create the instance. The AMI should be based on one of the\n      supported operating systems.\n      For more information, see\n      <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using Custom AMIs</a>.</p>\n         <note>\n            <p>If you specify a custom AMI, you must set <code>Os</code> to <code>Custom</code>.</p>\n         </note>"}))
    CreateInstanceRequest.add_member(:ssh_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshKeyName', traits: {"smithy.api#documentation" => "<p>The instance's Amazon EC2 key-pair name.</p>"}))
    CreateInstanceRequest.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The instance Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"}))
    CreateInstanceRequest.add_member(:virtualization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VirtualizationType', traits: {"smithy.api#documentation" => "<p>The instance's virtualization type, <code>paravirtual</code> or <code>hvm</code>.</p>"}))
    CreateInstanceRequest.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The ID of the instance's subnet. If the stack is running in a VPC, you can use this parameter to override the stack's \n          default subnet ID value and direct OpsWorks Stacks to launch the instance in a different subnet.</p>"}))
    CreateInstanceRequest.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'Architecture', traits: {"smithy.api#documentation" => "<p>The instance architecture. The default option is <code>x86_64</code>. Instance types do not\n      necessarily support both architectures. For a list of the architectures that are supported by\n      the different instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance Families and\n        Types</a>.</p>"}))
    CreateInstanceRequest.add_member(:root_device_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'RootDeviceType', traits: {"smithy.api#documentation" => "<p>The instance root device type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"}))
    CreateInstanceRequest.add_member(:block_device_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: 'BlockDeviceMappings', traits: {"smithy.api#documentation" => "<p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block\n      devices. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html\">Block\n        Device Mapping</a>. Note that block device mappings are not supported for custom AMIs.</p>"}))
    CreateInstanceRequest.add_member(:install_updates_on_boot, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot', traits: {"smithy.api#documentation" => "<p>Whether to install operating system and package updates when the instance boots. The default\n      value is <code>true</code>. To control when updates are installed, set this value to\n        <code>false</code>. You must then update your instances manually by using\n        <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or\n      by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the\n      instances. </p>\n         <note>\n            <p>We strongly recommend using the default value of <code>true</code> to ensure that your\n        instances have the latest security updates.</p>\n         </note>"}))
    CreateInstanceRequest.add_member(:ebs_optimized, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EbsOptimized', traits: {"smithy.api#documentation" => "<p>Whether to create an Amazon EBS-optimized instance.</p>"}))
    CreateInstanceRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion', traits: {"smithy.api#documentation" => "<p>The default OpsWorks Stacks agent version. You have the following options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>INHERIT</code> - Use the stack's default agent version setting.</p>\n            </li>\n            <li>\n               <p>\n                  <i>version_number</i> - Use the specified agent version.\n        This value overrides the stack's default setting.\n        To update the agent version, edit the instance configuration and specify a\n        new version.\n             OpsWorks Stacks installs that version on the instance.</p>\n            </li>\n         </ul>\n         <p>The default setting is <code>INHERIT</code>. To specify an agent version,\n      you must use the complete version number, not the abbreviated number shown on the console.\n      For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. \n          AgentVersion cannot be set to Chef 12.2.</p>"}))
    CreateInstanceRequest.add_member(:tenancy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Tenancy', traits: {"smithy.api#documentation" => "<p>The instance's tenancy option. The default option is no tenancy, or if the instance is running in a VPC, \n          inherit tenancy settings from the VPC. The following are valid values for this parameter:  \n          <code>dedicated</code>, <code>default</code>, or <code>host</code>. Because there are costs associated with changes \n          in tenancy options, we recommend that you research tenancy options before choosing them for your instances. \n          For more information about dedicated hosts, see \n          <a href=\"http://aws.amazon.com/ec2/dedicated-hosts/\">Dedicated Hosts Overview</a> and \n          <a href=\"http://aws.amazon.com/ec2/dedicated-hosts/\">Amazon EC2 Dedicated Hosts</a>. \n          For more information about dedicated instances, see \n          <a href=\"https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html\">Dedicated Instances</a> and \n          <a href=\"http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/\">Amazon EC2 Dedicated Instances</a>.</p>"}))
    CreateInstanceRequest.type = Types::CreateInstanceRequest
    CreateInstanceResult.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>"}))
    CreateInstanceResult.type = Types::CreateInstanceResult
    CreateLayerRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The layer stack ID.</p>", "smithy.api#required" => {}}))
    CreateLayerRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The layer type. A stack cannot have more than one built-in layer of the same type. It can have any number of custom layers. \n          Built-in layers are not available in Chef 12 stacks.</p>", "smithy.api#required" => {}}))
    CreateLayerRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The layer name, which is used by the console. Layer names can be a maximum of 32 characters.</p>", "smithy.api#required" => {}}))
    CreateLayerRequest.add_member(:shortname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Shortname', traits: {"smithy.api#documentation" => "<p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by \n          OpsWorks Stacks and by Chef recipes. The short name is also used as the name for the directory where your \n          app files are installed. It can have a maximum of 32 characters, which are limited to the alphanumeric \n          characters, '-', '_', and '.'.</p>\n         <p>Built-in layer short names are defined by OpsWorks Stacks. For more information, see the \n          <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html\">Layer Reference</a>.</p>", "smithy.api#required" => {}}))
    CreateLayerRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more user-defined key-value pairs to be added to the stack attributes.</p>\n         <p>To create a cluster layer, set the <code>EcsClusterArn</code> attribute to the cluster's ARN.</p>"}))
    CreateLayerRequest.add_member(:cloud_watch_logs_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsConfiguration, location_name: 'CloudWatchLogsConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies CloudWatch Logs configuration options for the layer. For more information, \n            see <a>CloudWatchLogsLogStream</a>.</p>"}))
    CreateLayerRequest.add_member(:custom_instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomInstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM profile to be used for the layer's EC2 instances. For more information\n          about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using Identifiers</a>.</p>"}))
    CreateLayerRequest.add_member(:custom_json, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson', traits: {"smithy.api#documentation" => "<p>A JSON-formatted string containing custom stack configuration and deployment attributes\n     to be installed on the layer's instances. For more information, see\n      <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html\">\n          Using Custom JSON</a>. This feature is supported as of version 1.7.42 of the CLI. \n    </p>"}))
    CreateLayerRequest.add_member(:custom_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'CustomSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>An array containing the layer custom security group IDs.</p>"}))
    CreateLayerRequest.add_member(:packages, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Packages', traits: {"smithy.api#documentation" => "<p>An array of <code>Package</code> objects that describes the layer packages.</p>"}))
    CreateLayerRequest.add_member(:volume_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeConfigurations, location_name: 'VolumeConfigurations', traits: {"smithy.api#documentation" => "<p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>"}))
    CreateLayerRequest.add_member(:enable_auto_healing, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableAutoHealing', traits: {"smithy.api#documentation" => "<p>Whether to disable auto healing for the layer.</p>"}))
    CreateLayerRequest.add_member(:auto_assign_elastic_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignElasticIps', traits: {"smithy.api#documentation" => "<p>Whether to automatically assign an <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP\n        address</a> to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit\n        a Layer</a>.</p>"}))
    CreateLayerRequest.add_member(:auto_assign_public_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignPublicIps', traits: {"smithy.api#documentation" => "<p>For stacks that are running in a VPC, whether to automatically assign a public IP address to\n      the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit\n        a Layer</a>.</p>"}))
    CreateLayerRequest.add_member(:custom_recipes, Smithy::Schema::Shapes::ShapeRef.new(shape: Recipes, location_name: 'CustomRecipes', traits: {"smithy.api#documentation" => "<p>A <code>LayerCustomRecipes</code> object that specifies the layer custom recipes.</p>"}))
    CreateLayerRequest.add_member(:install_updates_on_boot, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot', traits: {"smithy.api#documentation" => "<p>Whether to install operating system and package updates when the instance boots. The default\n      value is <code>true</code>. To control when updates are installed, set this value to\n        <code>false</code>. You must then update your instances manually by using\n        <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or\n      by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the\n      instances. </p>\n         <note>\n            <p>To ensure that your\n        instances have the latest security updates, we strongly recommend using the default value of <code>true</code>.</p>\n         </note>"}))
    CreateLayerRequest.add_member(:use_ebs_optimized_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseEbsOptimizedInstances', traits: {"smithy.api#documentation" => "<p>Whether to use Amazon EBS-optimized instances.</p>"}))
    CreateLayerRequest.add_member(:lifecycle_event_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventConfiguration, location_name: 'LifecycleEventConfiguration', traits: {"smithy.api#documentation" => "<p>A <code>LifeCycleEventConfiguration</code> object that you can use to configure the Shutdown event to\n      specify an execution timeout and enable or disable Elastic Load Balancer connection\n      draining.</p>"}))
    CreateLayerRequest.type = Types::CreateLayerRequest
    CreateLayerResult.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>The layer ID.</p>"}))
    CreateLayerResult.type = Types::CreateLayerResult
    CreateStackRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The stack name. Stack names can be a maximum of 64 characters.</p>", "smithy.api#required" => {}}))
    CreateStackRequest.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The stack's Amazon Web Services Region, such as <code>ap-south-1</code>. For more information about\n          Amazon Web Services Regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>\n         <note>\n            <p>In the CLI, this API maps to the <code>--stack-region</code> parameter. If the\n          <code>--stack-region</code> parameter and the CLI common parameter\n                    <code>--region</code> are set to the same value, the stack uses a\n                    <i>regional</i> endpoint. If the <code>--stack-region</code>\n          parameter is not set, but the CLI <code>--region</code> parameter is, this also\n                results in a stack with a <i>regional</i> endpoint. However, if the\n                    <code>--region</code> parameter is set to <code>us-east-1</code>, and the\n                    <code>--stack-region</code> parameter is set to one of the following, then the\n                stack uses a legacy or <i>classic</i> region: <code>us-west-1,\n                    us-west-2, sa-east-1, eu-central-1, eu-west-1, ap-northeast-1, ap-southeast-1,\n                    ap-southeast-2</code>. In this case, the actual API endpoint of the stack is in\n                    <code>us-east-1</code>. Only the preceding regions are supported as classic\n                regions in the <code>us-east-1</code> API endpoint. Because it is a best practice to\n          choose the regional endpoint that is closest to where you manage Amazon Web Services, we recommend\n          that you use regional endpoints for new stacks. The CLI common\n                    <code>--region</code> parameter always specifies a regional API endpoint; it\n          cannot be used to specify a classic OpsWorks Stacks region.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateStackRequest.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The ID of the VPC that the stack is to be launched into. The VPC must be in the stack's region. All instances are launched \n          into this VPC. You cannot change the ID later.</p>\n         <ul>\n            <li>\n               <p>If your account supports EC2-Classic, the default value is <code>no VPC</code>.</p>\n            </li>\n            <li>\n               <p>If your account does not support EC2-Classic, the default value is the default VPC for the specified region.</p>\n            </li>\n         </ul>\n         <p>If the VPC ID corresponds to a default VPC and you have specified either the\n        <code>DefaultAvailabilityZone</code> or the <code>DefaultSubnetId</code> parameter only,\n          OpsWorks Stacks infers the value of the \n          other parameter. If you specify neither parameter, OpsWorks Stacks sets\n      these parameters to the first valid Availability Zone for the specified region and the\n      corresponding default VPC subnet ID, respectively.</p>\n         <p>If you specify a nondefault VPC ID, note the following:</p>\n         <ul>\n            <li>\n               <p>It must belong to a VPC in your account that is in the specified region.</p>\n            </li>\n            <li>\n               <p>You must specify a value for <code>DefaultSubnetId</code>.</p>\n            </li>\n         </ul>\n         <p>For more information about how to use OpsWorks Stacks with a VPC, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-vpc.html\">Running a Stack in a\n        VPC</a>. For more information about default VPC and EC2-Classic, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported\n        Platforms</a>. </p>"}))
    CreateStackRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more user-defined key-value pairs to be added to the stack attributes.</p>"}))
    CreateStackRequest.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The stack's IAM role, which allows OpsWorks Stacks to work with Amazon Web Services\n      resources on your behalf. You must set this parameter to the Amazon Resource Name (ARN) for an\n      existing IAM role. For more information about IAM ARNs, see \n          <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using\n      Identifiers</a>.</p>", "smithy.api#required" => {}}))
    CreateStackRequest.add_member(:default_instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultInstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of an IAM profile that is the default profile for all of the stack's EC2 instances.\n          For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using\n      Identifiers</a>.</p>", "smithy.api#required" => {}}))
    CreateStackRequest.add_member(:default_os, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultOs', traits: {"smithy.api#documentation" => "<p>The stack's default operating system, which is installed on every instance unless you specify a different operating \n          system when you create the instance. You can specify one of the following.</p>\n         <ul>\n            <li>\n               <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, \n              <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>\n            </li>\n            <li>\n               <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CentOS Linux 7</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Red Hat Enterprise Linux 7</code>\n               </p>\n            </li>\n            <li>\n               <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, \n              <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, \n              <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or \n              <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>\n            </li>\n            <li>\n               <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when\n        you create instances. For more\n        information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">\n        Using Custom AMIs</a>.</p>\n            </li>\n         </ul>\n         <p>The default option is the current Amazon Linux version.\n          Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,\n          see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">OpsWorks Stacks Operating Systems</a>.</p>"}))
    CreateStackRequest.add_member(:hostname_theme, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostnameTheme', traits: {"smithy.api#documentation" => "<p>The stack's host name theme, with spaces replaced by underscores. The theme is used to\n      generate host names for the stack's instances. By default, <code>HostnameTheme</code> is set\n      to <code>Layer_Dependent</code>, which creates host names by appending integers to the layer's\n      short name. The other themes are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Baked_Goods</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Clouds</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Europe_Cities</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Fruits</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Greek_Deities_and_Titans</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Legendary_creatures_from_Japan</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Planets_and_Moons</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Roman_Deities</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Scottish_Islands</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>US_Cities</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Wild_Cats</code>\n               </p>\n            </li>\n         </ul>\n         <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a\n      host name based on the current theme.</p>"}))
    CreateStackRequest.add_member(:default_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAvailabilityZone', traits: {"smithy.api#documentation" => "<p>The stack's default Availability Zone, which must be in the specified region. For more\n      information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and\n        Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must\n      be in the same zone. For more information, see the <code>VpcId</code> parameter description.\n    </p>"}))
    CreateStackRequest.add_member(:default_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubnetId', traits: {"smithy.api#documentation" => "<p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the\n        <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify\n      otherwise when you create the instance. If you also specify a value for\n        <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on\n      default values and when this parameter is required, see the <code>VpcId</code> parameter\n      description. </p>"}))
    CreateStackRequest.add_member(:custom_json, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson', traits: {"smithy.api#documentation" => "<p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration \n          attribute values or to pass data to recipes. The string should be in the following format:</p>\n         <p>\n            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>\n         </p>\n         <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to\n        Modify the Stack Configuration Attributes</a>.</p>"}))
    CreateStackRequest.add_member(:configuration_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager', traits: {"smithy.api#documentation" => "<p>The configuration manager. When you create a stack we recommend that you use the configuration manager to specify the \n          Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is \n          currently 12.</p>"}))
    CreateStackRequest.add_member(:chef_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: 'ChefConfiguration', traits: {"smithy.api#documentation" => "<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the\n      Berkshelf version on Chef 11.10 stacks. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>"}))
    CreateStackRequest.add_member(:use_custom_cookbooks, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseCustomCookbooks', traits: {"smithy.api#documentation" => "<p>Whether the stack uses custom cookbooks.</p>"}))
    CreateStackRequest.add_member(:use_opsworks_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOpsworksSecurityGroups', traits: {"smithy.api#documentation" => "<p>Whether to associate the OpsWorks Stacks built-in security groups with the stack's layers.</p>\n         <p>OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are\n      associated with layers by default. With <code>UseOpsworksSecurityGroups</code> you can instead\n      provide your own custom security groups. <code>UseOpsworksSecurityGroups</code> has the\n      following settings: </p>\n         <ul>\n            <li>\n               <p>True - OpsWorks Stacks automatically associates the appropriate built-in security group with each \n              layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot \n              delete the built-in security group.</p>\n            </li>\n            <li>\n               <p>False - OpsWorks Stacks does not associate built-in security groups with layers. You must create \n              appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still \n              manually associate a built-in security group with a layer on creation; custom security groups are required only for those \n              layers that need custom settings.</p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New\n        Stack</a>.</p>"}))
    CreateStackRequest.add_member(:custom_cookbooks_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'CustomCookbooksSource', traits: {"smithy.api#documentation" => "<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, \n            see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or \n            <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>"}))
    CreateStackRequest.add_member(:default_ssh_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSshKeyName', traits: {"smithy.api#documentation" => "<p>A default Amazon EC2 key pair name. The default value is none. If you specify a key pair name, \n          OpsWorks installs the public key on the instance and you can use the private key with an SSH\n      client to log in to the instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html\"> Using SSH to\n        Communicate with an Instance</a> and <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html\"> Managing SSH\n        Access</a>. You can override this setting by specifying a different key pair, or no key\n      pair, when you <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html\">\n        create an instance</a>. </p>"}))
    CreateStackRequest.add_member(:default_root_device_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'DefaultRootDeviceType', traits: {"smithy.api#documentation" => "<p>The default root device type. This value is the default for all instances in the stack,\n      but you can override it when you create an instance. The default option is\n        <code>instance-store</code>. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"}))
    CreateStackRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion', traits: {"smithy.api#documentation" => "<p>The default OpsWorks Stacks agent version. You have the following options:</p>\n         <ul>\n            <li>\n               <p>Auto-update - Set this parameter to <code>LATEST</code>. OpsWorks Stacks\n        automatically installs new agent versions on the stack's instances as soon as\n        they are available.</p>\n            </li>\n            <li>\n               <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, \n             you must edit the stack configuration and specify a new version. OpsWorks Stacks installs \n             that version on the stack's instances.</p>\n            </li>\n         </ul>\n         <p>The default setting is the most recent release of the agent. To specify an agent version,\n      you must use the complete version number, not the abbreviated number shown on the console.\n      For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. AgentVersion cannot be set to Chef 12.2.</p>\n         <note>\n            <p>You can also specify an agent version when you create or update an instance, \n         which overrides the stack's default setting.</p>\n         </note>"}))
    CreateStackRequest.type = Types::CreateStackRequest
    CreateStackResult.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID, which is an opaque string that you use to identify the stack when performing\n      actions such as <code>DescribeStacks</code>.</p>"}))
    CreateStackResult.type = Types::CreateStackResult
    CreateUserProfileRequest.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#documentation" => "<p>The user's IAM ARN; this can also be a federated user's ARN.</p>", "smithy.api#required" => {}}))
    CreateUserProfileRequest.add_member(:ssh_username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshUsername', traits: {"smithy.api#documentation" => "<p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If\n          the specified name includes other punctuation marks, OpsWorks Stacks removes them. For example,\n        <code>my.name</code> is changed to <code>myname</code>. If you do not specify an SSH\n          user name, OpsWorks Stacks generates one from the IAM user name. </p>"}))
    CreateUserProfileRequest.add_member(:ssh_public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshPublicKey', traits: {"smithy.api#documentation" => "<p>The user's public SSH key.</p>"}))
    CreateUserProfileRequest.add_member(:allow_self_management, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSelfManagement', traits: {"smithy.api#documentation" => "<p>Whether users can specify their own SSH public key through the My Settings page. For more\n      information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html\">Setting an IAM\n        User's Public SSH Key</a>.</p>"}))
    CreateUserProfileRequest.type = Types::CreateUserProfileRequest
    CreateUserProfileResult.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#documentation" => "<p>The user's IAM ARN.</p>"}))
    CreateUserProfileResult.type = Types::CreateUserProfileResult
    DailyAutoScalingSchedule.key = Smithy::Schema::Shapes::ShapeRef.new(shape: Hour)
    DailyAutoScalingSchedule.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Switch)
    DataSource.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The data source's type, <code>AutoSelectOpsworksMysqlInstance</code>,\n        <code>OpsworksMysqlInstance</code>, <code>RdsDbInstance</code>, or <code>None</code>.</p>"}))
    DataSource.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The data source's ARN.</p>"}))
    DataSource.add_member(:database_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseName', traits: {"smithy.api#documentation" => "<p>The database name.</p>"}))
    DataSource.type = Types::DataSource
    DataSources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource)
    DeleteAppRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#required" => {}}))
    DeleteAppRequest.type = Types::DeleteAppRequest
    DeleteInstanceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>", "smithy.api#required" => {}}))
    DeleteInstanceRequest.add_member(:delete_elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteElasticIp', traits: {"smithy.api#documentation" => "<p>Whether to delete the instance Elastic IP address.</p>"}))
    DeleteInstanceRequest.add_member(:delete_volumes, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteVolumes', traits: {"smithy.api#documentation" => "<p>Whether to delete the instance's Amazon EBS volumes.</p>"}))
    DeleteInstanceRequest.type = Types::DeleteInstanceRequest
    DeleteLayerRequest.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>The layer ID.</p>", "smithy.api#required" => {}}))
    DeleteLayerRequest.type = Types::DeleteLayerRequest
    DeleteStackRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    DeleteStackRequest.type = Types::DeleteStackRequest
    DeleteUserProfileRequest.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#documentation" => "<p>The user's IAM ARN. This can also be a federated user's ARN.</p>", "smithy.api#required" => {}}))
    DeleteUserProfileRequest.type = Types::DeleteUserProfileRequest
    Deployment.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId', traits: {"smithy.api#documentation" => "<p>The deployment ID.</p>"}))
    Deployment.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>"}))
    Deployment.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>"}))
    Deployment.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>Date when the deployment was created.</p>"}))
    Deployment.add_member(:completed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletedAt', traits: {"smithy.api#documentation" => "<p>Date when the deployment completed.</p>"}))
    Deployment.add_member(:duration, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration', traits: {"smithy.api#documentation" => "<p>The deployment duration.</p>"}))
    Deployment.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#documentation" => "<p>The user's IAM ARN.</p>"}))
    Deployment.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>A user-defined comment.</p>"}))
    Deployment.add_member(:command, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCommand, location_name: 'Command', traits: {"smithy.api#documentation" => "<p>Used to specify a stack or deployment command.</p>"}))
    Deployment.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The deployment status:</p>\n         <ul>\n            <li>\n               <p>running</p>\n            </li>\n            <li>\n               <p>successful</p>\n            </li>\n            <li>\n               <p>failed</p>\n            </li>\n         </ul>"}))
    Deployment.add_member(:custom_json, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson', traits: {"smithy.api#documentation" => "<p>A string that contains user-defined custom JSON. It can be used to override the corresponding default stack configuration \n          attribute values for stack or to pass data to recipes. The string should be in the following format:</p>\n         <p>\n            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>\n         </p>\n         <p>For more information on custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to\n        Modify the Stack Configuration Attributes</a>.</p>"}))
    Deployment.add_member(:instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'InstanceIds', traits: {"smithy.api#documentation" => "<p>The IDs of the target instances.</p>"}))
    Deployment.type = Types::Deployment
    DeploymentCommand.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCommandName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Specifies the operation. You can specify only one command.</p>\n         <p>For stacks, the following commands are available:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>execute_recipes</code>: Execute one or more recipes. To specify the recipes, set an\n          <code>Args</code> parameter named <code>recipes</code> to the list of recipes to be\n        executed. For example, to execute <code>phpapp::appsetup</code>, set <code>Args</code> to\n          <code>{\"recipes\":[\"phpapp::appsetup\"]}</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>install_dependencies</code>: Install the stack's dependencies.</p>\n            </li>\n            <li>\n               <p>\n                  <code>update_custom_cookbooks</code>: Update the stack's custom cookbooks.</p>\n            </li>\n            <li>\n               <p>\n                  <code>update_dependencies</code>: Update the stack's dependencies.</p>\n            </li>\n         </ul>\n         <note>\n            <p>The update_dependencies and install_dependencies commands are supported only for Linux instances. You can run the commands successfully on Windows instances, but they do nothing.</p>\n         </note>\n         <p>For apps, the following commands are available:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>deploy</code>: Deploy an app. Ruby on Rails apps have an optional <code>Args</code>\n        parameter named <code>migrate</code>. Set <code>Args</code> to {\"migrate\":[\"true\"]} to\n        migrate the database. The default setting is {\"migrate\":[\"false\"]}.</p>\n            </li>\n            <li>\n               <p>\n                  <code>rollback</code> Roll the app back to the previous version. When you update an app,\n             OpsWorks Stacks stores the previous version, up to a maximum of five versions. You can use this\n        command to roll an app back as many as four versions.</p>\n            </li>\n            <li>\n               <p>\n                  <code>start</code>: Start the app's web or application server.</p>\n            </li>\n            <li>\n               <p>\n                  <code>stop</code>: Stop the app's web or application server.</p>\n            </li>\n            <li>\n               <p>\n                  <code>restart</code>: Restart the app's web or application server.</p>\n            </li>\n            <li>\n               <p>\n                  <code>undeploy</code>: Undeploy the app.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DeploymentCommand.add_member(:args, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCommandArgs, location_name: 'Args', traits: {"smithy.api#documentation" => "<p>The arguments of those commands that take arguments. It should be set to a JSON object with the following format:</p>\n         <p>\n            <code>{\"arg_name1\" : [\"value1\", \"value2\", ...], \"arg_name2\" : [\"value1\", \"value2\", ...],\n        ...}</code>\n         </p>\n         <p>The <code>update_dependencies</code> command takes two arguments:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>upgrade_os_to</code> - Specifies the Amazon Linux version that you want instances\n        to run, such as <code>Amazon Linux 2</code>. You must also set\n        the <code>allow_reboot</code> argument to true.</p>\n            </li>\n            <li>\n               <p>\n                  <code>allow_reboot</code> - Specifies whether to allow OpsWorks Stacks to reboot the instances if\n        necessary, after installing the updates. This argument can be set to either\n          <code>true</code> or <code>false</code>. The default value is <code>false</code>.</p>\n            </li>\n         </ul>\n         <p>For example, to upgrade an instance to Amazon Linux 2018.03, set <code>Args</code> to the\n      following.</p>\n         <p>\n            <code> { \"upgrade_os_to\":[\"Amazon Linux 2018.03\"], \"allow_reboot\":[\"true\"] } </code>\n         </p>"}))
    DeploymentCommand.type = Types::DeploymentCommand
    DeploymentCommandArgs.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DeploymentCommandArgs.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Strings)
    DeploymentCommandName.add_member(:install_dependencies, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'install_dependencies', traits: {"smithy.api#enumValue" => "install_dependencies"}))
    DeploymentCommandName.add_member(:update_dependencies, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'update_dependencies', traits: {"smithy.api#enumValue" => "update_dependencies"}))
    DeploymentCommandName.add_member(:update_custom_cookbooks, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'update_custom_cookbooks', traits: {"smithy.api#enumValue" => "update_custom_cookbooks"}))
    DeploymentCommandName.add_member(:execute_recipes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'execute_recipes', traits: {"smithy.api#enumValue" => "execute_recipes"}))
    DeploymentCommandName.add_member(:configure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'configure', traits: {"smithy.api#enumValue" => "configure"}))
    DeploymentCommandName.add_member(:setup, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'setup', traits: {"smithy.api#enumValue" => "setup"}))
    DeploymentCommandName.add_member(:deploy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deploy', traits: {"smithy.api#enumValue" => "deploy"}))
    DeploymentCommandName.add_member(:rollback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rollback', traits: {"smithy.api#enumValue" => "rollback"}))
    DeploymentCommandName.add_member(:start, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'start', traits: {"smithy.api#enumValue" => "start"}))
    DeploymentCommandName.add_member(:stop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'stop', traits: {"smithy.api#enumValue" => "stop"}))
    DeploymentCommandName.add_member(:restart, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'restart', traits: {"smithy.api#enumValue" => "restart"}))
    DeploymentCommandName.add_member(:undeploy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'undeploy', traits: {"smithy.api#enumValue" => "undeploy"}))
    Deployments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Deployment)
    DeregisterEcsClusterRequest.add_member(:ecs_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterArn', traits: {"smithy.api#documentation" => "<p>The cluster's Amazon Resource Number (ARN).</p>", "smithy.api#required" => {}}))
    DeregisterEcsClusterRequest.type = Types::DeregisterEcsClusterRequest
    DeregisterElasticIpRequest.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#documentation" => "<p>The Elastic IP address.</p>", "smithy.api#required" => {}}))
    DeregisterElasticIpRequest.type = Types::DeregisterElasticIpRequest
    DeregisterInstanceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>", "smithy.api#required" => {}}))
    DeregisterInstanceRequest.type = Types::DeregisterInstanceRequest
    DeregisterRdsDbInstanceRequest.add_member(:rds_db_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RdsDbInstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon RDS instance's ARN.</p>", "smithy.api#required" => {}}))
    DeregisterRdsDbInstanceRequest.type = Types::DeregisterRdsDbInstanceRequest
    DeregisterVolumeRequest.add_member(:volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId', traits: {"smithy.api#documentation" => "<p>The OpsWorks Stacks volume ID, which is the GUID that OpsWorks Stacks assigned to the instance \n          when you registered the volume with the stack, not the Amazon EC2 volume ID.</p>", "smithy.api#required" => {}}))
    DeregisterVolumeRequest.type = Types::DeregisterVolumeRequest
    DescribeAgentVersionsRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>"}))
    DescribeAgentVersionsRequest.add_member(:configuration_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager', traits: {"smithy.api#documentation" => "<p>The configuration manager.</p>"}))
    DescribeAgentVersionsRequest.type = Types::DescribeAgentVersionsRequest
    DescribeAgentVersionsResult.add_member(:agent_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersions, location_name: 'AgentVersions', traits: {"smithy.api#documentation" => "<p>The agent versions for the specified stack or configuration manager. Note that this value is the complete version number, \n          not the abbreviated number used by the console.</p>"}))
    DescribeAgentVersionsResult.type = Types::DescribeAgentVersionsResult
    DescribeAppsRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The app stack ID. If you use this parameter, <code>DescribeApps</code> returns a description\n      of the apps in the specified stack.</p>"}))
    DescribeAppsRequest.add_member(:app_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'AppIds', traits: {"smithy.api#documentation" => "<p>An array of app IDs for the apps to be described. If you use this parameter,\n        <code>DescribeApps</code> returns a description of the specified apps. Otherwise, it returns\n      a description of every app.</p>"}))
    DescribeAppsRequest.type = Types::DescribeAppsRequest
    DescribeAppsResult.add_member(:apps, Smithy::Schema::Shapes::ShapeRef.new(shape: Apps, location_name: 'Apps', traits: {"smithy.api#documentation" => "<p>An array of <code>App</code> objects that describe the specified apps. </p>"}))
    DescribeAppsResult.type = Types::DescribeAppsResult
    DescribeCommandsRequest.add_member(:deployment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId', traits: {"smithy.api#documentation" => "<p>The deployment ID. If you include this parameter, <code>DescribeCommands</code> returns a\n      description of the commands associated with the specified deployment.</p>"}))
    DescribeCommandsRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID. If you include this parameter, <code>DescribeCommands</code> returns a\n      description of the commands associated with the specified instance.</p>"}))
    DescribeCommandsRequest.add_member(:command_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'CommandIds', traits: {"smithy.api#documentation" => "<p>An array of command IDs. If you include this parameter, <code>DescribeCommands</code> returns\n      a description of the specified commands. Otherwise, it returns a description of every\n      command.</p>"}))
    DescribeCommandsRequest.type = Types::DescribeCommandsRequest
    DescribeCommandsResult.add_member(:commands, Smithy::Schema::Shapes::ShapeRef.new(shape: Commands, location_name: 'Commands', traits: {"smithy.api#documentation" => "<p>An array of <code>Command</code> objects that describe each of the specified commands.</p>"}))
    DescribeCommandsResult.type = Types::DescribeCommandsResult
    DescribeDeploymentsRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID. If you include this parameter, the command returns a\n      description of the commands associated with the specified stack.</p>"}))
    DescribeDeploymentsRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID. If you include this parameter, the command returns a\n      description of the commands associated with the specified app.</p>"}))
    DescribeDeploymentsRequest.add_member(:deployment_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'DeploymentIds', traits: {"smithy.api#documentation" => "<p>An array of deployment IDs to be described. If you include this parameter,\n        the command returns a description of the specified deployments.\n      Otherwise, it returns a description of every deployment.</p>"}))
    DescribeDeploymentsRequest.type = Types::DescribeDeploymentsRequest
    DescribeDeploymentsResult.add_member(:deployments, Smithy::Schema::Shapes::ShapeRef.new(shape: Deployments, location_name: 'Deployments', traits: {"smithy.api#documentation" => "<p>An array of <code>Deployment</code> objects that describe the deployments.</p>"}))
    DescribeDeploymentsResult.type = Types::DescribeDeploymentsResult
    DescribeEcsClustersRequest.add_member(:ecs_cluster_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'EcsClusterArns', traits: {"smithy.api#documentation" => "<p>A list of ARNs, one for each cluster to be described.</p>"}))
    DescribeEcsClustersRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>A stack ID.\n      <code>DescribeEcsClusters</code> returns a description of the cluster that is registered with the stack.</p>"}))
    DescribeEcsClustersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the previous paginated request did not return all of the remaining results,\n      the response object's<code>NextToken</code> parameter value is set to a token.\n      To retrieve the next set of results, call <code>DescribeEcsClusters</code>\n      again and assign that token to the request object's <code>NextToken</code> parameter.\n      If there are no remaining results, the previous response\n      object's <code>NextToken</code> parameter is set to <code>null</code>.</p>"}))
    DescribeEcsClustersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>To receive a paginated response, use this parameter to specify the maximum number\n      of results to be returned with a single call. If the number of available results exceeds this maximum, the\n      response includes a <code>NextToken</code> value that you can assign\n      to the <code>NextToken</code> request parameter to get the next set of results.</p>"}))
    DescribeEcsClustersRequest.type = Types::DescribeEcsClustersRequest
    DescribeEcsClustersResult.add_member(:ecs_clusters, Smithy::Schema::Shapes::ShapeRef.new(shape: EcsClusters, location_name: 'EcsClusters', traits: {"smithy.api#documentation" => "<p>A list of <code>EcsCluster</code> objects containing the cluster descriptions.</p>"}))
    DescribeEcsClustersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a paginated request does not return all of the remaining results, this parameter is set to a token that\n      you can assign to the request object's <code>NextToken</code> parameter to retrieve the next set of results.\n      If the previous paginated request returned all of the remaining results,\n      this parameter is set to <code>null</code>.</p>"}))
    DescribeEcsClustersResult.type = Types::DescribeEcsClustersResult
    DescribeElasticIpsRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID. If you include this parameter, <code>DescribeElasticIps</code> returns a\n      description of the Elastic IP addresses associated with the specified instance.</p>"}))
    DescribeElasticIpsRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>A stack ID. If you include this parameter, <code>DescribeElasticIps</code> returns a\n      description of the Elastic IP addresses that are registered with the specified stack.</p>"}))
    DescribeElasticIpsRequest.add_member(:ips, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Ips', traits: {"smithy.api#documentation" => "<p>An array of Elastic IP addresses to be described. If you include this parameter,\n        <code>DescribeElasticIps</code> returns a description of the specified Elastic IP addresses.\n      Otherwise, it returns a description of every Elastic IP address.</p>"}))
    DescribeElasticIpsRequest.type = Types::DescribeElasticIpsRequest
    DescribeElasticIpsResult.add_member(:elastic_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticIps, location_name: 'ElasticIps', traits: {"smithy.api#documentation" => "<p>An <code>ElasticIps</code> object that describes the specified Elastic IP addresses.</p>"}))
    DescribeElasticIpsResult.type = Types::DescribeElasticIpsResult
    DescribeElasticLoadBalancersRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>A stack ID. The action describes the stack's Elastic Load Balancing instances.</p>"}))
    DescribeElasticLoadBalancersRequest.add_member(:layer_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds', traits: {"smithy.api#documentation" => "<p>A list of layer IDs. The action describes the Elastic Load Balancing instances for the specified layers.</p>"}))
    DescribeElasticLoadBalancersRequest.type = Types::DescribeElasticLoadBalancersRequest
    DescribeElasticLoadBalancersResult.add_member(:elastic_load_balancers, Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticLoadBalancers, location_name: 'ElasticLoadBalancers', traits: {"smithy.api#documentation" => "<p>A list of <code>ElasticLoadBalancer</code> objects that describe the specified Elastic Load Balancing\n      instances.</p>"}))
    DescribeElasticLoadBalancersResult.type = Types::DescribeElasticLoadBalancersResult
    DescribeInstancesRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>A stack ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of\n      the instances associated with the specified stack.</p>"}))
    DescribeInstancesRequest.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>A layer ID. If you use this parameter, <code>DescribeInstances</code> returns descriptions of\n          the instances associated with the specified layer.</p>"}))
    DescribeInstancesRequest.add_member(:instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'InstanceIds', traits: {"smithy.api#documentation" => "<p>An array of instance IDs to be described. If you use this parameter,\n        <code>DescribeInstances</code> returns a description of the specified instances. Otherwise,\n      it returns a description of every instance.</p>"}))
    DescribeInstancesRequest.type = Types::DescribeInstancesRequest
    DescribeInstancesResult.add_member(:instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Instances, location_name: 'Instances', traits: {"smithy.api#documentation" => "<p>An array of <code>Instance</code> objects that describe the instances.</p>"}))
    DescribeInstancesResult.type = Types::DescribeInstancesResult
    DescribeLayersRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>"}))
    DescribeLayersRequest.add_member(:layer_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds', traits: {"smithy.api#documentation" => "<p>An array of layer IDs that specify the layers to be described. If you omit this parameter,\n        <code>DescribeLayers</code> returns a description of every layer in the specified stack.</p>"}))
    DescribeLayersRequest.type = Types::DescribeLayersRequest
    DescribeLayersResult.add_member(:layers, Smithy::Schema::Shapes::ShapeRef.new(shape: Layers, location_name: 'Layers', traits: {"smithy.api#documentation" => "<p>An array of <code>Layer</code> objects that describe the layers.</p>"}))
    DescribeLayersResult.type = Types::DescribeLayersResult
    DescribeLoadBasedAutoScalingRequest.add_member(:layer_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds', traits: {"smithy.api#documentation" => "<p>An array of layer IDs.</p>", "smithy.api#required" => {}}))
    DescribeLoadBasedAutoScalingRequest.type = Types::DescribeLoadBasedAutoScalingRequest
    DescribeLoadBasedAutoScalingResult.add_member(:load_based_auto_scaling_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBasedAutoScalingConfigurations, location_name: 'LoadBasedAutoScalingConfigurations', traits: {"smithy.api#documentation" => "<p>An array of <code>LoadBasedAutoScalingConfiguration</code> objects that describe each layer's\n      configuration.</p>"}))
    DescribeLoadBasedAutoScalingResult.type = Types::DescribeLoadBasedAutoScalingResult
    DescribeMyUserProfileResult.add_member(:user_profile, Smithy::Schema::Shapes::ShapeRef.new(shape: SelfUserProfile, location_name: 'UserProfile', traits: {"smithy.api#documentation" => "<p>A <code>UserProfile</code> object that describes the user's SSH information.</p>"}))
    DescribeMyUserProfileResult.type = Types::DescribeMyUserProfileResult
    DescribeOperatingSystemsResponse.add_member(:operating_systems, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystems, location_name: 'OperatingSystems', traits: {"smithy.api#documentation" => "<p>Contains information in response to a <code>DescribeOperatingSystems</code> request.</p>"}))
    DescribeOperatingSystemsResponse.type = Types::DescribeOperatingSystemsResponse
    DescribePermissionsRequest.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#documentation" => "<p>The user's IAM ARN. This can also be a federated user's ARN. For more information about IAM \n          ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using\n      Identifiers</a>.</p>"}))
    DescribePermissionsRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>"}))
    DescribePermissionsRequest.type = Types::DescribePermissionsRequest
    DescribePermissionsResult.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Permissions, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>An array of <code>Permission</code> objects that describe the stack permissions.</p>\n         <ul>\n            <li>\n               <p>If the request object contains only a stack ID, the array contains a\n             <code>Permission</code> object with permissions for each of the stack IAM ARNs.</p>\n            </li>\n            <li>\n               <p>If the request object contains only an IAM ARN, the array contains a\n          <code>Permission</code> object with permissions for each of the user's stack IDs.</p>\n            </li>\n            <li>\n               <p>If the request contains a stack ID and an IAM ARN, the array contains a single\n              <code>Permission</code> object with permissions for the specified stack and IAM ARN.</p>\n            </li>\n         </ul>"}))
    DescribePermissionsResult.type = Types::DescribePermissionsResult
    DescribeRaidArraysRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID. If you use this parameter, <code>DescribeRaidArrays</code> returns\n      descriptions of the RAID arrays associated with the specified instance. </p>"}))
    DescribeRaidArraysRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>"}))
    DescribeRaidArraysRequest.add_member(:raid_array_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'RaidArrayIds', traits: {"smithy.api#documentation" => "<p>An array of RAID array IDs. If you use this parameter, <code>DescribeRaidArrays</code>\n      returns descriptions of the specified arrays. Otherwise, it returns a description of every\n      array.</p>"}))
    DescribeRaidArraysRequest.type = Types::DescribeRaidArraysRequest
    DescribeRaidArraysResult.add_member(:raid_arrays, Smithy::Schema::Shapes::ShapeRef.new(shape: RaidArrays, location_name: 'RaidArrays', traits: {"smithy.api#documentation" => "<p>A <code>RaidArrays</code> object that describes the specified RAID arrays.</p>"}))
    DescribeRaidArraysResult.type = Types::DescribeRaidArraysResult
    DescribeRdsDbInstancesRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The ID of the stack with which the instances are registered. The operation returns descriptions of all registered \n          Amazon RDS instances.</p>", "smithy.api#required" => {}}))
    DescribeRdsDbInstancesRequest.add_member(:rds_db_instance_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'RdsDbInstanceArns', traits: {"smithy.api#documentation" => "<p>An array containing the ARNs of the instances to be described.</p>"}))
    DescribeRdsDbInstancesRequest.type = Types::DescribeRdsDbInstancesRequest
    DescribeRdsDbInstancesResult.add_member(:rds_db_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbInstances, location_name: 'RdsDbInstances', traits: {"smithy.api#documentation" => "<p>An a array of <code>RdsDbInstance</code> objects that describe the instances.</p>"}))
    DescribeRdsDbInstancesResult.type = Types::DescribeRdsDbInstancesResult
    DescribeServiceErrorsRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID. If you use this parameter, <code>DescribeServiceErrors</code> returns\n      descriptions of the errors associated with the specified stack.</p>"}))
    DescribeServiceErrorsRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID. If you use this parameter, <code>DescribeServiceErrors</code> returns\n      descriptions of the errors associated with the specified instance.</p>"}))
    DescribeServiceErrorsRequest.add_member(:service_error_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'ServiceErrorIds', traits: {"smithy.api#documentation" => "<p>An array of service error IDs. If you use this parameter, <code>DescribeServiceErrors</code>\n      returns descriptions of the specified errors. Otherwise, it returns a description of every\n      error.</p>"}))
    DescribeServiceErrorsRequest.type = Types::DescribeServiceErrorsRequest
    DescribeServiceErrorsResult.add_member(:service_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceErrors, location_name: 'ServiceErrors', traits: {"smithy.api#documentation" => "<p>An array of <code>ServiceError</code> objects that describe the specified service errors.</p>"}))
    DescribeServiceErrorsResult.type = Types::DescribeServiceErrorsResult
    DescribeStackProvisioningParametersRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    DescribeStackProvisioningParametersRequest.type = Types::DescribeStackProvisioningParametersRequest
    DescribeStackProvisioningParametersResult.add_member(:agent_installer_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentInstallerUrl', traits: {"smithy.api#documentation" => "<p>The OpsWorks Stacks agent installer's URL.</p>"}))
    DescribeStackProvisioningParametersResult.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Parameters, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>An embedded object that contains the provisioning parameters.</p>"}))
    DescribeStackProvisioningParametersResult.type = Types::DescribeStackProvisioningParametersResult
    DescribeStackSummaryRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    DescribeStackSummaryRequest.type = Types::DescribeStackSummaryRequest
    DescribeStackSummaryResult.add_member(:stack_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: StackSummary, location_name: 'StackSummary', traits: {"smithy.api#documentation" => "<p>A <code>StackSummary</code> object that contains the results.</p>"}))
    DescribeStackSummaryResult.type = Types::DescribeStackSummaryResult
    DescribeStacksRequest.add_member(:stack_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'StackIds', traits: {"smithy.api#documentation" => "<p>An array of stack IDs that specify the stacks to be described. If you omit this parameter, and have permissions to get information \n          about all stacks, <code>DescribeStacks</code> returns a description of every stack. If the IAM policy that is attached to an IAM \n      user limits the <code>DescribeStacks</code> action to specific stack ARNs, this parameter is required, and the user must specify a stack ARN that is allowed by the policy. \n          Otherwise, <code>DescribeStacks</code> returns an <code>AccessDenied</code> error.</p>"}))
    DescribeStacksRequest.type = Types::DescribeStacksRequest
    DescribeStacksResult.add_member(:stacks, Smithy::Schema::Shapes::ShapeRef.new(shape: Stacks, location_name: 'Stacks', traits: {"smithy.api#documentation" => "<p>An array of <code>Stack</code> objects that describe the stacks.</p>"}))
    DescribeStacksResult.type = Types::DescribeStacksResult
    DescribeTimeBasedAutoScalingRequest.add_member(:instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'InstanceIds', traits: {"smithy.api#documentation" => "<p>An array of instance IDs.</p>", "smithy.api#required" => {}}))
    DescribeTimeBasedAutoScalingRequest.type = Types::DescribeTimeBasedAutoScalingRequest
    DescribeTimeBasedAutoScalingResult.add_member(:time_based_auto_scaling_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeBasedAutoScalingConfigurations, location_name: 'TimeBasedAutoScalingConfigurations', traits: {"smithy.api#documentation" => "<p>An array of <code>TimeBasedAutoScalingConfiguration</code> objects that describe the\n      configuration for the specified instances.</p>"}))
    DescribeTimeBasedAutoScalingResult.type = Types::DescribeTimeBasedAutoScalingResult
    DescribeUserProfilesRequest.add_member(:iam_user_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'IamUserArns', traits: {"smithy.api#documentation" => "<p>An array of IAM or federated user ARNs that identify the users to be described.</p>"}))
    DescribeUserProfilesRequest.type = Types::DescribeUserProfilesRequest
    DescribeUserProfilesResult.add_member(:user_profiles, Smithy::Schema::Shapes::ShapeRef.new(shape: UserProfiles, location_name: 'UserProfiles', traits: {"smithy.api#documentation" => "<p>A <code>Users</code> object that describes the specified users.</p>"}))
    DescribeUserProfilesResult.type = Types::DescribeUserProfilesResult
    DescribeVolumesRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID. If you use this parameter, <code>DescribeVolumes</code> returns descriptions\n      of the volumes associated with the specified instance.</p>"}))
    DescribeVolumesRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>A stack ID. The action describes the stack's registered Amazon EBS volumes.</p>"}))
    DescribeVolumesRequest.add_member(:raid_array_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RaidArrayId', traits: {"smithy.api#documentation" => "<p>The RAID array ID. If you use this parameter, <code>DescribeVolumes</code> returns\n      descriptions of the volumes associated with the specified RAID array.</p>"}))
    DescribeVolumesRequest.add_member(:volume_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'VolumeIds', traits: {"smithy.api#documentation" => "<p>Am array of volume IDs. If you use this parameter, <code>DescribeVolumes</code> returns\n      descriptions of the specified volumes. Otherwise, it returns a description of every\n      volume.</p>"}))
    DescribeVolumesRequest.type = Types::DescribeVolumesRequest
    DescribeVolumesResult.add_member(:volumes, Smithy::Schema::Shapes::ShapeRef.new(shape: Volumes, location_name: 'Volumes', traits: {"smithy.api#documentation" => "<p>An array of volume IDs.</p>"}))
    DescribeVolumesResult.type = Types::DescribeVolumesResult
    DetachElasticLoadBalancerRequest.add_member(:elastic_load_balancer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticLoadBalancerName', traits: {"smithy.api#documentation" => "<p>The Elastic Load Balancing instance's name.</p>", "smithy.api#required" => {}}))
    DetachElasticLoadBalancerRequest.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>The ID of the layer that the Elastic Load Balancing instance is attached to.</p>", "smithy.api#required" => {}}))
    DetachElasticLoadBalancerRequest.type = Types::DetachElasticLoadBalancerRequest
    DisassociateElasticIpRequest.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#documentation" => "<p>The Elastic IP address.</p>", "smithy.api#required" => {}}))
    DisassociateElasticIpRequest.type = Types::DisassociateElasticIpRequest
    EbsBlockDevice.add_member(:snapshot_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotId', traits: {"smithy.api#documentation" => "<p>The snapshot ID.</p>"}))
    EbsBlockDevice.add_member(:iops, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Iops', traits: {"smithy.api#documentation" => "<p>The number of I/O operations per second (IOPS) that the volume supports. For more\n      information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html\">EbsBlockDevice</a>.</p>"}))
    EbsBlockDevice.add_member(:volume_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VolumeSize', traits: {"smithy.api#documentation" => "<p>The volume size, in GiB. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EbsBlockDevice.html\">EbsBlockDevice</a>.</p>"}))
    EbsBlockDevice.add_member(:volume_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeType, location_name: 'VolumeType', traits: {"smithy.api#documentation" => "<p>The volume type. <code>gp2</code> for General Purpose (SSD) volumes, <code>io1</code> for\n          Provisioned IOPS (SSD) volumes, <code>st1</code> for Throughput Optimized hard disk drives (HDD), <code>sc1</code> for Cold HDD,and <code>standard</code> for Magnetic volumes.</p>\n         <p>If you specify the <code>io1</code> volume type, you must also specify a value for the <code>Iops</code> attribute. \n          The maximum ratio of provisioned IOPS to requested volume size (in GiB) is 50:1. Amazon Web Services uses the default volume size (in GiB) \n          specified in the AMI attributes to set IOPS to 50 x (volume size).</p>"}))
    EbsBlockDevice.add_member(:delete_on_termination, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteOnTermination', traits: {"smithy.api#documentation" => "<p>Whether the volume is deleted on instance termination.</p>"}))
    EbsBlockDevice.type = Types::EbsBlockDevice
    EcsCluster.add_member(:ecs_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterArn', traits: {"smithy.api#documentation" => "<p>The cluster's ARN.</p>"}))
    EcsCluster.add_member(:ecs_cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterName', traits: {"smithy.api#documentation" => "<p>The cluster name.</p>"}))
    EcsCluster.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>"}))
    EcsCluster.add_member(:registered_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'RegisteredAt', traits: {"smithy.api#documentation" => "<p>The time and date that the cluster was registered with the stack.</p>"}))
    EcsCluster.type = Types::EcsCluster
    EcsClusters.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EcsCluster)
    ElasticIp.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>The IP address.</p>"}))
    ElasticIp.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name, which can be a maximum of 32 characters.</p>"}))
    ElasticIp.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain.</p>"}))
    ElasticIp.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"}))
    ElasticIp.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the instance that the address is attached to.</p>"}))
    ElasticIp.type = Types::ElasticIp
    ElasticIps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticIp)
    ElasticLoadBalancer.add_member(:elastic_load_balancer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticLoadBalancerName', traits: {"smithy.api#documentation" => "<p>The Elastic Load Balancing instance name.</p>"}))
    ElasticLoadBalancer.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The instance's Amazon Web Services Region.</p>"}))
    ElasticLoadBalancer.add_member(:dns_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DnsName', traits: {"smithy.api#documentation" => "<p>The instance's public DNS name.</p>"}))
    ElasticLoadBalancer.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The ID of the stack with which the instance is associated.</p>"}))
    ElasticLoadBalancer.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>The ID of the layer to which the instance is attached.</p>"}))
    ElasticLoadBalancer.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The VPC ID.</p>"}))
    ElasticLoadBalancer.add_member(:availability_zones, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'AvailabilityZones', traits: {"smithy.api#documentation" => "<p>A list of Availability Zones.</p>"}))
    ElasticLoadBalancer.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>A list of subnet IDs, if the stack is running in a VPC.</p>"}))
    ElasticLoadBalancer.add_member(:ec2_instance_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Ec2InstanceIds', traits: {"smithy.api#documentation" => "<p>A list of the EC2 instances for which the Elastic Load Balancing instance is managing traffic.</p>"}))
    ElasticLoadBalancer.type = Types::ElasticLoadBalancer
    ElasticLoadBalancers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticLoadBalancer)
    EnvironmentVariable.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>(Required) The environment variable's name, which can consist of up to 64 characters and must be specified. \n          The name can contain upper- and lowercase letters, numbers, and underscores (_), but it must start with a letter or underscore.</p>", "smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>(Optional) The environment variable's value, which can be left empty. If you specify a value, \n          it can contain up to 256 characters, which must all be printable.</p>", "smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:secure, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Secure', traits: {"smithy.api#documentation" => "<p>(Optional) Whether the variable's value is returned by the <a>DescribeApps</a> action.\n      To hide an environment variable's value, set <code>Secure</code> to <code>true</code>.\n        <code>DescribeApps</code> returns <code>*****FILTERED*****</code> instead of the actual\n      value. The default value for <code>Secure</code> is <code>false</code>. </p>"}))
    EnvironmentVariable.type = Types::EnvironmentVariable
    EnvironmentVariables.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariable)
    GetHostnameSuggestionRequest.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>The layer ID.</p>", "smithy.api#required" => {}}))
    GetHostnameSuggestionRequest.type = Types::GetHostnameSuggestionRequest
    GetHostnameSuggestionResult.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>The layer ID.</p>"}))
    GetHostnameSuggestionResult.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Hostname', traits: {"smithy.api#documentation" => "<p>The generated host name.</p>"}))
    GetHostnameSuggestionResult.type = Types::GetHostnameSuggestionResult
    GrantAccessRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance's OpsWorks Stacks ID.</p>", "smithy.api#required" => {}}))
    GrantAccessRequest.add_member(:valid_for_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidForInMinutes, location_name: 'ValidForInMinutes', traits: {"smithy.api#documentation" => "<p>The length of time (in minutes) that the grant is valid. When the grant expires at the end of this period, \n          the user will no longer be able to use the credentials to log in. If the user is logged in at the time, they are \n          logged out.</p>"}))
    GrantAccessRequest.type = Types::GrantAccessRequest
    GrantAccessResult.add_member(:temporary_credential, Smithy::Schema::Shapes::ShapeRef.new(shape: TemporaryCredential, location_name: 'TemporaryCredential', traits: {"smithy.api#documentation" => "<p>A <code>TemporaryCredential</code> object that contains the data needed to log in to the\n      instance by RDP clients, such as the Microsoft Remote Desktop Connection.</p>"}))
    GrantAccessResult.type = Types::GrantAccessResult
    Instance.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion', traits: {"smithy.api#documentation" => "<p>The agent version. This parameter is set to <code>INHERIT</code> if\n      the instance inherits the default stack setting or to a\n      a version number for a fixed agent version.</p>"}))
    Instance.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmiId', traits: {"smithy.api#documentation" => "<p>A custom AMI ID to be used to create the instance. For more\n      information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Instances</a>\n         </p>"}))
    Instance.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'Architecture', traits: {"smithy.api#documentation" => "<p>The instance architecture: \"i386\" or \"x86_64\".</p>"}))
    Instance.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The instance's Amazon Resource Number (ARN).</p>"}))
    Instance.add_member(:auto_scaling_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingType, location_name: 'AutoScalingType', traits: {"smithy.api#documentation" => "<p>For load-based or time-based instances, the type.</p>"}))
    Instance.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The instance Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"}))
    Instance.add_member(:block_device_mappings, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: 'BlockDeviceMappings', traits: {"smithy.api#documentation" => "<p>An array of <code>BlockDeviceMapping</code> objects that specify the instance's block device\n      mappings.</p>"}))
    Instance.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time that the instance was created.</p>"}))
    Instance.add_member(:ebs_optimized, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EbsOptimized', traits: {"smithy.api#documentation" => "<p>Whether this is an Amazon EBS-optimized instance.</p>"}))
    Instance.add_member(:ec2_instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ec2InstanceId', traits: {"smithy.api#documentation" => "<p>The ID of the associated Amazon EC2 instance.</p>"}))
    Instance.add_member(:ecs_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterArn', traits: {"smithy.api#documentation" => "<p>For container instances, the Amazon ECS cluster's ARN.</p>"}))
    Instance.add_member(:ecs_container_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsContainerInstanceArn', traits: {"smithy.api#documentation" => "<p>For container instances, the instance's ARN.</p>"}))
    Instance.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#documentation" => "<p>The instance <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP address</a>.</p>"}))
    Instance.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Hostname', traits: {"smithy.api#documentation" => "<p>The instance host name. The following are character limits for instance host names.</p>\n         <ul>\n            <li>\n               <p>Linux-based instances: 63 characters</p>\n            </li>\n            <li>\n               <p>Windows-based instances: 15 characters</p>\n            </li>\n         </ul>"}))
    Instance.add_member(:infrastructure_class, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InfrastructureClass', traits: {"smithy.api#documentation" => "<p>For registered instances, the infrastructure class: <code>ec2</code> or\n        <code>on-premises</code>.</p>"}))
    Instance.add_member(:install_updates_on_boot, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot', traits: {"smithy.api#documentation" => "<p>Whether to install operating system and package updates when the instance boots. The default\n      value is <code>true</code>. If this value is set to <code>false</code>, you must update\n      instances manually by using <a>CreateDeployment</a> to run the\n        <code>update_dependencies</code> stack command or\n      by manually running <code>yum</code> (Amazon\n      Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p>\n         <note>\n            <p>We strongly recommend using the default value of <code>true</code> to ensure that your\n        instances have the latest security updates.</p>\n         </note>"}))
    Instance.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>"}))
    Instance.add_member(:instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The ARN of the instance's IAM profile. For more information about IAM ARNs, \n          see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using\n      Identifiers</a>.</p>"}))
    Instance.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type, such as <code>t2.micro</code>.</p>"}))
    Instance.add_member(:last_service_error_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastServiceErrorId', traits: {"smithy.api#documentation" => "<p>The ID of the last service error. For more information, call\n      <a>DescribeServiceErrors</a>.</p>"}))
    Instance.add_member(:layer_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds', traits: {"smithy.api#documentation" => "<p>An array containing the instance layer IDs.</p>"}))
    Instance.add_member(:os, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Os', traits: {"smithy.api#documentation" => "<p>The instance's operating system.</p>"}))
    Instance.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform', traits: {"smithy.api#documentation" => "<p>The instance's platform.</p>"}))
    Instance.add_member(:private_dns, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateDns', traits: {"smithy.api#documentation" => "<p>The instance's private DNS name.</p>"}))
    Instance.add_member(:private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateIp', traits: {"smithy.api#documentation" => "<p>The instance's private IP address.</p>"}))
    Instance.add_member(:public_dns, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicDns', traits: {"smithy.api#documentation" => "<p>The instance public DNS name.</p>"}))
    Instance.add_member(:public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicIp', traits: {"smithy.api#documentation" => "<p>The instance public IP address.</p>"}))
    Instance.add_member(:registered_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RegisteredBy', traits: {"smithy.api#documentation" => "<p>For registered instances, who performed the registration.</p>"}))
    Instance.add_member(:reported_agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReportedAgentVersion', traits: {"smithy.api#documentation" => "<p>The instance's reported OpsWorks Stacks agent version.</p>"}))
    Instance.add_member(:reported_os, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportedOs, location_name: 'ReportedOs', traits: {"smithy.api#documentation" => "<p>For registered instances, the reported operating system.</p>"}))
    Instance.add_member(:root_device_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'RootDeviceType', traits: {"smithy.api#documentation" => "<p>The instance's root device type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"}))
    Instance.add_member(:root_device_volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RootDeviceVolumeId', traits: {"smithy.api#documentation" => "<p>The root device volume ID.</p>"}))
    Instance.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>An array containing the instance security group IDs.</p>"}))
    Instance.add_member(:ssh_host_dsa_key_fingerprint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshHostDsaKeyFingerprint', traits: {"smithy.api#documentation" => "<p>The SSH key's Deep Security Agent (DSA) fingerprint.</p>"}))
    Instance.add_member(:ssh_host_rsa_key_fingerprint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshHostRsaKeyFingerprint', traits: {"smithy.api#documentation" => "<p>The SSH key's RSA fingerprint.</p>"}))
    Instance.add_member(:ssh_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshKeyName', traits: {"smithy.api#documentation" => "<p>The instance's Amazon EC2 key-pair name.</p>"}))
    Instance.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>"}))
    Instance.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The instance status:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>booting</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>connection_lost</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>online</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>pending</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>rebooting</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>requested</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>running_setup</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>setup_failed</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>shutting_down</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>start_failed</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>stop_failed</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>stopped</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>stopping</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>terminated</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>terminating</code>\n               </p>\n            </li>\n         </ul>"}))
    Instance.add_member(:subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetId', traits: {"smithy.api#documentation" => "<p>The instance's subnet ID; applicable only if the stack is running in a VPC.</p>"}))
    Instance.add_member(:tenancy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Tenancy', traits: {"smithy.api#documentation" => "<p>The instance's tenancy option, such as <code>dedicated</code> or <code>host</code>.</p>"}))
    Instance.add_member(:virtualization_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualizationType, location_name: 'VirtualizationType', traits: {"smithy.api#documentation" => "<p>The instance's virtualization type: <code>paravirtual</code> or <code>hvm</code>.</p>"}))
    Instance.type = Types::Instance
    InstanceIdentity.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Document', traits: {"smithy.api#documentation" => "<p>A JSON document that contains the metadata.</p>"}))
    InstanceIdentity.add_member(:signature, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Signature', traits: {"smithy.api#documentation" => "<p>A signature that can be used to verify the document's accuracy and authenticity.</p>"}))
    InstanceIdentity.type = Types::InstanceIdentity
    Instances.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Instance)
    InstancesCount.add_member(:assigning, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Assigning', traits: {"smithy.api#documentation" => "<p>The number of instances in the Assigning state.</p>"}))
    InstancesCount.add_member(:booting, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Booting', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>booting</code> status.</p>"}))
    InstancesCount.add_member(:connection_lost, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ConnectionLost', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>connection_lost</code> status.</p>"}))
    InstancesCount.add_member(:deregistering, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Deregistering', traits: {"smithy.api#documentation" => "<p>The number of instances in the Deregistering state.</p>"}))
    InstancesCount.add_member(:online, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Online', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>online</code> status.</p>"}))
    InstancesCount.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Pending', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>pending</code> status.</p>"}))
    InstancesCount.add_member(:rebooting, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Rebooting', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>rebooting</code> status.</p>"}))
    InstancesCount.add_member(:registered, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Registered', traits: {"smithy.api#documentation" => "<p>The number of instances in the Registered state.</p>"}))
    InstancesCount.add_member(:registering, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Registering', traits: {"smithy.api#documentation" => "<p>The number of instances in the Registering state.</p>"}))
    InstancesCount.add_member(:requested, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Requested', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>requested</code> status.</p>"}))
    InstancesCount.add_member(:running_setup, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RunningSetup', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>running_setup</code> status.</p>"}))
    InstancesCount.add_member(:setup_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SetupFailed', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>setup_failed</code> status.</p>"}))
    InstancesCount.add_member(:shutting_down, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ShuttingDown', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>shutting_down</code> status.</p>"}))
    InstancesCount.add_member(:start_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartFailed', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>start_failed</code> status.</p>"}))
    InstancesCount.add_member(:stop_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StopFailed', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>stop_failed</code> status.</p>"}))
    InstancesCount.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Stopped', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>stopped</code> status.</p>"}))
    InstancesCount.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Stopping', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>stopping</code> status.</p>"}))
    InstancesCount.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Terminated', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>terminated</code> status.</p>"}))
    InstancesCount.add_member(:terminating, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Terminating', traits: {"smithy.api#documentation" => "<p>The number of instances with <code>terminating</code> status.</p>"}))
    InstancesCount.add_member(:unassigning, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Unassigning', traits: {"smithy.api#documentation" => "<p>The number of instances in the Unassigning state.</p>"}))
    InstancesCount.type = Types::InstancesCount
    Layer.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of a layer.</p>"}))
    Layer.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The layer stack ID.</p>"}))
    Layer.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>The layer ID.</p>"}))
    Layer.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The layer type.</p>"}))
    Layer.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The layer name. Layer names can be a maximum of 32 characters.</p>"}))
    Layer.add_member(:shortname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Shortname', traits: {"smithy.api#documentation" => "<p>The layer short name.</p>"}))
    Layer.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The layer attributes.</p>\n         <p>For the <code>HaproxyStatsPassword</code>, <code>MysqlRootPassword</code>, and\n          <code>GangliaPassword</code> attributes, OpsWorks Stacks returns <code>*****FILTERED*****</code>\n      instead of the actual value</p>\n         <p>For an ECS Cluster layer, OpsWorks Stacks the <code>EcsClusterArn</code> attribute is set to the cluster's ARN.</p>"}))
    Layer.add_member(:cloud_watch_logs_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsConfiguration, location_name: 'CloudWatchLogsConfiguration', traits: {"smithy.api#documentation" => "<p>The Amazon CloudWatch Logs configuration settings for the layer.</p>"}))
    Layer.add_member(:custom_instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomInstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The ARN of the default IAM profile to be used for the layer's EC2 instances. For more\n          information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using\n      Identifiers</a>.</p>"}))
    Layer.add_member(:custom_json, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson', traits: {"smithy.api#documentation" => "<p>A JSON formatted string containing the layer's custom stack configuration and deployment attributes.</p>"}))
    Layer.add_member(:custom_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'CustomSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>An array containing the layer's custom security group IDs.</p>"}))
    Layer.add_member(:default_security_group_names, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'DefaultSecurityGroupNames', traits: {"smithy.api#documentation" => "<p>An array containing the layer's security group names.</p>"}))
    Layer.add_member(:packages, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Packages', traits: {"smithy.api#documentation" => "<p>An array of <code>Package</code> objects that describe the layer's packages.</p>"}))
    Layer.add_member(:volume_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeConfigurations, location_name: 'VolumeConfigurations', traits: {"smithy.api#documentation" => "<p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>"}))
    Layer.add_member(:enable_auto_healing, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableAutoHealing', traits: {"smithy.api#documentation" => "<p>Whether auto healing is disabled for the layer.</p>"}))
    Layer.add_member(:auto_assign_elastic_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignElasticIps', traits: {"smithy.api#documentation" => "<p>Whether to automatically assign an <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP\n        address</a> to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit\n        a Layer</a>.</p>"}))
    Layer.add_member(:auto_assign_public_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignPublicIps', traits: {"smithy.api#documentation" => "<p>For stacks that are running in a VPC, whether to automatically assign a public IP address to\n      the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit\n        a Layer</a>.</p>"}))
    Layer.add_member(:default_recipes, Smithy::Schema::Shapes::ShapeRef.new(shape: Recipes, location_name: 'DefaultRecipes', traits: {"smithy.api#documentation" => "<p>OpsWorks Stacks supports five lifecycle events: <b>setup</b>, <b>configuration</b>, \n            <b>deploy</b>, <b>undeploy</b>, and <b>shutdown</b>.\n            For each layer, OpsWorks Stacks runs a set of standard recipes for each event. You can also provide \n            custom recipes for any or all layers and events. OpsWorks Stacks runs custom event recipes after the standard \n            recipes. <code>LayerCustomRecipes</code> specifies the custom recipes for a particular layer to be run in response to each of \n            the five events.</p>\n         <p>To specify a recipe, use the cookbook's directory name in the repository followed by two colons and the recipe \n            name, which is the recipe's file name without the <code>.rb</code> extension. For example: <code>phpapp2::dbsetup</code> specifies the \n            <code>dbsetup.rb</code> recipe in the repository's <code>phpapp2</code> folder.</p>"}))
    Layer.add_member(:custom_recipes, Smithy::Schema::Shapes::ShapeRef.new(shape: Recipes, location_name: 'CustomRecipes', traits: {"smithy.api#documentation" => "<p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>"}))
    Layer.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>Date when the layer was created.</p>"}))
    Layer.add_member(:install_updates_on_boot, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot', traits: {"smithy.api#documentation" => "<p>Whether to install operating system and package updates when the instance boots. The default\n      value is <code>true</code>. If this value is set to <code>false</code>, you must then update\n      your instances manually by using <a>CreateDeployment</a> to run the\n        <code>update_dependencies</code> stack command or manually running <code>yum</code> (Amazon\n      Linux) or <code>apt-get</code> (Ubuntu) on the instances. </p>\n         <note>\n            <p>We strongly recommend using the default value of <code>true</code>, to ensure that your\n        instances have the latest security updates.</p>\n         </note>"}))
    Layer.add_member(:use_ebs_optimized_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseEbsOptimizedInstances', traits: {"smithy.api#documentation" => "<p>Whether the layer uses Amazon EBS-optimized instances.</p>"}))
    Layer.add_member(:lifecycle_event_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventConfiguration, location_name: 'LifecycleEventConfiguration', traits: {"smithy.api#documentation" => "<p>A <code>LifeCycleEventConfiguration</code> object that specifies the Shutdown event\n      configuration.</p>"}))
    Layer.type = Types::Layer
    LayerAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAttributesKeys)
    LayerAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LayerAttributesKeys.add_member(:ecs_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EcsClusterArn', traits: {"smithy.api#enumValue" => "EcsClusterArn"}))
    LayerAttributesKeys.add_member(:enable_haproxy_stats, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnableHaproxyStats', traits: {"smithy.api#enumValue" => "EnableHaproxyStats"}))
    LayerAttributesKeys.add_member(:haproxy_stats_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HaproxyStatsUrl', traits: {"smithy.api#enumValue" => "HaproxyStatsUrl"}))
    LayerAttributesKeys.add_member(:haproxy_stats_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HaproxyStatsUser', traits: {"smithy.api#enumValue" => "HaproxyStatsUser"}))
    LayerAttributesKeys.add_member(:haproxy_stats_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HaproxyStatsPassword', traits: {"smithy.api#enumValue" => "HaproxyStatsPassword"}))
    LayerAttributesKeys.add_member(:haproxy_health_check_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HaproxyHealthCheckUrl', traits: {"smithy.api#enumValue" => "HaproxyHealthCheckUrl"}))
    LayerAttributesKeys.add_member(:haproxy_health_check_method, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HaproxyHealthCheckMethod', traits: {"smithy.api#enumValue" => "HaproxyHealthCheckMethod"}))
    LayerAttributesKeys.add_member(:mysql_root_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MysqlRootPassword', traits: {"smithy.api#enumValue" => "MysqlRootPassword"}))
    LayerAttributesKeys.add_member(:mysql_root_password_ubiquitous, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MysqlRootPasswordUbiquitous', traits: {"smithy.api#enumValue" => "MysqlRootPasswordUbiquitous"}))
    LayerAttributesKeys.add_member(:ganglia_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GangliaUrl', traits: {"smithy.api#enumValue" => "GangliaUrl"}))
    LayerAttributesKeys.add_member(:ganglia_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GangliaUser', traits: {"smithy.api#enumValue" => "GangliaUser"}))
    LayerAttributesKeys.add_member(:ganglia_password, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GangliaPassword', traits: {"smithy.api#enumValue" => "GangliaPassword"}))
    LayerAttributesKeys.add_member(:memcached_memory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MemcachedMemory', traits: {"smithy.api#enumValue" => "MemcachedMemory"}))
    LayerAttributesKeys.add_member(:nodejs_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NodejsVersion', traits: {"smithy.api#enumValue" => "NodejsVersion"}))
    LayerAttributesKeys.add_member(:ruby_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RubyVersion', traits: {"smithy.api#enumValue" => "RubyVersion"}))
    LayerAttributesKeys.add_member(:rubygems_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RubygemsVersion', traits: {"smithy.api#enumValue" => "RubygemsVersion"}))
    LayerAttributesKeys.add_member(:manage_bundler, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ManageBundler', traits: {"smithy.api#enumValue" => "ManageBundler"}))
    LayerAttributesKeys.add_member(:bundler_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BundlerVersion', traits: {"smithy.api#enumValue" => "BundlerVersion"}))
    LayerAttributesKeys.add_member(:rails_stack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RailsStack', traits: {"smithy.api#enumValue" => "RailsStack"}))
    LayerAttributesKeys.add_member(:passenger_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PassengerVersion', traits: {"smithy.api#enumValue" => "PassengerVersion"}))
    LayerAttributesKeys.add_member(:jvm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Jvm', traits: {"smithy.api#enumValue" => "Jvm"}))
    LayerAttributesKeys.add_member(:jvm_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JvmVersion', traits: {"smithy.api#enumValue" => "JvmVersion"}))
    LayerAttributesKeys.add_member(:jvm_options, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JvmOptions', traits: {"smithy.api#enumValue" => "JvmOptions"}))
    LayerAttributesKeys.add_member(:java_app_server, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JavaAppServer', traits: {"smithy.api#enumValue" => "JavaAppServer"}))
    LayerAttributesKeys.add_member(:java_app_server_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JavaAppServerVersion', traits: {"smithy.api#enumValue" => "JavaAppServerVersion"}))
    LayerType.add_member(:aws_flow_ruby, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_flow_ruby', traits: {"smithy.api#enumValue" => "aws-flow-ruby"}))
    LayerType.add_member(:ecs_cluster, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ecs_cluster', traits: {"smithy.api#enumValue" => "ecs-cluster"}))
    LayerType.add_member(:java_app, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'java_app', traits: {"smithy.api#enumValue" => "java-app"}))
    LayerType.add_member(:lb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'lb', traits: {"smithy.api#enumValue" => "lb"}))
    LayerType.add_member(:web, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'web', traits: {"smithy.api#enumValue" => "web"}))
    LayerType.add_member(:php_app, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'php_app', traits: {"smithy.api#enumValue" => "php-app"}))
    LayerType.add_member(:rails_app, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rails_app', traits: {"smithy.api#enumValue" => "rails-app"}))
    LayerType.add_member(:nodejs_app, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'nodejs_app', traits: {"smithy.api#enumValue" => "nodejs-app"}))
    LayerType.add_member(:memcached, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'memcached', traits: {"smithy.api#enumValue" => "memcached"}))
    LayerType.add_member(:db_master, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_master', traits: {"smithy.api#enumValue" => "db-master"}))
    LayerType.add_member(:monitoring_master, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'monitoring_master', traits: {"smithy.api#enumValue" => "monitoring-master"}))
    LayerType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'custom', traits: {"smithy.api#enumValue" => "custom"}))
    Layers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Layer)
    LifecycleEventConfiguration.add_member(:shutdown, Smithy::Schema::Shapes::ShapeRef.new(shape: ShutdownEventConfiguration, location_name: 'Shutdown', traits: {"smithy.api#documentation" => "<p>A <code>ShutdownEventConfiguration</code> object that specifies the Shutdown event\n      configuration.</p>"}))
    LifecycleEventConfiguration.type = Types::LifecycleEventConfiguration
    ListTagsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The stack or layer's Amazon Resource Number (ARN).</p>", "smithy.api#required" => {}}))
    ListTagsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Do not use. A validation exception occurs if you add a <code>MaxResults</code> parameter to a <code>ListTagsRequest</code> \n          call.\n      </p>"}))
    ListTagsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Do not use. A validation exception occurs if you add a <code>NextToken</code> parameter to a <code>ListTagsRequest</code> \n          call.\n      </p>"}))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A set of key-value pairs that contain tag keys and tag values that are attached to a stack or layer.</p>"}))
    ListTagsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a paginated request does not return all of the remaining results, this parameter is set to a token that\n            you can assign to the request object's <code>NextToken</code> parameter to get the next set of results.\n            If the previous paginated request returned all of the remaining results,\n            this parameter is set to <code>null</code>.\n      </p>"}))
    ListTagsResult.type = Types::ListTagsResult
    LoadBasedAutoScalingConfiguration.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>The layer ID.</p>"}))
    LoadBasedAutoScalingConfiguration.add_member(:enable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enable', traits: {"smithy.api#documentation" => "<p>Whether load-based auto scaling is enabled for the layer.</p>"}))
    LoadBasedAutoScalingConfiguration.add_member(:up_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: 'UpScaling', traits: {"smithy.api#documentation" => "<p>An <code>AutoScalingThresholds</code> object that describes the upscaling configuration,\n          which defines how and when OpsWorks Stacks increases the number of instances.</p>"}))
    LoadBasedAutoScalingConfiguration.add_member(:down_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: 'DownScaling', traits: {"smithy.api#documentation" => "<p>An <code>AutoScalingThresholds</code> object that describes the downscaling configuration,\n          which defines how and when OpsWorks Stacks reduces the number of instances.</p>"}))
    LoadBasedAutoScalingConfiguration.type = Types::LoadBasedAutoScalingConfiguration
    LoadBasedAutoScalingConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBasedAutoScalingConfiguration)
    OperatingSystem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the operating system, such as <code>Amazon Linux 2</code>.</p>"}))
    OperatingSystem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of a supported operating system, such as <code>Amazon Linux 2</code>.</p>"}))
    OperatingSystem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of a supported operating system, either <code>Linux</code> or <code>Windows</code>.</p>"}))
    OperatingSystem.add_member(:configuration_managers, Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemConfigurationManagers, location_name: 'ConfigurationManagers', traits: {"smithy.api#documentation" => "<p>Supported configuration manager name and versions for an OpsWorks Stacks operating system.</p>"}))
    OperatingSystem.add_member(:reported_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReportedName', traits: {"smithy.api#documentation" => "<p>A short name for the operating system manufacturer.</p>"}))
    OperatingSystem.add_member(:reported_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReportedVersion', traits: {"smithy.api#documentation" => "<p>The version of the operating system, including the release and edition, if applicable.</p>"}))
    OperatingSystem.add_member(:supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Supported', traits: {"smithy.api#documentation" => "<p>Indicates that an operating system is not supported for new instances.</p>"}))
    OperatingSystem.type = Types::OperatingSystem
    OperatingSystemConfigurationManager.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the configuration manager, which is Chef.</p>"}))
    OperatingSystemConfigurationManager.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The versions of the configuration manager that are supported by an operating system.</p>"}))
    OperatingSystemConfigurationManager.type = Types::OperatingSystemConfigurationManager
    OperatingSystemConfigurationManagers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemConfigurationManager)
    OperatingSystems.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystem)
    Parameters.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Parameters.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Permission.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>A stack ID.</p>"}))
    Permission.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for an Identity and Access Management (IAM) role. For more\n          information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using\n      Identifiers</a>.</p>"}))
    Permission.add_member(:allow_ssh, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSsh', traits: {"smithy.api#documentation" => "<p>Whether the user can use SSH.</p>"}))
    Permission.add_member(:allow_sudo, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSudo', traits: {"smithy.api#documentation" => "<p>Whether the user can use <b>sudo</b>.</p>"}))
    Permission.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Level', traits: {"smithy.api#documentation" => "<p>The user's permission level, which must be the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>deny</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>show</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>deploy</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>manage</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>iam_only</code>\n               </p>\n            </li>\n         </ul>\n         <p>For more information on the permissions associated with these levels, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>\n         </p>"}))
    Permission.type = Types::Permission
    Permissions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Permission)
    RaidArray.add_member(:raid_array_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RaidArrayId', traits: {"smithy.api#documentation" => "<p>The array ID.</p>"}))
    RaidArray.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>"}))
    RaidArray.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The array name.</p>"}))
    RaidArray.add_member(:raid_level, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RaidLevel', traits: {"smithy.api#documentation" => "<p>The <a href=\"http://en.wikipedia.org/wiki/Standard_RAID_levels\">RAID level</a>.</p>"}))
    RaidArray.add_member(:number_of_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfDisks', traits: {"smithy.api#documentation" => "<p>The number of disks in the array.</p>"}))
    RaidArray.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Size', traits: {"smithy.api#documentation" => "<p>The array's size.</p>"}))
    RaidArray.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Device', traits: {"smithy.api#documentation" => "<p>The array's Linux device. For example /dev/mdadm0.</p>"}))
    RaidArray.add_member(:mount_point, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MountPoint', traits: {"smithy.api#documentation" => "<p>The array's mount point.</p>"}))
    RaidArray.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The array's Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"}))
    RaidArray.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>When the RAID array was created.</p>"}))
    RaidArray.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>"}))
    RaidArray.add_member(:volume_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeType', traits: {"smithy.api#documentation" => "<p>The volume type, standard or PIOPS.</p>"}))
    RaidArray.add_member(:iops, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Iops', traits: {"smithy.api#documentation" => "<p>For PIOPS volumes, the IOPS per disk.</p>"}))
    RaidArray.type = Types::RaidArray
    RaidArrays.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RaidArray)
    RdsDbInstance.add_member(:rds_db_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RdsDbInstanceArn', traits: {"smithy.api#documentation" => "<p>The instance's ARN.</p>"}))
    RdsDbInstance.add_member(:db_instance_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbInstanceIdentifier', traits: {"smithy.api#documentation" => "<p>The database instance identifier.</p>"}))
    RdsDbInstance.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The master user name.</p>"}))
    RdsDbInstance.add_member(:db_password, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbPassword', traits: {"smithy.api#documentation" => "<p>OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>"}))
    RdsDbInstance.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The instance's Amazon Web Services Region.</p>"}))
    RdsDbInstance.add_member(:address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address', traits: {"smithy.api#documentation" => "<p>The instance's address.</p>"}))
    RdsDbInstance.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>The instance's database engine.</p>"}))
    RdsDbInstance.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The ID of the stack with which the instance is registered.</p>"}))
    RdsDbInstance.add_member(:missing_on_rds, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MissingOnRds', traits: {"smithy.api#documentation" => "<p>Set to <code>true</code> if OpsWorks Stacks is unable to discover the Amazon RDS instance. \n          OpsWorks Stacks attempts\n      to discover the instance only once. If this value is set to <code>true</code>, you must\n      deregister the instance, and then register it again.</p>"}))
    RdsDbInstance.type = Types::RdsDbInstance
    RdsDbInstances.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbInstance)
    RebootInstanceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>", "smithy.api#required" => {}}))
    RebootInstanceRequest.type = Types::RebootInstanceRequest
    Recipes.add_member(:setup, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Setup', traits: {"smithy.api#documentation" => "<p>An array of custom recipe names to be run following a <code>setup</code> event.</p>"}))
    Recipes.add_member(:configure, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Configure', traits: {"smithy.api#documentation" => "<p>An array of custom recipe names to be run following a <code>configure</code> event.</p>"}))
    Recipes.add_member(:deploy, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Deploy', traits: {"smithy.api#documentation" => "<p>An array of custom recipe names to be run following a <code>deploy</code> event.</p>"}))
    Recipes.add_member(:undeploy, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Undeploy', traits: {"smithy.api#documentation" => "<p>An array of custom recipe names to be run following a <code>undeploy</code> event.</p>"}))
    Recipes.add_member(:shutdown, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Shutdown', traits: {"smithy.api#documentation" => "<p>An array of custom recipe names to be run following a <code>shutdown</code> event.</p>"}))
    Recipes.type = Types::Recipes
    RegisterEcsClusterRequest.add_member(:ecs_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterArn', traits: {"smithy.api#documentation" => "<p>The cluster's ARN.</p>", "smithy.api#required" => {}}))
    RegisterEcsClusterRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    RegisterEcsClusterRequest.type = Types::RegisterEcsClusterRequest
    RegisterEcsClusterResult.add_member(:ecs_cluster_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterArn', traits: {"smithy.api#documentation" => "<p>The cluster's ARN.</p>"}))
    RegisterEcsClusterResult.type = Types::RegisterEcsClusterResult
    RegisterElasticIpRequest.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#documentation" => "<p>The Elastic IP address.</p>", "smithy.api#required" => {}}))
    RegisterElasticIpRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    RegisterElasticIpRequest.type = Types::RegisterElasticIpRequest
    RegisterElasticIpResult.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#documentation" => "<p>The Elastic IP address.</p>"}))
    RegisterElasticIpResult.type = Types::RegisterElasticIpResult
    RegisterInstanceRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The ID of the stack that the instance is to be registered with.</p>", "smithy.api#required" => {}}))
    RegisterInstanceRequest.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Hostname', traits: {"smithy.api#documentation" => "<p>The instance's host name. The following are character limits for instance host names.</p>\n         <ul>\n            <li>\n               <p>Linux-based instances: 63 characters</p>\n            </li>\n            <li>\n               <p>Windows-based instances: 15 characters</p>\n            </li>\n         </ul>"}))
    RegisterInstanceRequest.add_member(:public_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicIp', traits: {"smithy.api#documentation" => "<p>The instance's public IP address.</p>"}))
    RegisterInstanceRequest.add_member(:private_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateIp', traits: {"smithy.api#documentation" => "<p>The instance's private IP address.</p>"}))
    RegisterInstanceRequest.add_member(:rsa_public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RsaPublicKey', traits: {"smithy.api#documentation" => "<p>The instances public RSA key. This key is used to encrypt communication between the instance and the service.</p>"}))
    RegisterInstanceRequest.add_member(:rsa_public_key_fingerprint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RsaPublicKeyFingerprint', traits: {"smithy.api#documentation" => "<p>The instances public RSA key fingerprint.</p>"}))
    RegisterInstanceRequest.add_member(:instance_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdentity, location_name: 'InstanceIdentity', traits: {"smithy.api#documentation" => "<p>An InstanceIdentity object that contains the instance's identity.</p>"}))
    RegisterInstanceRequest.type = Types::RegisterInstanceRequest
    RegisterInstanceResult.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The registered instance's OpsWorks Stacks ID.</p>"}))
    RegisterInstanceResult.type = Types::RegisterInstanceResult
    RegisterRdsDbInstanceRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    RegisterRdsDbInstanceRequest.add_member(:rds_db_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RdsDbInstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon RDS instance's ARN.</p>", "smithy.api#required" => {}}))
    RegisterRdsDbInstanceRequest.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The database's master user name.</p>", "smithy.api#required" => {}}))
    RegisterRdsDbInstanceRequest.add_member(:db_password, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbPassword', traits: {"smithy.api#documentation" => "<p>The database password.</p>", "smithy.api#required" => {}}))
    RegisterRdsDbInstanceRequest.type = Types::RegisterRdsDbInstanceRequest
    RegisterVolumeRequest.add_member(:ec2_volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ec2VolumeId', traits: {"smithy.api#documentation" => "<p>The Amazon EBS volume ID.</p>"}))
    RegisterVolumeRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    RegisterVolumeRequest.type = Types::RegisterVolumeRequest
    RegisterVolumeResult.add_member(:volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId', traits: {"smithy.api#documentation" => "<p>The volume ID.</p>"}))
    RegisterVolumeResult.type = Types::RegisterVolumeResult
    ReportedOs.add_member(:family, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Family', traits: {"smithy.api#documentation" => "<p>The operating system family.</p>"}))
    ReportedOs.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The operating system name.</p>"}))
    ReportedOs.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The operating system version.</p>"}))
    ReportedOs.type = Types::ReportedOs
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The exception message.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RootDeviceType.add_member(:ebs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ebs', traits: {"smithy.api#enumValue" => "ebs"}))
    RootDeviceType.add_member(:instance_store, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'instance_store', traits: {"smithy.api#enumValue" => "instance-store"}))
    SelfUserProfile.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#documentation" => "<p>The user's IAM ARN.</p>"}))
    SelfUserProfile.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The user's name.</p>"}))
    SelfUserProfile.add_member(:ssh_username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshUsername', traits: {"smithy.api#documentation" => "<p>The user's SSH user name.</p>"}))
    SelfUserProfile.add_member(:ssh_public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshPublicKey', traits: {"smithy.api#documentation" => "<p>The user's SSH public key.</p>"}))
    SelfUserProfile.type = Types::SelfUserProfile
    ServiceError.add_member(:service_error_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceErrorId', traits: {"smithy.api#documentation" => "<p>The error ID.</p>"}))
    ServiceError.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>"}))
    ServiceError.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>"}))
    ServiceError.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The error type.</p>"}))
    ServiceError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message that describes the error.</p>"}))
    ServiceError.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>When the error occurred.</p>"}))
    ServiceError.type = Types::ServiceError
    ServiceErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceError)
    SetLoadBasedAutoScalingRequest.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>The layer ID.</p>", "smithy.api#required" => {}}))
    SetLoadBasedAutoScalingRequest.add_member(:enable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enable', traits: {"smithy.api#documentation" => "<p>Enables load-based auto scaling for the layer.</p>"}))
    SetLoadBasedAutoScalingRequest.add_member(:up_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: 'UpScaling', traits: {"smithy.api#documentation" => "<p>An <code>AutoScalingThresholds</code> object with the upscaling threshold configuration. If\n          the load exceeds these thresholds for a specified amount of time, OpsWorks Stacks starts a specified\n      number of instances.</p>"}))
    SetLoadBasedAutoScalingRequest.add_member(:down_scaling, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: 'DownScaling', traits: {"smithy.api#documentation" => "<p>An <code>AutoScalingThresholds</code> object with the downscaling threshold configuration. If\n          the load falls below these thresholds for a specified amount of time, OpsWorks Stacks stops a specified\n      number of instances.</p>"}))
    SetLoadBasedAutoScalingRequest.type = Types::SetLoadBasedAutoScalingRequest
    SetPermissionRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    SetPermissionRequest.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#documentation" => "<p>The user's IAM ARN. This can also be a federated user's ARN.</p>", "smithy.api#required" => {}}))
    SetPermissionRequest.add_member(:allow_ssh, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSsh', traits: {"smithy.api#documentation" => "<p>The user is allowed to use SSH to communicate with the instance.</p>"}))
    SetPermissionRequest.add_member(:allow_sudo, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSudo', traits: {"smithy.api#documentation" => "<p>The user is allowed to use <b>sudo</b> to elevate privileges.</p>"}))
    SetPermissionRequest.add_member(:level, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Level', traits: {"smithy.api#documentation" => "<p>The user's permission level, which must be set to one of the following strings. You cannot set your own permissions level.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>deny</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>show</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>deploy</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>manage</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>iam_only</code>\n               </p>\n            </li>\n         </ul>\n         <p>For more information about the permissions associated with these levels, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html\">Managing User Permissions</a>.</p>"}))
    SetPermissionRequest.type = Types::SetPermissionRequest
    SetTimeBasedAutoScalingRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>", "smithy.api#required" => {}}))
    SetTimeBasedAutoScalingRequest.add_member(:auto_scaling_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklyAutoScalingSchedule, location_name: 'AutoScalingSchedule', traits: {"smithy.api#documentation" => "<p>An <code>AutoScalingSchedule</code> with the instance schedule.</p>"}))
    SetTimeBasedAutoScalingRequest.type = Types::SetTimeBasedAutoScalingRequest
    ShutdownEventConfiguration.add_member(:execution_timeout, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ExecutionTimeout', traits: {"smithy.api#documentation" => "<p>The time, in seconds, that OpsWorks Stacks waits after triggering a Shutdown event before \n          shutting down an instance.</p>"}))
    ShutdownEventConfiguration.add_member(:delay_until_elb_connections_drained, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DelayUntilElbConnectionsDrained', traits: {"smithy.api#documentation" => "<p>Whether to enable Elastic Load Balancing connection draining. For more information, see <a href=\"https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#conn-drain\">Connection Draining</a>\n         </p>"}))
    ShutdownEventConfiguration.type = Types::ShutdownEventConfiguration
    Source.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The repository type.</p>"}))
    Source.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url', traits: {"smithy.api#documentation" => "<p>The source URL. The following is an example of an Amazon S3 source \n          URL:  <code>https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz</code>.</p>"}))
    Source.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>This parameter depends on the repository type.</p>\n         <ul>\n            <li>\n               <p>For Amazon S3 bundles, set <code>Username</code> to the appropriate IAM access key\n        ID.</p>\n            </li>\n            <li>\n               <p>For HTTP bundles, Git repositories, and Subversion repositories, set <code>Username</code>\n        to the user name.</p>\n            </li>\n         </ul>"}))
    Source.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>When included in a request, the parameter depends on the repository type.</p>\n         <ul>\n            <li>\n               <p>For Amazon S3 bundles, set <code>Password</code> to the appropriate IAM secret access\n        key.</p>\n            </li>\n            <li>\n               <p>For HTTP bundles and Subversion repositories, set <code>Password</code> to the\n        password.</p>\n            </li>\n         </ul>\n         <p>For more information on how to safely handle IAM credentials, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html\">https://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html</a>.</p>\n         <p>In responses, OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>"}))
    Source.add_member(:ssh_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshKey', traits: {"smithy.api#documentation" => "<p>In requests, the repository's SSH key.</p>\n         <p>In responses, OpsWorks Stacks returns <code>*****FILTERED*****</code> instead of the actual value.</p>"}))
    Source.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Revision', traits: {"smithy.api#documentation" => "<p>The application's version. OpsWorks Stacks enables you to easily deploy new versions of an application. \n          One of the simplest approaches is to have branches or revisions in your repository that represent different \n          versions that can potentially be deployed.</p>"}))
    Source.type = Types::Source
    SourceType.add_member(:git, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'git', traits: {"smithy.api#enumValue" => "git"}))
    SourceType.add_member(:svn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'svn', traits: {"smithy.api#enumValue" => "svn"}))
    SourceType.add_member(:archive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'archive', traits: {"smithy.api#enumValue" => "archive"}))
    SourceType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 's3', traits: {"smithy.api#enumValue" => "s3"}))
    SslConfiguration.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Certificate', traits: {"smithy.api#documentation" => "<p>The contents of the certificate's domain.crt file.</p>", "smithy.api#required" => {}}))
    SslConfiguration.add_member(:private_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateKey', traits: {"smithy.api#documentation" => "<p>The private key; the contents of the certificate's domain.kex file.</p>", "smithy.api#required" => {}}))
    SslConfiguration.add_member(:chain, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Chain', traits: {"smithy.api#documentation" => "<p>Optional. Can be used to specify an intermediate certificate authority key or client authentication.</p>"}))
    SslConfiguration.type = Types::SslConfiguration
    Stack.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>"}))
    Stack.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The stack name. Stack names can be a maximum of 64 characters.</p>"}))
    Stack.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The stack's ARN.</p>"}))
    Stack.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The stack Amazon Web Services Region, such as <code>ap-northeast-2</code>. For more information about \n          Amazon Web Services Regions, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"}))
    Stack.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The VPC ID; applicable only if the stack is running in a VPC.</p>"}))
    Stack.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The stack's attributes.</p>"}))
    Stack.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The stack Identity and Access Management (IAM) role.</p>"}))
    Stack.add_member(:default_instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultInstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances.\n          For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using\n      Identifiers</a>.</p>"}))
    Stack.add_member(:default_os, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultOs', traits: {"smithy.api#documentation" => "<p>The stack's default operating system.</p>"}))
    Stack.add_member(:hostname_theme, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostnameTheme', traits: {"smithy.api#documentation" => "<p>The stack host name theme, with spaces replaced by underscores.</p>"}))
    Stack.add_member(:default_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAvailabilityZone', traits: {"smithy.api#documentation" => "<p>The stack's default Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"}))
    Stack.add_member(:default_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubnetId', traits: {"smithy.api#documentation" => "<p>The default subnet ID; applicable only if the stack is running in a VPC.</p>"}))
    Stack.add_member(:custom_json, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson', traits: {"smithy.api#documentation" => "<p>A JSON object that contains user-defined attributes to be added to the stack configuration and deployment attributes. \n          You can use custom JSON to override the corresponding default stack configuration attribute values or to pass data to recipes. \n          The string should be in the following format:</p>\n         <p>\n            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>\n         </p>\n         <p>For more information on custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to\n        Modify the Stack Configuration Attributes</a>.</p>"}))
    Stack.add_member(:configuration_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager', traits: {"smithy.api#documentation" => "<p>The configuration manager.</p>"}))
    Stack.add_member(:chef_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: 'ChefConfiguration', traits: {"smithy.api#documentation" => "<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the\n      Berkshelf version. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>"}))
    Stack.add_member(:use_custom_cookbooks, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseCustomCookbooks', traits: {"smithy.api#documentation" => "<p>Whether the stack uses custom cookbooks.</p>"}))
    Stack.add_member(:use_opsworks_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOpsworksSecurityGroups', traits: {"smithy.api#documentation" => "<p>Whether the stack automatically associates the OpsWorks Stacks built-in security groups with the stack's layers.</p>"}))
    Stack.add_member(:custom_cookbooks_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'CustomCookbooksSource', traits: {"smithy.api#documentation" => "<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, \n            see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or \n            <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>"}))
    Stack.add_member(:default_ssh_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSshKeyName', traits: {"smithy.api#documentation" => "<p>A default Amazon EC2 key pair for the stack's instances. You can override this value when you create or \n          update an instance.</p>"}))
    Stack.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date when the stack was created.</p>"}))
    Stack.add_member(:default_root_device_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'DefaultRootDeviceType', traits: {"smithy.api#documentation" => "<p>The default root device type. This value is used by default for all instances in the stack,\n      but you can override it when you create an instance. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.\n      </p>"}))
    Stack.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion', traits: {"smithy.api#documentation" => "<p>The agent version. This parameter is set to <code>LATEST</code> for auto-update.\n      or a version number for a fixed agent version.</p>"}))
    Stack.type = Types::Stack
    StackAttributes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttributesKeys)
    StackAttributes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    StackAttributesKeys.add_member(:color, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Color', traits: {"smithy.api#enumValue" => "Color"}))
    StackConfigurationManager.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name. This parameter must be set to <code>Chef</code>.</p>"}))
    StackConfigurationManager.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version', traits: {"smithy.api#documentation" => "<p>The Chef version. This parameter must be set to 12, 11.10, or 11.4 for Linux stacks, and to 12.2 for Windows stacks. \n          The default value for Linux stacks is 12.</p>"}))
    StackConfigurationManager.type = Types::StackConfigurationManager
    StackSummary.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>"}))
    StackSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The stack name.</p>"}))
    StackSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The stack's ARN.</p>"}))
    StackSummary.add_member(:layers_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'LayersCount', traits: {"smithy.api#documentation" => "<p>The number of layers.</p>"}))
    StackSummary.add_member(:apps_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AppsCount', traits: {"smithy.api#documentation" => "<p>The number of apps.</p>"}))
    StackSummary.add_member(:instances_count, Smithy::Schema::Shapes::ShapeRef.new(shape: InstancesCount, location_name: 'InstancesCount', traits: {"smithy.api#documentation" => "<p>An <code>InstancesCount</code> object with the number of instances in each status.</p>"}))
    StackSummary.type = Types::StackSummary
    Stacks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Stack)
    StartInstanceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>", "smithy.api#required" => {}}))
    StartInstanceRequest.type = Types::StartInstanceRequest
    StartStackRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    StartStackRequest.type = Types::StartStackRequest
    StopInstanceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>", "smithy.api#required" => {}}))
    StopInstanceRequest.add_member(:force, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force', traits: {"smithy.api#documentation" => "<p>Specifies whether to force an instance to stop. If the instance's root device type is <code>ebs</code>, or EBS-backed, \n            adding the <code>Force</code> parameter to the <code>StopInstances</code> API call disassociates the OpsWorks Stacks \n            instance from EC2, and forces deletion of <i>only</i> the OpsWorks Stacks instance. \n            You must also delete the formerly-associated instance in EC2 after troubleshooting and replacing the OpsWorks Stacks \n            instance with a new one.</p>"}))
    StopInstanceRequest.type = Types::StopInstanceRequest
    StopStackRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    StopStackRequest.type = Types::StopStackRequest
    Strings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagKeys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The stack or layer's Amazon Resource Number (ARN).</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values that are attached to a stack or layer.</p>\n         <ul>\n            <li>\n               <p>The key cannot be empty.</p>\n            </li>\n            <li>\n               <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, \n              or the following special characters: <code>+ - = . _ : /</code>\n               </p>\n            </li>\n            <li>\n               <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, \n              or the following special characters: <code>+ - = . _ : /</code>\n               </p>\n            </li>\n            <li>\n               <p>Leading and trailing white spaces are trimmed from both the key and value.</p>\n            </li>\n            <li>\n               <p>A maximum of 40 tags is allowed for any resource.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TemporaryCredential.add_member(:username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username', traits: {"smithy.api#documentation" => "<p>The user name.</p>"}))
    TemporaryCredential.add_member(:password, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Password', traits: {"smithy.api#documentation" => "<p>The password.</p>"}))
    TemporaryCredential.add_member(:valid_for_in_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ValidForInMinutes', traits: {"smithy.api#documentation" => "<p>The length of time (in minutes) that the grant is valid. When the grant expires, at the end of this period, \n          the user will no longer be able to use the credentials to log in. If they are logged in at the time, they are \n          automatically logged out.</p>"}))
    TemporaryCredential.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance's OpsWorks Stacks ID.</p>"}))
    TemporaryCredential.type = Types::TemporaryCredential
    TimeBasedAutoScalingConfiguration.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>"}))
    TimeBasedAutoScalingConfiguration.add_member(:auto_scaling_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklyAutoScalingSchedule, location_name: 'AutoScalingSchedule', traits: {"smithy.api#documentation" => "<p>A <code>WeeklyAutoScalingSchedule</code> object with the instance schedule.</p>"}))
    TimeBasedAutoScalingConfiguration.type = Types::TimeBasedAutoScalingConfiguration
    TimeBasedAutoScalingConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TimeBasedAutoScalingConfiguration)
    UnassignInstanceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>", "smithy.api#required" => {}}))
    UnassignInstanceRequest.type = Types::UnassignInstanceRequest
    UnassignVolumeRequest.add_member(:volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId', traits: {"smithy.api#documentation" => "<p>The volume ID.</p>", "smithy.api#required" => {}}))
    UnassignVolumeRequest.type = Types::UnassignVolumeRequest
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The stack or layer's Amazon Resource Number (ARN).</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A list of the keys of tags to be removed from a stack or layer.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAppRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#documentation" => "<p>The app ID.</p>", "smithy.api#required" => {}}))
    UpdateAppRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The app name.</p>"}))
    UpdateAppRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the app.</p>"}))
    UpdateAppRequest.add_member(:data_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'DataSources', traits: {"smithy.api#documentation" => "<p>The app's data sources.</p>"}))
    UpdateAppRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: AppType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The app type.</p>"}))
    UpdateAppRequest.add_member(:app_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'AppSource', traits: {"smithy.api#documentation" => "<p>A <code>Source</code> object that specifies the app repository.</p>"}))
    UpdateAppRequest.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>The app's virtual host settings, with multiple domains separated by commas. For example:\n        <code>'www.example.com, example.com'</code>\n         </p>"}))
    UpdateAppRequest.add_member(:enable_ssl, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableSsl', traits: {"smithy.api#documentation" => "<p>Whether SSL is enabled for the app.</p>"}))
    UpdateAppRequest.add_member(:ssl_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SslConfiguration, location_name: 'SslConfiguration', traits: {"smithy.api#documentation" => "<p>An <code>SslConfiguration</code> object with the SSL configuration.</p>"}))
    UpdateAppRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AppAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more user-defined key/value pairs to be added to the stack attributes.</p>"}))
    UpdateAppRequest.add_member(:environment, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'Environment', traits: {"smithy.api#documentation" => "<p>An array of <code>EnvironmentVariable</code> objects that specify environment variables to be\n      associated with the app. After you deploy the app, these variables are defined on the\n      associated app server instances.For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html#workingapps-creating-environment\"> Environment Variables</a>.</p>\n         <p>There is no specific limit on the number of environment variables. However, the size of the associated data structure - \n          which includes the variables' names, values, and protected flag values - cannot exceed 20 KB. This limit should accommodate most \n          if not all use cases. Exceeding it will cause an exception with the message, \"Environment: is too large (maximum is 20 KB).\"</p>\n         <note>\n            <p>If you have specified one or more environment variables, you cannot modify the stack's Chef version.</p>\n         </note>"}))
    UpdateAppRequest.type = Types::UpdateAppRequest
    UpdateElasticIpRequest.add_member(:elastic_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#documentation" => "<p>The IP address for which you want to update the name.</p>", "smithy.api#required" => {}}))
    UpdateElasticIpRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The new name, which can be a maximum of 32 characters.</p>"}))
    UpdateElasticIpRequest.type = Types::UpdateElasticIpRequest
    UpdateInstanceRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>", "smithy.api#required" => {}}))
    UpdateInstanceRequest.add_member(:layer_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds', traits: {"smithy.api#documentation" => "<p>The instance's layer IDs.</p>"}))
    UpdateInstanceRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type, such as <code>t2.micro</code>. For a list of supported instance types,\n      open the stack in the console, choose <b>Instances</b>, and choose <b>+ Instance</b>.\n      The <b>Size</b> list contains the currently supported types. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance\n        Families and Types</a>. The parameter values that you use to specify the various types are\n      in the <b>API Name</b> column of the <b>Available Instance Types</b> table.</p>"}))
    UpdateInstanceRequest.add_member(:auto_scaling_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingType, location_name: 'AutoScalingType', traits: {"smithy.api#documentation" => "<p>For load-based or time-based instances, the type. Windows stacks can use only time-based instances.</p>"}))
    UpdateInstanceRequest.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Hostname', traits: {"smithy.api#documentation" => "<p>The instance host name. The following are character limits for instance host names.</p>\n         <ul>\n            <li>\n               <p>Linux-based instances: 63 characters</p>\n            </li>\n            <li>\n               <p>Windows-based instances: 15 characters</p>\n            </li>\n         </ul>"}))
    UpdateInstanceRequest.add_member(:os, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Os', traits: {"smithy.api#documentation" => "<p>The instance's operating system, which must be set to one of the following. You cannot update an instance that is using \n          a custom AMI.</p>\n         <ul>\n            <li>\n               <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux\n        2015.03</code>.</p>\n            </li>\n            <li>\n               <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CentOS Linux 7</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Red Hat Enterprise Linux 7</code>\n               </p>\n            </li>\n            <li>\n               <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, \n              <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>\n            </li>\n         </ul>\n         <p>Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,\n          see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">OpsWorks Stacks Operating Systems</a>.</p>\n         <p>The default option is the current Amazon Linux version. If you set this parameter to\n        <code>Custom</code>, you must use the AmiId parameter to\n          specify the custom AMI that you want to use. For more information about how to use custom AMIs with OpsWorks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using\n        Custom AMIs</a>.</p>\n         <note>\n            <p>You can specify a different Linux operating system for the updated stack, but you cannot change from Linux to Windows or Windows to Linux.</p>\n         </note>"}))
    UpdateInstanceRequest.add_member(:ami_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmiId', traits: {"smithy.api#documentation" => "<p>The ID of the AMI that was used to create the instance. The value of this parameter must be the same AMI ID that the \n          instance is already using. \n          You cannot apply a new AMI to an instance by running UpdateInstance. UpdateInstance does not work on instances that are using \n          custom AMIs.\n      </p>"}))
    UpdateInstanceRequest.add_member(:ssh_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshKeyName', traits: {"smithy.api#documentation" => "<p>The instance's Amazon EC2 key name.</p>"}))
    UpdateInstanceRequest.add_member(:architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'Architecture', traits: {"smithy.api#documentation" => "<p>The instance architecture. Instance types do not necessarily support both architectures. For\n      a list of the architectures that are supported by the different instance types, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html\">Instance\n        Families and Types</a>.</p>"}))
    UpdateInstanceRequest.add_member(:install_updates_on_boot, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot', traits: {"smithy.api#documentation" => "<p>Whether to install operating system and package updates when the instance boots. The default\n      value is <code>true</code>. To control when updates are installed, set this value to\n        <code>false</code>. You must then update your instances manually by using\n        <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or\n      by manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the\n      instances. </p>\n         <note>\n            <p>We strongly recommend using the default value of <code>true</code>, to ensure that your\n        instances have the latest security updates.</p>\n         </note>"}))
    UpdateInstanceRequest.add_member(:ebs_optimized, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EbsOptimized', traits: {"smithy.api#documentation" => "<p>This property cannot be updated.</p>"}))
    UpdateInstanceRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion', traits: {"smithy.api#documentation" => "<p>The default OpsWorks Stacks agent version. You have the following options:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>INHERIT</code> - Use the stack's default agent version setting.</p>\n            </li>\n            <li>\n               <p>\n                  <i>version_number</i> - Use the specified agent version.\n        This value overrides the stack's default setting.\n        To update the agent version, you must edit the instance configuration and specify a\n        new version.\n             OpsWorks Stacks installs that version on the instance.</p>\n            </li>\n         </ul>\n         <p>The default setting is <code>INHERIT</code>. To specify an agent version,\n      you must use the complete version number, not the abbreviated number shown on the console.\n      For a list of available agent version numbers, call <a>DescribeAgentVersions</a>.</p>\n         <p>AgentVersion cannot be set to Chef 12.2.</p>"}))
    UpdateInstanceRequest.type = Types::UpdateInstanceRequest
    UpdateLayerRequest.add_member(:layer_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#documentation" => "<p>The layer ID.</p>", "smithy.api#required" => {}}))
    UpdateLayerRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The layer name, which is used by the console. Layer names can be a maximum of 32 characters.</p>"}))
    UpdateLayerRequest.add_member(:shortname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Shortname', traits: {"smithy.api#documentation" => "<p>For custom layers only, use this parameter to specify the layer's short name, which is used internally by \n          OpsWorks Stacks and by Chef. The short name is also used as the name for the directory where your app files \n          are installed. It can have a maximum of 32 characters and must be in the following format: /\\A[a-z0-9\\-\\_\\.]+\\Z/.</p>\n         <p>Built-in layer short names are defined by OpsWorks Stacks. For more information, see the \n          <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/layers.html\">Layer reference</a> in the OpsWorks User Guide.\n      </p>"}))
    UpdateLayerRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more user-defined key/value pairs to be added to the stack attributes.</p>"}))
    UpdateLayerRequest.add_member(:cloud_watch_logs_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsConfiguration, location_name: 'CloudWatchLogsConfiguration', traits: {"smithy.api#documentation" => "<p>Specifies CloudWatch Logs configuration options for the layer. For more information, \n          see <a>CloudWatchLogsLogStream</a>.</p>"}))
    UpdateLayerRequest.add_member(:custom_instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomInstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM profile to be used for all of the layer's EC2 instances. For more\n          information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using\n      Identifiers</a>.</p>"}))
    UpdateLayerRequest.add_member(:custom_json, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson', traits: {"smithy.api#documentation" => "<p>A JSON-formatted string containing custom stack configuration and deployment attributes\n      to be installed on the layer's instances. For more information, see\n      <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-json-override.html\">\n        Using Custom JSON</a>.\n    </p>"}))
    UpdateLayerRequest.add_member(:custom_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'CustomSecurityGroupIds', traits: {"smithy.api#documentation" => "<p>An array containing the layer's custom security group IDs.</p>"}))
    UpdateLayerRequest.add_member(:packages, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Packages', traits: {"smithy.api#documentation" => "<p>An array of <code>Package</code> objects that describe the layer's packages.</p>"}))
    UpdateLayerRequest.add_member(:volume_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeConfigurations, location_name: 'VolumeConfigurations', traits: {"smithy.api#documentation" => "<p>A <code>VolumeConfigurations</code> object that describes the layer's Amazon EBS volumes.</p>"}))
    UpdateLayerRequest.add_member(:enable_auto_healing, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableAutoHealing', traits: {"smithy.api#documentation" => "<p>Whether to disable auto healing for the layer.</p>"}))
    UpdateLayerRequest.add_member(:auto_assign_elastic_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignElasticIps', traits: {"smithy.api#documentation" => "<p>Whether to automatically assign an <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html\">Elastic IP\n        address</a> to the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit\n        a Layer</a>.</p>"}))
    UpdateLayerRequest.add_member(:auto_assign_public_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignPublicIps', traits: {"smithy.api#documentation" => "<p>For stacks that are running in a VPC, whether to automatically assign a public IP address to\n      the layer's instances. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-edit.html\">How to Edit\n        a Layer</a>.</p>"}))
    UpdateLayerRequest.add_member(:custom_recipes, Smithy::Schema::Shapes::ShapeRef.new(shape: Recipes, location_name: 'CustomRecipes', traits: {"smithy.api#documentation" => "<p>A <code>LayerCustomRecipes</code> object that specifies the layer's custom recipes.</p>"}))
    UpdateLayerRequest.add_member(:install_updates_on_boot, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot', traits: {"smithy.api#documentation" => "<p>Whether to install operating system and package updates when the instance boots. The default\n      value is <code>true</code>. To control when updates are installed, set this value to\n        <code>false</code>. You must then update your instances manually by using\n        <a>CreateDeployment</a> to run the <code>update_dependencies</code> stack command or\n      manually running <code>yum</code> (Amazon Linux) or <code>apt-get</code> (Ubuntu) on the\n      instances. </p>\n         <note>\n            <p>We strongly recommend using the default value of <code>true</code>, to ensure that your\n        instances have the latest security updates.</p>\n         </note>"}))
    UpdateLayerRequest.add_member(:use_ebs_optimized_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseEbsOptimizedInstances', traits: {"smithy.api#documentation" => "<p>Whether to use Amazon EBS-optimized instances.</p>"}))
    UpdateLayerRequest.add_member(:lifecycle_event_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventConfiguration, location_name: 'LifecycleEventConfiguration', traits: {"smithy.api#documentation" => "<p></p>"}))
    UpdateLayerRequest.type = Types::UpdateLayerRequest
    UpdateMyUserProfileRequest.add_member(:ssh_public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshPublicKey', traits: {"smithy.api#documentation" => "<p>The user's SSH public key.</p>"}))
    UpdateMyUserProfileRequest.type = Types::UpdateMyUserProfileRequest
    UpdateRdsDbInstanceRequest.add_member(:rds_db_instance_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RdsDbInstanceArn', traits: {"smithy.api#documentation" => "<p>The Amazon RDS instance's ARN.</p>", "smithy.api#required" => {}}))
    UpdateRdsDbInstanceRequest.add_member(:db_user, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#documentation" => "<p>The master user name.</p>"}))
    UpdateRdsDbInstanceRequest.add_member(:db_password, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbPassword', traits: {"smithy.api#documentation" => "<p>The database password.</p>"}))
    UpdateRdsDbInstanceRequest.type = Types::UpdateRdsDbInstanceRequest
    UpdateStackRequest.add_member(:stack_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#documentation" => "<p>The stack ID.</p>", "smithy.api#required" => {}}))
    UpdateStackRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The stack's new name. Stack names can be a maximum of 64 characters.</p>"}))
    UpdateStackRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>One or more user-defined key-value pairs to be added to the stack attributes.</p>"}))
    UpdateStackRequest.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn', traits: {"smithy.api#documentation" => "<p>Do not use this parameter. You cannot update a stack's service role.</p>"}))
    UpdateStackRequest.add_member(:default_instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultInstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The ARN of an IAM profile that is the default profile for all of the stack's EC2 instances.\n          For more information about IAM ARNs, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html\">Using\n      Identifiers</a>.</p>"}))
    UpdateStackRequest.add_member(:default_os, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultOs', traits: {"smithy.api#documentation" => "<p>The stack's operating system, which must be set to one of the following:</p>\n         <ul>\n            <li>\n               <p>A supported Linux operating system: An Amazon Linux version, such as <code>Amazon Linux 2</code>, <code>Amazon Linux 2018.03</code>, <code>Amazon Linux 2017.09</code>, <code>Amazon Linux 2017.03</code>, <code>Amazon Linux 2016.09</code>, \n              <code>Amazon Linux 2016.03</code>, <code>Amazon Linux 2015.09</code>, or <code>Amazon Linux 2015.03</code>.</p>\n            </li>\n            <li>\n               <p>A supported Ubuntu operating system, such as <code>Ubuntu 18.04 LTS</code>, <code>Ubuntu 16.04 LTS</code>, <code>Ubuntu 14.04 LTS</code>, or <code>Ubuntu 12.04 LTS</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CentOS Linux 7</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Red Hat Enterprise Linux 7</code>\n               </p>\n            </li>\n            <li>\n               <p>A supported Windows operating system, such as <code>Microsoft Windows Server 2012 R2 Base</code>, <code>Microsoft Windows Server 2012 R2 with SQL Server Express</code>, \n              <code>Microsoft Windows Server 2012 R2 with SQL Server Standard</code>, or <code>Microsoft Windows Server 2012 R2 with SQL Server Web</code>.</p>\n            </li>\n            <li>\n               <p>A custom AMI: <code>Custom</code>. You specify the custom AMI you want to use when\n             you create instances. For more information about how to use custom AMIs with OpsWorks, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html\">Using\n          Custom AMIs</a>.</p>\n            </li>\n         </ul>\n         <p>The default option is the stack's current operating system.\n          Not all operating systems are supported with all versions of Chef. For more information about supported operating systems,\n          see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html\">OpsWorks Stacks Operating Systems</a>.</p>"}))
    UpdateStackRequest.add_member(:hostname_theme, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostnameTheme', traits: {"smithy.api#documentation" => "<p>The stack's new host name theme, with spaces replaced by underscores.\n      The theme is used to generate host names for the stack's instances.\n      By default, <code>HostnameTheme</code> is set to <code>Layer_Dependent</code>, which creates host names by appending integers to \n          the\n      layer's short name. The other themes are:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>Baked_Goods</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Clouds</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Europe_Cities</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Fruits</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Greek_Deities_and_Titans</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Legendary_creatures_from_Japan</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Planets_and_Moons</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Roman_Deities</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Scottish_Islands</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>US_Cities</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>Wild_Cats</code>\n               </p>\n            </li>\n         </ul>\n         <p>To obtain a generated host name, call <code>GetHostNameSuggestion</code>, which returns a\n      host name based on the current theme.</p>"}))
    UpdateStackRequest.add_member(:default_availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAvailabilityZone', traits: {"smithy.api#documentation" => "<p>The stack's default Availability Zone, which must be in the\n      stack's region. For more\n      information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and\n        Endpoints</a>. If you also specify a value for <code>DefaultSubnetId</code>, the subnet must\n      be in the same zone. For more information, see <a>CreateStack</a>. </p>"}))
    UpdateStackRequest.add_member(:default_subnet_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubnetId', traits: {"smithy.api#documentation" => "<p>The stack's default VPC subnet ID. This parameter is required if you specify a value for the\n        <code>VpcId</code> parameter. All instances are launched into this subnet unless you specify\n      otherwise when you create the instance. If you also specify a value for\n        <code>DefaultAvailabilityZone</code>, the subnet must be in that zone. For information on\n      default values and when this parameter is required, see the <code>VpcId</code> parameter\n      description. </p>"}))
    UpdateStackRequest.add_member(:custom_json, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson', traits: {"smithy.api#documentation" => "<p>A string that contains user-defined, custom JSON. It can be used to override the corresponding default stack configuration \n          JSON values or to pass data to recipes. The string should be in the following format:</p>\n         <p>\n            <code>\"{\\\"key1\\\": \\\"value1\\\", \\\"key2\\\": \\\"value2\\\",...}\"</code>\n         </p>\n         <p>For more information about custom JSON, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html\">Use Custom JSON to\n        Modify the Stack Configuration Attributes</a>.</p>"}))
    UpdateStackRequest.add_member(:configuration_manager, Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager', traits: {"smithy.api#documentation" => "<p>The configuration manager. When you update a stack, we recommend that you use the configuration manager to specify the \n          Chef version: 12, 11.10, or 11.4 for Linux stacks, or 12.2 for Windows stacks. The default value for Linux stacks is currently 12.</p>"}))
    UpdateStackRequest.add_member(:chef_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: 'ChefConfiguration', traits: {"smithy.api#documentation" => "<p>A <code>ChefConfiguration</code> object that specifies whether to enable Berkshelf and the\n      Berkshelf version on Chef 11.10 stacks. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New Stack</a>.</p>"}))
    UpdateStackRequest.add_member(:use_custom_cookbooks, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseCustomCookbooks', traits: {"smithy.api#documentation" => "<p>Whether the stack uses custom cookbooks.</p>"}))
    UpdateStackRequest.add_member(:custom_cookbooks_source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'CustomCookbooksSource', traits: {"smithy.api#documentation" => "<p>Contains the information required to retrieve an app or cookbook from a repository. For more information, \n            see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html\">Adding Apps</a> or \n            <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html\">Cookbooks and Recipes</a>.</p>"}))
    UpdateStackRequest.add_member(:default_ssh_key_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSshKeyName', traits: {"smithy.api#documentation" => "<p>A default Amazon EC2 key-pair name. The default value is\n      <code>none</code>. If you specify a key-pair name,\n          OpsWorks Stacks installs the public key on the instance and you can use the private key with an SSH\n      client to log in to the instance. For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-ssh.html\"> Using SSH to\n        Communicate with an Instance</a> and <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-ssh-access.html\"> Managing SSH\n        Access</a>. You can override this setting by specifying a different key pair, or no key\n      pair, when you <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html\">\n        create an instance</a>. </p>"}))
    UpdateStackRequest.add_member(:default_root_device_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'DefaultRootDeviceType', traits: {"smithy.api#documentation" => "<p>The default root device type. This value is used by default for all instances in the stack,\n      but you can override it when you create an instance. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device\">Storage for the Root Device</a>.</p>"}))
    UpdateStackRequest.add_member(:use_opsworks_security_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOpsworksSecurityGroups', traits: {"smithy.api#documentation" => "<p>Whether to associate the OpsWorks Stacks built-in security groups with the stack's layers.</p>\n         <p>OpsWorks Stacks provides a standard set of built-in security groups, one for each layer, which are\n      associated with layers by default. <code>UseOpsworksSecurityGroups</code> allows you to\n      provide your own custom security groups\n      instead of using the built-in groups. <code>UseOpsworksSecurityGroups</code> has\n      the following settings: </p>\n         <ul>\n            <li>\n               <p>True - OpsWorks Stacks automatically associates the appropriate built-in security group with each \n              layer (default setting). You can associate additional security groups with a layer after you create it, but you cannot \n              delete the built-in security group.</p>\n            </li>\n            <li>\n               <p>False - OpsWorks Stacks does not associate built-in security groups with layers. You must create \n              appropriate EC2 security groups and associate a security group with each layer that you create. However, you can still \n              manually associate a built-in security group with a layer on. Custom security groups are required only for those layers \n              that need custom settings.</p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-creating.html\">Create a New\n        Stack</a>.</p>"}))
    UpdateStackRequest.add_member(:agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion', traits: {"smithy.api#documentation" => "<p>The default OpsWorks Stacks agent version. You have the following options:</p>\n         <ul>\n            <li>\n               <p>Auto-update - Set this parameter to <code>LATEST</code>. OpsWorks Stacks\n        automatically installs new agent versions on the stack's instances as soon as\n        they are available.</p>\n            </li>\n            <li>\n               <p>Fixed version - Set this parameter to your preferred agent version. To update the agent version, you must \n             edit the stack configuration and specify a new version. OpsWorks Stacks installs that version \n             on the stack's instances.</p>\n            </li>\n         </ul>\n         <p>The default setting is <code>LATEST</code>. To specify an agent version,\n      you must use the complete version number, not the abbreviated number shown on the console.\n      For a list of available agent version numbers, call <a>DescribeAgentVersions</a>. \n          AgentVersion cannot be set to Chef 12.2.</p>\n         <note>\n            <p>You can also specify an agent version when you create or update an instance, which overrides the stack's default \n          setting.</p>\n         </note>"}))
    UpdateStackRequest.type = Types::UpdateStackRequest
    UpdateUserProfileRequest.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#documentation" => "<p>The user IAM ARN. This can also be a federated user's ARN.</p>", "smithy.api#required" => {}}))
    UpdateUserProfileRequest.add_member(:ssh_username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshUsername', traits: {"smithy.api#documentation" => "<p>The user's SSH user name. The allowable characters are [a-z], [A-Z], [0-9], '-', and '_'. If\n          the specified name includes other punctuation marks, OpsWorks Stacks removes them. For example,\n        <code>my.name</code> will be changed to <code>myname</code>. If you do not specify an SSH\n          user name, OpsWorks Stacks generates one from the IAM user name. </p>"}))
    UpdateUserProfileRequest.add_member(:ssh_public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshPublicKey', traits: {"smithy.api#documentation" => "<p>The user's new SSH public key.</p>"}))
    UpdateUserProfileRequest.add_member(:allow_self_management, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSelfManagement', traits: {"smithy.api#documentation" => "<p>Whether users can specify their own SSH public key through the My Settings page. For more\n      information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html\">Managing User\n        Permissions</a>.</p>"}))
    UpdateUserProfileRequest.type = Types::UpdateUserProfileRequest
    UpdateVolumeRequest.add_member(:volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId', traits: {"smithy.api#documentation" => "<p>The volume ID.</p>", "smithy.api#required" => {}}))
    UpdateVolumeRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The new name. Volume names can be a maximum of 128 characters.</p>"}))
    UpdateVolumeRequest.add_member(:mount_point, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MountPoint', traits: {"smithy.api#documentation" => "<p>The new mount point.</p>"}))
    UpdateVolumeRequest.type = Types::UpdateVolumeRequest
    UserProfile.add_member(:iam_user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#documentation" => "<p>The user's IAM ARN.</p>"}))
    UserProfile.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The user's name.</p>"}))
    UserProfile.add_member(:ssh_username, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshUsername', traits: {"smithy.api#documentation" => "<p>The user's SSH user name.</p>"}))
    UserProfile.add_member(:ssh_public_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshPublicKey', traits: {"smithy.api#documentation" => "<p>The user's SSH public key.</p>"}))
    UserProfile.add_member(:allow_self_management, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSelfManagement', traits: {"smithy.api#documentation" => "<p>Whether users can specify their own SSH public key through the My Settings page. For more\n      information, see <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html\">Managing User\n        Permissions</a>.</p>"}))
    UserProfile.type = Types::UserProfile
    UserProfiles.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserProfile)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The exception message.</p>"}))
    ValidationException.type = Types::ValidationException
    VirtualizationType.add_member(:paravirtual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'paravirtual', traits: {"smithy.api#enumValue" => "paravirtual"}))
    VirtualizationType.add_member(:hvm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hvm', traits: {"smithy.api#enumValue" => "hvm"}))
    Volume.add_member(:volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId', traits: {"smithy.api#documentation" => "<p>The volume ID.</p>"}))
    Volume.add_member(:ec2_volume_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ec2VolumeId', traits: {"smithy.api#documentation" => "<p>The Amazon EC2 volume ID.</p>"}))
    Volume.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The volume name. Volume names are a maximum of 128 characters.</p>"}))
    Volume.add_member(:raid_array_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RaidArrayId', traits: {"smithy.api#documentation" => "<p>The RAID array ID.</p>"}))
    Volume.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The instance ID.</p>"}))
    Volume.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The value returned by <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeVolumes.html\">DescribeVolumes</a>.</p>"}))
    Volume.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Size', traits: {"smithy.api#documentation" => "<p>The volume size.</p>"}))
    Volume.add_member(:device, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Device', traits: {"smithy.api#documentation" => "<p>The device name.</p>"}))
    Volume.add_member(:mount_point, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MountPoint', traits: {"smithy.api#documentation" => "<p>The volume mount point. For example, \"/mnt/disk1\".</p>"}))
    Volume.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region. For more information about Amazon Web Services Regions, see \n          <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"}))
    Volume.add_member(:availability_zone, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone', traits: {"smithy.api#documentation" => "<p>The volume Availability Zone. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html\">Regions and Endpoints</a>.</p>"}))
    Volume.add_member(:volume_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeType', traits: {"smithy.api#documentation" => "<p>The volume type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html\">\n          Amazon EBS Volume Types</a>.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>standard</code> - Magnetic. Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.</p>\n            </li>\n            <li>\n               <p>\n                  <code>io1</code> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.</p>\n            </li>\n            <li>\n               <p>\n                  <code>gp2</code> - General Purpose (SSD). General purpose volumes must have a minimum size of 1 GiB and a maximum size \n              of 16384 GiB.</p>\n            </li>\n            <li>\n               <p>\n                  <code>st1</code> - Throughput Optimized hard disk drive (HDD). Throughput optimized HDD volumes must have a \n                  minimum size of 125 GiB and a maximum size of 16384 GiB.</p>\n            </li>\n            <li>\n               <p>\n                  <code>sc1</code> - Cold HDD. Cold HDD volumes must have a minimum size of 125 GiB and a maximum size of 16384 GiB.</p>\n            </li>\n         </ul>"}))
    Volume.add_member(:iops, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Iops', traits: {"smithy.api#documentation" => "<p>For PIOPS volumes, the IOPS per disk.</p>"}))
    Volume.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>Specifies whether an Amazon EBS volume is encrypted. For more information, \n            see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html\">Amazon EBS Encryption</a>.</p>"}))
    Volume.type = Types::Volume
    VolumeConfiguration.add_member(:mount_point, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MountPoint', traits: {"smithy.api#documentation" => "<p>The volume mount point. For example \"/dev/sdh\".</p>", "smithy.api#required" => {}}))
    VolumeConfiguration.add_member(:raid_level, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RaidLevel', traits: {"smithy.api#documentation" => "<p>The volume <a href=\"http://en.wikipedia.org/wiki/Standard_RAID_levels\">RAID level</a>.</p>"}))
    VolumeConfiguration.add_member(:number_of_disks, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfDisks', traits: {"smithy.api#documentation" => "<p>The number of disks in the volume.</p>", "smithy.api#required" => {}}))
    VolumeConfiguration.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Size', traits: {"smithy.api#documentation" => "<p>The volume size.</p>", "smithy.api#required" => {}}))
    VolumeConfiguration.add_member(:volume_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeType', traits: {"smithy.api#documentation" => "<p>The volume type. For more information, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html\">\n          Amazon EBS Volume Types</a>.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>standard</code> - Magnetic. Magnetic volumes must have a minimum size of 1 GiB and a maximum size of 1024 GiB.</p>\n            </li>\n            <li>\n               <p>\n                  <code>io1</code> - Provisioned IOPS (SSD). PIOPS volumes must have a minimum size of 4 GiB and a maximum size of 16384 GiB.</p>\n            </li>\n            <li>\n               <p>\n                  <code>gp2</code> - General Purpose (SSD). General purpose volumes must have a minimum size of 1 GiB and a maximum size \n              of 16384 GiB.</p>\n            </li>\n            <li>\n               <p>\n                  <code>st1</code> - Throughput Optimized hard disk drive (HDD). Throughput optimized HDD volumes must have a \n                  minimum size of 125 GiB and a maximum size of 16384 GiB.</p>\n            </li>\n            <li>\n               <p>\n                  <code>sc1</code> - Cold HDD. Cold HDD volumes must have a minimum size of 125 GiB and a maximum size of 16384 GiB.</p>\n            </li>\n         </ul>"}))
    VolumeConfiguration.add_member(:iops, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Iops', traits: {"smithy.api#documentation" => "<p>For PIOPS volumes, the IOPS per disk.</p>"}))
    VolumeConfiguration.add_member(:encrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted', traits: {"smithy.api#documentation" => "<p>Specifies whether an Amazon EBS volume is encrypted. For more information, \n            see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html\">Amazon EBS Encryption</a>.</p>"}))
    VolumeConfiguration.type = Types::VolumeConfiguration
    VolumeConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeConfiguration)
    VolumeType.add_member(:gp2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gp2', traits: {"smithy.api#enumValue" => "gp2"}))
    VolumeType.add_member(:io1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'io1', traits: {"smithy.api#enumValue" => "io1"}))
    VolumeType.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'standard', traits: {"smithy.api#enumValue" => "standard"}))
    Volumes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Volume)
    WeeklyAutoScalingSchedule.add_member(:monday, Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Monday', traits: {"smithy.api#documentation" => "<p>The schedule for Monday.</p>"}))
    WeeklyAutoScalingSchedule.add_member(:tuesday, Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Tuesday', traits: {"smithy.api#documentation" => "<p>The schedule for Tuesday.</p>"}))
    WeeklyAutoScalingSchedule.add_member(:wednesday, Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Wednesday', traits: {"smithy.api#documentation" => "<p>The schedule for Wednesday.</p>"}))
    WeeklyAutoScalingSchedule.add_member(:thursday, Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Thursday', traits: {"smithy.api#documentation" => "<p>The schedule for Thursday.</p>"}))
    WeeklyAutoScalingSchedule.add_member(:friday, Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Friday', traits: {"smithy.api#documentation" => "<p>The schedule for Friday.</p>"}))
    WeeklyAutoScalingSchedule.add_member(:saturday, Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Saturday', traits: {"smithy.api#documentation" => "<p>The schedule for Saturday.</p>"}))
    WeeklyAutoScalingSchedule.add_member(:sunday, Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Sunday', traits: {"smithy.api#documentation" => "<p>The schedule for Sunday.</p>"}))
    WeeklyAutoScalingSchedule.type = Types::WeeklyAutoScalingSchedule

    OpsWorks20130218 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.opsworks#OpsWorks_20130218"
      service.name = "OpsWorks20130218"
      service.version = "2013-02-18"
      service.traits = {"aws.api#service" => {"sdkId" => "OpsWorks", "arnNamespace" => "opsworks", "cloudFormationName" => "OpsWorks", "cloudTrailEventSource" => "opsworks.amazonaws.com", "endpointPrefix" => "opsworks"}, "aws.auth#sigv4" => {"name" => "opsworks"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS OpsWorks", "smithy.api#xmlNamespace" => {"uri" => "http://opsworks.amazonaws.com/doc/2013-02-18/"}}
      service.add_operation(:assign_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#AssignInstance"
        operation.name = "AssignInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssignInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:assign_volume, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#AssignVolume"
        operation.name = "AssignVolume"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssignVolumeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:associate_elastic_ip, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#AssociateElasticIp"
        operation.name = "AssociateElasticIp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateElasticIpRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:attach_elastic_load_balancer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#AttachElasticLoadBalancer"
        operation.name = "AttachElasticLoadBalancer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AttachElasticLoadBalancerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:clone_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CloneStack"
        operation.name = "CloneStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CloneStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CloneStackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateApp"
        operation.name = "CreateApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateInstance"
        operation.name = "CreateInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_layer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateLayer"
        operation.name = "CreateLayer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLayerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLayerResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateStack"
        operation.name = "CreateStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_user_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateUserProfile"
        operation.name = "CreateUserProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserProfileResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeleteApp"
        operation.name = "DeleteApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeleteInstance"
        operation.name = "DeleteInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_layer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeleteLayer"
        operation.name = "DeleteLayer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLayerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeleteStack"
        operation.name = "DeleteStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_user_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeleteUserProfile"
        operation.name = "DeleteUserProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_ecs_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeregisterEcsCluster"
        operation.name = "DeregisterEcsCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterEcsClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_elastic_ip, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeregisterElasticIp"
        operation.name = "DeregisterElasticIp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterElasticIpRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeregisterInstance"
        operation.name = "DeregisterInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_rds_db_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeregisterRdsDbInstance"
        operation.name = "DeregisterRdsDbInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterRdsDbInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_volume, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeregisterVolume"
        operation.name = "DeregisterVolume"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterVolumeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_agent_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeAgentVersions"
        operation.name = "DescribeAgentVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgentVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgentVersionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_apps, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeApps"
        operation.name = "DescribeApps"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_commands, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeCommands"
        operation.name = "DescribeCommands"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCommandsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCommandsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_deployments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeDeployments"
        operation.name = "DescribeDeployments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeploymentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeploymentsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_ecs_clusters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeEcsClusters"
        operation.name = "DescribeEcsClusters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEcsClustersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEcsClustersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEcsClusters.new
      end)
      service.add_operation(:describe_elastic_ips, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeElasticIps"
        operation.name = "DescribeElasticIps"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticIpsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticIpsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_elastic_load_balancers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeElasticLoadBalancers"
        operation.name = "DescribeElasticLoadBalancers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticLoadBalancersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticLoadBalancersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeInstances"
        operation.name = "DescribeInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstancesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstancesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_layers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeLayers"
        operation.name = "DescribeLayers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLayersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLayersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_load_based_auto_scaling, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeLoadBasedAutoScaling"
        operation.name = "DescribeLoadBasedAutoScaling"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoadBasedAutoScalingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoadBasedAutoScalingResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_my_user_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeMyUserProfile"
        operation.name = "DescribeMyUserProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMyUserProfileResult)
        operation.traits = {}
      end)
      service.add_operation(:describe_operating_systems, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeOperatingSystems"
        operation.name = "DescribeOperatingSystems"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOperatingSystemsResponse)
        operation.traits = {}
      end)
      service.add_operation(:describe_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribePermissions"
        operation.name = "DescribePermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePermissionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_raid_arrays, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeRaidArrays"
        operation.name = "DescribeRaidArrays"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRaidArraysRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRaidArraysResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_rds_db_instances, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeRdsDbInstances"
        operation.name = "DescribeRdsDbInstances"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRdsDbInstancesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRdsDbInstancesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_service_errors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeServiceErrors"
        operation.name = "DescribeServiceErrors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceErrorsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceErrorsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_stack_provisioning_parameters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeStackProvisioningParameters"
        operation.name = "DescribeStackProvisioningParameters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStackProvisioningParametersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStackProvisioningParametersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_stack_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeStackSummary"
        operation.name = "DescribeStackSummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStackSummaryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStackSummaryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_stacks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeStacks"
        operation.name = "DescribeStacks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStacksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStacksResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_time_based_auto_scaling, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeTimeBasedAutoScaling"
        operation.name = "DescribeTimeBasedAutoScaling"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTimeBasedAutoScalingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTimeBasedAutoScalingResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_user_profiles, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeUserProfiles"
        operation.name = "DescribeUserProfiles"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserProfilesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserProfilesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_volumes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeVolumes"
        operation.name = "DescribeVolumes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVolumesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVolumesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:detach_elastic_load_balancer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DetachElasticLoadBalancer"
        operation.name = "DetachElasticLoadBalancer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DetachElasticLoadBalancerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_elastic_ip, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DisassociateElasticIp"
        operation.name = "DisassociateElasticIp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateElasticIpRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_hostname_suggestion, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#GetHostnameSuggestion"
        operation.name = "GetHostnameSuggestion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostnameSuggestionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostnameSuggestionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:grant_access, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#GrantAccess"
        operation.name = "GrantAccess"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GrantAccessRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GrantAccessResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#ListTags"
        operation.name = "ListTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:reboot_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RebootInstance"
        operation.name = "RebootInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RebootInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:register_ecs_cluster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RegisterEcsCluster"
        operation.name = "RegisterEcsCluster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterEcsClusterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterEcsClusterResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:register_elastic_ip, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RegisterElasticIp"
        operation.name = "RegisterElasticIp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterElasticIpRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterElasticIpResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:register_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RegisterInstance"
        operation.name = "RegisterInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterInstanceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:register_rds_db_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RegisterRdsDbInstance"
        operation.name = "RegisterRdsDbInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterRdsDbInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:register_volume, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RegisterVolume"
        operation.name = "RegisterVolume"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterVolumeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterVolumeResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_load_based_auto_scaling, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#SetLoadBasedAutoScaling"
        operation.name = "SetLoadBasedAutoScaling"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetLoadBasedAutoScalingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_permission, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#SetPermission"
        operation.name = "SetPermission"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetPermissionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_time_based_auto_scaling, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#SetTimeBasedAutoScaling"
        operation.name = "SetTimeBasedAutoScaling"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetTimeBasedAutoScalingRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#StartInstance"
        operation.name = "StartInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#StartStack"
        operation.name = "StartStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#StopInstance"
        operation.name = "StopInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#StopStack"
        operation.name = "StopStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:unassign_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UnassignInstance"
        operation.name = "UnassignInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UnassignInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:unassign_volume, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UnassignVolume"
        operation.name = "UnassignVolume"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UnassignVolumeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateApp"
        operation.name = "UpdateApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_elastic_ip, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateElasticIp"
        operation.name = "UpdateElasticIp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateElasticIpRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateInstance"
        operation.name = "UpdateInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_layer, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateLayer"
        operation.name = "UpdateLayer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLayerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_my_user_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateMyUserProfile"
        operation.name = "UpdateMyUserProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMyUserProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_rds_db_instance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateRdsDbInstance"
        operation.name = "UpdateRdsDbInstance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRdsDbInstanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateStack"
        operation.name = "UpdateStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_user_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateUserProfile"
        operation.name = "UpdateUserProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_volume, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateVolume"
        operation.name = "UpdateVolume"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVolumeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
