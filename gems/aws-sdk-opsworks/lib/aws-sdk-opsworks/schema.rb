# frozen_string_literal: true

# This is generated code!

module Aws::OpsWorks
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AgentVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AgentVersion', name: 'AgentVersion')
    AgentVersions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#AgentVersions', name: 'AgentVersions')
    App = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#App', name: 'App')
    AppAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#AppAttributes', name: 'AppAttributes')
    AppAttributesKeys = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#AppAttributesKeys', name: 'AppAttributesKeys')
    AppType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#AppType', name: 'AppType')
    Apps = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Apps', name: 'Apps')
    Architecture = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#Architecture', name: 'Architecture')
    AssignInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AssignInstanceRequest', name: 'AssignInstanceRequest')
    AssignVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AssignVolumeRequest', name: 'AssignVolumeRequest')
    AssociateElasticIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AssociateElasticIpRequest', name: 'AssociateElasticIpRequest')
    AttachElasticLoadBalancerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AttachElasticLoadBalancerRequest', name: 'AttachElasticLoadBalancerRequest')
    AutoScalingThresholds = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#AutoScalingThresholds', name: 'AutoScalingThresholds')
    AutoScalingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#AutoScalingType', name: 'AutoScalingType')
    BlockDeviceMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#BlockDeviceMapping', name: 'BlockDeviceMapping')
    BlockDeviceMappings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#BlockDeviceMappings', name: 'BlockDeviceMappings')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.opsworks#Boolean', name: 'Boolean')
    ChefConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ChefConfiguration', name: 'ChefConfiguration')
    CloneStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CloneStackRequest', name: 'CloneStackRequest')
    CloneStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CloneStackResult', name: 'CloneStackResult')
    CloudWatchLogsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsConfiguration', name: 'CloudWatchLogsConfiguration')
    CloudWatchLogsEncoding = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsEncoding', name: 'CloudWatchLogsEncoding')
    CloudWatchLogsInitialPosition = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsInitialPosition', name: 'CloudWatchLogsInitialPosition')
    CloudWatchLogsLogStream = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsLogStream', name: 'CloudWatchLogsLogStream')
    CloudWatchLogsLogStreams = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsLogStreams', name: 'CloudWatchLogsLogStreams')
    CloudWatchLogsTimeZone = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#CloudWatchLogsTimeZone', name: 'CloudWatchLogsTimeZone')
    Command = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Command', name: 'Command')
    Commands = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Commands', name: 'Commands')
    CreateAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateAppRequest', name: 'CreateAppRequest')
    CreateAppResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateAppResult', name: 'CreateAppResult')
    CreateDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateDeploymentRequest', name: 'CreateDeploymentRequest')
    CreateDeploymentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateDeploymentResult', name: 'CreateDeploymentResult')
    CreateInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateInstanceRequest', name: 'CreateInstanceRequest')
    CreateInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateInstanceResult', name: 'CreateInstanceResult')
    CreateLayerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateLayerRequest', name: 'CreateLayerRequest')
    CreateLayerResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateLayerResult', name: 'CreateLayerResult')
    CreateStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateStackRequest', name: 'CreateStackRequest')
    CreateStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateStackResult', name: 'CreateStackResult')
    CreateUserProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateUserProfileRequest', name: 'CreateUserProfileRequest')
    CreateUserProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#CreateUserProfileResult', name: 'CreateUserProfileResult')
    DailyAutoScalingSchedule = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#DailyAutoScalingSchedule', name: 'DailyAutoScalingSchedule')
    DataSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DataSource', name: 'DataSource')
    DataSources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#DataSources', name: 'DataSources')
    DateTime = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#DateTime', name: 'DateTime')
    DeleteAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeleteAppRequest', name: 'DeleteAppRequest')
    DeleteInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeleteInstanceRequest', name: 'DeleteInstanceRequest')
    DeleteLayerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeleteLayerRequest', name: 'DeleteLayerRequest')
    DeleteStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeleteStackRequest', name: 'DeleteStackRequest')
    DeleteUserProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeleteUserProfileRequest', name: 'DeleteUserProfileRequest')
    Deployment = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Deployment', name: 'Deployment')
    DeploymentCommand = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeploymentCommand', name: 'DeploymentCommand')
    DeploymentCommandArgs = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#DeploymentCommandArgs', name: 'DeploymentCommandArgs')
    DeploymentCommandName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#DeploymentCommandName', name: 'DeploymentCommandName')
    Deployments = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Deployments', name: 'Deployments')
    DeregisterEcsClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeregisterEcsClusterRequest', name: 'DeregisterEcsClusterRequest')
    DeregisterElasticIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeregisterElasticIpRequest', name: 'DeregisterElasticIpRequest')
    DeregisterInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeregisterInstanceRequest', name: 'DeregisterInstanceRequest')
    DeregisterRdsDbInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeregisterRdsDbInstanceRequest', name: 'DeregisterRdsDbInstanceRequest')
    DeregisterVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DeregisterVolumeRequest', name: 'DeregisterVolumeRequest')
    DescribeAgentVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeAgentVersionsRequest', name: 'DescribeAgentVersionsRequest')
    DescribeAgentVersionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeAgentVersionsResult', name: 'DescribeAgentVersionsResult')
    DescribeAppsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeAppsRequest', name: 'DescribeAppsRequest')
    DescribeAppsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeAppsResult', name: 'DescribeAppsResult')
    DescribeCommandsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeCommandsRequest', name: 'DescribeCommandsRequest')
    DescribeCommandsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeCommandsResult', name: 'DescribeCommandsResult')
    DescribeDeploymentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeDeploymentsRequest', name: 'DescribeDeploymentsRequest')
    DescribeDeploymentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeDeploymentsResult', name: 'DescribeDeploymentsResult')
    DescribeEcsClustersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeEcsClustersRequest', name: 'DescribeEcsClustersRequest')
    DescribeEcsClustersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeEcsClustersResult', name: 'DescribeEcsClustersResult')
    DescribeElasticIpsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeElasticIpsRequest', name: 'DescribeElasticIpsRequest')
    DescribeElasticIpsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeElasticIpsResult', name: 'DescribeElasticIpsResult')
    DescribeElasticLoadBalancersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeElasticLoadBalancersRequest', name: 'DescribeElasticLoadBalancersRequest')
    DescribeElasticLoadBalancersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeElasticLoadBalancersResult', name: 'DescribeElasticLoadBalancersResult')
    DescribeInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeInstancesRequest', name: 'DescribeInstancesRequest')
    DescribeInstancesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeInstancesResult', name: 'DescribeInstancesResult')
    DescribeLayersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeLayersRequest', name: 'DescribeLayersRequest')
    DescribeLayersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeLayersResult', name: 'DescribeLayersResult')
    DescribeLoadBasedAutoScalingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeLoadBasedAutoScalingRequest', name: 'DescribeLoadBasedAutoScalingRequest')
    DescribeLoadBasedAutoScalingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeLoadBasedAutoScalingResult', name: 'DescribeLoadBasedAutoScalingResult')
    DescribeMyUserProfileResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeMyUserProfileResult', name: 'DescribeMyUserProfileResult')
    DescribeOperatingSystemsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeOperatingSystemsResponse', name: 'DescribeOperatingSystemsResponse')
    DescribePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribePermissionsRequest', name: 'DescribePermissionsRequest')
    DescribePermissionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribePermissionsResult', name: 'DescribePermissionsResult')
    DescribeRaidArraysRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeRaidArraysRequest', name: 'DescribeRaidArraysRequest')
    DescribeRaidArraysResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeRaidArraysResult', name: 'DescribeRaidArraysResult')
    DescribeRdsDbInstancesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeRdsDbInstancesRequest', name: 'DescribeRdsDbInstancesRequest')
    DescribeRdsDbInstancesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeRdsDbInstancesResult', name: 'DescribeRdsDbInstancesResult')
    DescribeServiceErrorsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeServiceErrorsRequest', name: 'DescribeServiceErrorsRequest')
    DescribeServiceErrorsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeServiceErrorsResult', name: 'DescribeServiceErrorsResult')
    DescribeStackProvisioningParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStackProvisioningParametersRequest', name: 'DescribeStackProvisioningParametersRequest')
    DescribeStackProvisioningParametersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStackProvisioningParametersResult', name: 'DescribeStackProvisioningParametersResult')
    DescribeStackSummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStackSummaryRequest', name: 'DescribeStackSummaryRequest')
    DescribeStackSummaryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStackSummaryResult', name: 'DescribeStackSummaryResult')
    DescribeStacksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStacksRequest', name: 'DescribeStacksRequest')
    DescribeStacksResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeStacksResult', name: 'DescribeStacksResult')
    DescribeTimeBasedAutoScalingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeTimeBasedAutoScalingRequest', name: 'DescribeTimeBasedAutoScalingRequest')
    DescribeTimeBasedAutoScalingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeTimeBasedAutoScalingResult', name: 'DescribeTimeBasedAutoScalingResult')
    DescribeUserProfilesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeUserProfilesRequest', name: 'DescribeUserProfilesRequest')
    DescribeUserProfilesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeUserProfilesResult', name: 'DescribeUserProfilesResult')
    DescribeVolumesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeVolumesRequest', name: 'DescribeVolumesRequest')
    DescribeVolumesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DescribeVolumesResult', name: 'DescribeVolumesResult')
    DetachElasticLoadBalancerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DetachElasticLoadBalancerRequest', name: 'DetachElasticLoadBalancerRequest')
    DisassociateElasticIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#DisassociateElasticIpRequest', name: 'DisassociateElasticIpRequest')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.opsworks#Double', name: 'Double')
    EbsBlockDevice = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#EbsBlockDevice', name: 'EbsBlockDevice')
    EcsCluster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#EcsCluster', name: 'EcsCluster')
    EcsClusters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#EcsClusters', name: 'EcsClusters')
    ElasticIp = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ElasticIp', name: 'ElasticIp')
    ElasticIps = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#ElasticIps', name: 'ElasticIps')
    ElasticLoadBalancer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ElasticLoadBalancer', name: 'ElasticLoadBalancer')
    ElasticLoadBalancers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#ElasticLoadBalancers', name: 'ElasticLoadBalancers')
    EnvironmentVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#EnvironmentVariable', name: 'EnvironmentVariable')
    EnvironmentVariables = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#EnvironmentVariables', name: 'EnvironmentVariables')
    GetHostnameSuggestionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#GetHostnameSuggestionRequest', name: 'GetHostnameSuggestionRequest')
    GetHostnameSuggestionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#GetHostnameSuggestionResult', name: 'GetHostnameSuggestionResult')
    GrantAccessRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#GrantAccessRequest', name: 'GrantAccessRequest')
    GrantAccessResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#GrantAccessResult', name: 'GrantAccessResult')
    Hour = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#Hour', name: 'Hour')
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Instance', name: 'Instance')
    InstanceIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#InstanceIdentity', name: 'InstanceIdentity')
    Instances = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Instances', name: 'Instances')
    InstancesCount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#InstancesCount', name: 'InstancesCount')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworks#Integer', name: 'Integer')
    Layer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Layer', name: 'Layer')
    LayerAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#LayerAttributes', name: 'LayerAttributes')
    LayerAttributesKeys = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#LayerAttributesKeys', name: 'LayerAttributesKeys')
    LayerType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#LayerType', name: 'LayerType')
    Layers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Layers', name: 'Layers')
    LifecycleEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#LifecycleEventConfiguration', name: 'LifecycleEventConfiguration')
    ListTagsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ListTagsRequest', name: 'ListTagsRequest')
    ListTagsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ListTagsResult', name: 'ListTagsResult')
    LoadBasedAutoScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#LoadBasedAutoScalingConfiguration', name: 'LoadBasedAutoScalingConfiguration')
    LoadBasedAutoScalingConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#LoadBasedAutoScalingConfigurations', name: 'LoadBasedAutoScalingConfigurations')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworks#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 0})
    Minute = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworks#Minute', name: 'Minute', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#NextToken', name: 'NextToken')
    OperatingSystem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#OperatingSystem', name: 'OperatingSystem')
    OperatingSystemConfigurationManager = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#OperatingSystemConfigurationManager', name: 'OperatingSystemConfigurationManager')
    OperatingSystemConfigurationManagers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#OperatingSystemConfigurationManagers', name: 'OperatingSystemConfigurationManagers')
    OperatingSystems = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#OperatingSystems', name: 'OperatingSystems')
    Parameters = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#Parameters', name: 'Parameters')
    Permission = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Permission', name: 'Permission')
    Permissions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Permissions', name: 'Permissions')
    RaidArray = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RaidArray', name: 'RaidArray')
    RaidArrays = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#RaidArrays', name: 'RaidArrays')
    RdsDbInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RdsDbInstance', name: 'RdsDbInstance')
    RdsDbInstances = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#RdsDbInstances', name: 'RdsDbInstances')
    RebootInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RebootInstanceRequest', name: 'RebootInstanceRequest')
    Recipes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Recipes', name: 'Recipes')
    RegisterEcsClusterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterEcsClusterRequest', name: 'RegisterEcsClusterRequest')
    RegisterEcsClusterResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterEcsClusterResult', name: 'RegisterEcsClusterResult')
    RegisterElasticIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterElasticIpRequest', name: 'RegisterElasticIpRequest')
    RegisterElasticIpResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterElasticIpResult', name: 'RegisterElasticIpResult')
    RegisterInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterInstanceRequest', name: 'RegisterInstanceRequest')
    RegisterInstanceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterInstanceResult', name: 'RegisterInstanceResult')
    RegisterRdsDbInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterRdsDbInstanceRequest', name: 'RegisterRdsDbInstanceRequest')
    RegisterVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterVolumeRequest', name: 'RegisterVolumeRequest')
    RegisterVolumeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#RegisterVolumeResult', name: 'RegisterVolumeResult')
    ReportedOs = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ReportedOs', name: 'ReportedOs')
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#ResourceArn', name: 'ResourceArn')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    RootDeviceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#RootDeviceType', name: 'RootDeviceType')
    SelfUserProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#SelfUserProfile', name: 'SelfUserProfile')
    ServiceError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ServiceError', name: 'ServiceError')
    ServiceErrors = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#ServiceErrors', name: 'ServiceErrors')
    SetLoadBasedAutoScalingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#SetLoadBasedAutoScalingRequest', name: 'SetLoadBasedAutoScalingRequest')
    SetPermissionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#SetPermissionRequest', name: 'SetPermissionRequest')
    SetTimeBasedAutoScalingRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#SetTimeBasedAutoScalingRequest', name: 'SetTimeBasedAutoScalingRequest')
    ShutdownEventConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ShutdownEventConfiguration', name: 'ShutdownEventConfiguration')
    Source = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Source', name: 'Source')
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#SourceType', name: 'SourceType')
    SslConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#SslConfiguration', name: 'SslConfiguration')
    Stack = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Stack', name: 'Stack')
    StackAttributes = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#StackAttributes', name: 'StackAttributes')
    StackAttributesKeys = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#StackAttributesKeys', name: 'StackAttributesKeys')
    StackConfigurationManager = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StackConfigurationManager', name: 'StackConfigurationManager')
    StackSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StackSummary', name: 'StackSummary')
    Stacks = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Stacks', name: 'Stacks')
    StartInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StartInstanceRequest', name: 'StartInstanceRequest')
    StartStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StartStackRequest', name: 'StartStackRequest')
    StopInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StopInstanceRequest', name: 'StopInstanceRequest')
    StopStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#StopStackRequest', name: 'StopStackRequest')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#String', name: 'String')
    Strings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Strings', name: 'Strings')
    Switch = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#Switch', name: 'Switch')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#TagKey', name: 'TagKey')
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#TagKeys', name: 'TagKeys')
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#TagResourceRequest', name: 'TagResourceRequest')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworks#TagValue', name: 'TagValue')
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.opsworks#Tags', name: 'Tags')
    TemporaryCredential = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#TemporaryCredential', name: 'TemporaryCredential')
    TimeBasedAutoScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#TimeBasedAutoScalingConfiguration', name: 'TimeBasedAutoScalingConfiguration')
    TimeBasedAutoScalingConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#TimeBasedAutoScalingConfigurations', name: 'TimeBasedAutoScalingConfigurations')
    UnassignInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UnassignInstanceRequest', name: 'UnassignInstanceRequest')
    UnassignVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UnassignVolumeRequest', name: 'UnassignVolumeRequest')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UntagResourceRequest', name: 'UntagResourceRequest')
    UpdateAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateAppRequest', name: 'UpdateAppRequest')
    UpdateElasticIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateElasticIpRequest', name: 'UpdateElasticIpRequest')
    UpdateInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateInstanceRequest', name: 'UpdateInstanceRequest')
    UpdateLayerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateLayerRequest', name: 'UpdateLayerRequest')
    UpdateMyUserProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateMyUserProfileRequest', name: 'UpdateMyUserProfileRequest')
    UpdateRdsDbInstanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateRdsDbInstanceRequest', name: 'UpdateRdsDbInstanceRequest')
    UpdateStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateStackRequest', name: 'UpdateStackRequest')
    UpdateUserProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateUserProfileRequest', name: 'UpdateUserProfileRequest')
    UpdateVolumeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UpdateVolumeRequest', name: 'UpdateVolumeRequest')
    UserProfile = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#UserProfile', name: 'UserProfile')
    UserProfiles = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#UserProfiles', name: 'UserProfiles')
    ValidForInMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworks#ValidForInMinutes', name: 'ValidForInMinutes', traits: {"smithy.api#range" => {"min" => 60, "max" => 1440}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})
    VirtualizationType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#VirtualizationType', name: 'VirtualizationType')
    Volume = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#Volume', name: 'Volume')
    VolumeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#VolumeConfiguration', name: 'VolumeConfiguration')
    VolumeConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#VolumeConfigurations', name: 'VolumeConfigurations')
    VolumeType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworks#VolumeType', name: 'VolumeType')
    Volumes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworks#Volumes', name: 'Volumes')
    WeeklyAutoScalingSchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworks#WeeklyAutoScalingSchedule', name: 'WeeklyAutoScalingSchedule')

    AgentVersion.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    AgentVersion.add_member(:configuration_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager'))
    AgentVersion.type = Types::AgentVersion
    AgentVersions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersion)
    App.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId'))
    App.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    App.add_member(:shortname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Shortname'))
    App.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    App.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    App.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'DataSources'))
    App.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppType, location_name: 'Type'))
    App.add_member(:app_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'AppSource'))
    App.add_member(:domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Domains'))
    App.add_member(:enable_ssl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableSsl'))
    App.add_member(:ssl_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SslConfiguration, location_name: 'SslConfiguration'))
    App.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAttributes, location_name: 'Attributes'))
    App.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreatedAt'))
    App.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'Environment'))
    App.type = Types::App
    AppAttributes.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAttributesKeys)
    AppAttributes.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AppAttributesKeys.add_member(:document_root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DocumentRoot', traits: {"smithy.api#enumValue" => "DocumentRoot"}))
    AppAttributesKeys.add_member(:rails_env, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RailsEnv', traits: {"smithy.api#enumValue" => "RailsEnv"}))
    AppAttributesKeys.add_member(:auto_bundle_on_deploy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AutoBundleOnDeploy', traits: {"smithy.api#enumValue" => "AutoBundleOnDeploy"}))
    AppAttributesKeys.add_member(:aws_flow_ruby_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AwsFlowRubySettings', traits: {"smithy.api#enumValue" => "AwsFlowRubySettings"}))
    AppType.add_member(:aws_flow_ruby, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_flow_ruby', traits: {"smithy.api#enumValue" => "aws-flow-ruby"}))
    AppType.add_member(:java, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'java', traits: {"smithy.api#enumValue" => "java"}))
    AppType.add_member(:rails, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rails', traits: {"smithy.api#enumValue" => "rails"}))
    AppType.add_member(:php, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'php', traits: {"smithy.api#enumValue" => "php"}))
    AppType.add_member(:nodejs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'nodejs', traits: {"smithy.api#enumValue" => "nodejs"}))
    AppType.add_member(:static, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'static', traits: {"smithy.api#enumValue" => "static"}))
    AppType.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'other', traits: {"smithy.api#enumValue" => "other"}))
    Apps.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: App)
    Architecture.add_member(:x86_64, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'x86_64', traits: {"smithy.api#enumValue" => "x86_64"}))
    Architecture.add_member(:i386, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'i386', traits: {"smithy.api#enumValue" => "i386"}))
    AssignInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#required" => {}}))
    AssignInstanceRequest.add_member(:layer_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds', traits: {"smithy.api#required" => {}}))
    AssignInstanceRequest.type = Types::AssignInstanceRequest
    AssignVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId', traits: {"smithy.api#required" => {}}))
    AssignVolumeRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    AssignVolumeRequest.type = Types::AssignVolumeRequest
    AssociateElasticIpRequest.add_member(:elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#required" => {}}))
    AssociateElasticIpRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    AssociateElasticIpRequest.type = Types::AssociateElasticIpRequest
    AttachElasticLoadBalancerRequest.add_member(:elastic_load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticLoadBalancerName', traits: {"smithy.api#required" => {}}))
    AttachElasticLoadBalancerRequest.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#required" => {}}))
    AttachElasticLoadBalancerRequest.type = Types::AttachElasticLoadBalancerRequest
    AutoScalingThresholds.add_member(:instance_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InstanceCount'))
    AutoScalingThresholds.add_member(:thresholds_wait_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Minute, location_name: 'ThresholdsWaitTime'))
    AutoScalingThresholds.add_member(:ignore_metrics_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Minute, location_name: 'IgnoreMetricsTime'))
    AutoScalingThresholds.add_member(:cpu_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'CpuThreshold'))
    AutoScalingThresholds.add_member(:memory_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'MemoryThreshold'))
    AutoScalingThresholds.add_member(:load_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'LoadThreshold'))
    AutoScalingThresholds.add_member(:alarms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Alarms'))
    AutoScalingThresholds.type = Types::AutoScalingThresholds
    AutoScalingType.add_member(:load, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'load', traits: {"smithy.api#enumValue" => "load"}))
    AutoScalingType.add_member(:timer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'timer', traits: {"smithy.api#enumValue" => "timer"}))
    BlockDeviceMapping.add_member(:device_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeviceName'))
    BlockDeviceMapping.add_member(:no_device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NoDevice'))
    BlockDeviceMapping.add_member(:virtual_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VirtualName'))
    BlockDeviceMapping.add_member(:ebs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EbsBlockDevice, location_name: 'Ebs'))
    BlockDeviceMapping.type = Types::BlockDeviceMapping
    BlockDeviceMappings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockDeviceMapping)
    ChefConfiguration.add_member(:manage_berkshelf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ManageBerkshelf'))
    ChefConfiguration.add_member(:berkshelf_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BerkshelfVersion'))
    ChefConfiguration.type = Types::ChefConfiguration
    CloneStackRequest.add_member(:source_stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceStackId', traits: {"smithy.api#required" => {}}))
    CloneStackRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    CloneStackRequest.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region'))
    CloneStackRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    CloneStackRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttributes, location_name: 'Attributes'))
    CloneStackRequest.add_member(:service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn', traits: {"smithy.api#required" => {}}))
    CloneStackRequest.add_member(:default_instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultInstanceProfileArn'))
    CloneStackRequest.add_member(:default_os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultOs'))
    CloneStackRequest.add_member(:hostname_theme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostnameTheme'))
    CloneStackRequest.add_member(:default_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAvailabilityZone'))
    CloneStackRequest.add_member(:default_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubnetId'))
    CloneStackRequest.add_member(:custom_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson'))
    CloneStackRequest.add_member(:configuration_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager'))
    CloneStackRequest.add_member(:chef_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: 'ChefConfiguration'))
    CloneStackRequest.add_member(:use_custom_cookbooks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseCustomCookbooks'))
    CloneStackRequest.add_member(:use_opsworks_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOpsworksSecurityGroups'))
    CloneStackRequest.add_member(:custom_cookbooks_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'CustomCookbooksSource'))
    CloneStackRequest.add_member(:default_ssh_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSshKeyName'))
    CloneStackRequest.add_member(:clone_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ClonePermissions'))
    CloneStackRequest.add_member(:clone_app_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'CloneAppIds'))
    CloneStackRequest.add_member(:default_root_device_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'DefaultRootDeviceType'))
    CloneStackRequest.add_member(:agent_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion'))
    CloneStackRequest.type = Types::CloneStackRequest
    CloneStackResult.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    CloneStackResult.type = Types::CloneStackResult
    CloudWatchLogsConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled'))
    CloudWatchLogsConfiguration.add_member(:log_streams, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogStreams, location_name: 'LogStreams'))
    CloudWatchLogsConfiguration.type = Types::CloudWatchLogsConfiguration
    CloudWatchLogsEncoding.add_member(:ascii, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ascii', traits: {"smithy.api#enumValue" => "ascii"}))
    CloudWatchLogsEncoding.add_member(:big5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'big5', traits: {"smithy.api#enumValue" => "big5"}))
    CloudWatchLogsEncoding.add_member(:big5hkscs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'big5hkscs', traits: {"smithy.api#enumValue" => "big5hkscs"}))
    CloudWatchLogsEncoding.add_member(:cp037, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp037', traits: {"smithy.api#enumValue" => "cp037"}))
    CloudWatchLogsEncoding.add_member(:cp424, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp424', traits: {"smithy.api#enumValue" => "cp424"}))
    CloudWatchLogsEncoding.add_member(:cp437, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp437', traits: {"smithy.api#enumValue" => "cp437"}))
    CloudWatchLogsEncoding.add_member(:cp500, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp500', traits: {"smithy.api#enumValue" => "cp500"}))
    CloudWatchLogsEncoding.add_member(:cp720, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp720', traits: {"smithy.api#enumValue" => "cp720"}))
    CloudWatchLogsEncoding.add_member(:cp737, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp737', traits: {"smithy.api#enumValue" => "cp737"}))
    CloudWatchLogsEncoding.add_member(:cp775, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp775', traits: {"smithy.api#enumValue" => "cp775"}))
    CloudWatchLogsEncoding.add_member(:cp850, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp850', traits: {"smithy.api#enumValue" => "cp850"}))
    CloudWatchLogsEncoding.add_member(:cp852, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp852', traits: {"smithy.api#enumValue" => "cp852"}))
    CloudWatchLogsEncoding.add_member(:cp855, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp855', traits: {"smithy.api#enumValue" => "cp855"}))
    CloudWatchLogsEncoding.add_member(:cp856, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp856', traits: {"smithy.api#enumValue" => "cp856"}))
    CloudWatchLogsEncoding.add_member(:cp857, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp857', traits: {"smithy.api#enumValue" => "cp857"}))
    CloudWatchLogsEncoding.add_member(:cp858, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp858', traits: {"smithy.api#enumValue" => "cp858"}))
    CloudWatchLogsEncoding.add_member(:cp860, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp860', traits: {"smithy.api#enumValue" => "cp860"}))
    CloudWatchLogsEncoding.add_member(:cp861, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp861', traits: {"smithy.api#enumValue" => "cp861"}))
    CloudWatchLogsEncoding.add_member(:cp862, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp862', traits: {"smithy.api#enumValue" => "cp862"}))
    CloudWatchLogsEncoding.add_member(:cp863, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp863', traits: {"smithy.api#enumValue" => "cp863"}))
    CloudWatchLogsEncoding.add_member(:cp864, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp864', traits: {"smithy.api#enumValue" => "cp864"}))
    CloudWatchLogsEncoding.add_member(:cp865, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp865', traits: {"smithy.api#enumValue" => "cp865"}))
    CloudWatchLogsEncoding.add_member(:cp866, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp866', traits: {"smithy.api#enumValue" => "cp866"}))
    CloudWatchLogsEncoding.add_member(:cp869, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp869', traits: {"smithy.api#enumValue" => "cp869"}))
    CloudWatchLogsEncoding.add_member(:cp874, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp874', traits: {"smithy.api#enumValue" => "cp874"}))
    CloudWatchLogsEncoding.add_member(:cp875, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp875', traits: {"smithy.api#enumValue" => "cp875"}))
    CloudWatchLogsEncoding.add_member(:cp932, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp932', traits: {"smithy.api#enumValue" => "cp932"}))
    CloudWatchLogsEncoding.add_member(:cp949, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp949', traits: {"smithy.api#enumValue" => "cp949"}))
    CloudWatchLogsEncoding.add_member(:cp950, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp950', traits: {"smithy.api#enumValue" => "cp950"}))
    CloudWatchLogsEncoding.add_member(:cp1006, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1006', traits: {"smithy.api#enumValue" => "cp1006"}))
    CloudWatchLogsEncoding.add_member(:cp1026, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1026', traits: {"smithy.api#enumValue" => "cp1026"}))
    CloudWatchLogsEncoding.add_member(:cp1140, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1140', traits: {"smithy.api#enumValue" => "cp1140"}))
    CloudWatchLogsEncoding.add_member(:cp1250, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1250', traits: {"smithy.api#enumValue" => "cp1250"}))
    CloudWatchLogsEncoding.add_member(:cp1251, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1251', traits: {"smithy.api#enumValue" => "cp1251"}))
    CloudWatchLogsEncoding.add_member(:cp1252, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1252', traits: {"smithy.api#enumValue" => "cp1252"}))
    CloudWatchLogsEncoding.add_member(:cp1253, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1253', traits: {"smithy.api#enumValue" => "cp1253"}))
    CloudWatchLogsEncoding.add_member(:cp1254, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1254', traits: {"smithy.api#enumValue" => "cp1254"}))
    CloudWatchLogsEncoding.add_member(:cp1255, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1255', traits: {"smithy.api#enumValue" => "cp1255"}))
    CloudWatchLogsEncoding.add_member(:cp1256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1256', traits: {"smithy.api#enumValue" => "cp1256"}))
    CloudWatchLogsEncoding.add_member(:cp1257, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1257', traits: {"smithy.api#enumValue" => "cp1257"}))
    CloudWatchLogsEncoding.add_member(:cp1258, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cp1258', traits: {"smithy.api#enumValue" => "cp1258"}))
    CloudWatchLogsEncoding.add_member(:euc_jp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'euc_jp', traits: {"smithy.api#enumValue" => "euc_jp"}))
    CloudWatchLogsEncoding.add_member(:euc_jis_2004, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'euc_jis_2004', traits: {"smithy.api#enumValue" => "euc_jis_2004"}))
    CloudWatchLogsEncoding.add_member(:euc_jisx0213, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'euc_jisx0213', traits: {"smithy.api#enumValue" => "euc_jisx0213"}))
    CloudWatchLogsEncoding.add_member(:euc_kr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'euc_kr', traits: {"smithy.api#enumValue" => "euc_kr"}))
    CloudWatchLogsEncoding.add_member(:gb2312, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gb2312', traits: {"smithy.api#enumValue" => "gb2312"}))
    CloudWatchLogsEncoding.add_member(:gbk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gbk', traits: {"smithy.api#enumValue" => "gbk"}))
    CloudWatchLogsEncoding.add_member(:gb18030, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gb18030', traits: {"smithy.api#enumValue" => "gb18030"}))
    CloudWatchLogsEncoding.add_member(:hz, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hz', traits: {"smithy.api#enumValue" => "hz"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp', traits: {"smithy.api#enumValue" => "iso2022_jp"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp_1', traits: {"smithy.api#enumValue" => "iso2022_jp_1"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp_2', traits: {"smithy.api#enumValue" => "iso2022_jp_2"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp_2004, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp_2004', traits: {"smithy.api#enumValue" => "iso2022_jp_2004"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp_3', traits: {"smithy.api#enumValue" => "iso2022_jp_3"}))
    CloudWatchLogsEncoding.add_member(:iso2022_jp_ext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_jp_ext', traits: {"smithy.api#enumValue" => "iso2022_jp_ext"}))
    CloudWatchLogsEncoding.add_member(:iso2022_kr, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso2022_kr', traits: {"smithy.api#enumValue" => "iso2022_kr"}))
    CloudWatchLogsEncoding.add_member(:latin_1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'latin_1', traits: {"smithy.api#enumValue" => "latin_1"}))
    CloudWatchLogsEncoding.add_member(:iso8859_2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_2', traits: {"smithy.api#enumValue" => "iso8859_2"}))
    CloudWatchLogsEncoding.add_member(:iso8859_3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_3', traits: {"smithy.api#enumValue" => "iso8859_3"}))
    CloudWatchLogsEncoding.add_member(:iso8859_4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_4', traits: {"smithy.api#enumValue" => "iso8859_4"}))
    CloudWatchLogsEncoding.add_member(:iso8859_5, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_5', traits: {"smithy.api#enumValue" => "iso8859_5"}))
    CloudWatchLogsEncoding.add_member(:iso8859_6, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_6', traits: {"smithy.api#enumValue" => "iso8859_6"}))
    CloudWatchLogsEncoding.add_member(:iso8859_7, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_7', traits: {"smithy.api#enumValue" => "iso8859_7"}))
    CloudWatchLogsEncoding.add_member(:iso8859_8, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_8', traits: {"smithy.api#enumValue" => "iso8859_8"}))
    CloudWatchLogsEncoding.add_member(:iso8859_9, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_9', traits: {"smithy.api#enumValue" => "iso8859_9"}))
    CloudWatchLogsEncoding.add_member(:iso8859_10, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_10', traits: {"smithy.api#enumValue" => "iso8859_10"}))
    CloudWatchLogsEncoding.add_member(:iso8859_13, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_13', traits: {"smithy.api#enumValue" => "iso8859_13"}))
    CloudWatchLogsEncoding.add_member(:iso8859_14, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_14', traits: {"smithy.api#enumValue" => "iso8859_14"}))
    CloudWatchLogsEncoding.add_member(:iso8859_15, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_15', traits: {"smithy.api#enumValue" => "iso8859_15"}))
    CloudWatchLogsEncoding.add_member(:iso8859_16, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'iso8859_16', traits: {"smithy.api#enumValue" => "iso8859_16"}))
    CloudWatchLogsEncoding.add_member(:johab, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'johab', traits: {"smithy.api#enumValue" => "johab"}))
    CloudWatchLogsEncoding.add_member(:koi8_r, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'koi8_r', traits: {"smithy.api#enumValue" => "koi8_r"}))
    CloudWatchLogsEncoding.add_member(:koi8_u, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'koi8_u', traits: {"smithy.api#enumValue" => "koi8_u"}))
    CloudWatchLogsEncoding.add_member(:mac_cyrillic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_cyrillic', traits: {"smithy.api#enumValue" => "mac_cyrillic"}))
    CloudWatchLogsEncoding.add_member(:mac_greek, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_greek', traits: {"smithy.api#enumValue" => "mac_greek"}))
    CloudWatchLogsEncoding.add_member(:mac_iceland, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_iceland', traits: {"smithy.api#enumValue" => "mac_iceland"}))
    CloudWatchLogsEncoding.add_member(:mac_latin2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_latin2', traits: {"smithy.api#enumValue" => "mac_latin2"}))
    CloudWatchLogsEncoding.add_member(:mac_roman, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_roman', traits: {"smithy.api#enumValue" => "mac_roman"}))
    CloudWatchLogsEncoding.add_member(:mac_turkish, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mac_turkish', traits: {"smithy.api#enumValue" => "mac_turkish"}))
    CloudWatchLogsEncoding.add_member(:ptcp154, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ptcp154', traits: {"smithy.api#enumValue" => "ptcp154"}))
    CloudWatchLogsEncoding.add_member(:shift_jis, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'shift_jis', traits: {"smithy.api#enumValue" => "shift_jis"}))
    CloudWatchLogsEncoding.add_member(:shift_jis_2004, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'shift_jis_2004', traits: {"smithy.api#enumValue" => "shift_jis_2004"}))
    CloudWatchLogsEncoding.add_member(:shift_jisx0213, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'shift_jisx0213', traits: {"smithy.api#enumValue" => "shift_jisx0213"}))
    CloudWatchLogsEncoding.add_member(:utf_32, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_32', traits: {"smithy.api#enumValue" => "utf_32"}))
    CloudWatchLogsEncoding.add_member(:utf_32_be, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_32_be', traits: {"smithy.api#enumValue" => "utf_32_be"}))
    CloudWatchLogsEncoding.add_member(:utf_32_le, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_32_le', traits: {"smithy.api#enumValue" => "utf_32_le"}))
    CloudWatchLogsEncoding.add_member(:utf_16, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_16', traits: {"smithy.api#enumValue" => "utf_16"}))
    CloudWatchLogsEncoding.add_member(:utf_16_be, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_16_be', traits: {"smithy.api#enumValue" => "utf_16_be"}))
    CloudWatchLogsEncoding.add_member(:utf_16_le, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_16_le', traits: {"smithy.api#enumValue" => "utf_16_le"}))
    CloudWatchLogsEncoding.add_member(:utf_7, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_7', traits: {"smithy.api#enumValue" => "utf_7"}))
    CloudWatchLogsEncoding.add_member(:utf_8, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_8', traits: {"smithy.api#enumValue" => "utf_8"}))
    CloudWatchLogsEncoding.add_member(:utf_8_sig, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'utf_8_sig', traits: {"smithy.api#enumValue" => "utf_8_sig"}))
    CloudWatchLogsInitialPosition.add_member(:start_of_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'start_of_file', traits: {"smithy.api#enumValue" => "start_of_file"}))
    CloudWatchLogsInitialPosition.add_member(:end_of_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'end_of_file', traits: {"smithy.api#enumValue" => "end_of_file"}))
    CloudWatchLogsLogStream.add_member(:log_group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogGroupName'))
    CloudWatchLogsLogStream.add_member(:datetime_format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatetimeFormat'))
    CloudWatchLogsLogStream.add_member(:time_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsTimeZone, location_name: 'TimeZone'))
    CloudWatchLogsLogStream.add_member(:file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'File'))
    CloudWatchLogsLogStream.add_member(:file_fingerprint_lines, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FileFingerprintLines'))
    CloudWatchLogsLogStream.add_member(:multi_line_start_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultiLineStartPattern'))
    CloudWatchLogsLogStream.add_member(:initial_position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsInitialPosition, location_name: 'InitialPosition'))
    CloudWatchLogsLogStream.add_member(:encoding, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsEncoding, location_name: 'Encoding'))
    CloudWatchLogsLogStream.add_member(:buffer_duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BufferDuration'))
    CloudWatchLogsLogStream.add_member(:batch_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BatchCount'))
    CloudWatchLogsLogStream.add_member(:batch_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BatchSize'))
    CloudWatchLogsLogStream.type = Types::CloudWatchLogsLogStream
    CloudWatchLogsLogStreams.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsLogStream)
    CloudWatchLogsTimeZone.add_member(:local, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOCAL', traits: {"smithy.api#enumValue" => "LOCAL"}))
    CloudWatchLogsTimeZone.add_member(:utc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UTC', traits: {"smithy.api#enumValue" => "UTC"}))
    Command.add_member(:command_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CommandId'))
    Command.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    Command.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId'))
    Command.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt'))
    Command.add_member(:acknowledged_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'AcknowledgedAt'))
    Command.add_member(:completed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletedAt'))
    Command.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    Command.add_member(:exit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ExitCode'))
    Command.add_member(:log_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogUrl'))
    Command.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    Command.type = Types::Command
    Commands.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Command)
    CreateAppRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    CreateAppRequest.add_member(:shortname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Shortname'))
    CreateAppRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateAppRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    CreateAppRequest.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'DataSources'))
    CreateAppRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    CreateAppRequest.add_member(:app_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'AppSource'))
    CreateAppRequest.add_member(:domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Domains'))
    CreateAppRequest.add_member(:enable_ssl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableSsl'))
    CreateAppRequest.add_member(:ssl_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SslConfiguration, location_name: 'SslConfiguration'))
    CreateAppRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAttributes, location_name: 'Attributes'))
    CreateAppRequest.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'Environment'))
    CreateAppRequest.type = Types::CreateAppRequest
    CreateAppResult.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId'))
    CreateAppResult.type = Types::CreateAppResult
    CreateDeploymentRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId'))
    CreateDeploymentRequest.add_member(:instance_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'InstanceIds'))
    CreateDeploymentRequest.add_member(:layer_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds'))
    CreateDeploymentRequest.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCommand, location_name: 'Command', traits: {"smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment'))
    CreateDeploymentRequest.add_member(:custom_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson'))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDeploymentResult.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId'))
    CreateDeploymentResult.type = Types::CreateDeploymentResult
    CreateInstanceRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    CreateInstanceRequest.add_member(:layer_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds', traits: {"smithy.api#required" => {}}))
    CreateInstanceRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#required" => {}}))
    CreateInstanceRequest.add_member(:auto_scaling_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingType, location_name: 'AutoScalingType'))
    CreateInstanceRequest.add_member(:hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Hostname'))
    CreateInstanceRequest.add_member(:os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Os'))
    CreateInstanceRequest.add_member(:ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmiId'))
    CreateInstanceRequest.add_member(:ssh_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshKeyName'))
    CreateInstanceRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    CreateInstanceRequest.add_member(:virtualization_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VirtualizationType'))
    CreateInstanceRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetId'))
    CreateInstanceRequest.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'Architecture'))
    CreateInstanceRequest.add_member(:root_device_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'RootDeviceType'))
    CreateInstanceRequest.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: 'BlockDeviceMappings'))
    CreateInstanceRequest.add_member(:install_updates_on_boot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot'))
    CreateInstanceRequest.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EbsOptimized'))
    CreateInstanceRequest.add_member(:agent_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion'))
    CreateInstanceRequest.add_member(:tenancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Tenancy'))
    CreateInstanceRequest.type = Types::CreateInstanceRequest
    CreateInstanceResult.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    CreateInstanceResult.type = Types::CreateInstanceResult
    CreateLayerRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    CreateLayerRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerType, location_name: 'Type', traits: {"smithy.api#required" => {}}))
    CreateLayerRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateLayerRequest.add_member(:shortname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Shortname', traits: {"smithy.api#required" => {}}))
    CreateLayerRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAttributes, location_name: 'Attributes'))
    CreateLayerRequest.add_member(:cloud_watch_logs_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsConfiguration, location_name: 'CloudWatchLogsConfiguration'))
    CreateLayerRequest.add_member(:custom_instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomInstanceProfileArn'))
    CreateLayerRequest.add_member(:custom_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson'))
    CreateLayerRequest.add_member(:custom_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'CustomSecurityGroupIds'))
    CreateLayerRequest.add_member(:packages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Packages'))
    CreateLayerRequest.add_member(:volume_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeConfigurations, location_name: 'VolumeConfigurations'))
    CreateLayerRequest.add_member(:enable_auto_healing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableAutoHealing'))
    CreateLayerRequest.add_member(:auto_assign_elastic_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignElasticIps'))
    CreateLayerRequest.add_member(:auto_assign_public_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignPublicIps'))
    CreateLayerRequest.add_member(:custom_recipes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Recipes, location_name: 'CustomRecipes'))
    CreateLayerRequest.add_member(:install_updates_on_boot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot'))
    CreateLayerRequest.add_member(:use_ebs_optimized_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseEbsOptimizedInstances'))
    CreateLayerRequest.add_member(:lifecycle_event_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventConfiguration, location_name: 'LifecycleEventConfiguration'))
    CreateLayerRequest.type = Types::CreateLayerRequest
    CreateLayerResult.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId'))
    CreateLayerResult.type = Types::CreateLayerResult
    CreateStackRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateStackRequest.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region', traits: {"smithy.api#required" => {}}))
    CreateStackRequest.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    CreateStackRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttributes, location_name: 'Attributes'))
    CreateStackRequest.add_member(:service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn', traits: {"smithy.api#required" => {}}))
    CreateStackRequest.add_member(:default_instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultInstanceProfileArn', traits: {"smithy.api#required" => {}}))
    CreateStackRequest.add_member(:default_os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultOs'))
    CreateStackRequest.add_member(:hostname_theme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostnameTheme'))
    CreateStackRequest.add_member(:default_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAvailabilityZone'))
    CreateStackRequest.add_member(:default_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubnetId'))
    CreateStackRequest.add_member(:custom_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson'))
    CreateStackRequest.add_member(:configuration_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager'))
    CreateStackRequest.add_member(:chef_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: 'ChefConfiguration'))
    CreateStackRequest.add_member(:use_custom_cookbooks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseCustomCookbooks'))
    CreateStackRequest.add_member(:use_opsworks_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOpsworksSecurityGroups'))
    CreateStackRequest.add_member(:custom_cookbooks_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'CustomCookbooksSource'))
    CreateStackRequest.add_member(:default_ssh_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSshKeyName'))
    CreateStackRequest.add_member(:default_root_device_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'DefaultRootDeviceType'))
    CreateStackRequest.add_member(:agent_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion'))
    CreateStackRequest.type = Types::CreateStackRequest
    CreateStackResult.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    CreateStackResult.type = Types::CreateStackResult
    CreateUserProfileRequest.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#required" => {}}))
    CreateUserProfileRequest.add_member(:ssh_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshUsername'))
    CreateUserProfileRequest.add_member(:ssh_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshPublicKey'))
    CreateUserProfileRequest.add_member(:allow_self_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSelfManagement'))
    CreateUserProfileRequest.type = Types::CreateUserProfileRequest
    CreateUserProfileResult.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn'))
    CreateUserProfileResult.type = Types::CreateUserProfileResult
    DailyAutoScalingSchedule.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Hour)
    DailyAutoScalingSchedule.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Switch)
    DataSource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    DataSource.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    DataSource.add_member(:database_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DatabaseName'))
    DataSource.type = Types::DataSource
    DataSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSource)
    DeleteAppRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#required" => {}}))
    DeleteAppRequest.type = Types::DeleteAppRequest
    DeleteInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#required" => {}}))
    DeleteInstanceRequest.add_member(:delete_elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteElasticIp'))
    DeleteInstanceRequest.add_member(:delete_volumes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteVolumes'))
    DeleteInstanceRequest.type = Types::DeleteInstanceRequest
    DeleteLayerRequest.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#required" => {}}))
    DeleteLayerRequest.type = Types::DeleteLayerRequest
    DeleteStackRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    DeleteStackRequest.type = Types::DeleteStackRequest
    DeleteUserProfileRequest.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#required" => {}}))
    DeleteUserProfileRequest.type = Types::DeleteUserProfileRequest
    Deployment.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId'))
    Deployment.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    Deployment.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId'))
    Deployment.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt'))
    Deployment.add_member(:completed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CompletedAt'))
    Deployment.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Duration'))
    Deployment.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn'))
    Deployment.add_member(:comment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comment'))
    Deployment.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCommand, location_name: 'Command'))
    Deployment.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    Deployment.add_member(:custom_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson'))
    Deployment.add_member(:instance_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'InstanceIds'))
    Deployment.type = Types::Deployment
    DeploymentCommand.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCommandName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    DeploymentCommand.add_member(:args, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentCommandArgs, location_name: 'Args'))
    DeploymentCommand.type = Types::DeploymentCommand
    DeploymentCommandArgs.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    DeploymentCommandArgs.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings)
    DeploymentCommandName.add_member(:install_dependencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'install_dependencies', traits: {"smithy.api#enumValue" => "install_dependencies"}))
    DeploymentCommandName.add_member(:update_dependencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'update_dependencies', traits: {"smithy.api#enumValue" => "update_dependencies"}))
    DeploymentCommandName.add_member(:update_custom_cookbooks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'update_custom_cookbooks', traits: {"smithy.api#enumValue" => "update_custom_cookbooks"}))
    DeploymentCommandName.add_member(:execute_recipes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'execute_recipes', traits: {"smithy.api#enumValue" => "execute_recipes"}))
    DeploymentCommandName.add_member(:configure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'configure', traits: {"smithy.api#enumValue" => "configure"}))
    DeploymentCommandName.add_member(:setup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'setup', traits: {"smithy.api#enumValue" => "setup"}))
    DeploymentCommandName.add_member(:deploy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'deploy', traits: {"smithy.api#enumValue" => "deploy"}))
    DeploymentCommandName.add_member(:rollback, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rollback', traits: {"smithy.api#enumValue" => "rollback"}))
    DeploymentCommandName.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'start', traits: {"smithy.api#enumValue" => "start"}))
    DeploymentCommandName.add_member(:stop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'stop', traits: {"smithy.api#enumValue" => "stop"}))
    DeploymentCommandName.add_member(:restart, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'restart', traits: {"smithy.api#enumValue" => "restart"}))
    DeploymentCommandName.add_member(:undeploy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'undeploy', traits: {"smithy.api#enumValue" => "undeploy"}))
    Deployments.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Deployment)
    DeregisterEcsClusterRequest.add_member(:ecs_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterArn', traits: {"smithy.api#required" => {}}))
    DeregisterEcsClusterRequest.type = Types::DeregisterEcsClusterRequest
    DeregisterElasticIpRequest.add_member(:elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#required" => {}}))
    DeregisterElasticIpRequest.type = Types::DeregisterElasticIpRequest
    DeregisterInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#required" => {}}))
    DeregisterInstanceRequest.type = Types::DeregisterInstanceRequest
    DeregisterRdsDbInstanceRequest.add_member(:rds_db_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RdsDbInstanceArn', traits: {"smithy.api#required" => {}}))
    DeregisterRdsDbInstanceRequest.type = Types::DeregisterRdsDbInstanceRequest
    DeregisterVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId', traits: {"smithy.api#required" => {}}))
    DeregisterVolumeRequest.type = Types::DeregisterVolumeRequest
    DescribeAgentVersionsRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribeAgentVersionsRequest.add_member(:configuration_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager'))
    DescribeAgentVersionsRequest.type = Types::DescribeAgentVersionsRequest
    DescribeAgentVersionsResult.add_member(:agent_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AgentVersions, location_name: 'AgentVersions'))
    DescribeAgentVersionsResult.type = Types::DescribeAgentVersionsResult
    DescribeAppsRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribeAppsRequest.add_member(:app_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'AppIds'))
    DescribeAppsRequest.type = Types::DescribeAppsRequest
    DescribeAppsResult.add_member(:apps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Apps, location_name: 'Apps'))
    DescribeAppsResult.type = Types::DescribeAppsResult
    DescribeCommandsRequest.add_member(:deployment_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DeploymentId'))
    DescribeCommandsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    DescribeCommandsRequest.add_member(:command_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'CommandIds'))
    DescribeCommandsRequest.type = Types::DescribeCommandsRequest
    DescribeCommandsResult.add_member(:commands, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Commands, location_name: 'Commands'))
    DescribeCommandsResult.type = Types::DescribeCommandsResult
    DescribeDeploymentsRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribeDeploymentsRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId'))
    DescribeDeploymentsRequest.add_member(:deployment_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'DeploymentIds'))
    DescribeDeploymentsRequest.type = Types::DescribeDeploymentsRequest
    DescribeDeploymentsResult.add_member(:deployments, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Deployments, location_name: 'Deployments'))
    DescribeDeploymentsResult.type = Types::DescribeDeploymentsResult
    DescribeEcsClustersRequest.add_member(:ecs_cluster_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'EcsClusterArns'))
    DescribeEcsClustersRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribeEcsClustersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeEcsClustersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults'))
    DescribeEcsClustersRequest.type = Types::DescribeEcsClustersRequest
    DescribeEcsClustersResult.add_member(:ecs_clusters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsClusters, location_name: 'EcsClusters'))
    DescribeEcsClustersResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeEcsClustersResult.type = Types::DescribeEcsClustersResult
    DescribeElasticIpsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    DescribeElasticIpsRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribeElasticIpsRequest.add_member(:ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Ips'))
    DescribeElasticIpsRequest.type = Types::DescribeElasticIpsRequest
    DescribeElasticIpsResult.add_member(:elastic_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticIps, location_name: 'ElasticIps'))
    DescribeElasticIpsResult.type = Types::DescribeElasticIpsResult
    DescribeElasticLoadBalancersRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribeElasticLoadBalancersRequest.add_member(:layer_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds'))
    DescribeElasticLoadBalancersRequest.type = Types::DescribeElasticLoadBalancersRequest
    DescribeElasticLoadBalancersResult.add_member(:elastic_load_balancers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticLoadBalancers, location_name: 'ElasticLoadBalancers'))
    DescribeElasticLoadBalancersResult.type = Types::DescribeElasticLoadBalancersResult
    DescribeInstancesRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribeInstancesRequest.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId'))
    DescribeInstancesRequest.add_member(:instance_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'InstanceIds'))
    DescribeInstancesRequest.type = Types::DescribeInstancesRequest
    DescribeInstancesResult.add_member(:instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instances, location_name: 'Instances'))
    DescribeInstancesResult.type = Types::DescribeInstancesResult
    DescribeLayersRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribeLayersRequest.add_member(:layer_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds'))
    DescribeLayersRequest.type = Types::DescribeLayersRequest
    DescribeLayersResult.add_member(:layers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Layers, location_name: 'Layers'))
    DescribeLayersResult.type = Types::DescribeLayersResult
    DescribeLoadBasedAutoScalingRequest.add_member(:layer_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds', traits: {"smithy.api#required" => {}}))
    DescribeLoadBasedAutoScalingRequest.type = Types::DescribeLoadBasedAutoScalingRequest
    DescribeLoadBasedAutoScalingResult.add_member(:load_based_auto_scaling_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBasedAutoScalingConfigurations, location_name: 'LoadBasedAutoScalingConfigurations'))
    DescribeLoadBasedAutoScalingResult.type = Types::DescribeLoadBasedAutoScalingResult
    DescribeMyUserProfileResult.add_member(:user_profile, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SelfUserProfile, location_name: 'UserProfile'))
    DescribeMyUserProfileResult.type = Types::DescribeMyUserProfileResult
    DescribeOperatingSystemsResponse.add_member(:operating_systems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystems, location_name: 'OperatingSystems'))
    DescribeOperatingSystemsResponse.type = Types::DescribeOperatingSystemsResponse
    DescribePermissionsRequest.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn'))
    DescribePermissionsRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribePermissionsRequest.type = Types::DescribePermissionsRequest
    DescribePermissionsResult.add_member(:permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permissions, location_name: 'Permissions'))
    DescribePermissionsResult.type = Types::DescribePermissionsResult
    DescribeRaidArraysRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    DescribeRaidArraysRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribeRaidArraysRequest.add_member(:raid_array_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'RaidArrayIds'))
    DescribeRaidArraysRequest.type = Types::DescribeRaidArraysRequest
    DescribeRaidArraysResult.add_member(:raid_arrays, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RaidArrays, location_name: 'RaidArrays'))
    DescribeRaidArraysResult.type = Types::DescribeRaidArraysResult
    DescribeRdsDbInstancesRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    DescribeRdsDbInstancesRequest.add_member(:rds_db_instance_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'RdsDbInstanceArns'))
    DescribeRdsDbInstancesRequest.type = Types::DescribeRdsDbInstancesRequest
    DescribeRdsDbInstancesResult.add_member(:rds_db_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbInstances, location_name: 'RdsDbInstances'))
    DescribeRdsDbInstancesResult.type = Types::DescribeRdsDbInstancesResult
    DescribeServiceErrorsRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribeServiceErrorsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    DescribeServiceErrorsRequest.add_member(:service_error_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'ServiceErrorIds'))
    DescribeServiceErrorsRequest.type = Types::DescribeServiceErrorsRequest
    DescribeServiceErrorsResult.add_member(:service_errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceErrors, location_name: 'ServiceErrors'))
    DescribeServiceErrorsResult.type = Types::DescribeServiceErrorsResult
    DescribeStackProvisioningParametersRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    DescribeStackProvisioningParametersRequest.type = Types::DescribeStackProvisioningParametersRequest
    DescribeStackProvisioningParametersResult.add_member(:agent_installer_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentInstallerUrl'))
    DescribeStackProvisioningParametersResult.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Parameters, location_name: 'Parameters'))
    DescribeStackProvisioningParametersResult.type = Types::DescribeStackProvisioningParametersResult
    DescribeStackSummaryRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    DescribeStackSummaryRequest.type = Types::DescribeStackSummaryRequest
    DescribeStackSummaryResult.add_member(:stack_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackSummary, location_name: 'StackSummary'))
    DescribeStackSummaryResult.type = Types::DescribeStackSummaryResult
    DescribeStacksRequest.add_member(:stack_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'StackIds'))
    DescribeStacksRequest.type = Types::DescribeStacksRequest
    DescribeStacksResult.add_member(:stacks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stacks, location_name: 'Stacks'))
    DescribeStacksResult.type = Types::DescribeStacksResult
    DescribeTimeBasedAutoScalingRequest.add_member(:instance_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'InstanceIds', traits: {"smithy.api#required" => {}}))
    DescribeTimeBasedAutoScalingRequest.type = Types::DescribeTimeBasedAutoScalingRequest
    DescribeTimeBasedAutoScalingResult.add_member(:time_based_auto_scaling_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeBasedAutoScalingConfigurations, location_name: 'TimeBasedAutoScalingConfigurations'))
    DescribeTimeBasedAutoScalingResult.type = Types::DescribeTimeBasedAutoScalingResult
    DescribeUserProfilesRequest.add_member(:iam_user_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'IamUserArns'))
    DescribeUserProfilesRequest.type = Types::DescribeUserProfilesRequest
    DescribeUserProfilesResult.add_member(:user_profiles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserProfiles, location_name: 'UserProfiles'))
    DescribeUserProfilesResult.type = Types::DescribeUserProfilesResult
    DescribeVolumesRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    DescribeVolumesRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    DescribeVolumesRequest.add_member(:raid_array_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RaidArrayId'))
    DescribeVolumesRequest.add_member(:volume_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'VolumeIds'))
    DescribeVolumesRequest.type = Types::DescribeVolumesRequest
    DescribeVolumesResult.add_member(:volumes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Volumes, location_name: 'Volumes'))
    DescribeVolumesResult.type = Types::DescribeVolumesResult
    DetachElasticLoadBalancerRequest.add_member(:elastic_load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticLoadBalancerName', traits: {"smithy.api#required" => {}}))
    DetachElasticLoadBalancerRequest.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#required" => {}}))
    DetachElasticLoadBalancerRequest.type = Types::DetachElasticLoadBalancerRequest
    DisassociateElasticIpRequest.add_member(:elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#required" => {}}))
    DisassociateElasticIpRequest.type = Types::DisassociateElasticIpRequest
    EbsBlockDevice.add_member(:snapshot_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SnapshotId'))
    EbsBlockDevice.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Iops'))
    EbsBlockDevice.add_member(:volume_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'VolumeSize'))
    EbsBlockDevice.add_member(:volume_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeType, location_name: 'VolumeType'))
    EbsBlockDevice.add_member(:delete_on_termination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteOnTermination'))
    EbsBlockDevice.type = Types::EbsBlockDevice
    EcsCluster.add_member(:ecs_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterArn'))
    EcsCluster.add_member(:ecs_cluster_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterName'))
    EcsCluster.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    EcsCluster.add_member(:registered_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'RegisteredAt'))
    EcsCluster.type = Types::EcsCluster
    EcsClusters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EcsCluster)
    ElasticIp.add_member(:ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ip'))
    ElasticIp.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    ElasticIp.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Domain'))
    ElasticIp.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region'))
    ElasticIp.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    ElasticIp.type = Types::ElasticIp
    ElasticIps.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticIp)
    ElasticLoadBalancer.add_member(:elastic_load_balancer_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticLoadBalancerName'))
    ElasticLoadBalancer.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region'))
    ElasticLoadBalancer.add_member(:dns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DnsName'))
    ElasticLoadBalancer.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    ElasticLoadBalancer.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId'))
    ElasticLoadBalancer.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    ElasticLoadBalancer.add_member(:availability_zones, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'AvailabilityZones'))
    ElasticLoadBalancer.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SubnetIds'))
    ElasticLoadBalancer.add_member(:ec2_instance_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Ec2InstanceIds'))
    ElasticLoadBalancer.type = Types::ElasticLoadBalancer
    ElasticLoadBalancers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ElasticLoadBalancer)
    EnvironmentVariable.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:secure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Secure'))
    EnvironmentVariable.type = Types::EnvironmentVariable
    EnvironmentVariables.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariable)
    GetHostnameSuggestionRequest.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#required" => {}}))
    GetHostnameSuggestionRequest.type = Types::GetHostnameSuggestionRequest
    GetHostnameSuggestionResult.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId'))
    GetHostnameSuggestionResult.add_member(:hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Hostname'))
    GetHostnameSuggestionResult.type = Types::GetHostnameSuggestionResult
    GrantAccessRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#required" => {}}))
    GrantAccessRequest.add_member(:valid_for_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidForInMinutes, location_name: 'ValidForInMinutes'))
    GrantAccessRequest.type = Types::GrantAccessRequest
    GrantAccessResult.add_member(:temporary_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TemporaryCredential, location_name: 'TemporaryCredential'))
    GrantAccessResult.type = Types::GrantAccessResult
    Instance.add_member(:agent_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion'))
    Instance.add_member(:ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmiId'))
    Instance.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'Architecture'))
    Instance.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    Instance.add_member(:auto_scaling_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingType, location_name: 'AutoScalingType'))
    Instance.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    Instance.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockDeviceMappings, location_name: 'BlockDeviceMappings'))
    Instance.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt'))
    Instance.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EbsOptimized'))
    Instance.add_member(:ec2_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ec2InstanceId'))
    Instance.add_member(:ecs_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterArn'))
    Instance.add_member(:ecs_container_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsContainerInstanceArn'))
    Instance.add_member(:elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp'))
    Instance.add_member(:hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Hostname'))
    Instance.add_member(:infrastructure_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InfrastructureClass'))
    Instance.add_member(:install_updates_on_boot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot'))
    Instance.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    Instance.add_member(:instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceProfileArn'))
    Instance.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType'))
    Instance.add_member(:last_service_error_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastServiceErrorId'))
    Instance.add_member(:layer_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds'))
    Instance.add_member(:os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Os'))
    Instance.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Platform'))
    Instance.add_member(:private_dns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateDns'))
    Instance.add_member(:private_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateIp'))
    Instance.add_member(:public_dns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicDns'))
    Instance.add_member(:public_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicIp'))
    Instance.add_member(:registered_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RegisteredBy'))
    Instance.add_member(:reported_agent_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReportedAgentVersion'))
    Instance.add_member(:reported_os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportedOs, location_name: 'ReportedOs'))
    Instance.add_member(:root_device_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'RootDeviceType'))
    Instance.add_member(:root_device_volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RootDeviceVolumeId'))
    Instance.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SecurityGroupIds'))
    Instance.add_member(:ssh_host_dsa_key_fingerprint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshHostDsaKeyFingerprint'))
    Instance.add_member(:ssh_host_rsa_key_fingerprint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshHostRsaKeyFingerprint'))
    Instance.add_member(:ssh_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshKeyName'))
    Instance.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    Instance.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    Instance.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SubnetId'))
    Instance.add_member(:tenancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Tenancy'))
    Instance.add_member(:virtualization_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VirtualizationType, location_name: 'VirtualizationType'))
    Instance.type = Types::Instance
    InstanceIdentity.add_member(:document, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Document'))
    InstanceIdentity.add_member(:signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Signature'))
    InstanceIdentity.type = Types::InstanceIdentity
    Instances.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Instance)
    InstancesCount.add_member(:assigning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Assigning'))
    InstancesCount.add_member(:booting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Booting'))
    InstancesCount.add_member(:connection_lost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ConnectionLost'))
    InstancesCount.add_member(:deregistering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Deregistering'))
    InstancesCount.add_member(:online, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Online'))
    InstancesCount.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Pending'))
    InstancesCount.add_member(:rebooting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Rebooting'))
    InstancesCount.add_member(:registered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Registered'))
    InstancesCount.add_member(:registering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Registering'))
    InstancesCount.add_member(:requested, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Requested'))
    InstancesCount.add_member(:running_setup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RunningSetup'))
    InstancesCount.add_member(:setup_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'SetupFailed'))
    InstancesCount.add_member(:shutting_down, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ShuttingDown'))
    InstancesCount.add_member(:start_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StartFailed'))
    InstancesCount.add_member(:stop_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StopFailed'))
    InstancesCount.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Stopped'))
    InstancesCount.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Stopping'))
    InstancesCount.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Terminated'))
    InstancesCount.add_member(:terminating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Terminating'))
    InstancesCount.add_member(:unassigning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Unassigning'))
    InstancesCount.type = Types::InstancesCount
    Layer.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    Layer.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    Layer.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId'))
    Layer.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerType, location_name: 'Type'))
    Layer.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Layer.add_member(:shortname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Shortname'))
    Layer.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAttributes, location_name: 'Attributes'))
    Layer.add_member(:cloud_watch_logs_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsConfiguration, location_name: 'CloudWatchLogsConfiguration'))
    Layer.add_member(:custom_instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomInstanceProfileArn'))
    Layer.add_member(:custom_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson'))
    Layer.add_member(:custom_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'CustomSecurityGroupIds'))
    Layer.add_member(:default_security_group_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'DefaultSecurityGroupNames'))
    Layer.add_member(:packages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Packages'))
    Layer.add_member(:volume_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeConfigurations, location_name: 'VolumeConfigurations'))
    Layer.add_member(:enable_auto_healing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableAutoHealing'))
    Layer.add_member(:auto_assign_elastic_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignElasticIps'))
    Layer.add_member(:auto_assign_public_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignPublicIps'))
    Layer.add_member(:default_recipes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Recipes, location_name: 'DefaultRecipes'))
    Layer.add_member(:custom_recipes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Recipes, location_name: 'CustomRecipes'))
    Layer.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt'))
    Layer.add_member(:install_updates_on_boot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot'))
    Layer.add_member(:use_ebs_optimized_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseEbsOptimizedInstances'))
    Layer.add_member(:lifecycle_event_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventConfiguration, location_name: 'LifecycleEventConfiguration'))
    Layer.type = Types::Layer
    LayerAttributes.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAttributesKeys)
    LayerAttributes.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    LayerAttributesKeys.add_member(:ecs_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EcsClusterArn', traits: {"smithy.api#enumValue" => "EcsClusterArn"}))
    LayerAttributesKeys.add_member(:enable_haproxy_stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EnableHaproxyStats', traits: {"smithy.api#enumValue" => "EnableHaproxyStats"}))
    LayerAttributesKeys.add_member(:haproxy_stats_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HaproxyStatsUrl', traits: {"smithy.api#enumValue" => "HaproxyStatsUrl"}))
    LayerAttributesKeys.add_member(:haproxy_stats_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HaproxyStatsUser', traits: {"smithy.api#enumValue" => "HaproxyStatsUser"}))
    LayerAttributesKeys.add_member(:haproxy_stats_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HaproxyStatsPassword', traits: {"smithy.api#enumValue" => "HaproxyStatsPassword"}))
    LayerAttributesKeys.add_member(:haproxy_health_check_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HaproxyHealthCheckUrl', traits: {"smithy.api#enumValue" => "HaproxyHealthCheckUrl"}))
    LayerAttributesKeys.add_member(:haproxy_health_check_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HaproxyHealthCheckMethod', traits: {"smithy.api#enumValue" => "HaproxyHealthCheckMethod"}))
    LayerAttributesKeys.add_member(:mysql_root_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MysqlRootPassword', traits: {"smithy.api#enumValue" => "MysqlRootPassword"}))
    LayerAttributesKeys.add_member(:mysql_root_password_ubiquitous, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MysqlRootPasswordUbiquitous', traits: {"smithy.api#enumValue" => "MysqlRootPasswordUbiquitous"}))
    LayerAttributesKeys.add_member(:ganglia_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GangliaUrl', traits: {"smithy.api#enumValue" => "GangliaUrl"}))
    LayerAttributesKeys.add_member(:ganglia_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GangliaUser', traits: {"smithy.api#enumValue" => "GangliaUser"}))
    LayerAttributesKeys.add_member(:ganglia_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GangliaPassword', traits: {"smithy.api#enumValue" => "GangliaPassword"}))
    LayerAttributesKeys.add_member(:memcached_memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MemcachedMemory', traits: {"smithy.api#enumValue" => "MemcachedMemory"}))
    LayerAttributesKeys.add_member(:nodejs_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NodejsVersion', traits: {"smithy.api#enumValue" => "NodejsVersion"}))
    LayerAttributesKeys.add_member(:ruby_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RubyVersion', traits: {"smithy.api#enumValue" => "RubyVersion"}))
    LayerAttributesKeys.add_member(:rubygems_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RubygemsVersion', traits: {"smithy.api#enumValue" => "RubygemsVersion"}))
    LayerAttributesKeys.add_member(:manage_bundler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ManageBundler', traits: {"smithy.api#enumValue" => "ManageBundler"}))
    LayerAttributesKeys.add_member(:bundler_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BundlerVersion', traits: {"smithy.api#enumValue" => "BundlerVersion"}))
    LayerAttributesKeys.add_member(:rails_stack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RailsStack', traits: {"smithy.api#enumValue" => "RailsStack"}))
    LayerAttributesKeys.add_member(:passenger_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PassengerVersion', traits: {"smithy.api#enumValue" => "PassengerVersion"}))
    LayerAttributesKeys.add_member(:jvm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Jvm', traits: {"smithy.api#enumValue" => "Jvm"}))
    LayerAttributesKeys.add_member(:jvm_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JvmVersion', traits: {"smithy.api#enumValue" => "JvmVersion"}))
    LayerAttributesKeys.add_member(:jvm_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JvmOptions', traits: {"smithy.api#enumValue" => "JvmOptions"}))
    LayerAttributesKeys.add_member(:java_app_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JavaAppServer', traits: {"smithy.api#enumValue" => "JavaAppServer"}))
    LayerAttributesKeys.add_member(:java_app_server_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JavaAppServerVersion', traits: {"smithy.api#enumValue" => "JavaAppServerVersion"}))
    LayerType.add_member(:aws_flow_ruby, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_flow_ruby', traits: {"smithy.api#enumValue" => "aws-flow-ruby"}))
    LayerType.add_member(:ecs_cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ecs_cluster', traits: {"smithy.api#enumValue" => "ecs-cluster"}))
    LayerType.add_member(:java_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'java_app', traits: {"smithy.api#enumValue" => "java-app"}))
    LayerType.add_member(:lb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'lb', traits: {"smithy.api#enumValue" => "lb"}))
    LayerType.add_member(:web, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'web', traits: {"smithy.api#enumValue" => "web"}))
    LayerType.add_member(:php_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'php_app', traits: {"smithy.api#enumValue" => "php-app"}))
    LayerType.add_member(:rails_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'rails_app', traits: {"smithy.api#enumValue" => "rails-app"}))
    LayerType.add_member(:nodejs_app, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'nodejs_app', traits: {"smithy.api#enumValue" => "nodejs-app"}))
    LayerType.add_member(:memcached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'memcached', traits: {"smithy.api#enumValue" => "memcached"}))
    LayerType.add_member(:db_master, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'db_master', traits: {"smithy.api#enumValue" => "db-master"}))
    LayerType.add_member(:monitoring_master, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'monitoring_master', traits: {"smithy.api#enumValue" => "monitoring-master"}))
    LayerType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'custom', traits: {"smithy.api#enumValue" => "custom"}))
    Layers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Layer)
    LifecycleEventConfiguration.add_member(:shutdown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ShutdownEventConfiguration, location_name: 'Shutdown'))
    LifecycleEventConfiguration.type = Types::LifecycleEventConfiguration
    ListTagsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0}))
    ListTagsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsRequest.type = Types::ListTagsRequest
    ListTagsResult.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags'))
    ListTagsResult.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsResult.type = Types::ListTagsResult
    LoadBasedAutoScalingConfiguration.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId'))
    LoadBasedAutoScalingConfiguration.add_member(:enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enable'))
    LoadBasedAutoScalingConfiguration.add_member(:up_scaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: 'UpScaling'))
    LoadBasedAutoScalingConfiguration.add_member(:down_scaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: 'DownScaling'))
    LoadBasedAutoScalingConfiguration.type = Types::LoadBasedAutoScalingConfiguration
    LoadBasedAutoScalingConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadBasedAutoScalingConfiguration)
    OperatingSystem.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    OperatingSystem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    OperatingSystem.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    OperatingSystem.add_member(:configuration_managers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemConfigurationManagers, location_name: 'ConfigurationManagers'))
    OperatingSystem.add_member(:reported_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReportedName'))
    OperatingSystem.add_member(:reported_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ReportedVersion'))
    OperatingSystem.add_member(:supported, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Supported'))
    OperatingSystem.type = Types::OperatingSystem
    OperatingSystemConfigurationManager.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    OperatingSystemConfigurationManager.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    OperatingSystemConfigurationManager.type = Types::OperatingSystemConfigurationManager
    OperatingSystemConfigurationManagers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystemConfigurationManager)
    OperatingSystems.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperatingSystem)
    Parameters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Parameters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Permission.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    Permission.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn'))
    Permission.add_member(:allow_ssh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSsh'))
    Permission.add_member(:allow_sudo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSudo'))
    Permission.add_member(:level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Level'))
    Permission.type = Types::Permission
    Permissions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Permission)
    RaidArray.add_member(:raid_array_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RaidArrayId'))
    RaidArray.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    RaidArray.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    RaidArray.add_member(:raid_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RaidLevel'))
    RaidArray.add_member(:number_of_disks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfDisks'))
    RaidArray.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Size'))
    RaidArray.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Device'))
    RaidArray.add_member(:mount_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MountPoint'))
    RaidArray.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    RaidArray.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt'))
    RaidArray.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    RaidArray.add_member(:volume_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeType'))
    RaidArray.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Iops'))
    RaidArray.type = Types::RaidArray
    RaidArrays.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RaidArray)
    RdsDbInstance.add_member(:rds_db_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RdsDbInstanceArn'))
    RdsDbInstance.add_member(:db_instance_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbInstanceIdentifier'))
    RdsDbInstance.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    RdsDbInstance.add_member(:db_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbPassword'))
    RdsDbInstance.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region'))
    RdsDbInstance.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Address'))
    RdsDbInstance.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    RdsDbInstance.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    RdsDbInstance.add_member(:missing_on_rds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MissingOnRds'))
    RdsDbInstance.type = Types::RdsDbInstance
    RdsDbInstances.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RdsDbInstance)
    RebootInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#required" => {}}))
    RebootInstanceRequest.type = Types::RebootInstanceRequest
    Recipes.add_member(:setup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Setup'))
    Recipes.add_member(:configure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Configure'))
    Recipes.add_member(:deploy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Deploy'))
    Recipes.add_member(:undeploy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Undeploy'))
    Recipes.add_member(:shutdown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Shutdown'))
    Recipes.type = Types::Recipes
    RegisterEcsClusterRequest.add_member(:ecs_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterArn', traits: {"smithy.api#required" => {}}))
    RegisterEcsClusterRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    RegisterEcsClusterRequest.type = Types::RegisterEcsClusterRequest
    RegisterEcsClusterResult.add_member(:ecs_cluster_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EcsClusterArn'))
    RegisterEcsClusterResult.type = Types::RegisterEcsClusterResult
    RegisterElasticIpRequest.add_member(:elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#required" => {}}))
    RegisterElasticIpRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    RegisterElasticIpRequest.type = Types::RegisterElasticIpRequest
    RegisterElasticIpResult.add_member(:elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp'))
    RegisterElasticIpResult.type = Types::RegisterElasticIpResult
    RegisterInstanceRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    RegisterInstanceRequest.add_member(:hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Hostname'))
    RegisterInstanceRequest.add_member(:public_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PublicIp'))
    RegisterInstanceRequest.add_member(:private_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateIp'))
    RegisterInstanceRequest.add_member(:rsa_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RsaPublicKey'))
    RegisterInstanceRequest.add_member(:rsa_public_key_fingerprint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RsaPublicKeyFingerprint'))
    RegisterInstanceRequest.add_member(:instance_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceIdentity, location_name: 'InstanceIdentity'))
    RegisterInstanceRequest.type = Types::RegisterInstanceRequest
    RegisterInstanceResult.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    RegisterInstanceResult.type = Types::RegisterInstanceResult
    RegisterRdsDbInstanceRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    RegisterRdsDbInstanceRequest.add_member(:rds_db_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RdsDbInstanceArn', traits: {"smithy.api#required" => {}}))
    RegisterRdsDbInstanceRequest.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser', traits: {"smithy.api#required" => {}}))
    RegisterRdsDbInstanceRequest.add_member(:db_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbPassword', traits: {"smithy.api#required" => {}}))
    RegisterRdsDbInstanceRequest.type = Types::RegisterRdsDbInstanceRequest
    RegisterVolumeRequest.add_member(:ec2_volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ec2VolumeId'))
    RegisterVolumeRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    RegisterVolumeRequest.type = Types::RegisterVolumeRequest
    RegisterVolumeResult.add_member(:volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId'))
    RegisterVolumeResult.type = Types::RegisterVolumeResult
    ReportedOs.add_member(:family, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Family'))
    ReportedOs.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    ReportedOs.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    ReportedOs.type = Types::ReportedOs
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RootDeviceType.add_member(:ebs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ebs', traits: {"smithy.api#enumValue" => "ebs"}))
    RootDeviceType.add_member(:instance_store, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'instance_store', traits: {"smithy.api#enumValue" => "instance-store"}))
    SelfUserProfile.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn'))
    SelfUserProfile.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    SelfUserProfile.add_member(:ssh_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshUsername'))
    SelfUserProfile.add_member(:ssh_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshPublicKey'))
    SelfUserProfile.type = Types::SelfUserProfile
    ServiceError.add_member(:service_error_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceErrorId'))
    ServiceError.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    ServiceError.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    ServiceError.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type'))
    ServiceError.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceError.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt'))
    ServiceError.type = Types::ServiceError
    ServiceErrors.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceError)
    SetLoadBasedAutoScalingRequest.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#required" => {}}))
    SetLoadBasedAutoScalingRequest.add_member(:enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enable'))
    SetLoadBasedAutoScalingRequest.add_member(:up_scaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: 'UpScaling'))
    SetLoadBasedAutoScalingRequest.add_member(:down_scaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingThresholds, location_name: 'DownScaling'))
    SetLoadBasedAutoScalingRequest.type = Types::SetLoadBasedAutoScalingRequest
    SetPermissionRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    SetPermissionRequest.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#required" => {}}))
    SetPermissionRequest.add_member(:allow_ssh, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSsh'))
    SetPermissionRequest.add_member(:allow_sudo, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSudo'))
    SetPermissionRequest.add_member(:level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Level'))
    SetPermissionRequest.type = Types::SetPermissionRequest
    SetTimeBasedAutoScalingRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#required" => {}}))
    SetTimeBasedAutoScalingRequest.add_member(:auto_scaling_schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklyAutoScalingSchedule, location_name: 'AutoScalingSchedule'))
    SetTimeBasedAutoScalingRequest.type = Types::SetTimeBasedAutoScalingRequest
    ShutdownEventConfiguration.add_member(:execution_timeout, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ExecutionTimeout'))
    ShutdownEventConfiguration.add_member(:delay_until_elb_connections_drained, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DelayUntilElbConnectionsDrained'))
    ShutdownEventConfiguration.type = Types::ShutdownEventConfiguration
    Source.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: 'Type'))
    Source.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Url'))
    Source.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username'))
    Source.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Password'))
    Source.add_member(:ssh_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshKey'))
    Source.add_member(:revision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Revision'))
    Source.type = Types::Source
    SourceType.add_member(:git, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'git', traits: {"smithy.api#enumValue" => "git"}))
    SourceType.add_member(:svn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'svn', traits: {"smithy.api#enumValue" => "svn"}))
    SourceType.add_member(:archive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'archive', traits: {"smithy.api#enumValue" => "archive"}))
    SourceType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 's3', traits: {"smithy.api#enumValue" => "s3"}))
    SslConfiguration.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Certificate', traits: {"smithy.api#required" => {}}))
    SslConfiguration.add_member(:private_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'PrivateKey', traits: {"smithy.api#required" => {}}))
    SslConfiguration.add_member(:chain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Chain'))
    SslConfiguration.type = Types::SslConfiguration
    Stack.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    Stack.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Stack.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    Stack.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region'))
    Stack.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpcId'))
    Stack.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttributes, location_name: 'Attributes'))
    Stack.add_member(:service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn'))
    Stack.add_member(:default_instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultInstanceProfileArn'))
    Stack.add_member(:default_os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultOs'))
    Stack.add_member(:hostname_theme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostnameTheme'))
    Stack.add_member(:default_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAvailabilityZone'))
    Stack.add_member(:default_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubnetId'))
    Stack.add_member(:custom_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson'))
    Stack.add_member(:configuration_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager'))
    Stack.add_member(:chef_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: 'ChefConfiguration'))
    Stack.add_member(:use_custom_cookbooks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseCustomCookbooks'))
    Stack.add_member(:use_opsworks_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOpsworksSecurityGroups'))
    Stack.add_member(:custom_cookbooks_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'CustomCookbooksSource'))
    Stack.add_member(:default_ssh_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSshKeyName'))
    Stack.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'CreatedAt'))
    Stack.add_member(:default_root_device_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'DefaultRootDeviceType'))
    Stack.add_member(:agent_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion'))
    Stack.type = Types::Stack
    StackAttributes.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttributesKeys)
    StackAttributes.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    StackAttributesKeys.add_member(:color, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Color', traits: {"smithy.api#enumValue" => "Color"}))
    StackConfigurationManager.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    StackConfigurationManager.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Version'))
    StackConfigurationManager.type = Types::StackConfigurationManager
    StackSummary.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId'))
    StackSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    StackSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn'))
    StackSummary.add_member(:layers_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'LayersCount'))
    StackSummary.add_member(:apps_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AppsCount'))
    StackSummary.add_member(:instances_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstancesCount, location_name: 'InstancesCount'))
    StackSummary.type = Types::StackSummary
    Stacks.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stack)
    StartInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#required" => {}}))
    StartInstanceRequest.type = Types::StartInstanceRequest
    StartStackRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    StartStackRequest.type = Types::StartStackRequest
    StopInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#required" => {}}))
    StopInstanceRequest.add_member(:force, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Force'))
    StopInstanceRequest.type = Types::StopInstanceRequest
    StopStackRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    StopStackRequest.type = Types::StopStackRequest
    Strings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TemporaryCredential.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Username'))
    TemporaryCredential.add_member(:password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Password'))
    TemporaryCredential.add_member(:valid_for_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ValidForInMinutes'))
    TemporaryCredential.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    TemporaryCredential.type = Types::TemporaryCredential
    TimeBasedAutoScalingConfiguration.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    TimeBasedAutoScalingConfiguration.add_member(:auto_scaling_schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklyAutoScalingSchedule, location_name: 'AutoScalingSchedule'))
    TimeBasedAutoScalingConfiguration.type = Types::TimeBasedAutoScalingConfiguration
    TimeBasedAutoScalingConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeBasedAutoScalingConfiguration)
    UnassignInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#required" => {}}))
    UnassignInstanceRequest.type = Types::UnassignInstanceRequest
    UnassignVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId', traits: {"smithy.api#required" => {}}))
    UnassignVolumeRequest.type = Types::UnassignVolumeRequest
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UpdateAppRequest.add_member(:app_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AppId', traits: {"smithy.api#required" => {}}))
    UpdateAppRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    UpdateAppRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    UpdateAppRequest.add_member(:data_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSources, location_name: 'DataSources'))
    UpdateAppRequest.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppType, location_name: 'Type'))
    UpdateAppRequest.add_member(:app_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'AppSource'))
    UpdateAppRequest.add_member(:domains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Domains'))
    UpdateAppRequest.add_member(:enable_ssl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableSsl'))
    UpdateAppRequest.add_member(:ssl_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SslConfiguration, location_name: 'SslConfiguration'))
    UpdateAppRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AppAttributes, location_name: 'Attributes'))
    UpdateAppRequest.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'Environment'))
    UpdateAppRequest.type = Types::UpdateAppRequest
    UpdateElasticIpRequest.add_member(:elastic_ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ElasticIp', traits: {"smithy.api#required" => {}}))
    UpdateElasticIpRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    UpdateElasticIpRequest.type = Types::UpdateElasticIpRequest
    UpdateInstanceRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#required" => {}}))
    UpdateInstanceRequest.add_member(:layer_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'LayerIds'))
    UpdateInstanceRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType'))
    UpdateInstanceRequest.add_member(:auto_scaling_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoScalingType, location_name: 'AutoScalingType'))
    UpdateInstanceRequest.add_member(:hostname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Hostname'))
    UpdateInstanceRequest.add_member(:os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Os'))
    UpdateInstanceRequest.add_member(:ami_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AmiId'))
    UpdateInstanceRequest.add_member(:ssh_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshKeyName'))
    UpdateInstanceRequest.add_member(:architecture, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Architecture, location_name: 'Architecture'))
    UpdateInstanceRequest.add_member(:install_updates_on_boot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot'))
    UpdateInstanceRequest.add_member(:ebs_optimized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EbsOptimized'))
    UpdateInstanceRequest.add_member(:agent_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion'))
    UpdateInstanceRequest.type = Types::UpdateInstanceRequest
    UpdateLayerRequest.add_member(:layer_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LayerId', traits: {"smithy.api#required" => {}}))
    UpdateLayerRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    UpdateLayerRequest.add_member(:shortname, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Shortname'))
    UpdateLayerRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LayerAttributes, location_name: 'Attributes'))
    UpdateLayerRequest.add_member(:cloud_watch_logs_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsConfiguration, location_name: 'CloudWatchLogsConfiguration'))
    UpdateLayerRequest.add_member(:custom_instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomInstanceProfileArn'))
    UpdateLayerRequest.add_member(:custom_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson'))
    UpdateLayerRequest.add_member(:custom_security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'CustomSecurityGroupIds'))
    UpdateLayerRequest.add_member(:packages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'Packages'))
    UpdateLayerRequest.add_member(:volume_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeConfigurations, location_name: 'VolumeConfigurations'))
    UpdateLayerRequest.add_member(:enable_auto_healing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnableAutoHealing'))
    UpdateLayerRequest.add_member(:auto_assign_elastic_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignElasticIps'))
    UpdateLayerRequest.add_member(:auto_assign_public_ips, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AutoAssignPublicIps'))
    UpdateLayerRequest.add_member(:custom_recipes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Recipes, location_name: 'CustomRecipes'))
    UpdateLayerRequest.add_member(:install_updates_on_boot, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'InstallUpdatesOnBoot'))
    UpdateLayerRequest.add_member(:use_ebs_optimized_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseEbsOptimizedInstances'))
    UpdateLayerRequest.add_member(:lifecycle_event_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LifecycleEventConfiguration, location_name: 'LifecycleEventConfiguration'))
    UpdateLayerRequest.type = Types::UpdateLayerRequest
    UpdateMyUserProfileRequest.add_member(:ssh_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshPublicKey'))
    UpdateMyUserProfileRequest.type = Types::UpdateMyUserProfileRequest
    UpdateRdsDbInstanceRequest.add_member(:rds_db_instance_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RdsDbInstanceArn', traits: {"smithy.api#required" => {}}))
    UpdateRdsDbInstanceRequest.add_member(:db_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbUser'))
    UpdateRdsDbInstanceRequest.add_member(:db_password, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DbPassword'))
    UpdateRdsDbInstanceRequest.type = Types::UpdateRdsDbInstanceRequest
    UpdateStackRequest.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackId', traits: {"smithy.api#required" => {}}))
    UpdateStackRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    UpdateStackRequest.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttributes, location_name: 'Attributes'))
    UpdateStackRequest.add_member(:service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn'))
    UpdateStackRequest.add_member(:default_instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultInstanceProfileArn'))
    UpdateStackRequest.add_member(:default_os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultOs'))
    UpdateStackRequest.add_member(:hostname_theme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'HostnameTheme'))
    UpdateStackRequest.add_member(:default_availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultAvailabilityZone'))
    UpdateStackRequest.add_member(:default_subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSubnetId'))
    UpdateStackRequest.add_member(:custom_json, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CustomJson'))
    UpdateStackRequest.add_member(:configuration_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StackConfigurationManager, location_name: 'ConfigurationManager'))
    UpdateStackRequest.add_member(:chef_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ChefConfiguration, location_name: 'ChefConfiguration'))
    UpdateStackRequest.add_member(:use_custom_cookbooks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseCustomCookbooks'))
    UpdateStackRequest.add_member(:custom_cookbooks_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'CustomCookbooksSource'))
    UpdateStackRequest.add_member(:default_ssh_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DefaultSshKeyName'))
    UpdateStackRequest.add_member(:default_root_device_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RootDeviceType, location_name: 'DefaultRootDeviceType'))
    UpdateStackRequest.add_member(:use_opsworks_security_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'UseOpsworksSecurityGroups'))
    UpdateStackRequest.add_member(:agent_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AgentVersion'))
    UpdateStackRequest.type = Types::UpdateStackRequest
    UpdateUserProfileRequest.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn', traits: {"smithy.api#required" => {}}))
    UpdateUserProfileRequest.add_member(:ssh_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshUsername'))
    UpdateUserProfileRequest.add_member(:ssh_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshPublicKey'))
    UpdateUserProfileRequest.add_member(:allow_self_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSelfManagement'))
    UpdateUserProfileRequest.type = Types::UpdateUserProfileRequest
    UpdateVolumeRequest.add_member(:volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId', traits: {"smithy.api#required" => {}}))
    UpdateVolumeRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    UpdateVolumeRequest.add_member(:mount_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MountPoint'))
    UpdateVolumeRequest.type = Types::UpdateVolumeRequest
    UserProfile.add_member(:iam_user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IamUserArn'))
    UserProfile.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    UserProfile.add_member(:ssh_username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshUsername'))
    UserProfile.add_member(:ssh_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SshPublicKey'))
    UserProfile.add_member(:allow_self_management, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AllowSelfManagement'))
    UserProfile.type = Types::UserProfile
    UserProfiles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserProfile)
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    VirtualizationType.add_member(:paravirtual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'paravirtual', traits: {"smithy.api#enumValue" => "paravirtual"}))
    VirtualizationType.add_member(:hvm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hvm', traits: {"smithy.api#enumValue" => "hvm"}))
    Volume.add_member(:volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeId'))
    Volume.add_member(:ec2_volume_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Ec2VolumeId'))
    Volume.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    Volume.add_member(:raid_array_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RaidArrayId'))
    Volume.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId'))
    Volume.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status'))
    Volume.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Size'))
    Volume.add_member(:device, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Device'))
    Volume.add_member(:mount_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MountPoint'))
    Volume.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Region'))
    Volume.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AvailabilityZone'))
    Volume.add_member(:volume_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeType'))
    Volume.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Iops'))
    Volume.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted'))
    Volume.type = Types::Volume
    VolumeConfiguration.add_member(:mount_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MountPoint', traits: {"smithy.api#required" => {}}))
    VolumeConfiguration.add_member(:raid_level, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'RaidLevel'))
    VolumeConfiguration.add_member(:number_of_disks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'NumberOfDisks', traits: {"smithy.api#required" => {}}))
    VolumeConfiguration.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Size', traits: {"smithy.api#required" => {}}))
    VolumeConfiguration.add_member(:volume_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VolumeType'))
    VolumeConfiguration.add_member(:iops, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Iops'))
    VolumeConfiguration.add_member(:encrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Encrypted'))
    VolumeConfiguration.type = Types::VolumeConfiguration
    VolumeConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeConfiguration)
    VolumeType.add_member(:gp2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gp2', traits: {"smithy.api#enumValue" => "gp2"}))
    VolumeType.add_member(:io1, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'io1', traits: {"smithy.api#enumValue" => "io1"}))
    VolumeType.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'standard', traits: {"smithy.api#enumValue" => "standard"}))
    Volumes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Volume)
    WeeklyAutoScalingSchedule.add_member(:monday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Monday'))
    WeeklyAutoScalingSchedule.add_member(:tuesday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Tuesday'))
    WeeklyAutoScalingSchedule.add_member(:wednesday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Wednesday'))
    WeeklyAutoScalingSchedule.add_member(:thursday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Thursday'))
    WeeklyAutoScalingSchedule.add_member(:friday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Friday'))
    WeeklyAutoScalingSchedule.add_member(:saturday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Saturday'))
    WeeklyAutoScalingSchedule.add_member(:sunday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DailyAutoScalingSchedule, location_name: 'Sunday'))
    WeeklyAutoScalingSchedule.type = Types::WeeklyAutoScalingSchedule

    OpsWorks20130218 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.opsworks#OpsWorks_20130218"
      service.name = "OpsWorks20130218"
      service.version = "2013-02-18"
      service.traits = {"aws.api#service" => {"sdkId" => "OpsWorks", "arnNamespace" => "opsworks", "cloudFormationName" => "OpsWorks", "cloudTrailEventSource" => "opsworks.amazonaws.com", "endpointPrefix" => "opsworks"}, "aws.auth#sigv4" => {"name" => "opsworks"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS OpsWorks", "smithy.api#xmlNamespace" => {"uri" => "http://opsworks.amazonaws.com/doc/2013-02-18/"}}
      service.add_operation(:assign_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#AssignInstance"
        operation.name = "AssignInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssignInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:assign_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#AssignVolume"
        operation.name = "AssignVolume"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssignVolumeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:associate_elastic_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#AssociateElasticIp"
        operation.name = "AssociateElasticIp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateElasticIpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:attach_elastic_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#AttachElasticLoadBalancer"
        operation.name = "AttachElasticLoadBalancer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttachElasticLoadBalancerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:clone_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CloneStack"
        operation.name = "CloneStack"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloneStackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloneStackResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateApp"
        operation.name = "CreateApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateInstance"
        operation.name = "CreateInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_layer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateLayer"
        operation.name = "CreateLayer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLayerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLayerResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateStack"
        operation.name = "CreateStack"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStackResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_user_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#CreateUserProfile"
        operation.name = "CreateUserProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserProfileResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeleteApp"
        operation.name = "DeleteApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeleteInstance"
        operation.name = "DeleteInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_layer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeleteLayer"
        operation.name = "DeleteLayer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLayerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeleteStack"
        operation.name = "DeleteStack"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_user_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeleteUserProfile"
        operation.name = "DeleteUserProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_ecs_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeregisterEcsCluster"
        operation.name = "DeregisterEcsCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterEcsClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_elastic_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeregisterElasticIp"
        operation.name = "DeregisterElasticIp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterElasticIpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeregisterInstance"
        operation.name = "DeregisterInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_rds_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeregisterRdsDbInstance"
        operation.name = "DeregisterRdsDbInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterRdsDbInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:deregister_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DeregisterVolume"
        operation.name = "DeregisterVolume"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterVolumeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_agent_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeAgentVersions"
        operation.name = "DescribeAgentVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgentVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAgentVersionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_apps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeApps"
        operation.name = "DescribeApps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_commands, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeCommands"
        operation.name = "DescribeCommands"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCommandsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCommandsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeDeployments"
        operation.name = "DescribeDeployments"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeploymentsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDeploymentsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_ecs_clusters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeEcsClusters"
        operation.name = "DescribeEcsClusters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEcsClustersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEcsClustersResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEcsClusters.new
      end)
      service.add_operation(:describe_elastic_ips, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeElasticIps"
        operation.name = "DescribeElasticIps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticIpsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticIpsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_elastic_load_balancers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeElasticLoadBalancers"
        operation.name = "DescribeElasticLoadBalancers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticLoadBalancersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeElasticLoadBalancersResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeInstances"
        operation.name = "DescribeInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeInstancesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_layers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeLayers"
        operation.name = "DescribeLayers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLayersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLayersResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_load_based_auto_scaling, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeLoadBasedAutoScaling"
        operation.name = "DescribeLoadBasedAutoScaling"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoadBasedAutoScalingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLoadBasedAutoScalingResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_my_user_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeMyUserProfile"
        operation.name = "DescribeMyUserProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMyUserProfileResult)
        operation.traits = {}
      end)
      service.add_operation(:describe_operating_systems, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeOperatingSystems"
        operation.name = "DescribeOperatingSystems"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOperatingSystemsResponse)
        operation.traits = {}
      end)
      service.add_operation(:describe_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribePermissions"
        operation.name = "DescribePermissions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePermissionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePermissionsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_raid_arrays, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeRaidArrays"
        operation.name = "DescribeRaidArrays"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRaidArraysRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRaidArraysResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_rds_db_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeRdsDbInstances"
        operation.name = "DescribeRdsDbInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRdsDbInstancesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRdsDbInstancesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_service_errors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeServiceErrors"
        operation.name = "DescribeServiceErrors"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceErrorsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceErrorsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_stack_provisioning_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeStackProvisioningParameters"
        operation.name = "DescribeStackProvisioningParameters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStackProvisioningParametersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStackProvisioningParametersResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_stack_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeStackSummary"
        operation.name = "DescribeStackSummary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStackSummaryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStackSummaryResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_stacks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeStacks"
        operation.name = "DescribeStacks"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStacksRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStacksResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_time_based_auto_scaling, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeTimeBasedAutoScaling"
        operation.name = "DescribeTimeBasedAutoScaling"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTimeBasedAutoScalingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTimeBasedAutoScalingResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_user_profiles, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeUserProfiles"
        operation.name = "DescribeUserProfiles"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserProfilesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserProfilesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_volumes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DescribeVolumes"
        operation.name = "DescribeVolumes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVolumesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVolumesResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:detach_elastic_load_balancer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DetachElasticLoadBalancer"
        operation.name = "DetachElasticLoadBalancer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetachElasticLoadBalancerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_elastic_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#DisassociateElasticIp"
        operation.name = "DisassociateElasticIp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateElasticIpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_hostname_suggestion, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#GetHostnameSuggestion"
        operation.name = "GetHostnameSuggestion"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostnameSuggestionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetHostnameSuggestionResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:grant_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#GrantAccess"
        operation.name = "GrantAccess"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantAccessRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GrantAccessResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#ListTags"
        operation.name = "ListTags"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:reboot_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RebootInstance"
        operation.name = "RebootInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RebootInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:register_ecs_cluster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RegisterEcsCluster"
        operation.name = "RegisterEcsCluster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterEcsClusterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterEcsClusterResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:register_elastic_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RegisterElasticIp"
        operation.name = "RegisterElasticIp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterElasticIpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterElasticIpResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:register_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RegisterInstance"
        operation.name = "RegisterInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterInstanceResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:register_rds_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RegisterRdsDbInstance"
        operation.name = "RegisterRdsDbInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterRdsDbInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:register_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#RegisterVolume"
        operation.name = "RegisterVolume"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterVolumeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterVolumeResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_load_based_auto_scaling, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#SetLoadBasedAutoScaling"
        operation.name = "SetLoadBasedAutoScaling"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetLoadBasedAutoScalingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#SetPermission"
        operation.name = "SetPermission"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetPermissionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:set_time_based_auto_scaling, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#SetTimeBasedAutoScaling"
        operation.name = "SetTimeBasedAutoScaling"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SetTimeBasedAutoScalingRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#StartInstance"
        operation.name = "StartInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#StartStack"
        operation.name = "StartStack"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartStackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#StopInstance"
        operation.name = "StopInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:stop_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#StopStack"
        operation.name = "StopStack"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopStackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:unassign_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UnassignInstance"
        operation.name = "UnassignInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnassignInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:unassign_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UnassignVolume"
        operation.name = "UnassignVolume"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnassignVolumeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateApp"
        operation.name = "UpdateApp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_elastic_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateElasticIp"
        operation.name = "UpdateElasticIp"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateElasticIpRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateInstance"
        operation.name = "UpdateInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_layer, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateLayer"
        operation.name = "UpdateLayer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLayerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_my_user_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateMyUserProfile"
        operation.name = "UpdateMyUserProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMyUserProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_rds_db_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateRdsDbInstance"
        operation.name = "UpdateRdsDbInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRdsDbInstanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateStack"
        operation.name = "UpdateStack"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStackRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_user_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateUserProfile"
        operation.name = "UpdateUserProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateUserProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_volume, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworks#UpdateVolume"
        operation.name = "UpdateVolume"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateVolumeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
