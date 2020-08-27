# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GameLift
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptMatchInput = Shapes::StructureShape.new(name: 'AcceptMatchInput')
    AcceptMatchOutput = Shapes::StructureShape.new(name: 'AcceptMatchOutput')
    AcceptanceType = Shapes::StringShape.new(name: 'AcceptanceType')
    Alias = Shapes::StructureShape.new(name: 'Alias')
    AliasArn = Shapes::StringShape.new(name: 'AliasArn')
    AliasId = Shapes::StringShape.new(name: 'AliasId')
    AliasIdOrArn = Shapes::StringShape.new(name: 'AliasIdOrArn')
    AliasList = Shapes::ListShape.new(name: 'AliasList')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    ArnStringModel = Shapes::StringShape.new(name: 'ArnStringModel')
    AttributeValue = Shapes::StructureShape.new(name: 'AttributeValue')
    AutoScalingGroupArn = Shapes::StringShape.new(name: 'AutoScalingGroupArn')
    AwsCredentials = Shapes::StructureShape.new(name: 'AwsCredentials')
    BackfillMode = Shapes::StringShape.new(name: 'BackfillMode')
    BalancingStrategy = Shapes::StringShape.new(name: 'BalancingStrategy')
    BooleanModel = Shapes::BooleanShape.new(name: 'BooleanModel')
    Build = Shapes::StructureShape.new(name: 'Build')
    BuildArn = Shapes::StringShape.new(name: 'BuildArn')
    BuildId = Shapes::StringShape.new(name: 'BuildId')
    BuildIdOrArn = Shapes::StringShape.new(name: 'BuildIdOrArn')
    BuildList = Shapes::ListShape.new(name: 'BuildList')
    BuildStatus = Shapes::StringShape.new(name: 'BuildStatus')
    CertificateConfiguration = Shapes::StructureShape.new(name: 'CertificateConfiguration')
    CertificateType = Shapes::StringShape.new(name: 'CertificateType')
    ClaimGameServerInput = Shapes::StructureShape.new(name: 'ClaimGameServerInput')
    ClaimGameServerOutput = Shapes::StructureShape.new(name: 'ClaimGameServerOutput')
    ComparisonOperatorType = Shapes::StringShape.new(name: 'ComparisonOperatorType')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAliasInput = Shapes::StructureShape.new(name: 'CreateAliasInput')
    CreateAliasOutput = Shapes::StructureShape.new(name: 'CreateAliasOutput')
    CreateBuildInput = Shapes::StructureShape.new(name: 'CreateBuildInput')
    CreateBuildOutput = Shapes::StructureShape.new(name: 'CreateBuildOutput')
    CreateFleetInput = Shapes::StructureShape.new(name: 'CreateFleetInput')
    CreateFleetOutput = Shapes::StructureShape.new(name: 'CreateFleetOutput')
    CreateGameServerGroupInput = Shapes::StructureShape.new(name: 'CreateGameServerGroupInput')
    CreateGameServerGroupOutput = Shapes::StructureShape.new(name: 'CreateGameServerGroupOutput')
    CreateGameSessionInput = Shapes::StructureShape.new(name: 'CreateGameSessionInput')
    CreateGameSessionOutput = Shapes::StructureShape.new(name: 'CreateGameSessionOutput')
    CreateGameSessionQueueInput = Shapes::StructureShape.new(name: 'CreateGameSessionQueueInput')
    CreateGameSessionQueueOutput = Shapes::StructureShape.new(name: 'CreateGameSessionQueueOutput')
    CreateMatchmakingConfigurationInput = Shapes::StructureShape.new(name: 'CreateMatchmakingConfigurationInput')
    CreateMatchmakingConfigurationOutput = Shapes::StructureShape.new(name: 'CreateMatchmakingConfigurationOutput')
    CreateMatchmakingRuleSetInput = Shapes::StructureShape.new(name: 'CreateMatchmakingRuleSetInput')
    CreateMatchmakingRuleSetOutput = Shapes::StructureShape.new(name: 'CreateMatchmakingRuleSetOutput')
    CreatePlayerSessionInput = Shapes::StructureShape.new(name: 'CreatePlayerSessionInput')
    CreatePlayerSessionOutput = Shapes::StructureShape.new(name: 'CreatePlayerSessionOutput')
    CreatePlayerSessionsInput = Shapes::StructureShape.new(name: 'CreatePlayerSessionsInput')
    CreatePlayerSessionsOutput = Shapes::StructureShape.new(name: 'CreatePlayerSessionsOutput')
    CreateScriptInput = Shapes::StructureShape.new(name: 'CreateScriptInput')
    CreateScriptOutput = Shapes::StructureShape.new(name: 'CreateScriptOutput')
    CreateVpcPeeringAuthorizationInput = Shapes::StructureShape.new(name: 'CreateVpcPeeringAuthorizationInput')
    CreateVpcPeeringAuthorizationOutput = Shapes::StructureShape.new(name: 'CreateVpcPeeringAuthorizationOutput')
    CreateVpcPeeringConnectionInput = Shapes::StructureShape.new(name: 'CreateVpcPeeringConnectionInput')
    CreateVpcPeeringConnectionOutput = Shapes::StructureShape.new(name: 'CreateVpcPeeringConnectionOutput')
    CustomEventData = Shapes::StringShape.new(name: 'CustomEventData')
    DeleteAliasInput = Shapes::StructureShape.new(name: 'DeleteAliasInput')
    DeleteBuildInput = Shapes::StructureShape.new(name: 'DeleteBuildInput')
    DeleteFleetInput = Shapes::StructureShape.new(name: 'DeleteFleetInput')
    DeleteGameServerGroupInput = Shapes::StructureShape.new(name: 'DeleteGameServerGroupInput')
    DeleteGameServerGroupOutput = Shapes::StructureShape.new(name: 'DeleteGameServerGroupOutput')
    DeleteGameSessionQueueInput = Shapes::StructureShape.new(name: 'DeleteGameSessionQueueInput')
    DeleteGameSessionQueueOutput = Shapes::StructureShape.new(name: 'DeleteGameSessionQueueOutput')
    DeleteMatchmakingConfigurationInput = Shapes::StructureShape.new(name: 'DeleteMatchmakingConfigurationInput')
    DeleteMatchmakingConfigurationOutput = Shapes::StructureShape.new(name: 'DeleteMatchmakingConfigurationOutput')
    DeleteMatchmakingRuleSetInput = Shapes::StructureShape.new(name: 'DeleteMatchmakingRuleSetInput')
    DeleteMatchmakingRuleSetOutput = Shapes::StructureShape.new(name: 'DeleteMatchmakingRuleSetOutput')
    DeleteScalingPolicyInput = Shapes::StructureShape.new(name: 'DeleteScalingPolicyInput')
    DeleteScriptInput = Shapes::StructureShape.new(name: 'DeleteScriptInput')
    DeleteVpcPeeringAuthorizationInput = Shapes::StructureShape.new(name: 'DeleteVpcPeeringAuthorizationInput')
    DeleteVpcPeeringAuthorizationOutput = Shapes::StructureShape.new(name: 'DeleteVpcPeeringAuthorizationOutput')
    DeleteVpcPeeringConnectionInput = Shapes::StructureShape.new(name: 'DeleteVpcPeeringConnectionInput')
    DeleteVpcPeeringConnectionOutput = Shapes::StructureShape.new(name: 'DeleteVpcPeeringConnectionOutput')
    DeregisterGameServerInput = Shapes::StructureShape.new(name: 'DeregisterGameServerInput')
    DescribeAliasInput = Shapes::StructureShape.new(name: 'DescribeAliasInput')
    DescribeAliasOutput = Shapes::StructureShape.new(name: 'DescribeAliasOutput')
    DescribeBuildInput = Shapes::StructureShape.new(name: 'DescribeBuildInput')
    DescribeBuildOutput = Shapes::StructureShape.new(name: 'DescribeBuildOutput')
    DescribeEC2InstanceLimitsInput = Shapes::StructureShape.new(name: 'DescribeEC2InstanceLimitsInput')
    DescribeEC2InstanceLimitsOutput = Shapes::StructureShape.new(name: 'DescribeEC2InstanceLimitsOutput')
    DescribeFleetAttributesInput = Shapes::StructureShape.new(name: 'DescribeFleetAttributesInput')
    DescribeFleetAttributesOutput = Shapes::StructureShape.new(name: 'DescribeFleetAttributesOutput')
    DescribeFleetCapacityInput = Shapes::StructureShape.new(name: 'DescribeFleetCapacityInput')
    DescribeFleetCapacityOutput = Shapes::StructureShape.new(name: 'DescribeFleetCapacityOutput')
    DescribeFleetEventsInput = Shapes::StructureShape.new(name: 'DescribeFleetEventsInput')
    DescribeFleetEventsOutput = Shapes::StructureShape.new(name: 'DescribeFleetEventsOutput')
    DescribeFleetPortSettingsInput = Shapes::StructureShape.new(name: 'DescribeFleetPortSettingsInput')
    DescribeFleetPortSettingsOutput = Shapes::StructureShape.new(name: 'DescribeFleetPortSettingsOutput')
    DescribeFleetUtilizationInput = Shapes::StructureShape.new(name: 'DescribeFleetUtilizationInput')
    DescribeFleetUtilizationOutput = Shapes::StructureShape.new(name: 'DescribeFleetUtilizationOutput')
    DescribeGameServerGroupInput = Shapes::StructureShape.new(name: 'DescribeGameServerGroupInput')
    DescribeGameServerGroupOutput = Shapes::StructureShape.new(name: 'DescribeGameServerGroupOutput')
    DescribeGameServerInput = Shapes::StructureShape.new(name: 'DescribeGameServerInput')
    DescribeGameServerInstancesInput = Shapes::StructureShape.new(name: 'DescribeGameServerInstancesInput')
    DescribeGameServerInstancesOutput = Shapes::StructureShape.new(name: 'DescribeGameServerInstancesOutput')
    DescribeGameServerOutput = Shapes::StructureShape.new(name: 'DescribeGameServerOutput')
    DescribeGameSessionDetailsInput = Shapes::StructureShape.new(name: 'DescribeGameSessionDetailsInput')
    DescribeGameSessionDetailsOutput = Shapes::StructureShape.new(name: 'DescribeGameSessionDetailsOutput')
    DescribeGameSessionPlacementInput = Shapes::StructureShape.new(name: 'DescribeGameSessionPlacementInput')
    DescribeGameSessionPlacementOutput = Shapes::StructureShape.new(name: 'DescribeGameSessionPlacementOutput')
    DescribeGameSessionQueuesInput = Shapes::StructureShape.new(name: 'DescribeGameSessionQueuesInput')
    DescribeGameSessionQueuesOutput = Shapes::StructureShape.new(name: 'DescribeGameSessionQueuesOutput')
    DescribeGameSessionsInput = Shapes::StructureShape.new(name: 'DescribeGameSessionsInput')
    DescribeGameSessionsOutput = Shapes::StructureShape.new(name: 'DescribeGameSessionsOutput')
    DescribeInstancesInput = Shapes::StructureShape.new(name: 'DescribeInstancesInput')
    DescribeInstancesOutput = Shapes::StructureShape.new(name: 'DescribeInstancesOutput')
    DescribeMatchmakingConfigurationsInput = Shapes::StructureShape.new(name: 'DescribeMatchmakingConfigurationsInput')
    DescribeMatchmakingConfigurationsOutput = Shapes::StructureShape.new(name: 'DescribeMatchmakingConfigurationsOutput')
    DescribeMatchmakingInput = Shapes::StructureShape.new(name: 'DescribeMatchmakingInput')
    DescribeMatchmakingOutput = Shapes::StructureShape.new(name: 'DescribeMatchmakingOutput')
    DescribeMatchmakingRuleSetsInput = Shapes::StructureShape.new(name: 'DescribeMatchmakingRuleSetsInput')
    DescribeMatchmakingRuleSetsOutput = Shapes::StructureShape.new(name: 'DescribeMatchmakingRuleSetsOutput')
    DescribePlayerSessionsInput = Shapes::StructureShape.new(name: 'DescribePlayerSessionsInput')
    DescribePlayerSessionsOutput = Shapes::StructureShape.new(name: 'DescribePlayerSessionsOutput')
    DescribeRuntimeConfigurationInput = Shapes::StructureShape.new(name: 'DescribeRuntimeConfigurationInput')
    DescribeRuntimeConfigurationOutput = Shapes::StructureShape.new(name: 'DescribeRuntimeConfigurationOutput')
    DescribeScalingPoliciesInput = Shapes::StructureShape.new(name: 'DescribeScalingPoliciesInput')
    DescribeScalingPoliciesOutput = Shapes::StructureShape.new(name: 'DescribeScalingPoliciesOutput')
    DescribeScriptInput = Shapes::StructureShape.new(name: 'DescribeScriptInput')
    DescribeScriptOutput = Shapes::StructureShape.new(name: 'DescribeScriptOutput')
    DescribeVpcPeeringAuthorizationsInput = Shapes::StructureShape.new(name: 'DescribeVpcPeeringAuthorizationsInput')
    DescribeVpcPeeringAuthorizationsOutput = Shapes::StructureShape.new(name: 'DescribeVpcPeeringAuthorizationsOutput')
    DescribeVpcPeeringConnectionsInput = Shapes::StructureShape.new(name: 'DescribeVpcPeeringConnectionsInput')
    DescribeVpcPeeringConnectionsOutput = Shapes::StructureShape.new(name: 'DescribeVpcPeeringConnectionsOutput')
    DesiredPlayerSession = Shapes::StructureShape.new(name: 'DesiredPlayerSession')
    DesiredPlayerSessionList = Shapes::ListShape.new(name: 'DesiredPlayerSessionList')
    DnsName = Shapes::StringShape.new(name: 'DnsName')
    Double = Shapes::FloatShape.new(name: 'Double')
    DoubleObject = Shapes::FloatShape.new(name: 'DoubleObject')
    EC2InstanceCounts = Shapes::StructureShape.new(name: 'EC2InstanceCounts')
    EC2InstanceLimit = Shapes::StructureShape.new(name: 'EC2InstanceLimit')
    EC2InstanceLimitList = Shapes::ListShape.new(name: 'EC2InstanceLimitList')
    EC2InstanceType = Shapes::StringShape.new(name: 'EC2InstanceType')
    Event = Shapes::StructureShape.new(name: 'Event')
    EventCode = Shapes::StringShape.new(name: 'EventCode')
    EventList = Shapes::ListShape.new(name: 'EventList')
    FleetAction = Shapes::StringShape.new(name: 'FleetAction')
    FleetActionList = Shapes::ListShape.new(name: 'FleetActionList')
    FleetArn = Shapes::StringShape.new(name: 'FleetArn')
    FleetAttributes = Shapes::StructureShape.new(name: 'FleetAttributes')
    FleetAttributesList = Shapes::ListShape.new(name: 'FleetAttributesList')
    FleetCapacity = Shapes::StructureShape.new(name: 'FleetCapacity')
    FleetCapacityExceededException = Shapes::StructureShape.new(name: 'FleetCapacityExceededException')
    FleetCapacityList = Shapes::ListShape.new(name: 'FleetCapacityList')
    FleetId = Shapes::StringShape.new(name: 'FleetId')
    FleetIdList = Shapes::ListShape.new(name: 'FleetIdList')
    FleetIdOrArn = Shapes::StringShape.new(name: 'FleetIdOrArn')
    FleetIdOrArnList = Shapes::ListShape.new(name: 'FleetIdOrArnList')
    FleetStatus = Shapes::StringShape.new(name: 'FleetStatus')
    FleetType = Shapes::StringShape.new(name: 'FleetType')
    FleetUtilization = Shapes::StructureShape.new(name: 'FleetUtilization')
    FleetUtilizationList = Shapes::ListShape.new(name: 'FleetUtilizationList')
    Float = Shapes::FloatShape.new(name: 'Float')
    FreeText = Shapes::StringShape.new(name: 'FreeText')
    GameProperty = Shapes::StructureShape.new(name: 'GameProperty')
    GamePropertyKey = Shapes::StringShape.new(name: 'GamePropertyKey')
    GamePropertyList = Shapes::ListShape.new(name: 'GamePropertyList')
    GamePropertyValue = Shapes::StringShape.new(name: 'GamePropertyValue')
    GameServer = Shapes::StructureShape.new(name: 'GameServer')
    GameServerClaimStatus = Shapes::StringShape.new(name: 'GameServerClaimStatus')
    GameServerConnectionInfo = Shapes::StringShape.new(name: 'GameServerConnectionInfo')
    GameServerData = Shapes::StringShape.new(name: 'GameServerData')
    GameServerGroup = Shapes::StructureShape.new(name: 'GameServerGroup')
    GameServerGroupAction = Shapes::StringShape.new(name: 'GameServerGroupAction')
    GameServerGroupActions = Shapes::ListShape.new(name: 'GameServerGroupActions')
    GameServerGroupArn = Shapes::StringShape.new(name: 'GameServerGroupArn')
    GameServerGroupAutoScalingPolicy = Shapes::StructureShape.new(name: 'GameServerGroupAutoScalingPolicy')
    GameServerGroupDeleteOption = Shapes::StringShape.new(name: 'GameServerGroupDeleteOption')
    GameServerGroupInstanceType = Shapes::StringShape.new(name: 'GameServerGroupInstanceType')
    GameServerGroupName = Shapes::StringShape.new(name: 'GameServerGroupName')
    GameServerGroupNameOrArn = Shapes::StringShape.new(name: 'GameServerGroupNameOrArn')
    GameServerGroupStatus = Shapes::StringShape.new(name: 'GameServerGroupStatus')
    GameServerGroups = Shapes::ListShape.new(name: 'GameServerGroups')
    GameServerHealthCheck = Shapes::StringShape.new(name: 'GameServerHealthCheck')
    GameServerId = Shapes::StringShape.new(name: 'GameServerId')
    GameServerInstance = Shapes::StructureShape.new(name: 'GameServerInstance')
    GameServerInstanceId = Shapes::StringShape.new(name: 'GameServerInstanceId')
    GameServerInstanceIds = Shapes::ListShape.new(name: 'GameServerInstanceIds')
    GameServerInstanceStatus = Shapes::StringShape.new(name: 'GameServerInstanceStatus')
    GameServerInstances = Shapes::ListShape.new(name: 'GameServerInstances')
    GameServerProtectionPolicy = Shapes::StringShape.new(name: 'GameServerProtectionPolicy')
    GameServerUtilizationStatus = Shapes::StringShape.new(name: 'GameServerUtilizationStatus')
    GameServers = Shapes::ListShape.new(name: 'GameServers')
    GameSession = Shapes::StructureShape.new(name: 'GameSession')
    GameSessionActivationTimeoutSeconds = Shapes::IntegerShape.new(name: 'GameSessionActivationTimeoutSeconds')
    GameSessionConnectionInfo = Shapes::StructureShape.new(name: 'GameSessionConnectionInfo')
    GameSessionData = Shapes::StringShape.new(name: 'GameSessionData')
    GameSessionDetail = Shapes::StructureShape.new(name: 'GameSessionDetail')
    GameSessionDetailList = Shapes::ListShape.new(name: 'GameSessionDetailList')
    GameSessionFullException = Shapes::StructureShape.new(name: 'GameSessionFullException')
    GameSessionList = Shapes::ListShape.new(name: 'GameSessionList')
    GameSessionPlacement = Shapes::StructureShape.new(name: 'GameSessionPlacement')
    GameSessionPlacementState = Shapes::StringShape.new(name: 'GameSessionPlacementState')
    GameSessionQueue = Shapes::StructureShape.new(name: 'GameSessionQueue')
    GameSessionQueueArn = Shapes::StringShape.new(name: 'GameSessionQueueArn')
    GameSessionQueueDestination = Shapes::StructureShape.new(name: 'GameSessionQueueDestination')
    GameSessionQueueDestinationList = Shapes::ListShape.new(name: 'GameSessionQueueDestinationList')
    GameSessionQueueList = Shapes::ListShape.new(name: 'GameSessionQueueList')
    GameSessionQueueName = Shapes::StringShape.new(name: 'GameSessionQueueName')
    GameSessionQueueNameOrArn = Shapes::StringShape.new(name: 'GameSessionQueueNameOrArn')
    GameSessionQueueNameOrArnList = Shapes::ListShape.new(name: 'GameSessionQueueNameOrArnList')
    GameSessionStatus = Shapes::StringShape.new(name: 'GameSessionStatus')
    GameSessionStatusReason = Shapes::StringShape.new(name: 'GameSessionStatusReason')
    GetGameSessionLogUrlInput = Shapes::StructureShape.new(name: 'GetGameSessionLogUrlInput')
    GetGameSessionLogUrlOutput = Shapes::StructureShape.new(name: 'GetGameSessionLogUrlOutput')
    GetInstanceAccessInput = Shapes::StructureShape.new(name: 'GetInstanceAccessInput')
    GetInstanceAccessOutput = Shapes::StructureShape.new(name: 'GetInstanceAccessOutput')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IdStringModel = Shapes::StringShape.new(name: 'IdStringModel')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceAccess = Shapes::StructureShape.new(name: 'InstanceAccess')
    InstanceCredentials = Shapes::StructureShape.new(name: 'InstanceCredentials')
    InstanceDefinition = Shapes::StructureShape.new(name: 'InstanceDefinition')
    InstanceDefinitions = Shapes::ListShape.new(name: 'InstanceDefinitions')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceList = Shapes::ListShape.new(name: 'InstanceList')
    InstanceStatus = Shapes::StringShape.new(name: 'InstanceStatus')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidFleetStatusException = Shapes::StructureShape.new(name: 'InvalidFleetStatusException')
    InvalidGameSessionStatusException = Shapes::StructureShape.new(name: 'InvalidGameSessionStatusException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    IpPermission = Shapes::StructureShape.new(name: 'IpPermission')
    IpPermissionsList = Shapes::ListShape.new(name: 'IpPermissionsList')
    IpProtocol = Shapes::StringShape.new(name: 'IpProtocol')
    LatencyMap = Shapes::MapShape.new(name: 'LatencyMap')
    LaunchTemplateId = Shapes::StringShape.new(name: 'LaunchTemplateId')
    LaunchTemplateName = Shapes::StringShape.new(name: 'LaunchTemplateName')
    LaunchTemplateSpecification = Shapes::StructureShape.new(name: 'LaunchTemplateSpecification')
    LaunchTemplateVersion = Shapes::StringShape.new(name: 'LaunchTemplateVersion')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAliasesInput = Shapes::StructureShape.new(name: 'ListAliasesInput')
    ListAliasesOutput = Shapes::StructureShape.new(name: 'ListAliasesOutput')
    ListBuildsInput = Shapes::StructureShape.new(name: 'ListBuildsInput')
    ListBuildsOutput = Shapes::StructureShape.new(name: 'ListBuildsOutput')
    ListFleetsInput = Shapes::StructureShape.new(name: 'ListFleetsInput')
    ListFleetsOutput = Shapes::StructureShape.new(name: 'ListFleetsOutput')
    ListGameServerGroupsInput = Shapes::StructureShape.new(name: 'ListGameServerGroupsInput')
    ListGameServerGroupsOutput = Shapes::StructureShape.new(name: 'ListGameServerGroupsOutput')
    ListGameServersInput = Shapes::StructureShape.new(name: 'ListGameServersInput')
    ListGameServersOutput = Shapes::StructureShape.new(name: 'ListGameServersOutput')
    ListScriptsInput = Shapes::StructureShape.new(name: 'ListScriptsInput')
    ListScriptsOutput = Shapes::StructureShape.new(name: 'ListScriptsOutput')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MatchedPlayerSession = Shapes::StructureShape.new(name: 'MatchedPlayerSession')
    MatchedPlayerSessionList = Shapes::ListShape.new(name: 'MatchedPlayerSessionList')
    MatchmakerData = Shapes::StringShape.new(name: 'MatchmakerData')
    MatchmakingAcceptanceTimeoutInteger = Shapes::IntegerShape.new(name: 'MatchmakingAcceptanceTimeoutInteger')
    MatchmakingConfiguration = Shapes::StructureShape.new(name: 'MatchmakingConfiguration')
    MatchmakingConfigurationArn = Shapes::StringShape.new(name: 'MatchmakingConfigurationArn')
    MatchmakingConfigurationList = Shapes::ListShape.new(name: 'MatchmakingConfigurationList')
    MatchmakingConfigurationName = Shapes::StringShape.new(name: 'MatchmakingConfigurationName')
    MatchmakingConfigurationNameList = Shapes::ListShape.new(name: 'MatchmakingConfigurationNameList')
    MatchmakingConfigurationStatus = Shapes::StringShape.new(name: 'MatchmakingConfigurationStatus')
    MatchmakingIdList = Shapes::ListShape.new(name: 'MatchmakingIdList')
    MatchmakingIdStringModel = Shapes::StringShape.new(name: 'MatchmakingIdStringModel')
    MatchmakingRequestTimeoutInteger = Shapes::IntegerShape.new(name: 'MatchmakingRequestTimeoutInteger')
    MatchmakingRuleSet = Shapes::StructureShape.new(name: 'MatchmakingRuleSet')
    MatchmakingRuleSetArn = Shapes::StringShape.new(name: 'MatchmakingRuleSetArn')
    MatchmakingRuleSetList = Shapes::ListShape.new(name: 'MatchmakingRuleSetList')
    MatchmakingRuleSetName = Shapes::StringShape.new(name: 'MatchmakingRuleSetName')
    MatchmakingRuleSetNameList = Shapes::ListShape.new(name: 'MatchmakingRuleSetNameList')
    MatchmakingTicket = Shapes::StructureShape.new(name: 'MatchmakingTicket')
    MatchmakingTicketList = Shapes::ListShape.new(name: 'MatchmakingTicketList')
    MaxConcurrentGameSessionActivations = Shapes::IntegerShape.new(name: 'MaxConcurrentGameSessionActivations')
    MetricGroup = Shapes::StringShape.new(name: 'MetricGroup')
    MetricGroupList = Shapes::ListShape.new(name: 'MetricGroupList')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    NonBlankAndLengthConstraintString = Shapes::StringShape.new(name: 'NonBlankAndLengthConstraintString')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonNegativeDouble = Shapes::FloatShape.new(name: 'NonNegativeDouble')
    NonZeroAndMaxString = Shapes::StringShape.new(name: 'NonZeroAndMaxString')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OperatingSystem = Shapes::StringShape.new(name: 'OperatingSystem')
    OutOfCapacityException = Shapes::StructureShape.new(name: 'OutOfCapacityException')
    PlacedPlayerSession = Shapes::StructureShape.new(name: 'PlacedPlayerSession')
    PlacedPlayerSessionList = Shapes::ListShape.new(name: 'PlacedPlayerSessionList')
    Player = Shapes::StructureShape.new(name: 'Player')
    PlayerAttributeMap = Shapes::MapShape.new(name: 'PlayerAttributeMap')
    PlayerData = Shapes::StringShape.new(name: 'PlayerData')
    PlayerDataMap = Shapes::MapShape.new(name: 'PlayerDataMap')
    PlayerIdList = Shapes::ListShape.new(name: 'PlayerIdList')
    PlayerLatency = Shapes::StructureShape.new(name: 'PlayerLatency')
    PlayerLatencyList = Shapes::ListShape.new(name: 'PlayerLatencyList')
    PlayerLatencyPolicy = Shapes::StructureShape.new(name: 'PlayerLatencyPolicy')
    PlayerLatencyPolicyList = Shapes::ListShape.new(name: 'PlayerLatencyPolicyList')
    PlayerList = Shapes::ListShape.new(name: 'PlayerList')
    PlayerSession = Shapes::StructureShape.new(name: 'PlayerSession')
    PlayerSessionCreationPolicy = Shapes::StringShape.new(name: 'PlayerSessionCreationPolicy')
    PlayerSessionId = Shapes::StringShape.new(name: 'PlayerSessionId')
    PlayerSessionList = Shapes::ListShape.new(name: 'PlayerSessionList')
    PlayerSessionStatus = Shapes::StringShape.new(name: 'PlayerSessionStatus')
    PolicyType = Shapes::StringShape.new(name: 'PolicyType')
    PortNumber = Shapes::IntegerShape.new(name: 'PortNumber')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PositiveLong = Shapes::IntegerShape.new(name: 'PositiveLong')
    ProtectionPolicy = Shapes::StringShape.new(name: 'ProtectionPolicy')
    PutScalingPolicyInput = Shapes::StructureShape.new(name: 'PutScalingPolicyInput')
    PutScalingPolicyOutput = Shapes::StructureShape.new(name: 'PutScalingPolicyOutput')
    QueueArnsList = Shapes::ListShape.new(name: 'QueueArnsList')
    RegisterGameServerInput = Shapes::StructureShape.new(name: 'RegisterGameServerInput')
    RegisterGameServerOutput = Shapes::StructureShape.new(name: 'RegisterGameServerOutput')
    RequestUploadCredentialsInput = Shapes::StructureShape.new(name: 'RequestUploadCredentialsInput')
    RequestUploadCredentialsOutput = Shapes::StructureShape.new(name: 'RequestUploadCredentialsOutput')
    ResolveAliasInput = Shapes::StructureShape.new(name: 'ResolveAliasInput')
    ResolveAliasOutput = Shapes::StructureShape.new(name: 'ResolveAliasOutput')
    ResourceCreationLimitPolicy = Shapes::StructureShape.new(name: 'ResourceCreationLimitPolicy')
    ResumeGameServerGroupInput = Shapes::StructureShape.new(name: 'ResumeGameServerGroupInput')
    ResumeGameServerGroupOutput = Shapes::StructureShape.new(name: 'ResumeGameServerGroupOutput')
    RoutingStrategy = Shapes::StructureShape.new(name: 'RoutingStrategy')
    RoutingStrategyType = Shapes::StringShape.new(name: 'RoutingStrategyType')
    RuleSetBody = Shapes::StringShape.new(name: 'RuleSetBody')
    RuleSetLimit = Shapes::IntegerShape.new(name: 'RuleSetLimit')
    RuntimeConfiguration = Shapes::StructureShape.new(name: 'RuntimeConfiguration')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    ScalingAdjustmentType = Shapes::StringShape.new(name: 'ScalingAdjustmentType')
    ScalingPolicy = Shapes::StructureShape.new(name: 'ScalingPolicy')
    ScalingPolicyList = Shapes::ListShape.new(name: 'ScalingPolicyList')
    ScalingStatusType = Shapes::StringShape.new(name: 'ScalingStatusType')
    Script = Shapes::StructureShape.new(name: 'Script')
    ScriptArn = Shapes::StringShape.new(name: 'ScriptArn')
    ScriptId = Shapes::StringShape.new(name: 'ScriptId')
    ScriptIdOrArn = Shapes::StringShape.new(name: 'ScriptIdOrArn')
    ScriptList = Shapes::ListShape.new(name: 'ScriptList')
    SearchGameSessionsInput = Shapes::StructureShape.new(name: 'SearchGameSessionsInput')
    SearchGameSessionsOutput = Shapes::StructureShape.new(name: 'SearchGameSessionsOutput')
    ServerProcess = Shapes::StructureShape.new(name: 'ServerProcess')
    ServerProcessList = Shapes::ListShape.new(name: 'ServerProcessList')
    SnsArnStringModel = Shapes::StringShape.new(name: 'SnsArnStringModel')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartFleetActionsInput = Shapes::StructureShape.new(name: 'StartFleetActionsInput')
    StartFleetActionsOutput = Shapes::StructureShape.new(name: 'StartFleetActionsOutput')
    StartGameSessionPlacementInput = Shapes::StructureShape.new(name: 'StartGameSessionPlacementInput')
    StartGameSessionPlacementOutput = Shapes::StructureShape.new(name: 'StartGameSessionPlacementOutput')
    StartMatchBackfillInput = Shapes::StructureShape.new(name: 'StartMatchBackfillInput')
    StartMatchBackfillOutput = Shapes::StructureShape.new(name: 'StartMatchBackfillOutput')
    StartMatchmakingInput = Shapes::StructureShape.new(name: 'StartMatchmakingInput')
    StartMatchmakingOutput = Shapes::StructureShape.new(name: 'StartMatchmakingOutput')
    StopFleetActionsInput = Shapes::StructureShape.new(name: 'StopFleetActionsInput')
    StopFleetActionsOutput = Shapes::StructureShape.new(name: 'StopFleetActionsOutput')
    StopGameSessionPlacementInput = Shapes::StructureShape.new(name: 'StopGameSessionPlacementInput')
    StopGameSessionPlacementOutput = Shapes::StructureShape.new(name: 'StopGameSessionPlacementOutput')
    StopMatchmakingInput = Shapes::StructureShape.new(name: 'StopMatchmakingInput')
    StopMatchmakingOutput = Shapes::StructureShape.new(name: 'StopMatchmakingOutput')
    StringDoubleMap = Shapes::MapShape.new(name: 'StringDoubleMap')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringModel = Shapes::StringShape.new(name: 'StringModel')
    SuspendGameServerGroupInput = Shapes::StructureShape.new(name: 'SuspendGameServerGroupInput')
    SuspendGameServerGroupOutput = Shapes::StructureShape.new(name: 'SuspendGameServerGroupOutput')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggingFailedException = Shapes::StructureShape.new(name: 'TaggingFailedException')
    TargetConfiguration = Shapes::StructureShape.new(name: 'TargetConfiguration')
    TargetTrackingConfiguration = Shapes::StructureShape.new(name: 'TargetTrackingConfiguration')
    TerminalRoutingStrategyException = Shapes::StructureShape.new(name: 'TerminalRoutingStrategyException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UnsupportedRegionException = Shapes::StructureShape.new(name: 'UnsupportedRegionException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAliasInput = Shapes::StructureShape.new(name: 'UpdateAliasInput')
    UpdateAliasOutput = Shapes::StructureShape.new(name: 'UpdateAliasOutput')
    UpdateBuildInput = Shapes::StructureShape.new(name: 'UpdateBuildInput')
    UpdateBuildOutput = Shapes::StructureShape.new(name: 'UpdateBuildOutput')
    UpdateFleetAttributesInput = Shapes::StructureShape.new(name: 'UpdateFleetAttributesInput')
    UpdateFleetAttributesOutput = Shapes::StructureShape.new(name: 'UpdateFleetAttributesOutput')
    UpdateFleetCapacityInput = Shapes::StructureShape.new(name: 'UpdateFleetCapacityInput')
    UpdateFleetCapacityOutput = Shapes::StructureShape.new(name: 'UpdateFleetCapacityOutput')
    UpdateFleetPortSettingsInput = Shapes::StructureShape.new(name: 'UpdateFleetPortSettingsInput')
    UpdateFleetPortSettingsOutput = Shapes::StructureShape.new(name: 'UpdateFleetPortSettingsOutput')
    UpdateGameServerGroupInput = Shapes::StructureShape.new(name: 'UpdateGameServerGroupInput')
    UpdateGameServerGroupOutput = Shapes::StructureShape.new(name: 'UpdateGameServerGroupOutput')
    UpdateGameServerInput = Shapes::StructureShape.new(name: 'UpdateGameServerInput')
    UpdateGameServerOutput = Shapes::StructureShape.new(name: 'UpdateGameServerOutput')
    UpdateGameSessionInput = Shapes::StructureShape.new(name: 'UpdateGameSessionInput')
    UpdateGameSessionOutput = Shapes::StructureShape.new(name: 'UpdateGameSessionOutput')
    UpdateGameSessionQueueInput = Shapes::StructureShape.new(name: 'UpdateGameSessionQueueInput')
    UpdateGameSessionQueueOutput = Shapes::StructureShape.new(name: 'UpdateGameSessionQueueOutput')
    UpdateMatchmakingConfigurationInput = Shapes::StructureShape.new(name: 'UpdateMatchmakingConfigurationInput')
    UpdateMatchmakingConfigurationOutput = Shapes::StructureShape.new(name: 'UpdateMatchmakingConfigurationOutput')
    UpdateRuntimeConfigurationInput = Shapes::StructureShape.new(name: 'UpdateRuntimeConfigurationInput')
    UpdateRuntimeConfigurationOutput = Shapes::StructureShape.new(name: 'UpdateRuntimeConfigurationOutput')
    UpdateScriptInput = Shapes::StructureShape.new(name: 'UpdateScriptInput')
    UpdateScriptOutput = Shapes::StructureShape.new(name: 'UpdateScriptOutput')
    ValidateMatchmakingRuleSetInput = Shapes::StructureShape.new(name: 'ValidateMatchmakingRuleSetInput')
    ValidateMatchmakingRuleSetOutput = Shapes::StructureShape.new(name: 'ValidateMatchmakingRuleSetOutput')
    VpcPeeringAuthorization = Shapes::StructureShape.new(name: 'VpcPeeringAuthorization')
    VpcPeeringAuthorizationList = Shapes::ListShape.new(name: 'VpcPeeringAuthorizationList')
    VpcPeeringConnection = Shapes::StructureShape.new(name: 'VpcPeeringConnection')
    VpcPeeringConnectionList = Shapes::ListShape.new(name: 'VpcPeeringConnectionList')
    VpcPeeringConnectionStatus = Shapes::StructureShape.new(name: 'VpcPeeringConnectionStatus')
    VpcSubnet = Shapes::StringShape.new(name: 'VpcSubnet')
    VpcSubnets = Shapes::ListShape.new(name: 'VpcSubnets')
    WeightedCapacity = Shapes::StringShape.new(name: 'WeightedCapacity')
    WholeNumber = Shapes::IntegerShape.new(name: 'WholeNumber')
    ZipBlob = Shapes::BlobShape.new(name: 'ZipBlob')

    AcceptMatchInput.add_member(:ticket_id, Shapes::ShapeRef.new(shape: MatchmakingIdStringModel, required: true, location_name: "TicketId"))
    AcceptMatchInput.add_member(:player_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "PlayerIds"))
    AcceptMatchInput.add_member(:acceptance_type, Shapes::ShapeRef.new(shape: AcceptanceType, required: true, location_name: "AcceptanceType"))
    AcceptMatchInput.struct_class = Types::AcceptMatchInput

    AcceptMatchOutput.struct_class = Types::AcceptMatchOutput

    Alias.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasId, location_name: "AliasId"))
    Alias.add_member(:name, Shapes::ShapeRef.new(shape: NonBlankAndLengthConstraintString, location_name: "Name"))
    Alias.add_member(:alias_arn, Shapes::ShapeRef.new(shape: AliasArn, location_name: "AliasArn"))
    Alias.add_member(:description, Shapes::ShapeRef.new(shape: FreeText, location_name: "Description"))
    Alias.add_member(:routing_strategy, Shapes::ShapeRef.new(shape: RoutingStrategy, location_name: "RoutingStrategy"))
    Alias.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Alias.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    Alias.struct_class = Types::Alias

    AliasList.member = Shapes::ShapeRef.new(shape: Alias)

    AttributeValue.add_member(:s, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "S"))
    AttributeValue.add_member(:n, Shapes::ShapeRef.new(shape: DoubleObject, location_name: "N"))
    AttributeValue.add_member(:sl, Shapes::ShapeRef.new(shape: StringList, location_name: "SL"))
    AttributeValue.add_member(:sdm, Shapes::ShapeRef.new(shape: StringDoubleMap, location_name: "SDM"))
    AttributeValue.struct_class = Types::AttributeValue

    AwsCredentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "AccessKeyId"))
    AwsCredentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SecretAccessKey"))
    AwsCredentials.add_member(:session_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "SessionToken"))
    AwsCredentials.struct_class = Types::AwsCredentials

    Build.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildId, location_name: "BuildId"))
    Build.add_member(:build_arn, Shapes::ShapeRef.new(shape: BuildArn, location_name: "BuildArn"))
    Build.add_member(:name, Shapes::ShapeRef.new(shape: FreeText, location_name: "Name"))
    Build.add_member(:version, Shapes::ShapeRef.new(shape: FreeText, location_name: "Version"))
    Build.add_member(:status, Shapes::ShapeRef.new(shape: BuildStatus, location_name: "Status"))
    Build.add_member(:size_on_disk, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "SizeOnDisk"))
    Build.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    Build.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Build.struct_class = Types::Build

    BuildList.member = Shapes::ShapeRef.new(shape: Build)

    CertificateConfiguration.add_member(:certificate_type, Shapes::ShapeRef.new(shape: CertificateType, required: true, location_name: "CertificateType"))
    CertificateConfiguration.struct_class = Types::CertificateConfiguration

    ClaimGameServerInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    ClaimGameServerInput.add_member(:game_server_id, Shapes::ShapeRef.new(shape: GameServerId, location_name: "GameServerId"))
    ClaimGameServerInput.add_member(:game_server_data, Shapes::ShapeRef.new(shape: GameServerData, location_name: "GameServerData"))
    ClaimGameServerInput.struct_class = Types::ClaimGameServerInput

    ClaimGameServerOutput.add_member(:game_server, Shapes::ShapeRef.new(shape: GameServer, location_name: "GameServer"))
    ClaimGameServerOutput.struct_class = Types::ClaimGameServerOutput

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAliasInput.add_member(:name, Shapes::ShapeRef.new(shape: NonBlankAndLengthConstraintString, required: true, location_name: "Name"))
    CreateAliasInput.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    CreateAliasInput.add_member(:routing_strategy, Shapes::ShapeRef.new(shape: RoutingStrategy, required: true, location_name: "RoutingStrategy"))
    CreateAliasInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAliasInput.struct_class = Types::CreateAliasInput

    CreateAliasOutput.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    CreateAliasOutput.struct_class = Types::CreateAliasOutput

    CreateBuildInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    CreateBuildInput.add_member(:version, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Version"))
    CreateBuildInput.add_member(:storage_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "StorageLocation"))
    CreateBuildInput.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    CreateBuildInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateBuildInput.struct_class = Types::CreateBuildInput

    CreateBuildOutput.add_member(:build, Shapes::ShapeRef.new(shape: Build, location_name: "Build"))
    CreateBuildOutput.add_member(:upload_credentials, Shapes::ShapeRef.new(shape: AwsCredentials, location_name: "UploadCredentials"))
    CreateBuildOutput.add_member(:storage_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "StorageLocation"))
    CreateBuildOutput.struct_class = Types::CreateBuildOutput

    CreateFleetInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "Name"))
    CreateFleetInput.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    CreateFleetInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildIdOrArn, location_name: "BuildId"))
    CreateFleetInput.add_member(:script_id, Shapes::ShapeRef.new(shape: ScriptIdOrArn, location_name: "ScriptId"))
    CreateFleetInput.add_member(:server_launch_path, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "ServerLaunchPath"))
    CreateFleetInput.add_member(:server_launch_parameters, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "ServerLaunchParameters"))
    CreateFleetInput.add_member(:log_paths, Shapes::ShapeRef.new(shape: StringList, location_name: "LogPaths"))
    CreateFleetInput.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, required: true, location_name: "EC2InstanceType"))
    CreateFleetInput.add_member(:ec2_inbound_permissions, Shapes::ShapeRef.new(shape: IpPermissionsList, location_name: "EC2InboundPermissions"))
    CreateFleetInput.add_member(:new_game_session_protection_policy, Shapes::ShapeRef.new(shape: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    CreateFleetInput.add_member(:runtime_configuration, Shapes::ShapeRef.new(shape: RuntimeConfiguration, location_name: "RuntimeConfiguration"))
    CreateFleetInput.add_member(:resource_creation_limit_policy, Shapes::ShapeRef.new(shape: ResourceCreationLimitPolicy, location_name: "ResourceCreationLimitPolicy"))
    CreateFleetInput.add_member(:metric_groups, Shapes::ShapeRef.new(shape: MetricGroupList, location_name: "MetricGroups"))
    CreateFleetInput.add_member(:peer_vpc_aws_account_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PeerVpcAwsAccountId"))
    CreateFleetInput.add_member(:peer_vpc_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PeerVpcId"))
    CreateFleetInput.add_member(:fleet_type, Shapes::ShapeRef.new(shape: FleetType, location_name: "FleetType"))
    CreateFleetInput.add_member(:instance_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceRoleArn"))
    CreateFleetInput.add_member(:certificate_configuration, Shapes::ShapeRef.new(shape: CertificateConfiguration, location_name: "CertificateConfiguration"))
    CreateFleetInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFleetInput.struct_class = Types::CreateFleetInput

    CreateFleetOutput.add_member(:fleet_attributes, Shapes::ShapeRef.new(shape: FleetAttributes, location_name: "FleetAttributes"))
    CreateFleetOutput.struct_class = Types::CreateFleetOutput

    CreateGameServerGroupInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupName, required: true, location_name: "GameServerGroupName"))
    CreateGameServerGroupInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "RoleArn"))
    CreateGameServerGroupInput.add_member(:min_size, Shapes::ShapeRef.new(shape: WholeNumber, required: true, location_name: "MinSize"))
    CreateGameServerGroupInput.add_member(:max_size, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "MaxSize"))
    CreateGameServerGroupInput.add_member(:launch_template, Shapes::ShapeRef.new(shape: LaunchTemplateSpecification, required: true, location_name: "LaunchTemplate"))
    CreateGameServerGroupInput.add_member(:instance_definitions, Shapes::ShapeRef.new(shape: InstanceDefinitions, required: true, location_name: "InstanceDefinitions"))
    CreateGameServerGroupInput.add_member(:auto_scaling_policy, Shapes::ShapeRef.new(shape: GameServerGroupAutoScalingPolicy, location_name: "AutoScalingPolicy"))
    CreateGameServerGroupInput.add_member(:balancing_strategy, Shapes::ShapeRef.new(shape: BalancingStrategy, location_name: "BalancingStrategy"))
    CreateGameServerGroupInput.add_member(:game_server_protection_policy, Shapes::ShapeRef.new(shape: GameServerProtectionPolicy, location_name: "GameServerProtectionPolicy"))
    CreateGameServerGroupInput.add_member(:vpc_subnets, Shapes::ShapeRef.new(shape: VpcSubnets, location_name: "VpcSubnets"))
    CreateGameServerGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateGameServerGroupInput.struct_class = Types::CreateGameServerGroupInput

    CreateGameServerGroupOutput.add_member(:game_server_group, Shapes::ShapeRef.new(shape: GameServerGroup, location_name: "GameServerGroup"))
    CreateGameServerGroupOutput.struct_class = Types::CreateGameServerGroupOutput

    CreateGameSessionInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, location_name: "FleetId"))
    CreateGameSessionInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasIdOrArn, location_name: "AliasId"))
    CreateGameSessionInput.add_member(:maximum_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, required: true, location_name: "MaximumPlayerSessionCount"))
    CreateGameSessionInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    CreateGameSessionInput.add_member(:game_properties, Shapes::ShapeRef.new(shape: GamePropertyList, location_name: "GameProperties"))
    CreateGameSessionInput.add_member(:creator_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "CreatorId"))
    CreateGameSessionInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: IdStringModel, location_name: "GameSessionId"))
    CreateGameSessionInput.add_member(:idempotency_token, Shapes::ShapeRef.new(shape: IdStringModel, location_name: "IdempotencyToken"))
    CreateGameSessionInput.add_member(:game_session_data, Shapes::ShapeRef.new(shape: GameSessionData, location_name: "GameSessionData"))
    CreateGameSessionInput.struct_class = Types::CreateGameSessionInput

    CreateGameSessionOutput.add_member(:game_session, Shapes::ShapeRef.new(shape: GameSession, location_name: "GameSession"))
    CreateGameSessionOutput.struct_class = Types::CreateGameSessionOutput

    CreateGameSessionQueueInput.add_member(:name, Shapes::ShapeRef.new(shape: GameSessionQueueName, required: true, location_name: "Name"))
    CreateGameSessionQueueInput.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "TimeoutInSeconds"))
    CreateGameSessionQueueInput.add_member(:player_latency_policies, Shapes::ShapeRef.new(shape: PlayerLatencyPolicyList, location_name: "PlayerLatencyPolicies"))
    CreateGameSessionQueueInput.add_member(:destinations, Shapes::ShapeRef.new(shape: GameSessionQueueDestinationList, location_name: "Destinations"))
    CreateGameSessionQueueInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateGameSessionQueueInput.struct_class = Types::CreateGameSessionQueueInput

    CreateGameSessionQueueOutput.add_member(:game_session_queue, Shapes::ShapeRef.new(shape: GameSessionQueue, location_name: "GameSessionQueue"))
    CreateGameSessionQueueOutput.struct_class = Types::CreateGameSessionQueueOutput

    CreateMatchmakingConfigurationInput.add_member(:name, Shapes::ShapeRef.new(shape: MatchmakingIdStringModel, required: true, location_name: "Name"))
    CreateMatchmakingConfigurationInput.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    CreateMatchmakingConfigurationInput.add_member(:game_session_queue_arns, Shapes::ShapeRef.new(shape: QueueArnsList, required: true, location_name: "GameSessionQueueArns"))
    CreateMatchmakingConfigurationInput.add_member(:request_timeout_seconds, Shapes::ShapeRef.new(shape: MatchmakingRequestTimeoutInteger, required: true, location_name: "RequestTimeoutSeconds"))
    CreateMatchmakingConfigurationInput.add_member(:acceptance_timeout_seconds, Shapes::ShapeRef.new(shape: MatchmakingAcceptanceTimeoutInteger, location_name: "AcceptanceTimeoutSeconds"))
    CreateMatchmakingConfigurationInput.add_member(:acceptance_required, Shapes::ShapeRef.new(shape: BooleanModel, required: true, location_name: "AcceptanceRequired"))
    CreateMatchmakingConfigurationInput.add_member(:rule_set_name, Shapes::ShapeRef.new(shape: MatchmakingRuleSetName, required: true, location_name: "RuleSetName"))
    CreateMatchmakingConfigurationInput.add_member(:notification_target, Shapes::ShapeRef.new(shape: SnsArnStringModel, location_name: "NotificationTarget"))
    CreateMatchmakingConfigurationInput.add_member(:additional_player_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "AdditionalPlayerCount"))
    CreateMatchmakingConfigurationInput.add_member(:custom_event_data, Shapes::ShapeRef.new(shape: CustomEventData, location_name: "CustomEventData"))
    CreateMatchmakingConfigurationInput.add_member(:game_properties, Shapes::ShapeRef.new(shape: GamePropertyList, location_name: "GameProperties"))
    CreateMatchmakingConfigurationInput.add_member(:game_session_data, Shapes::ShapeRef.new(shape: GameSessionData, location_name: "GameSessionData"))
    CreateMatchmakingConfigurationInput.add_member(:backfill_mode, Shapes::ShapeRef.new(shape: BackfillMode, location_name: "BackfillMode"))
    CreateMatchmakingConfigurationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMatchmakingConfigurationInput.struct_class = Types::CreateMatchmakingConfigurationInput

    CreateMatchmakingConfigurationOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: MatchmakingConfiguration, location_name: "Configuration"))
    CreateMatchmakingConfigurationOutput.struct_class = Types::CreateMatchmakingConfigurationOutput

    CreateMatchmakingRuleSetInput.add_member(:name, Shapes::ShapeRef.new(shape: MatchmakingIdStringModel, required: true, location_name: "Name"))
    CreateMatchmakingRuleSetInput.add_member(:rule_set_body, Shapes::ShapeRef.new(shape: RuleSetBody, required: true, location_name: "RuleSetBody"))
    CreateMatchmakingRuleSetInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateMatchmakingRuleSetInput.struct_class = Types::CreateMatchmakingRuleSetInput

    CreateMatchmakingRuleSetOutput.add_member(:rule_set, Shapes::ShapeRef.new(shape: MatchmakingRuleSet, required: true, location_name: "RuleSet"))
    CreateMatchmakingRuleSetOutput.struct_class = Types::CreateMatchmakingRuleSetOutput

    CreatePlayerSessionInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, required: true, location_name: "GameSessionId"))
    CreatePlayerSessionInput.add_member(:player_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "PlayerId"))
    CreatePlayerSessionInput.add_member(:player_data, Shapes::ShapeRef.new(shape: PlayerData, location_name: "PlayerData"))
    CreatePlayerSessionInput.struct_class = Types::CreatePlayerSessionInput

    CreatePlayerSessionOutput.add_member(:player_session, Shapes::ShapeRef.new(shape: PlayerSession, location_name: "PlayerSession"))
    CreatePlayerSessionOutput.struct_class = Types::CreatePlayerSessionOutput

    CreatePlayerSessionsInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, required: true, location_name: "GameSessionId"))
    CreatePlayerSessionsInput.add_member(:player_ids, Shapes::ShapeRef.new(shape: PlayerIdList, required: true, location_name: "PlayerIds"))
    CreatePlayerSessionsInput.add_member(:player_data_map, Shapes::ShapeRef.new(shape: PlayerDataMap, location_name: "PlayerDataMap"))
    CreatePlayerSessionsInput.struct_class = Types::CreatePlayerSessionsInput

    CreatePlayerSessionsOutput.add_member(:player_sessions, Shapes::ShapeRef.new(shape: PlayerSessionList, location_name: "PlayerSessions"))
    CreatePlayerSessionsOutput.struct_class = Types::CreatePlayerSessionsOutput

    CreateScriptInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    CreateScriptInput.add_member(:version, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Version"))
    CreateScriptInput.add_member(:storage_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "StorageLocation"))
    CreateScriptInput.add_member(:zip_file, Shapes::ShapeRef.new(shape: ZipBlob, location_name: "ZipFile"))
    CreateScriptInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateScriptInput.struct_class = Types::CreateScriptInput

    CreateScriptOutput.add_member(:script, Shapes::ShapeRef.new(shape: Script, location_name: "Script"))
    CreateScriptOutput.struct_class = Types::CreateScriptOutput

    CreateVpcPeeringAuthorizationInput.add_member(:game_lift_aws_account_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "GameLiftAwsAccountId"))
    CreateVpcPeeringAuthorizationInput.add_member(:peer_vpc_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "PeerVpcId"))
    CreateVpcPeeringAuthorizationInput.struct_class = Types::CreateVpcPeeringAuthorizationInput

    CreateVpcPeeringAuthorizationOutput.add_member(:vpc_peering_authorization, Shapes::ShapeRef.new(shape: VpcPeeringAuthorization, location_name: "VpcPeeringAuthorization"))
    CreateVpcPeeringAuthorizationOutput.struct_class = Types::CreateVpcPeeringAuthorizationOutput

    CreateVpcPeeringConnectionInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    CreateVpcPeeringConnectionInput.add_member(:peer_vpc_aws_account_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "PeerVpcAwsAccountId"))
    CreateVpcPeeringConnectionInput.add_member(:peer_vpc_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "PeerVpcId"))
    CreateVpcPeeringConnectionInput.struct_class = Types::CreateVpcPeeringConnectionInput

    CreateVpcPeeringConnectionOutput.struct_class = Types::CreateVpcPeeringConnectionOutput

    DeleteAliasInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasIdOrArn, required: true, location_name: "AliasId"))
    DeleteAliasInput.struct_class = Types::DeleteAliasInput

    DeleteBuildInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildIdOrArn, required: true, location_name: "BuildId"))
    DeleteBuildInput.struct_class = Types::DeleteBuildInput

    DeleteFleetInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    DeleteFleetInput.struct_class = Types::DeleteFleetInput

    DeleteGameServerGroupInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    DeleteGameServerGroupInput.add_member(:delete_option, Shapes::ShapeRef.new(shape: GameServerGroupDeleteOption, location_name: "DeleteOption"))
    DeleteGameServerGroupInput.struct_class = Types::DeleteGameServerGroupInput

    DeleteGameServerGroupOutput.add_member(:game_server_group, Shapes::ShapeRef.new(shape: GameServerGroup, location_name: "GameServerGroup"))
    DeleteGameServerGroupOutput.struct_class = Types::DeleteGameServerGroupOutput

    DeleteGameSessionQueueInput.add_member(:name, Shapes::ShapeRef.new(shape: GameSessionQueueNameOrArn, required: true, location_name: "Name"))
    DeleteGameSessionQueueInput.struct_class = Types::DeleteGameSessionQueueInput

    DeleteGameSessionQueueOutput.struct_class = Types::DeleteGameSessionQueueOutput

    DeleteMatchmakingConfigurationInput.add_member(:name, Shapes::ShapeRef.new(shape: MatchmakingConfigurationName, required: true, location_name: "Name"))
    DeleteMatchmakingConfigurationInput.struct_class = Types::DeleteMatchmakingConfigurationInput

    DeleteMatchmakingConfigurationOutput.struct_class = Types::DeleteMatchmakingConfigurationOutput

    DeleteMatchmakingRuleSetInput.add_member(:name, Shapes::ShapeRef.new(shape: MatchmakingRuleSetName, required: true, location_name: "Name"))
    DeleteMatchmakingRuleSetInput.struct_class = Types::DeleteMatchmakingRuleSetInput

    DeleteMatchmakingRuleSetOutput.struct_class = Types::DeleteMatchmakingRuleSetOutput

    DeleteScalingPolicyInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "Name"))
    DeleteScalingPolicyInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    DeleteScalingPolicyInput.struct_class = Types::DeleteScalingPolicyInput

    DeleteScriptInput.add_member(:script_id, Shapes::ShapeRef.new(shape: ScriptIdOrArn, required: true, location_name: "ScriptId"))
    DeleteScriptInput.struct_class = Types::DeleteScriptInput

    DeleteVpcPeeringAuthorizationInput.add_member(:game_lift_aws_account_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "GameLiftAwsAccountId"))
    DeleteVpcPeeringAuthorizationInput.add_member(:peer_vpc_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "PeerVpcId"))
    DeleteVpcPeeringAuthorizationInput.struct_class = Types::DeleteVpcPeeringAuthorizationInput

    DeleteVpcPeeringAuthorizationOutput.struct_class = Types::DeleteVpcPeeringAuthorizationOutput

    DeleteVpcPeeringConnectionInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, required: true, location_name: "FleetId"))
    DeleteVpcPeeringConnectionInput.add_member(:vpc_peering_connection_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "VpcPeeringConnectionId"))
    DeleteVpcPeeringConnectionInput.struct_class = Types::DeleteVpcPeeringConnectionInput

    DeleteVpcPeeringConnectionOutput.struct_class = Types::DeleteVpcPeeringConnectionOutput

    DeregisterGameServerInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    DeregisterGameServerInput.add_member(:game_server_id, Shapes::ShapeRef.new(shape: GameServerId, required: true, location_name: "GameServerId"))
    DeregisterGameServerInput.struct_class = Types::DeregisterGameServerInput

    DescribeAliasInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasIdOrArn, required: true, location_name: "AliasId"))
    DescribeAliasInput.struct_class = Types::DescribeAliasInput

    DescribeAliasOutput.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    DescribeAliasOutput.struct_class = Types::DescribeAliasOutput

    DescribeBuildInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildIdOrArn, required: true, location_name: "BuildId"))
    DescribeBuildInput.struct_class = Types::DescribeBuildInput

    DescribeBuildOutput.add_member(:build, Shapes::ShapeRef.new(shape: Build, location_name: "Build"))
    DescribeBuildOutput.struct_class = Types::DescribeBuildOutput

    DescribeEC2InstanceLimitsInput.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "EC2InstanceType"))
    DescribeEC2InstanceLimitsInput.struct_class = Types::DescribeEC2InstanceLimitsInput

    DescribeEC2InstanceLimitsOutput.add_member(:ec2_instance_limits, Shapes::ShapeRef.new(shape: EC2InstanceLimitList, location_name: "EC2InstanceLimits"))
    DescribeEC2InstanceLimitsOutput.struct_class = Types::DescribeEC2InstanceLimitsOutput

    DescribeFleetAttributesInput.add_member(:fleet_ids, Shapes::ShapeRef.new(shape: FleetIdOrArnList, location_name: "FleetIds"))
    DescribeFleetAttributesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeFleetAttributesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetAttributesInput.struct_class = Types::DescribeFleetAttributesInput

    DescribeFleetAttributesOutput.add_member(:fleet_attributes, Shapes::ShapeRef.new(shape: FleetAttributesList, location_name: "FleetAttributes"))
    DescribeFleetAttributesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetAttributesOutput.struct_class = Types::DescribeFleetAttributesOutput

    DescribeFleetCapacityInput.add_member(:fleet_ids, Shapes::ShapeRef.new(shape: FleetIdOrArnList, location_name: "FleetIds"))
    DescribeFleetCapacityInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeFleetCapacityInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetCapacityInput.struct_class = Types::DescribeFleetCapacityInput

    DescribeFleetCapacityOutput.add_member(:fleet_capacity, Shapes::ShapeRef.new(shape: FleetCapacityList, location_name: "FleetCapacity"))
    DescribeFleetCapacityOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetCapacityOutput.struct_class = Types::DescribeFleetCapacityOutput

    DescribeFleetEventsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    DescribeFleetEventsInput.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    DescribeFleetEventsInput.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    DescribeFleetEventsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeFleetEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetEventsInput.struct_class = Types::DescribeFleetEventsInput

    DescribeFleetEventsOutput.add_member(:events, Shapes::ShapeRef.new(shape: EventList, location_name: "Events"))
    DescribeFleetEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetEventsOutput.struct_class = Types::DescribeFleetEventsOutput

    DescribeFleetPortSettingsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    DescribeFleetPortSettingsInput.struct_class = Types::DescribeFleetPortSettingsInput

    DescribeFleetPortSettingsOutput.add_member(:inbound_permissions, Shapes::ShapeRef.new(shape: IpPermissionsList, location_name: "InboundPermissions"))
    DescribeFleetPortSettingsOutput.struct_class = Types::DescribeFleetPortSettingsOutput

    DescribeFleetUtilizationInput.add_member(:fleet_ids, Shapes::ShapeRef.new(shape: FleetIdOrArnList, location_name: "FleetIds"))
    DescribeFleetUtilizationInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeFleetUtilizationInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetUtilizationInput.struct_class = Types::DescribeFleetUtilizationInput

    DescribeFleetUtilizationOutput.add_member(:fleet_utilization, Shapes::ShapeRef.new(shape: FleetUtilizationList, location_name: "FleetUtilization"))
    DescribeFleetUtilizationOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetUtilizationOutput.struct_class = Types::DescribeFleetUtilizationOutput

    DescribeGameServerGroupInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    DescribeGameServerGroupInput.struct_class = Types::DescribeGameServerGroupInput

    DescribeGameServerGroupOutput.add_member(:game_server_group, Shapes::ShapeRef.new(shape: GameServerGroup, location_name: "GameServerGroup"))
    DescribeGameServerGroupOutput.struct_class = Types::DescribeGameServerGroupOutput

    DescribeGameServerInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    DescribeGameServerInput.add_member(:game_server_id, Shapes::ShapeRef.new(shape: GameServerId, required: true, location_name: "GameServerId"))
    DescribeGameServerInput.struct_class = Types::DescribeGameServerInput

    DescribeGameServerInstancesInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    DescribeGameServerInstancesInput.add_member(:instance_ids, Shapes::ShapeRef.new(shape: GameServerInstanceIds, location_name: "InstanceIds"))
    DescribeGameServerInstancesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeGameServerInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameServerInstancesInput.struct_class = Types::DescribeGameServerInstancesInput

    DescribeGameServerInstancesOutput.add_member(:game_server_instances, Shapes::ShapeRef.new(shape: GameServerInstances, location_name: "GameServerInstances"))
    DescribeGameServerInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameServerInstancesOutput.struct_class = Types::DescribeGameServerInstancesOutput

    DescribeGameServerOutput.add_member(:game_server, Shapes::ShapeRef.new(shape: GameServer, location_name: "GameServer"))
    DescribeGameServerOutput.struct_class = Types::DescribeGameServerOutput

    DescribeGameSessionDetailsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, location_name: "FleetId"))
    DescribeGameSessionDetailsInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, location_name: "GameSessionId"))
    DescribeGameSessionDetailsInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasIdOrArn, location_name: "AliasId"))
    DescribeGameSessionDetailsInput.add_member(:status_filter, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "StatusFilter"))
    DescribeGameSessionDetailsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeGameSessionDetailsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionDetailsInput.struct_class = Types::DescribeGameSessionDetailsInput

    DescribeGameSessionDetailsOutput.add_member(:game_session_details, Shapes::ShapeRef.new(shape: GameSessionDetailList, location_name: "GameSessionDetails"))
    DescribeGameSessionDetailsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionDetailsOutput.struct_class = Types::DescribeGameSessionDetailsOutput

    DescribeGameSessionPlacementInput.add_member(:placement_id, Shapes::ShapeRef.new(shape: IdStringModel, required: true, location_name: "PlacementId"))
    DescribeGameSessionPlacementInput.struct_class = Types::DescribeGameSessionPlacementInput

    DescribeGameSessionPlacementOutput.add_member(:game_session_placement, Shapes::ShapeRef.new(shape: GameSessionPlacement, location_name: "GameSessionPlacement"))
    DescribeGameSessionPlacementOutput.struct_class = Types::DescribeGameSessionPlacementOutput

    DescribeGameSessionQueuesInput.add_member(:names, Shapes::ShapeRef.new(shape: GameSessionQueueNameOrArnList, location_name: "Names"))
    DescribeGameSessionQueuesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeGameSessionQueuesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionQueuesInput.struct_class = Types::DescribeGameSessionQueuesInput

    DescribeGameSessionQueuesOutput.add_member(:game_session_queues, Shapes::ShapeRef.new(shape: GameSessionQueueList, location_name: "GameSessionQueues"))
    DescribeGameSessionQueuesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionQueuesOutput.struct_class = Types::DescribeGameSessionQueuesOutput

    DescribeGameSessionsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, location_name: "FleetId"))
    DescribeGameSessionsInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, location_name: "GameSessionId"))
    DescribeGameSessionsInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasIdOrArn, location_name: "AliasId"))
    DescribeGameSessionsInput.add_member(:status_filter, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "StatusFilter"))
    DescribeGameSessionsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeGameSessionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionsInput.struct_class = Types::DescribeGameSessionsInput

    DescribeGameSessionsOutput.add_member(:game_sessions, Shapes::ShapeRef.new(shape: GameSessionList, location_name: "GameSessions"))
    DescribeGameSessionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionsOutput.struct_class = Types::DescribeGameSessionsOutput

    DescribeInstancesInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    DescribeInstancesInput.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    DescribeInstancesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeInstancesInput.struct_class = Types::DescribeInstancesInput

    DescribeInstancesOutput.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceList, location_name: "Instances"))
    DescribeInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeInstancesOutput.struct_class = Types::DescribeInstancesOutput

    DescribeMatchmakingConfigurationsInput.add_member(:names, Shapes::ShapeRef.new(shape: MatchmakingConfigurationNameList, location_name: "Names"))
    DescribeMatchmakingConfigurationsInput.add_member(:rule_set_name, Shapes::ShapeRef.new(shape: MatchmakingRuleSetName, location_name: "RuleSetName"))
    DescribeMatchmakingConfigurationsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeMatchmakingConfigurationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeMatchmakingConfigurationsInput.struct_class = Types::DescribeMatchmakingConfigurationsInput

    DescribeMatchmakingConfigurationsOutput.add_member(:configurations, Shapes::ShapeRef.new(shape: MatchmakingConfigurationList, location_name: "Configurations"))
    DescribeMatchmakingConfigurationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeMatchmakingConfigurationsOutput.struct_class = Types::DescribeMatchmakingConfigurationsOutput

    DescribeMatchmakingInput.add_member(:ticket_ids, Shapes::ShapeRef.new(shape: MatchmakingIdList, required: true, location_name: "TicketIds"))
    DescribeMatchmakingInput.struct_class = Types::DescribeMatchmakingInput

    DescribeMatchmakingOutput.add_member(:ticket_list, Shapes::ShapeRef.new(shape: MatchmakingTicketList, location_name: "TicketList"))
    DescribeMatchmakingOutput.struct_class = Types::DescribeMatchmakingOutput

    DescribeMatchmakingRuleSetsInput.add_member(:names, Shapes::ShapeRef.new(shape: MatchmakingRuleSetNameList, location_name: "Names"))
    DescribeMatchmakingRuleSetsInput.add_member(:limit, Shapes::ShapeRef.new(shape: RuleSetLimit, location_name: "Limit"))
    DescribeMatchmakingRuleSetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeMatchmakingRuleSetsInput.struct_class = Types::DescribeMatchmakingRuleSetsInput

    DescribeMatchmakingRuleSetsOutput.add_member(:rule_sets, Shapes::ShapeRef.new(shape: MatchmakingRuleSetList, required: true, location_name: "RuleSets"))
    DescribeMatchmakingRuleSetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeMatchmakingRuleSetsOutput.struct_class = Types::DescribeMatchmakingRuleSetsOutput

    DescribePlayerSessionsInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, location_name: "GameSessionId"))
    DescribePlayerSessionsInput.add_member(:player_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PlayerId"))
    DescribePlayerSessionsInput.add_member(:player_session_id, Shapes::ShapeRef.new(shape: PlayerSessionId, location_name: "PlayerSessionId"))
    DescribePlayerSessionsInput.add_member(:player_session_status_filter, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PlayerSessionStatusFilter"))
    DescribePlayerSessionsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribePlayerSessionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribePlayerSessionsInput.struct_class = Types::DescribePlayerSessionsInput

    DescribePlayerSessionsOutput.add_member(:player_sessions, Shapes::ShapeRef.new(shape: PlayerSessionList, location_name: "PlayerSessions"))
    DescribePlayerSessionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribePlayerSessionsOutput.struct_class = Types::DescribePlayerSessionsOutput

    DescribeRuntimeConfigurationInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    DescribeRuntimeConfigurationInput.struct_class = Types::DescribeRuntimeConfigurationInput

    DescribeRuntimeConfigurationOutput.add_member(:runtime_configuration, Shapes::ShapeRef.new(shape: RuntimeConfiguration, location_name: "RuntimeConfiguration"))
    DescribeRuntimeConfigurationOutput.struct_class = Types::DescribeRuntimeConfigurationOutput

    DescribeScalingPoliciesInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    DescribeScalingPoliciesInput.add_member(:status_filter, Shapes::ShapeRef.new(shape: ScalingStatusType, location_name: "StatusFilter"))
    DescribeScalingPoliciesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    DescribeScalingPoliciesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeScalingPoliciesInput.struct_class = Types::DescribeScalingPoliciesInput

    DescribeScalingPoliciesOutput.add_member(:scaling_policies, Shapes::ShapeRef.new(shape: ScalingPolicyList, location_name: "ScalingPolicies"))
    DescribeScalingPoliciesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeScalingPoliciesOutput.struct_class = Types::DescribeScalingPoliciesOutput

    DescribeScriptInput.add_member(:script_id, Shapes::ShapeRef.new(shape: ScriptIdOrArn, required: true, location_name: "ScriptId"))
    DescribeScriptInput.struct_class = Types::DescribeScriptInput

    DescribeScriptOutput.add_member(:script, Shapes::ShapeRef.new(shape: Script, location_name: "Script"))
    DescribeScriptOutput.struct_class = Types::DescribeScriptOutput

    DescribeVpcPeeringAuthorizationsInput.struct_class = Types::DescribeVpcPeeringAuthorizationsInput

    DescribeVpcPeeringAuthorizationsOutput.add_member(:vpc_peering_authorizations, Shapes::ShapeRef.new(shape: VpcPeeringAuthorizationList, location_name: "VpcPeeringAuthorizations"))
    DescribeVpcPeeringAuthorizationsOutput.struct_class = Types::DescribeVpcPeeringAuthorizationsOutput

    DescribeVpcPeeringConnectionsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    DescribeVpcPeeringConnectionsInput.struct_class = Types::DescribeVpcPeeringConnectionsInput

    DescribeVpcPeeringConnectionsOutput.add_member(:vpc_peering_connections, Shapes::ShapeRef.new(shape: VpcPeeringConnectionList, location_name: "VpcPeeringConnections"))
    DescribeVpcPeeringConnectionsOutput.struct_class = Types::DescribeVpcPeeringConnectionsOutput

    DesiredPlayerSession.add_member(:player_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PlayerId"))
    DesiredPlayerSession.add_member(:player_data, Shapes::ShapeRef.new(shape: PlayerData, location_name: "PlayerData"))
    DesiredPlayerSession.struct_class = Types::DesiredPlayerSession

    DesiredPlayerSessionList.member = Shapes::ShapeRef.new(shape: DesiredPlayerSession)

    EC2InstanceCounts.add_member(:desired, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "DESIRED"))
    EC2InstanceCounts.add_member(:minimum, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MINIMUM"))
    EC2InstanceCounts.add_member(:maximum, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MAXIMUM"))
    EC2InstanceCounts.add_member(:pending, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "PENDING"))
    EC2InstanceCounts.add_member(:active, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "ACTIVE"))
    EC2InstanceCounts.add_member(:idle, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "IDLE"))
    EC2InstanceCounts.add_member(:terminating, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "TERMINATING"))
    EC2InstanceCounts.struct_class = Types::EC2InstanceCounts

    EC2InstanceLimit.add_member(:ec2_instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "EC2InstanceType"))
    EC2InstanceLimit.add_member(:current_instances, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "CurrentInstances"))
    EC2InstanceLimit.add_member(:instance_limit, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "InstanceLimit"))
    EC2InstanceLimit.struct_class = Types::EC2InstanceLimit

    EC2InstanceLimitList.member = Shapes::ShapeRef.new(shape: EC2InstanceLimit)

    Event.add_member(:event_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "EventId"))
    Event.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "ResourceId"))
    Event.add_member(:event_code, Shapes::ShapeRef.new(shape: EventCode, location_name: "EventCode"))
    Event.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    Event.add_member(:event_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EventTime"))
    Event.add_member(:pre_signed_log_url, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PreSignedLogUrl"))
    Event.struct_class = Types::Event

    EventList.member = Shapes::ShapeRef.new(shape: Event)

    FleetActionList.member = Shapes::ShapeRef.new(shape: FleetAction)

    FleetAttributes.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    FleetAttributes.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, location_name: "FleetArn"))
    FleetAttributes.add_member(:fleet_type, Shapes::ShapeRef.new(shape: FleetType, location_name: "FleetType"))
    FleetAttributes.add_member(:instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "InstanceType"))
    FleetAttributes.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    FleetAttributes.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    FleetAttributes.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    FleetAttributes.add_member(:termination_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TerminationTime"))
    FleetAttributes.add_member(:status, Shapes::ShapeRef.new(shape: FleetStatus, location_name: "Status"))
    FleetAttributes.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildId, location_name: "BuildId"))
    FleetAttributes.add_member(:build_arn, Shapes::ShapeRef.new(shape: BuildArn, location_name: "BuildArn"))
    FleetAttributes.add_member(:script_id, Shapes::ShapeRef.new(shape: ScriptId, location_name: "ScriptId"))
    FleetAttributes.add_member(:script_arn, Shapes::ShapeRef.new(shape: ScriptArn, location_name: "ScriptArn"))
    FleetAttributes.add_member(:server_launch_path, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "ServerLaunchPath"))
    FleetAttributes.add_member(:server_launch_parameters, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "ServerLaunchParameters"))
    FleetAttributes.add_member(:log_paths, Shapes::ShapeRef.new(shape: StringList, location_name: "LogPaths"))
    FleetAttributes.add_member(:new_game_session_protection_policy, Shapes::ShapeRef.new(shape: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    FleetAttributes.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    FleetAttributes.add_member(:resource_creation_limit_policy, Shapes::ShapeRef.new(shape: ResourceCreationLimitPolicy, location_name: "ResourceCreationLimitPolicy"))
    FleetAttributes.add_member(:metric_groups, Shapes::ShapeRef.new(shape: MetricGroupList, location_name: "MetricGroups"))
    FleetAttributes.add_member(:stopped_actions, Shapes::ShapeRef.new(shape: FleetActionList, location_name: "StoppedActions"))
    FleetAttributes.add_member(:instance_role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "InstanceRoleArn"))
    FleetAttributes.add_member(:certificate_configuration, Shapes::ShapeRef.new(shape: CertificateConfiguration, location_name: "CertificateConfiguration"))
    FleetAttributes.struct_class = Types::FleetAttributes

    FleetAttributesList.member = Shapes::ShapeRef.new(shape: FleetAttributes)

    FleetCapacity.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    FleetCapacity.add_member(:instance_type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "InstanceType"))
    FleetCapacity.add_member(:instance_counts, Shapes::ShapeRef.new(shape: EC2InstanceCounts, location_name: "InstanceCounts"))
    FleetCapacity.struct_class = Types::FleetCapacity

    FleetCapacityExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    FleetCapacityExceededException.struct_class = Types::FleetCapacityExceededException

    FleetCapacityList.member = Shapes::ShapeRef.new(shape: FleetCapacity)

    FleetIdList.member = Shapes::ShapeRef.new(shape: FleetId)

    FleetIdOrArnList.member = Shapes::ShapeRef.new(shape: FleetIdOrArn)

    FleetUtilization.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    FleetUtilization.add_member(:active_server_process_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "ActiveServerProcessCount"))
    FleetUtilization.add_member(:active_game_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "ActiveGameSessionCount"))
    FleetUtilization.add_member(:current_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "CurrentPlayerSessionCount"))
    FleetUtilization.add_member(:maximum_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MaximumPlayerSessionCount"))
    FleetUtilization.struct_class = Types::FleetUtilization

    FleetUtilizationList.member = Shapes::ShapeRef.new(shape: FleetUtilization)

    GameProperty.add_member(:key, Shapes::ShapeRef.new(shape: GamePropertyKey, required: true, location_name: "Key"))
    GameProperty.add_member(:value, Shapes::ShapeRef.new(shape: GamePropertyValue, required: true, location_name: "Value"))
    GameProperty.struct_class = Types::GameProperty

    GamePropertyList.member = Shapes::ShapeRef.new(shape: GameProperty)

    GameServer.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupName, location_name: "GameServerGroupName"))
    GameServer.add_member(:game_server_group_arn, Shapes::ShapeRef.new(shape: GameServerGroupArn, location_name: "GameServerGroupArn"))
    GameServer.add_member(:game_server_id, Shapes::ShapeRef.new(shape: GameServerId, location_name: "GameServerId"))
    GameServer.add_member(:instance_id, Shapes::ShapeRef.new(shape: GameServerInstanceId, location_name: "InstanceId"))
    GameServer.add_member(:connection_info, Shapes::ShapeRef.new(shape: GameServerConnectionInfo, location_name: "ConnectionInfo"))
    GameServer.add_member(:game_server_data, Shapes::ShapeRef.new(shape: GameServerData, location_name: "GameServerData"))
    GameServer.add_member(:claim_status, Shapes::ShapeRef.new(shape: GameServerClaimStatus, location_name: "ClaimStatus"))
    GameServer.add_member(:utilization_status, Shapes::ShapeRef.new(shape: GameServerUtilizationStatus, location_name: "UtilizationStatus"))
    GameServer.add_member(:registration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RegistrationTime"))
    GameServer.add_member(:last_claim_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastClaimTime"))
    GameServer.add_member(:last_health_check_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastHealthCheckTime"))
    GameServer.struct_class = Types::GameServer

    GameServerGroup.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupName, location_name: "GameServerGroupName"))
    GameServerGroup.add_member(:game_server_group_arn, Shapes::ShapeRef.new(shape: GameServerGroupArn, location_name: "GameServerGroupArn"))
    GameServerGroup.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    GameServerGroup.add_member(:instance_definitions, Shapes::ShapeRef.new(shape: InstanceDefinitions, location_name: "InstanceDefinitions"))
    GameServerGroup.add_member(:balancing_strategy, Shapes::ShapeRef.new(shape: BalancingStrategy, location_name: "BalancingStrategy"))
    GameServerGroup.add_member(:game_server_protection_policy, Shapes::ShapeRef.new(shape: GameServerProtectionPolicy, location_name: "GameServerProtectionPolicy"))
    GameServerGroup.add_member(:auto_scaling_group_arn, Shapes::ShapeRef.new(shape: AutoScalingGroupArn, location_name: "AutoScalingGroupArn"))
    GameServerGroup.add_member(:status, Shapes::ShapeRef.new(shape: GameServerGroupStatus, location_name: "Status"))
    GameServerGroup.add_member(:status_reason, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "StatusReason"))
    GameServerGroup.add_member(:suspended_actions, Shapes::ShapeRef.new(shape: GameServerGroupActions, location_name: "SuspendedActions"))
    GameServerGroup.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    GameServerGroup.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    GameServerGroup.struct_class = Types::GameServerGroup

    GameServerGroupActions.member = Shapes::ShapeRef.new(shape: GameServerGroupAction)

    GameServerGroupAutoScalingPolicy.add_member(:estimated_instance_warmup, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "EstimatedInstanceWarmup"))
    GameServerGroupAutoScalingPolicy.add_member(:target_tracking_configuration, Shapes::ShapeRef.new(shape: TargetTrackingConfiguration, required: true, location_name: "TargetTrackingConfiguration"))
    GameServerGroupAutoScalingPolicy.struct_class = Types::GameServerGroupAutoScalingPolicy

    GameServerGroups.member = Shapes::ShapeRef.new(shape: GameServerGroup)

    GameServerInstance.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupName, location_name: "GameServerGroupName"))
    GameServerInstance.add_member(:game_server_group_arn, Shapes::ShapeRef.new(shape: GameServerGroupArn, location_name: "GameServerGroupArn"))
    GameServerInstance.add_member(:instance_id, Shapes::ShapeRef.new(shape: GameServerInstanceId, location_name: "InstanceId"))
    GameServerInstance.add_member(:instance_status, Shapes::ShapeRef.new(shape: GameServerInstanceStatus, location_name: "InstanceStatus"))
    GameServerInstance.struct_class = Types::GameServerInstance

    GameServerInstanceIds.member = Shapes::ShapeRef.new(shape: GameServerInstanceId)

    GameServerInstances.member = Shapes::ShapeRef.new(shape: GameServerInstance)

    GameServers.member = Shapes::ShapeRef.new(shape: GameServer)

    GameSession.add_member(:game_session_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "GameSessionId"))
    GameSession.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    GameSession.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    GameSession.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, location_name: "FleetArn"))
    GameSession.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    GameSession.add_member(:termination_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TerminationTime"))
    GameSession.add_member(:current_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "CurrentPlayerSessionCount"))
    GameSession.add_member(:maximum_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MaximumPlayerSessionCount"))
    GameSession.add_member(:status, Shapes::ShapeRef.new(shape: GameSessionStatus, location_name: "Status"))
    GameSession.add_member(:status_reason, Shapes::ShapeRef.new(shape: GameSessionStatusReason, location_name: "StatusReason"))
    GameSession.add_member(:game_properties, Shapes::ShapeRef.new(shape: GamePropertyList, location_name: "GameProperties"))
    GameSession.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    GameSession.add_member(:dns_name, Shapes::ShapeRef.new(shape: DnsName, location_name: "DnsName"))
    GameSession.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "Port"))
    GameSession.add_member(:player_session_creation_policy, Shapes::ShapeRef.new(shape: PlayerSessionCreationPolicy, location_name: "PlayerSessionCreationPolicy"))
    GameSession.add_member(:creator_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "CreatorId"))
    GameSession.add_member(:game_session_data, Shapes::ShapeRef.new(shape: GameSessionData, location_name: "GameSessionData"))
    GameSession.add_member(:matchmaker_data, Shapes::ShapeRef.new(shape: MatchmakerData, location_name: "MatchmakerData"))
    GameSession.struct_class = Types::GameSession

    GameSessionConnectionInfo.add_member(:game_session_arn, Shapes::ShapeRef.new(shape: ArnStringModel, location_name: "GameSessionArn"))
    GameSessionConnectionInfo.add_member(:ip_address, Shapes::ShapeRef.new(shape: StringModel, location_name: "IpAddress"))
    GameSessionConnectionInfo.add_member(:dns_name, Shapes::ShapeRef.new(shape: DnsName, location_name: "DnsName"))
    GameSessionConnectionInfo.add_member(:port, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Port"))
    GameSessionConnectionInfo.add_member(:matched_player_sessions, Shapes::ShapeRef.new(shape: MatchedPlayerSessionList, location_name: "MatchedPlayerSessions"))
    GameSessionConnectionInfo.struct_class = Types::GameSessionConnectionInfo

    GameSessionDetail.add_member(:game_session, Shapes::ShapeRef.new(shape: GameSession, location_name: "GameSession"))
    GameSessionDetail.add_member(:protection_policy, Shapes::ShapeRef.new(shape: ProtectionPolicy, location_name: "ProtectionPolicy"))
    GameSessionDetail.struct_class = Types::GameSessionDetail

    GameSessionDetailList.member = Shapes::ShapeRef.new(shape: GameSessionDetail)

    GameSessionFullException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    GameSessionFullException.struct_class = Types::GameSessionFullException

    GameSessionList.member = Shapes::ShapeRef.new(shape: GameSession)

    GameSessionPlacement.add_member(:placement_id, Shapes::ShapeRef.new(shape: IdStringModel, location_name: "PlacementId"))
    GameSessionPlacement.add_member(:game_session_queue_name, Shapes::ShapeRef.new(shape: GameSessionQueueName, location_name: "GameSessionQueueName"))
    GameSessionPlacement.add_member(:status, Shapes::ShapeRef.new(shape: GameSessionPlacementState, location_name: "Status"))
    GameSessionPlacement.add_member(:game_properties, Shapes::ShapeRef.new(shape: GamePropertyList, location_name: "GameProperties"))
    GameSessionPlacement.add_member(:maximum_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MaximumPlayerSessionCount"))
    GameSessionPlacement.add_member(:game_session_name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "GameSessionName"))
    GameSessionPlacement.add_member(:game_session_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "GameSessionId"))
    GameSessionPlacement.add_member(:game_session_arn, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "GameSessionArn"))
    GameSessionPlacement.add_member(:game_session_region, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "GameSessionRegion"))
    GameSessionPlacement.add_member(:player_latencies, Shapes::ShapeRef.new(shape: PlayerLatencyList, location_name: "PlayerLatencies"))
    GameSessionPlacement.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    GameSessionPlacement.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    GameSessionPlacement.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    GameSessionPlacement.add_member(:dns_name, Shapes::ShapeRef.new(shape: DnsName, location_name: "DnsName"))
    GameSessionPlacement.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "Port"))
    GameSessionPlacement.add_member(:placed_player_sessions, Shapes::ShapeRef.new(shape: PlacedPlayerSessionList, location_name: "PlacedPlayerSessions"))
    GameSessionPlacement.add_member(:game_session_data, Shapes::ShapeRef.new(shape: GameSessionData, location_name: "GameSessionData"))
    GameSessionPlacement.add_member(:matchmaker_data, Shapes::ShapeRef.new(shape: MatchmakerData, location_name: "MatchmakerData"))
    GameSessionPlacement.struct_class = Types::GameSessionPlacement

    GameSessionQueue.add_member(:name, Shapes::ShapeRef.new(shape: GameSessionQueueName, location_name: "Name"))
    GameSessionQueue.add_member(:game_session_queue_arn, Shapes::ShapeRef.new(shape: GameSessionQueueArn, location_name: "GameSessionQueueArn"))
    GameSessionQueue.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "TimeoutInSeconds"))
    GameSessionQueue.add_member(:player_latency_policies, Shapes::ShapeRef.new(shape: PlayerLatencyPolicyList, location_name: "PlayerLatencyPolicies"))
    GameSessionQueue.add_member(:destinations, Shapes::ShapeRef.new(shape: GameSessionQueueDestinationList, location_name: "Destinations"))
    GameSessionQueue.struct_class = Types::GameSessionQueue

    GameSessionQueueDestination.add_member(:destination_arn, Shapes::ShapeRef.new(shape: ArnStringModel, location_name: "DestinationArn"))
    GameSessionQueueDestination.struct_class = Types::GameSessionQueueDestination

    GameSessionQueueDestinationList.member = Shapes::ShapeRef.new(shape: GameSessionQueueDestination)

    GameSessionQueueList.member = Shapes::ShapeRef.new(shape: GameSessionQueue)

    GameSessionQueueNameOrArnList.member = Shapes::ShapeRef.new(shape: GameSessionQueueNameOrArn)

    GetGameSessionLogUrlInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, required: true, location_name: "GameSessionId"))
    GetGameSessionLogUrlInput.struct_class = Types::GetGameSessionLogUrlInput

    GetGameSessionLogUrlOutput.add_member(:pre_signed_url, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PreSignedUrl"))
    GetGameSessionLogUrlOutput.struct_class = Types::GetGameSessionLogUrlOutput

    GetInstanceAccessInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    GetInstanceAccessInput.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    GetInstanceAccessInput.struct_class = Types::GetInstanceAccessInput

    GetInstanceAccessOutput.add_member(:instance_access, Shapes::ShapeRef.new(shape: InstanceAccess, location_name: "InstanceAccess"))
    GetInstanceAccessOutput.struct_class = Types::GetInstanceAccessOutput

    IdempotentParameterMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    Instance.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    Instance.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    Instance.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    Instance.add_member(:dns_name, Shapes::ShapeRef.new(shape: DnsName, location_name: "DnsName"))
    Instance.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    Instance.add_member(:type, Shapes::ShapeRef.new(shape: EC2InstanceType, location_name: "Type"))
    Instance.add_member(:status, Shapes::ShapeRef.new(shape: InstanceStatus, location_name: "Status"))
    Instance.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Instance.struct_class = Types::Instance

    InstanceAccess.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    InstanceAccess.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    InstanceAccess.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    InstanceAccess.add_member(:operating_system, Shapes::ShapeRef.new(shape: OperatingSystem, location_name: "OperatingSystem"))
    InstanceAccess.add_member(:credentials, Shapes::ShapeRef.new(shape: InstanceCredentials, location_name: "Credentials"))
    InstanceAccess.struct_class = Types::InstanceAccess

    InstanceCredentials.add_member(:user_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "UserName"))
    InstanceCredentials.add_member(:secret, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Secret"))
    InstanceCredentials.struct_class = Types::InstanceCredentials

    InstanceDefinition.add_member(:instance_type, Shapes::ShapeRef.new(shape: GameServerGroupInstanceType, required: true, location_name: "InstanceType"))
    InstanceDefinition.add_member(:weighted_capacity, Shapes::ShapeRef.new(shape: WeightedCapacity, location_name: "WeightedCapacity"))
    InstanceDefinition.struct_class = Types::InstanceDefinition

    InstanceDefinitions.member = Shapes::ShapeRef.new(shape: InstanceDefinition)

    InstanceList.member = Shapes::ShapeRef.new(shape: Instance)

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    InvalidFleetStatusException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    InvalidFleetStatusException.struct_class = Types::InvalidFleetStatusException

    InvalidGameSessionStatusException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    InvalidGameSessionStatusException.struct_class = Types::InvalidGameSessionStatusException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    IpPermission.add_member(:from_port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "FromPort"))
    IpPermission.add_member(:to_port, Shapes::ShapeRef.new(shape: PortNumber, required: true, location_name: "ToPort"))
    IpPermission.add_member(:ip_range, Shapes::ShapeRef.new(shape: NonBlankString, required: true, location_name: "IpRange"))
    IpPermission.add_member(:protocol, Shapes::ShapeRef.new(shape: IpProtocol, required: true, location_name: "Protocol"))
    IpPermission.struct_class = Types::IpPermission

    IpPermissionsList.member = Shapes::ShapeRef.new(shape: IpPermission)

    LatencyMap.key = Shapes::ShapeRef.new(shape: NonEmptyString)
    LatencyMap.value = Shapes::ShapeRef.new(shape: PositiveInteger)

    LaunchTemplateSpecification.add_member(:launch_template_id, Shapes::ShapeRef.new(shape: LaunchTemplateId, location_name: "LaunchTemplateId"))
    LaunchTemplateSpecification.add_member(:launch_template_name, Shapes::ShapeRef.new(shape: LaunchTemplateName, location_name: "LaunchTemplateName"))
    LaunchTemplateSpecification.add_member(:version, Shapes::ShapeRef.new(shape: LaunchTemplateVersion, location_name: "Version"))
    LaunchTemplateSpecification.struct_class = Types::LaunchTemplateSpecification

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAliasesInput.add_member(:routing_strategy_type, Shapes::ShapeRef.new(shape: RoutingStrategyType, location_name: "RoutingStrategyType"))
    ListAliasesInput.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    ListAliasesInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    ListAliasesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListAliasesInput.struct_class = Types::ListAliasesInput

    ListAliasesOutput.add_member(:aliases, Shapes::ShapeRef.new(shape: AliasList, location_name: "Aliases"))
    ListAliasesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListAliasesOutput.struct_class = Types::ListAliasesOutput

    ListBuildsInput.add_member(:status, Shapes::ShapeRef.new(shape: BuildStatus, location_name: "Status"))
    ListBuildsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    ListBuildsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListBuildsInput.struct_class = Types::ListBuildsInput

    ListBuildsOutput.add_member(:builds, Shapes::ShapeRef.new(shape: BuildList, location_name: "Builds"))
    ListBuildsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListBuildsOutput.struct_class = Types::ListBuildsOutput

    ListFleetsInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildIdOrArn, location_name: "BuildId"))
    ListFleetsInput.add_member(:script_id, Shapes::ShapeRef.new(shape: ScriptIdOrArn, location_name: "ScriptId"))
    ListFleetsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    ListFleetsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    ListFleetsInput.struct_class = Types::ListFleetsInput

    ListFleetsOutput.add_member(:fleet_ids, Shapes::ShapeRef.new(shape: FleetIdList, location_name: "FleetIds"))
    ListFleetsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    ListFleetsOutput.struct_class = Types::ListFleetsOutput

    ListGameServerGroupsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    ListGameServerGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    ListGameServerGroupsInput.struct_class = Types::ListGameServerGroupsInput

    ListGameServerGroupsOutput.add_member(:game_server_groups, Shapes::ShapeRef.new(shape: GameServerGroups, location_name: "GameServerGroups"))
    ListGameServerGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    ListGameServerGroupsOutput.struct_class = Types::ListGameServerGroupsOutput

    ListGameServersInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    ListGameServersInput.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    ListGameServersInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    ListGameServersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    ListGameServersInput.struct_class = Types::ListGameServersInput

    ListGameServersOutput.add_member(:game_servers, Shapes::ShapeRef.new(shape: GameServers, location_name: "GameServers"))
    ListGameServersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    ListGameServersOutput.struct_class = Types::ListGameServersOutput

    ListScriptsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    ListScriptsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListScriptsInput.struct_class = Types::ListScriptsInput

    ListScriptsOutput.add_member(:scripts, Shapes::ShapeRef.new(shape: ScriptList, location_name: "Scripts"))
    ListScriptsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "NextToken"))
    ListScriptsOutput.struct_class = Types::ListScriptsOutput

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MatchedPlayerSession.add_member(:player_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PlayerId"))
    MatchedPlayerSession.add_member(:player_session_id, Shapes::ShapeRef.new(shape: PlayerSessionId, location_name: "PlayerSessionId"))
    MatchedPlayerSession.struct_class = Types::MatchedPlayerSession

    MatchedPlayerSessionList.member = Shapes::ShapeRef.new(shape: MatchedPlayerSession)

    MatchmakingConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: MatchmakingIdStringModel, location_name: "Name"))
    MatchmakingConfiguration.add_member(:configuration_arn, Shapes::ShapeRef.new(shape: MatchmakingConfigurationArn, location_name: "ConfigurationArn"))
    MatchmakingConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    MatchmakingConfiguration.add_member(:game_session_queue_arns, Shapes::ShapeRef.new(shape: QueueArnsList, location_name: "GameSessionQueueArns"))
    MatchmakingConfiguration.add_member(:request_timeout_seconds, Shapes::ShapeRef.new(shape: MatchmakingRequestTimeoutInteger, location_name: "RequestTimeoutSeconds"))
    MatchmakingConfiguration.add_member(:acceptance_timeout_seconds, Shapes::ShapeRef.new(shape: MatchmakingAcceptanceTimeoutInteger, location_name: "AcceptanceTimeoutSeconds"))
    MatchmakingConfiguration.add_member(:acceptance_required, Shapes::ShapeRef.new(shape: BooleanModel, location_name: "AcceptanceRequired"))
    MatchmakingConfiguration.add_member(:rule_set_name, Shapes::ShapeRef.new(shape: MatchmakingIdStringModel, location_name: "RuleSetName"))
    MatchmakingConfiguration.add_member(:rule_set_arn, Shapes::ShapeRef.new(shape: MatchmakingRuleSetArn, location_name: "RuleSetArn"))
    MatchmakingConfiguration.add_member(:notification_target, Shapes::ShapeRef.new(shape: SnsArnStringModel, location_name: "NotificationTarget"))
    MatchmakingConfiguration.add_member(:additional_player_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "AdditionalPlayerCount"))
    MatchmakingConfiguration.add_member(:custom_event_data, Shapes::ShapeRef.new(shape: CustomEventData, location_name: "CustomEventData"))
    MatchmakingConfiguration.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    MatchmakingConfiguration.add_member(:game_properties, Shapes::ShapeRef.new(shape: GamePropertyList, location_name: "GameProperties"))
    MatchmakingConfiguration.add_member(:game_session_data, Shapes::ShapeRef.new(shape: GameSessionData, location_name: "GameSessionData"))
    MatchmakingConfiguration.add_member(:backfill_mode, Shapes::ShapeRef.new(shape: BackfillMode, location_name: "BackfillMode"))
    MatchmakingConfiguration.struct_class = Types::MatchmakingConfiguration

    MatchmakingConfigurationList.member = Shapes::ShapeRef.new(shape: MatchmakingConfiguration)

    MatchmakingConfigurationNameList.member = Shapes::ShapeRef.new(shape: MatchmakingConfigurationName)

    MatchmakingIdList.member = Shapes::ShapeRef.new(shape: MatchmakingIdStringModel)

    MatchmakingRuleSet.add_member(:rule_set_name, Shapes::ShapeRef.new(shape: MatchmakingIdStringModel, location_name: "RuleSetName"))
    MatchmakingRuleSet.add_member(:rule_set_arn, Shapes::ShapeRef.new(shape: MatchmakingRuleSetArn, location_name: "RuleSetArn"))
    MatchmakingRuleSet.add_member(:rule_set_body, Shapes::ShapeRef.new(shape: RuleSetBody, required: true, location_name: "RuleSetBody"))
    MatchmakingRuleSet.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    MatchmakingRuleSet.struct_class = Types::MatchmakingRuleSet

    MatchmakingRuleSetList.member = Shapes::ShapeRef.new(shape: MatchmakingRuleSet)

    MatchmakingRuleSetNameList.member = Shapes::ShapeRef.new(shape: MatchmakingRuleSetName)

    MatchmakingTicket.add_member(:ticket_id, Shapes::ShapeRef.new(shape: MatchmakingIdStringModel, location_name: "TicketId"))
    MatchmakingTicket.add_member(:configuration_name, Shapes::ShapeRef.new(shape: MatchmakingIdStringModel, location_name: "ConfigurationName"))
    MatchmakingTicket.add_member(:configuration_arn, Shapes::ShapeRef.new(shape: MatchmakingConfigurationArn, location_name: "ConfigurationArn"))
    MatchmakingTicket.add_member(:status, Shapes::ShapeRef.new(shape: MatchmakingConfigurationStatus, location_name: "Status"))
    MatchmakingTicket.add_member(:status_reason, Shapes::ShapeRef.new(shape: StringModel, location_name: "StatusReason"))
    MatchmakingTicket.add_member(:status_message, Shapes::ShapeRef.new(shape: StringModel, location_name: "StatusMessage"))
    MatchmakingTicket.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartTime"))
    MatchmakingTicket.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndTime"))
    MatchmakingTicket.add_member(:players, Shapes::ShapeRef.new(shape: PlayerList, location_name: "Players"))
    MatchmakingTicket.add_member(:game_session_connection_info, Shapes::ShapeRef.new(shape: GameSessionConnectionInfo, location_name: "GameSessionConnectionInfo"))
    MatchmakingTicket.add_member(:estimated_wait_time, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "EstimatedWaitTime"))
    MatchmakingTicket.struct_class = Types::MatchmakingTicket

    MatchmakingTicketList.member = Shapes::ShapeRef.new(shape: MatchmakingTicket)

    MetricGroupList.member = Shapes::ShapeRef.new(shape: MetricGroup)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    OutOfCapacityException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    OutOfCapacityException.struct_class = Types::OutOfCapacityException

    PlacedPlayerSession.add_member(:player_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PlayerId"))
    PlacedPlayerSession.add_member(:player_session_id, Shapes::ShapeRef.new(shape: PlayerSessionId, location_name: "PlayerSessionId"))
    PlacedPlayerSession.struct_class = Types::PlacedPlayerSession

    PlacedPlayerSessionList.member = Shapes::ShapeRef.new(shape: PlacedPlayerSession)

    Player.add_member(:player_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PlayerId"))
    Player.add_member(:player_attributes, Shapes::ShapeRef.new(shape: PlayerAttributeMap, location_name: "PlayerAttributes"))
    Player.add_member(:team, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Team"))
    Player.add_member(:latency_in_ms, Shapes::ShapeRef.new(shape: LatencyMap, location_name: "LatencyInMs"))
    Player.struct_class = Types::Player

    PlayerAttributeMap.key = Shapes::ShapeRef.new(shape: NonZeroAndMaxString)
    PlayerAttributeMap.value = Shapes::ShapeRef.new(shape: AttributeValue)

    PlayerDataMap.key = Shapes::ShapeRef.new(shape: NonZeroAndMaxString)
    PlayerDataMap.value = Shapes::ShapeRef.new(shape: PlayerData)

    PlayerIdList.member = Shapes::ShapeRef.new(shape: NonZeroAndMaxString)

    PlayerLatency.add_member(:player_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PlayerId"))
    PlayerLatency.add_member(:region_identifier, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "RegionIdentifier"))
    PlayerLatency.add_member(:latency_in_milliseconds, Shapes::ShapeRef.new(shape: Float, location_name: "LatencyInMilliseconds"))
    PlayerLatency.struct_class = Types::PlayerLatency

    PlayerLatencyList.member = Shapes::ShapeRef.new(shape: PlayerLatency)

    PlayerLatencyPolicy.add_member(:maximum_individual_player_latency_milliseconds, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MaximumIndividualPlayerLatencyMilliseconds"))
    PlayerLatencyPolicy.add_member(:policy_duration_seconds, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "PolicyDurationSeconds"))
    PlayerLatencyPolicy.struct_class = Types::PlayerLatencyPolicy

    PlayerLatencyPolicyList.member = Shapes::ShapeRef.new(shape: PlayerLatencyPolicy)

    PlayerList.member = Shapes::ShapeRef.new(shape: Player)

    PlayerSession.add_member(:player_session_id, Shapes::ShapeRef.new(shape: PlayerSessionId, location_name: "PlayerSessionId"))
    PlayerSession.add_member(:player_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PlayerId"))
    PlayerSession.add_member(:game_session_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "GameSessionId"))
    PlayerSession.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    PlayerSession.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, location_name: "FleetArn"))
    PlayerSession.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    PlayerSession.add_member(:termination_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "TerminationTime"))
    PlayerSession.add_member(:status, Shapes::ShapeRef.new(shape: PlayerSessionStatus, location_name: "Status"))
    PlayerSession.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "IpAddress"))
    PlayerSession.add_member(:dns_name, Shapes::ShapeRef.new(shape: DnsName, location_name: "DnsName"))
    PlayerSession.add_member(:port, Shapes::ShapeRef.new(shape: PortNumber, location_name: "Port"))
    PlayerSession.add_member(:player_data, Shapes::ShapeRef.new(shape: PlayerData, location_name: "PlayerData"))
    PlayerSession.struct_class = Types::PlayerSession

    PlayerSessionList.member = Shapes::ShapeRef.new(shape: PlayerSession)

    PutScalingPolicyInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "Name"))
    PutScalingPolicyInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    PutScalingPolicyInput.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: Integer, location_name: "ScalingAdjustment"))
    PutScalingPolicyInput.add_member(:scaling_adjustment_type, Shapes::ShapeRef.new(shape: ScalingAdjustmentType, location_name: "ScalingAdjustmentType"))
    PutScalingPolicyInput.add_member(:threshold, Shapes::ShapeRef.new(shape: Double, location_name: "Threshold"))
    PutScalingPolicyInput.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperatorType, location_name: "ComparisonOperator"))
    PutScalingPolicyInput.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "EvaluationPeriods"))
    PutScalingPolicyInput.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    PutScalingPolicyInput.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, location_name: "PolicyType"))
    PutScalingPolicyInput.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: "TargetConfiguration"))
    PutScalingPolicyInput.struct_class = Types::PutScalingPolicyInput

    PutScalingPolicyOutput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    PutScalingPolicyOutput.struct_class = Types::PutScalingPolicyOutput

    QueueArnsList.member = Shapes::ShapeRef.new(shape: ArnStringModel)

    RegisterGameServerInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    RegisterGameServerInput.add_member(:game_server_id, Shapes::ShapeRef.new(shape: GameServerId, required: true, location_name: "GameServerId"))
    RegisterGameServerInput.add_member(:instance_id, Shapes::ShapeRef.new(shape: GameServerInstanceId, required: true, location_name: "InstanceId"))
    RegisterGameServerInput.add_member(:connection_info, Shapes::ShapeRef.new(shape: GameServerConnectionInfo, location_name: "ConnectionInfo"))
    RegisterGameServerInput.add_member(:game_server_data, Shapes::ShapeRef.new(shape: GameServerData, location_name: "GameServerData"))
    RegisterGameServerInput.struct_class = Types::RegisterGameServerInput

    RegisterGameServerOutput.add_member(:game_server, Shapes::ShapeRef.new(shape: GameServer, location_name: "GameServer"))
    RegisterGameServerOutput.struct_class = Types::RegisterGameServerOutput

    RequestUploadCredentialsInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildIdOrArn, required: true, location_name: "BuildId"))
    RequestUploadCredentialsInput.struct_class = Types::RequestUploadCredentialsInput

    RequestUploadCredentialsOutput.add_member(:upload_credentials, Shapes::ShapeRef.new(shape: AwsCredentials, location_name: "UploadCredentials"))
    RequestUploadCredentialsOutput.add_member(:storage_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "StorageLocation"))
    RequestUploadCredentialsOutput.struct_class = Types::RequestUploadCredentialsOutput

    ResolveAliasInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasIdOrArn, required: true, location_name: "AliasId"))
    ResolveAliasInput.struct_class = Types::ResolveAliasInput

    ResolveAliasOutput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    ResolveAliasOutput.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, location_name: "FleetArn"))
    ResolveAliasOutput.struct_class = Types::ResolveAliasOutput

    ResourceCreationLimitPolicy.add_member(:new_game_sessions_per_creator, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "NewGameSessionsPerCreator"))
    ResourceCreationLimitPolicy.add_member(:policy_period_in_minutes, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "PolicyPeriodInMinutes"))
    ResourceCreationLimitPolicy.struct_class = Types::ResourceCreationLimitPolicy

    ResumeGameServerGroupInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    ResumeGameServerGroupInput.add_member(:resume_actions, Shapes::ShapeRef.new(shape: GameServerGroupActions, required: true, location_name: "ResumeActions"))
    ResumeGameServerGroupInput.struct_class = Types::ResumeGameServerGroupInput

    ResumeGameServerGroupOutput.add_member(:game_server_group, Shapes::ShapeRef.new(shape: GameServerGroup, location_name: "GameServerGroup"))
    ResumeGameServerGroupOutput.struct_class = Types::ResumeGameServerGroupOutput

    RoutingStrategy.add_member(:type, Shapes::ShapeRef.new(shape: RoutingStrategyType, location_name: "Type"))
    RoutingStrategy.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    RoutingStrategy.add_member(:message, Shapes::ShapeRef.new(shape: FreeText, location_name: "Message"))
    RoutingStrategy.struct_class = Types::RoutingStrategy

    RuntimeConfiguration.add_member(:server_processes, Shapes::ShapeRef.new(shape: ServerProcessList, location_name: "ServerProcesses"))
    RuntimeConfiguration.add_member(:max_concurrent_game_session_activations, Shapes::ShapeRef.new(shape: MaxConcurrentGameSessionActivations, location_name: "MaxConcurrentGameSessionActivations"))
    RuntimeConfiguration.add_member(:game_session_activation_timeout_seconds, Shapes::ShapeRef.new(shape: GameSessionActivationTimeoutSeconds, location_name: "GameSessionActivationTimeoutSeconds"))
    RuntimeConfiguration.struct_class = Types::RuntimeConfiguration

    S3Location.add_member(:bucket, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Bucket"))
    S3Location.add_member(:key, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Key"))
    S3Location.add_member(:role_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RoleArn"))
    S3Location.add_member(:object_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "ObjectVersion"))
    S3Location.struct_class = Types::S3Location

    ScalingPolicy.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    ScalingPolicy.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    ScalingPolicy.add_member(:status, Shapes::ShapeRef.new(shape: ScalingStatusType, location_name: "Status"))
    ScalingPolicy.add_member(:scaling_adjustment, Shapes::ShapeRef.new(shape: Integer, location_name: "ScalingAdjustment"))
    ScalingPolicy.add_member(:scaling_adjustment_type, Shapes::ShapeRef.new(shape: ScalingAdjustmentType, location_name: "ScalingAdjustmentType"))
    ScalingPolicy.add_member(:comparison_operator, Shapes::ShapeRef.new(shape: ComparisonOperatorType, location_name: "ComparisonOperator"))
    ScalingPolicy.add_member(:threshold, Shapes::ShapeRef.new(shape: Double, location_name: "Threshold"))
    ScalingPolicy.add_member(:evaluation_periods, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "EvaluationPeriods"))
    ScalingPolicy.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    ScalingPolicy.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, location_name: "PolicyType"))
    ScalingPolicy.add_member(:target_configuration, Shapes::ShapeRef.new(shape: TargetConfiguration, location_name: "TargetConfiguration"))
    ScalingPolicy.struct_class = Types::ScalingPolicy

    ScalingPolicyList.member = Shapes::ShapeRef.new(shape: ScalingPolicy)

    Script.add_member(:script_id, Shapes::ShapeRef.new(shape: ScriptId, location_name: "ScriptId"))
    Script.add_member(:script_arn, Shapes::ShapeRef.new(shape: ScriptArn, location_name: "ScriptArn"))
    Script.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    Script.add_member(:version, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Version"))
    Script.add_member(:size_on_disk, Shapes::ShapeRef.new(shape: PositiveLong, location_name: "SizeOnDisk"))
    Script.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    Script.add_member(:storage_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "StorageLocation"))
    Script.struct_class = Types::Script

    ScriptList.member = Shapes::ShapeRef.new(shape: Script)

    SearchGameSessionsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, location_name: "FleetId"))
    SearchGameSessionsInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasIdOrArn, location_name: "AliasId"))
    SearchGameSessionsInput.add_member(:filter_expression, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "FilterExpression"))
    SearchGameSessionsInput.add_member(:sort_expression, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "SortExpression"))
    SearchGameSessionsInput.add_member(:limit, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "Limit"))
    SearchGameSessionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    SearchGameSessionsInput.struct_class = Types::SearchGameSessionsInput

    SearchGameSessionsOutput.add_member(:game_sessions, Shapes::ShapeRef.new(shape: GameSessionList, location_name: "GameSessions"))
    SearchGameSessionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "NextToken"))
    SearchGameSessionsOutput.struct_class = Types::SearchGameSessionsOutput

    ServerProcess.add_member(:launch_path, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, required: true, location_name: "LaunchPath"))
    ServerProcess.add_member(:parameters, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Parameters"))
    ServerProcess.add_member(:concurrent_executions, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "ConcurrentExecutions"))
    ServerProcess.struct_class = Types::ServerProcess

    ServerProcessList.member = Shapes::ShapeRef.new(shape: ServerProcess)

    StartFleetActionsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    StartFleetActionsInput.add_member(:actions, Shapes::ShapeRef.new(shape: FleetActionList, required: true, location_name: "Actions"))
    StartFleetActionsInput.struct_class = Types::StartFleetActionsInput

    StartFleetActionsOutput.struct_class = Types::StartFleetActionsOutput

    StartGameSessionPlacementInput.add_member(:placement_id, Shapes::ShapeRef.new(shape: IdStringModel, required: true, location_name: "PlacementId"))
    StartGameSessionPlacementInput.add_member(:game_session_queue_name, Shapes::ShapeRef.new(shape: GameSessionQueueNameOrArn, required: true, location_name: "GameSessionQueueName"))
    StartGameSessionPlacementInput.add_member(:game_properties, Shapes::ShapeRef.new(shape: GamePropertyList, location_name: "GameProperties"))
    StartGameSessionPlacementInput.add_member(:maximum_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, required: true, location_name: "MaximumPlayerSessionCount"))
    StartGameSessionPlacementInput.add_member(:game_session_name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "GameSessionName"))
    StartGameSessionPlacementInput.add_member(:player_latencies, Shapes::ShapeRef.new(shape: PlayerLatencyList, location_name: "PlayerLatencies"))
    StartGameSessionPlacementInput.add_member(:desired_player_sessions, Shapes::ShapeRef.new(shape: DesiredPlayerSessionList, location_name: "DesiredPlayerSessions"))
    StartGameSessionPlacementInput.add_member(:game_session_data, Shapes::ShapeRef.new(shape: GameSessionData, location_name: "GameSessionData"))
    StartGameSessionPlacementInput.struct_class = Types::StartGameSessionPlacementInput

    StartGameSessionPlacementOutput.add_member(:game_session_placement, Shapes::ShapeRef.new(shape: GameSessionPlacement, location_name: "GameSessionPlacement"))
    StartGameSessionPlacementOutput.struct_class = Types::StartGameSessionPlacementOutput

    StartMatchBackfillInput.add_member(:ticket_id, Shapes::ShapeRef.new(shape: MatchmakingIdStringModel, location_name: "TicketId"))
    StartMatchBackfillInput.add_member(:configuration_name, Shapes::ShapeRef.new(shape: MatchmakingConfigurationName, required: true, location_name: "ConfigurationName"))
    StartMatchBackfillInput.add_member(:game_session_arn, Shapes::ShapeRef.new(shape: ArnStringModel, required: true, location_name: "GameSessionArn"))
    StartMatchBackfillInput.add_member(:players, Shapes::ShapeRef.new(shape: PlayerList, required: true, location_name: "Players"))
    StartMatchBackfillInput.struct_class = Types::StartMatchBackfillInput

    StartMatchBackfillOutput.add_member(:matchmaking_ticket, Shapes::ShapeRef.new(shape: MatchmakingTicket, location_name: "MatchmakingTicket"))
    StartMatchBackfillOutput.struct_class = Types::StartMatchBackfillOutput

    StartMatchmakingInput.add_member(:ticket_id, Shapes::ShapeRef.new(shape: MatchmakingIdStringModel, location_name: "TicketId"))
    StartMatchmakingInput.add_member(:configuration_name, Shapes::ShapeRef.new(shape: MatchmakingConfigurationName, required: true, location_name: "ConfigurationName"))
    StartMatchmakingInput.add_member(:players, Shapes::ShapeRef.new(shape: PlayerList, required: true, location_name: "Players"))
    StartMatchmakingInput.struct_class = Types::StartMatchmakingInput

    StartMatchmakingOutput.add_member(:matchmaking_ticket, Shapes::ShapeRef.new(shape: MatchmakingTicket, location_name: "MatchmakingTicket"))
    StartMatchmakingOutput.struct_class = Types::StartMatchmakingOutput

    StopFleetActionsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    StopFleetActionsInput.add_member(:actions, Shapes::ShapeRef.new(shape: FleetActionList, required: true, location_name: "Actions"))
    StopFleetActionsInput.struct_class = Types::StopFleetActionsInput

    StopFleetActionsOutput.struct_class = Types::StopFleetActionsOutput

    StopGameSessionPlacementInput.add_member(:placement_id, Shapes::ShapeRef.new(shape: IdStringModel, required: true, location_name: "PlacementId"))
    StopGameSessionPlacementInput.struct_class = Types::StopGameSessionPlacementInput

    StopGameSessionPlacementOutput.add_member(:game_session_placement, Shapes::ShapeRef.new(shape: GameSessionPlacement, location_name: "GameSessionPlacement"))
    StopGameSessionPlacementOutput.struct_class = Types::StopGameSessionPlacementOutput

    StopMatchmakingInput.add_member(:ticket_id, Shapes::ShapeRef.new(shape: MatchmakingIdStringModel, required: true, location_name: "TicketId"))
    StopMatchmakingInput.struct_class = Types::StopMatchmakingInput

    StopMatchmakingOutput.struct_class = Types::StopMatchmakingOutput

    StringDoubleMap.key = Shapes::ShapeRef.new(shape: NonZeroAndMaxString)
    StringDoubleMap.value = Shapes::ShapeRef.new(shape: DoubleObject)

    StringList.member = Shapes::ShapeRef.new(shape: NonZeroAndMaxString)

    SuspendGameServerGroupInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    SuspendGameServerGroupInput.add_member(:suspend_actions, Shapes::ShapeRef.new(shape: GameServerGroupActions, required: true, location_name: "SuspendActions"))
    SuspendGameServerGroupInput.struct_class = Types::SuspendGameServerGroupInput

    SuspendGameServerGroupOutput.add_member(:game_server_group, Shapes::ShapeRef.new(shape: GameServerGroup, location_name: "GameServerGroup"))
    SuspendGameServerGroupOutput.struct_class = Types::SuspendGameServerGroupOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TaggingFailedException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    TaggingFailedException.struct_class = Types::TaggingFailedException

    TargetConfiguration.add_member(:target_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "TargetValue"))
    TargetConfiguration.struct_class = Types::TargetConfiguration

    TargetTrackingConfiguration.add_member(:target_value, Shapes::ShapeRef.new(shape: NonNegativeDouble, required: true, location_name: "TargetValue"))
    TargetTrackingConfiguration.struct_class = Types::TargetTrackingConfiguration

    TerminalRoutingStrategyException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    TerminalRoutingStrategyException.struct_class = Types::TerminalRoutingStrategyException

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UnsupportedRegionException.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    UnsupportedRegionException.struct_class = Types::UnsupportedRegionException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceARN"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAliasInput.add_member(:alias_id, Shapes::ShapeRef.new(shape: AliasIdOrArn, required: true, location_name: "AliasId"))
    UpdateAliasInput.add_member(:name, Shapes::ShapeRef.new(shape: NonBlankAndLengthConstraintString, location_name: "Name"))
    UpdateAliasInput.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    UpdateAliasInput.add_member(:routing_strategy, Shapes::ShapeRef.new(shape: RoutingStrategy, location_name: "RoutingStrategy"))
    UpdateAliasInput.struct_class = Types::UpdateAliasInput

    UpdateAliasOutput.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    UpdateAliasOutput.struct_class = Types::UpdateAliasOutput

    UpdateBuildInput.add_member(:build_id, Shapes::ShapeRef.new(shape: BuildIdOrArn, required: true, location_name: "BuildId"))
    UpdateBuildInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    UpdateBuildInput.add_member(:version, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Version"))
    UpdateBuildInput.struct_class = Types::UpdateBuildInput

    UpdateBuildOutput.add_member(:build, Shapes::ShapeRef.new(shape: Build, location_name: "Build"))
    UpdateBuildOutput.struct_class = Types::UpdateBuildOutput

    UpdateFleetAttributesInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    UpdateFleetAttributesInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    UpdateFleetAttributesInput.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    UpdateFleetAttributesInput.add_member(:new_game_session_protection_policy, Shapes::ShapeRef.new(shape: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    UpdateFleetAttributesInput.add_member(:resource_creation_limit_policy, Shapes::ShapeRef.new(shape: ResourceCreationLimitPolicy, location_name: "ResourceCreationLimitPolicy"))
    UpdateFleetAttributesInput.add_member(:metric_groups, Shapes::ShapeRef.new(shape: MetricGroupList, location_name: "MetricGroups"))
    UpdateFleetAttributesInput.struct_class = Types::UpdateFleetAttributesInput

    UpdateFleetAttributesOutput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    UpdateFleetAttributesOutput.struct_class = Types::UpdateFleetAttributesOutput

    UpdateFleetCapacityInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    UpdateFleetCapacityInput.add_member(:desired_instances, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "DesiredInstances"))
    UpdateFleetCapacityInput.add_member(:min_size, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MinSize"))
    UpdateFleetCapacityInput.add_member(:max_size, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MaxSize"))
    UpdateFleetCapacityInput.struct_class = Types::UpdateFleetCapacityInput

    UpdateFleetCapacityOutput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    UpdateFleetCapacityOutput.struct_class = Types::UpdateFleetCapacityOutput

    UpdateFleetPortSettingsInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    UpdateFleetPortSettingsInput.add_member(:inbound_permission_authorizations, Shapes::ShapeRef.new(shape: IpPermissionsList, location_name: "InboundPermissionAuthorizations"))
    UpdateFleetPortSettingsInput.add_member(:inbound_permission_revocations, Shapes::ShapeRef.new(shape: IpPermissionsList, location_name: "InboundPermissionRevocations"))
    UpdateFleetPortSettingsInput.struct_class = Types::UpdateFleetPortSettingsInput

    UpdateFleetPortSettingsOutput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    UpdateFleetPortSettingsOutput.struct_class = Types::UpdateFleetPortSettingsOutput

    UpdateGameServerGroupInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    UpdateGameServerGroupInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "RoleArn"))
    UpdateGameServerGroupInput.add_member(:instance_definitions, Shapes::ShapeRef.new(shape: InstanceDefinitions, location_name: "InstanceDefinitions"))
    UpdateGameServerGroupInput.add_member(:game_server_protection_policy, Shapes::ShapeRef.new(shape: GameServerProtectionPolicy, location_name: "GameServerProtectionPolicy"))
    UpdateGameServerGroupInput.add_member(:balancing_strategy, Shapes::ShapeRef.new(shape: BalancingStrategy, location_name: "BalancingStrategy"))
    UpdateGameServerGroupInput.struct_class = Types::UpdateGameServerGroupInput

    UpdateGameServerGroupOutput.add_member(:game_server_group, Shapes::ShapeRef.new(shape: GameServerGroup, location_name: "GameServerGroup"))
    UpdateGameServerGroupOutput.struct_class = Types::UpdateGameServerGroupOutput

    UpdateGameServerInput.add_member(:game_server_group_name, Shapes::ShapeRef.new(shape: GameServerGroupNameOrArn, required: true, location_name: "GameServerGroupName"))
    UpdateGameServerInput.add_member(:game_server_id, Shapes::ShapeRef.new(shape: GameServerId, required: true, location_name: "GameServerId"))
    UpdateGameServerInput.add_member(:game_server_data, Shapes::ShapeRef.new(shape: GameServerData, location_name: "GameServerData"))
    UpdateGameServerInput.add_member(:utilization_status, Shapes::ShapeRef.new(shape: GameServerUtilizationStatus, location_name: "UtilizationStatus"))
    UpdateGameServerInput.add_member(:health_check, Shapes::ShapeRef.new(shape: GameServerHealthCheck, location_name: "HealthCheck"))
    UpdateGameServerInput.struct_class = Types::UpdateGameServerInput

    UpdateGameServerOutput.add_member(:game_server, Shapes::ShapeRef.new(shape: GameServer, location_name: "GameServer"))
    UpdateGameServerOutput.struct_class = Types::UpdateGameServerOutput

    UpdateGameSessionInput.add_member(:game_session_id, Shapes::ShapeRef.new(shape: ArnStringModel, required: true, location_name: "GameSessionId"))
    UpdateGameSessionInput.add_member(:maximum_player_session_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "MaximumPlayerSessionCount"))
    UpdateGameSessionInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    UpdateGameSessionInput.add_member(:player_session_creation_policy, Shapes::ShapeRef.new(shape: PlayerSessionCreationPolicy, location_name: "PlayerSessionCreationPolicy"))
    UpdateGameSessionInput.add_member(:protection_policy, Shapes::ShapeRef.new(shape: ProtectionPolicy, location_name: "ProtectionPolicy"))
    UpdateGameSessionInput.struct_class = Types::UpdateGameSessionInput

    UpdateGameSessionOutput.add_member(:game_session, Shapes::ShapeRef.new(shape: GameSession, location_name: "GameSession"))
    UpdateGameSessionOutput.struct_class = Types::UpdateGameSessionOutput

    UpdateGameSessionQueueInput.add_member(:name, Shapes::ShapeRef.new(shape: GameSessionQueueNameOrArn, required: true, location_name: "Name"))
    UpdateGameSessionQueueInput.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "TimeoutInSeconds"))
    UpdateGameSessionQueueInput.add_member(:player_latency_policies, Shapes::ShapeRef.new(shape: PlayerLatencyPolicyList, location_name: "PlayerLatencyPolicies"))
    UpdateGameSessionQueueInput.add_member(:destinations, Shapes::ShapeRef.new(shape: GameSessionQueueDestinationList, location_name: "Destinations"))
    UpdateGameSessionQueueInput.struct_class = Types::UpdateGameSessionQueueInput

    UpdateGameSessionQueueOutput.add_member(:game_session_queue, Shapes::ShapeRef.new(shape: GameSessionQueue, location_name: "GameSessionQueue"))
    UpdateGameSessionQueueOutput.struct_class = Types::UpdateGameSessionQueueOutput

    UpdateMatchmakingConfigurationInput.add_member(:name, Shapes::ShapeRef.new(shape: MatchmakingConfigurationName, required: true, location_name: "Name"))
    UpdateMatchmakingConfigurationInput.add_member(:description, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Description"))
    UpdateMatchmakingConfigurationInput.add_member(:game_session_queue_arns, Shapes::ShapeRef.new(shape: QueueArnsList, location_name: "GameSessionQueueArns"))
    UpdateMatchmakingConfigurationInput.add_member(:request_timeout_seconds, Shapes::ShapeRef.new(shape: MatchmakingRequestTimeoutInteger, location_name: "RequestTimeoutSeconds"))
    UpdateMatchmakingConfigurationInput.add_member(:acceptance_timeout_seconds, Shapes::ShapeRef.new(shape: MatchmakingAcceptanceTimeoutInteger, location_name: "AcceptanceTimeoutSeconds"))
    UpdateMatchmakingConfigurationInput.add_member(:acceptance_required, Shapes::ShapeRef.new(shape: BooleanModel, location_name: "AcceptanceRequired"))
    UpdateMatchmakingConfigurationInput.add_member(:rule_set_name, Shapes::ShapeRef.new(shape: MatchmakingRuleSetName, location_name: "RuleSetName"))
    UpdateMatchmakingConfigurationInput.add_member(:notification_target, Shapes::ShapeRef.new(shape: SnsArnStringModel, location_name: "NotificationTarget"))
    UpdateMatchmakingConfigurationInput.add_member(:additional_player_count, Shapes::ShapeRef.new(shape: WholeNumber, location_name: "AdditionalPlayerCount"))
    UpdateMatchmakingConfigurationInput.add_member(:custom_event_data, Shapes::ShapeRef.new(shape: CustomEventData, location_name: "CustomEventData"))
    UpdateMatchmakingConfigurationInput.add_member(:game_properties, Shapes::ShapeRef.new(shape: GamePropertyList, location_name: "GameProperties"))
    UpdateMatchmakingConfigurationInput.add_member(:game_session_data, Shapes::ShapeRef.new(shape: GameSessionData, location_name: "GameSessionData"))
    UpdateMatchmakingConfigurationInput.add_member(:backfill_mode, Shapes::ShapeRef.new(shape: BackfillMode, location_name: "BackfillMode"))
    UpdateMatchmakingConfigurationInput.struct_class = Types::UpdateMatchmakingConfigurationInput

    UpdateMatchmakingConfigurationOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: MatchmakingConfiguration, location_name: "Configuration"))
    UpdateMatchmakingConfigurationOutput.struct_class = Types::UpdateMatchmakingConfigurationOutput

    UpdateRuntimeConfigurationInput.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetIdOrArn, required: true, location_name: "FleetId"))
    UpdateRuntimeConfigurationInput.add_member(:runtime_configuration, Shapes::ShapeRef.new(shape: RuntimeConfiguration, required: true, location_name: "RuntimeConfiguration"))
    UpdateRuntimeConfigurationInput.struct_class = Types::UpdateRuntimeConfigurationInput

    UpdateRuntimeConfigurationOutput.add_member(:runtime_configuration, Shapes::ShapeRef.new(shape: RuntimeConfiguration, location_name: "RuntimeConfiguration"))
    UpdateRuntimeConfigurationOutput.struct_class = Types::UpdateRuntimeConfigurationOutput

    UpdateScriptInput.add_member(:script_id, Shapes::ShapeRef.new(shape: ScriptIdOrArn, required: true, location_name: "ScriptId"))
    UpdateScriptInput.add_member(:name, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Name"))
    UpdateScriptInput.add_member(:version, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Version"))
    UpdateScriptInput.add_member(:storage_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "StorageLocation"))
    UpdateScriptInput.add_member(:zip_file, Shapes::ShapeRef.new(shape: ZipBlob, location_name: "ZipFile"))
    UpdateScriptInput.struct_class = Types::UpdateScriptInput

    UpdateScriptOutput.add_member(:script, Shapes::ShapeRef.new(shape: Script, location_name: "Script"))
    UpdateScriptOutput.struct_class = Types::UpdateScriptOutput

    ValidateMatchmakingRuleSetInput.add_member(:rule_set_body, Shapes::ShapeRef.new(shape: RuleSetBody, required: true, location_name: "RuleSetBody"))
    ValidateMatchmakingRuleSetInput.struct_class = Types::ValidateMatchmakingRuleSetInput

    ValidateMatchmakingRuleSetOutput.add_member(:valid, Shapes::ShapeRef.new(shape: BooleanModel, location_name: "Valid"))
    ValidateMatchmakingRuleSetOutput.struct_class = Types::ValidateMatchmakingRuleSetOutput

    VpcPeeringAuthorization.add_member(:game_lift_aws_account_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "GameLiftAwsAccountId"))
    VpcPeeringAuthorization.add_member(:peer_vpc_aws_account_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PeerVpcAwsAccountId"))
    VpcPeeringAuthorization.add_member(:peer_vpc_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PeerVpcId"))
    VpcPeeringAuthorization.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    VpcPeeringAuthorization.add_member(:expiration_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExpirationTime"))
    VpcPeeringAuthorization.struct_class = Types::VpcPeeringAuthorization

    VpcPeeringAuthorizationList.member = Shapes::ShapeRef.new(shape: VpcPeeringAuthorization)

    VpcPeeringConnection.add_member(:fleet_id, Shapes::ShapeRef.new(shape: FleetId, location_name: "FleetId"))
    VpcPeeringConnection.add_member(:fleet_arn, Shapes::ShapeRef.new(shape: FleetArn, location_name: "FleetArn"))
    VpcPeeringConnection.add_member(:ip_v4_cidr_block, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "IpV4CidrBlock"))
    VpcPeeringConnection.add_member(:vpc_peering_connection_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "VpcPeeringConnectionId"))
    VpcPeeringConnection.add_member(:status, Shapes::ShapeRef.new(shape: VpcPeeringConnectionStatus, location_name: "Status"))
    VpcPeeringConnection.add_member(:peer_vpc_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "PeerVpcId"))
    VpcPeeringConnection.add_member(:game_lift_vpc_id, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "GameLiftVpcId"))
    VpcPeeringConnection.struct_class = Types::VpcPeeringConnection

    VpcPeeringConnectionList.member = Shapes::ShapeRef.new(shape: VpcPeeringConnection)

    VpcPeeringConnectionStatus.add_member(:code, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Code"))
    VpcPeeringConnectionStatus.add_member(:message, Shapes::ShapeRef.new(shape: NonZeroAndMaxString, location_name: "Message"))
    VpcPeeringConnectionStatus.struct_class = Types::VpcPeeringConnectionStatus

    VpcSubnets.member = Shapes::ShapeRef.new(shape: VpcSubnet)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2015-10-01"

      api.metadata = {
        "apiVersion" => "2015-10-01",
        "endpointPrefix" => "gamelift",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon GameLift",
        "serviceId" => "GameLift",
        "signatureVersion" => "v4",
        "targetPrefix" => "GameLift",
        "uid" => "gamelift-2015-10-01",
      }

      api.add_operation(:accept_match, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptMatch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptMatchInput)
        o.output = Shapes::ShapeRef.new(shape: AcceptMatchOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
      end)

      api.add_operation(:claim_game_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ClaimGameServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ClaimGameServerInput)
        o.output = Shapes::ShapeRef.new(shape: ClaimGameServerOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: OutOfCapacityException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateAliasInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
      end)

      api.add_operation(:create_build, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBuild"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBuildInput)
        o.output = Shapes::ShapeRef.new(shape: CreateBuildOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateFleetInput)
        o.output = Shapes::ShapeRef.new(shape: CreateFleetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
      end)

      api.add_operation(:create_game_server_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGameServerGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGameServerGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGameServerGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_game_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGameSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGameSessionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGameSessionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: FleetCapacityExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
      end)

      api.add_operation(:create_game_session_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGameSessionQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateGameSessionQueueInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGameSessionQueueOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
      end)

      api.add_operation(:create_matchmaking_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMatchmakingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMatchmakingConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMatchmakingConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
      end)

      api.add_operation(:create_matchmaking_rule_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMatchmakingRuleSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateMatchmakingRuleSetInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMatchmakingRuleSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
      end)

      api.add_operation(:create_player_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePlayerSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePlayerSessionInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePlayerSessionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGameSessionStatusException)
        o.errors << Shapes::ShapeRef.new(shape: GameSessionFullException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:create_player_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePlayerSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePlayerSessionsInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePlayerSessionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGameSessionStatusException)
        o.errors << Shapes::ShapeRef.new(shape: GameSessionFullException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:create_script, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScript"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateScriptInput)
        o.output = Shapes::ShapeRef.new(shape: CreateScriptOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_vpc_peering_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVpcPeeringAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVpcPeeringAuthorizationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateVpcPeeringAuthorizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:create_vpc_peering_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVpcPeeringConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateVpcPeeringConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateVpcPeeringConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAliasInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_build, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBuild"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBuildInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:delete_fleet, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFleet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFleetInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
      end)

      api.add_operation(:delete_game_server_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGameServerGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGameServerGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGameServerGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_game_session_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGameSessionQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteGameSessionQueueInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGameSessionQueueOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
      end)

      api.add_operation(:delete_matchmaking_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMatchmakingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMatchmakingConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMatchmakingConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
      end)

      api.add_operation(:delete_matchmaking_rule_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMatchmakingRuleSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMatchmakingRuleSetInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMatchmakingRuleSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
      end)

      api.add_operation(:delete_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScalingPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:delete_script, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScript"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScriptInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_vpc_peering_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVpcPeeringAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVpcPeeringAuthorizationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVpcPeeringAuthorizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_vpc_peering_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVpcPeeringConnection"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteVpcPeeringConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteVpcPeeringConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:deregister_game_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterGameServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeregisterGameServerInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAliasInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_build, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBuild"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBuildInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeBuildOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_ec2_instance_limits, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEC2InstanceLimits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEC2InstanceLimitsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeEC2InstanceLimitsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:describe_fleet_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_fleet_capacity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetCapacity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetCapacityInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetCapacityOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_fleet_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetEventsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_fleet_port_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetPortSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetPortSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetPortSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:describe_fleet_utilization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFleetUtilization"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFleetUtilizationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeFleetUtilizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_game_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGameServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGameServerInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGameServerOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_game_server_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGameServerGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGameServerGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGameServerGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_game_server_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGameServerInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGameServerInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGameServerInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_game_session_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGameSessionDetails"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGameSessionDetailsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGameSessionDetailsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_game_session_placement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGameSessionPlacement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGameSessionPlacementInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGameSessionPlacementOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:describe_game_session_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGameSessionQueues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGameSessionQueuesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGameSessionQueuesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_game_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGameSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeGameSessionsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeGameSessionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstances"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_matchmaking, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMatchmaking"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMatchmakingInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeMatchmakingOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
      end)

      api.add_operation(:describe_matchmaking_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMatchmakingConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMatchmakingConfigurationsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeMatchmakingConfigurationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_matchmaking_rule_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMatchmakingRuleSets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMatchmakingRuleSetsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeMatchmakingRuleSetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_player_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePlayerSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePlayerSessionsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribePlayerSessionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_runtime_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRuntimeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeRuntimeConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeRuntimeConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:describe_scaling_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalingPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScalingPoliciesInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeScalingPoliciesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_script, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScript"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScriptInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeScriptOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:describe_vpc_peering_authorizations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVpcPeeringAuthorizations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeVpcPeeringAuthorizationsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVpcPeeringAuthorizationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_vpc_peering_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVpcPeeringConnections"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeVpcPeeringConnectionsInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeVpcPeeringConnectionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_game_session_log_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGameSessionLogUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetGameSessionLogUrlInput)
        o.output = Shapes::ShapeRef.new(shape: GetGameSessionLogUrlOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:get_instance_access, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInstanceAccess"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInstanceAccessInput)
        o.output = Shapes::ShapeRef.new(shape: GetInstanceAccessOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:list_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAliases"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListAliasesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAliasesOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_builds, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBuilds"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListBuildsInput)
        o.output = Shapes::ShapeRef.new(shape: ListBuildsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fleets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFleets"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFleetsInput)
        o.output = Shapes::ShapeRef.new(shape: ListFleetsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_game_server_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGameServerGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGameServerGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListGameServerGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_game_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGameServers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListGameServersInput)
        o.output = Shapes::ShapeRef.new(shape: ListGameServersOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_scripts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListScripts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListScriptsInput)
        o.output = Shapes::ShapeRef.new(shape: ListScriptsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:put_scaling_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutScalingPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutScalingPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutScalingPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:register_game_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterGameServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RegisterGameServerInput)
        o.output = Shapes::ShapeRef.new(shape: RegisterGameServerOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:request_upload_credentials, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RequestUploadCredentials"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RequestUploadCredentialsInput)
        o.output = Shapes::ShapeRef.new(shape: RequestUploadCredentialsOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:resolve_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResolveAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResolveAliasInput)
        o.output = Shapes::ShapeRef.new(shape: ResolveAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:resume_game_server_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ResumeGameServerGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ResumeGameServerGroupInput)
        o.output = Shapes::ShapeRef.new(shape: ResumeGameServerGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:search_game_sessions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchGameSessions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchGameSessionsInput)
        o.output = Shapes::ShapeRef.new(shape: SearchGameSessionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: TerminalRoutingStrategyException)
        o[:pager] = Aws::Pager.new(
          limit_key: "limit",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_fleet_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFleetActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFleetActionsInput)
        o.output = Shapes::ShapeRef.new(shape: StartFleetActionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:start_game_session_placement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartGameSessionPlacement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartGameSessionPlacementInput)
        o.output = Shapes::ShapeRef.new(shape: StartGameSessionPlacementOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:start_match_backfill, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMatchBackfill"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMatchBackfillInput)
        o.output = Shapes::ShapeRef.new(shape: StartMatchBackfillOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
      end)

      api.add_operation(:start_matchmaking, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMatchmaking"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMatchmakingInput)
        o.output = Shapes::ShapeRef.new(shape: StartMatchmakingOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
      end)

      api.add_operation(:stop_fleet_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopFleetActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopFleetActionsInput)
        o.output = Shapes::ShapeRef.new(shape: StopFleetActionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:stop_game_session_placement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopGameSessionPlacement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopGameSessionPlacementInput)
        o.output = Shapes::ShapeRef.new(shape: StopGameSessionPlacementOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:stop_matchmaking, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopMatchmaking"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopMatchmakingInput)
        o.output = Shapes::ShapeRef.new(shape: StopMatchmakingOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
      end)

      api.add_operation(:suspend_game_server_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SuspendGameServerGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SuspendGameServerGroupInput)
        o.output = Shapes::ShapeRef.new(shape: SuspendGameServerGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: TaggingFailedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAlias"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAliasInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAliasOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_build, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBuild"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateBuildInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateBuildOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_fleet_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleetAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetAttributesInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetAttributesOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_fleet_capacity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleetCapacity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetCapacityInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetCapacityOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_fleet_port_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFleetPortSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateFleetPortSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateFleetPortSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_game_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGameServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGameServerInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGameServerOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_game_server_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGameServerGroup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGameServerGroupInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGameServerGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_game_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGameSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGameSessionInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGameSessionOutput)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidGameSessionStatusException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_game_session_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGameSessionQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateGameSessionQueueInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGameSessionQueueOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
      end)

      api.add_operation(:update_matchmaking_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMatchmakingConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateMatchmakingConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateMatchmakingConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
      end)

      api.add_operation(:update_runtime_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRuntimeConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateRuntimeConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateRuntimeConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidFleetStatusException)
      end)

      api.add_operation(:update_script, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScript"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateScriptInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateScriptOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:validate_matchmaking_rule_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateMatchmakingRuleSet"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ValidateMatchmakingRuleSetInput)
        o.output = Shapes::ShapeRef.new(shape: ValidateMatchmakingRuleSetOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedRegionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)
    end

  end
end
