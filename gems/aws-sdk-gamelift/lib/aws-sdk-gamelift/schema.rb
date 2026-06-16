# frozen_string_literal: true

# This is generated code!

module Aws::GameLift
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptMatchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#AcceptMatchInput", name: "AcceptMatchInput")
    AcceptMatchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#AcceptMatchOutput", name: "AcceptMatchOutput")
    AcceptanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#AcceptanceType", name: "AcceptanceType")
    Alias = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#Alias", name: "Alias")
    AliasArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#AliasArn", name: "AliasArn", traits: {"smithy.api#pattern" => "^arn:.*:alias\\/alias-\\S+$"})
    AliasId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#AliasId", name: "AliasId", traits: {"smithy.api#pattern" => "^alias-\\S+$"})
    AliasIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#AliasIdOrArn", name: "AliasIdOrArn", traits: {"smithy.api#pattern" => "^alias-\\S+|^arn:.*:alias\\/alias-\\S+$"})
    AliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#AliasList", name: "AliasList")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    AnywhereConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#AnywhereConfiguration", name: "AnywhereConfiguration")
    ArnStringModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ArnStringModel", name: "ArnStringModel", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9:/-]+$"})
    AttributeValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#AttributeValue", name: "AttributeValue")
    AutoScalingGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#AutoScalingGroupArn", name: "AutoScalingGroupArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    AwsCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#AwsCredentials", name: "AwsCredentials", traits: {"smithy.api#sensitive" => {}})
    BackfillMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#BackfillMode", name: "BackfillMode")
    BalancingStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#BalancingStrategy", name: "BalancingStrategy")
    BooleanModel = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.gamelift#BooleanModel", name: "BooleanModel")
    Build = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#Build", name: "Build")
    BuildArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#BuildArn", name: "BuildArn", traits: {"smithy.api#pattern" => "^arn:.*:build\\/build-\\S+$"})
    BuildId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#BuildId", name: "BuildId", traits: {"smithy.api#pattern" => "^build-\\S+$"})
    BuildIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#BuildIdOrArn", name: "BuildIdOrArn", traits: {"smithy.api#pattern" => "^build-\\S+|^arn:.*:build\\/build-\\S+$"})
    BuildList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#BuildList", name: "BuildList")
    BuildStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#BuildStatus", name: "BuildStatus")
    CertificateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CertificateConfiguration", name: "CertificateConfiguration")
    CertificateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#CertificateType", name: "CertificateType")
    ClaimFilterOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ClaimFilterOption", name: "ClaimFilterOption")
    ClaimGameServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ClaimGameServerInput", name: "ClaimGameServerInput")
    ClaimGameServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ClaimGameServerOutput", name: "ClaimGameServerOutput")
    ComparisonOperatorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ComparisonOperatorType", name: "ComparisonOperatorType")
    Compute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#Compute", name: "Compute")
    ComputeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ComputeArn", name: "ComputeArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:.*:compute\\/[a-zA-Z0-9\\-]+(\\/[a-zA-Z0-9\\-]+)?$"})
    ComputeAuthToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ComputeAuthToken", name: "ComputeAuthToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    ComputeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ComputeList", name: "ComputeList")
    ComputeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ComputeName", name: "ComputeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+(\\/[a-zA-Z0-9\\-]+)?$"})
    ComputeNameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ComputeNameOrArn", name: "ComputeNameOrArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+(\\/[a-zA-Z0-9\\-]+)?$|^arn:.*:compute\\/[a-zA-Z0-9\\-]+(\\/[a-zA-Z0-9\\-]+)?$"})
    ComputeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ComputeStatus", name: "ComputeStatus")
    ComputeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ComputeType", name: "ComputeType")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client"})
    ConnectionPortRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ConnectionPortRange", name: "ConnectionPortRange")
    ContainerAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ContainerAttribute", name: "ContainerAttribute")
    ContainerAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ContainerAttributes", name: "ContainerAttributes", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ContainerCommandStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ContainerCommandStringList", name: "ContainerCommandStringList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ContainerDependency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ContainerDependency", name: "ContainerDependency")
    ContainerDependencyCondition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ContainerDependencyCondition", name: "ContainerDependencyCondition")
    ContainerDependencyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ContainerDependencyList", name: "ContainerDependencyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ContainerEnvironment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ContainerEnvironment", name: "ContainerEnvironment")
    ContainerEnvironmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ContainerEnvironmentList", name: "ContainerEnvironmentList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ContainerFleet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ContainerFleet", name: "ContainerFleet")
    ContainerFleetBillingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ContainerFleetBillingType", name: "ContainerFleetBillingType")
    ContainerFleetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ContainerFleetList", name: "ContainerFleetList", traits: {"smithy.api#length" => {"min" => 1}})
    ContainerFleetLocationAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ContainerFleetLocationAttributes", name: "ContainerFleetLocationAttributes")
    ContainerFleetLocationAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ContainerFleetLocationAttributesList", name: "ContainerFleetLocationAttributesList")
    ContainerFleetLocationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ContainerFleetLocationStatus", name: "ContainerFleetLocationStatus")
    ContainerFleetRemoveAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ContainerFleetRemoveAttribute", name: "ContainerFleetRemoveAttribute")
    ContainerFleetRemoveAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ContainerFleetRemoveAttributeList", name: "ContainerFleetRemoveAttributeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ContainerFleetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ContainerFleetStatus", name: "ContainerFleetStatus")
    ContainerGroupDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ContainerGroupDefinition", name: "ContainerGroupDefinition")
    ContainerGroupDefinitionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ContainerGroupDefinitionArn", name: "ContainerGroupDefinitionArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:.*:containergroupdefinition\\/[a-zA-Z0-9\\-]+(:[0-9]+)?$"})
    ContainerGroupDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ContainerGroupDefinitionList", name: "ContainerGroupDefinitionList")
    ContainerGroupDefinitionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ContainerGroupDefinitionName", name: "ContainerGroupDefinitionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    ContainerGroupDefinitionNameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ContainerGroupDefinitionNameOrArn", name: "ContainerGroupDefinitionNameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$|^arn:.*:containergroupdefinition\\/[a-zA-Z0-9\\-]+(:[0-9]+)?$"})
    ContainerGroupDefinitionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ContainerGroupDefinitionStatus", name: "ContainerGroupDefinitionStatus")
    ContainerGroupType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ContainerGroupType", name: "ContainerGroupType")
    ContainerHealthCheck = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ContainerHealthCheck", name: "ContainerHealthCheck")
    ContainerHealthCheckInterval = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#ContainerHealthCheckInterval", name: "ContainerHealthCheckInterval", traits: {"smithy.api#range" => {"min" => 60, "max" => 300}})
    ContainerHealthCheckRetries = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#ContainerHealthCheckRetries", name: "ContainerHealthCheckRetries", traits: {"smithy.api#range" => {"min" => 5, "max" => 10}})
    ContainerHealthCheckStartPeriod = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#ContainerHealthCheckStartPeriod", name: "ContainerHealthCheckStartPeriod", traits: {"smithy.api#range" => {"min" => 0, "max" => 300}})
    ContainerHealthCheckTimeout = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#ContainerHealthCheckTimeout", name: "ContainerHealthCheckTimeout", traits: {"smithy.api#range" => {"min" => 30, "max" => 60}})
    ContainerIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ContainerIdentifier", name: "ContainerIdentifier")
    ContainerIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ContainerIdentifierList", name: "ContainerIdentifierList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ContainerMemoryLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#ContainerMemoryLimit", name: "ContainerMemoryLimit", traits: {"smithy.api#range" => {"min" => 4, "max" => 1024000}})
    ContainerMountPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ContainerMountPoint", name: "ContainerMountPoint")
    ContainerMountPointAccessLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ContainerMountPointAccessLevel", name: "ContainerMountPointAccessLevel")
    ContainerMountPointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ContainerMountPointList", name: "ContainerMountPointList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ContainerOperatingSystem = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ContainerOperatingSystem", name: "ContainerOperatingSystem")
    ContainerPathString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ContainerPathString", name: "ContainerPathString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(\\/+[^\\/]+\\/*)+$"})
    ContainerPortConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ContainerPortConfiguration", name: "ContainerPortConfiguration")
    ContainerPortRange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ContainerPortRange", name: "ContainerPortRange")
    ContainerPortRangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ContainerPortRangeList", name: "ContainerPortRangeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ContainerTotalMemoryLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#ContainerTotalMemoryLimit", name: "ContainerTotalMemoryLimit", traits: {"smithy.api#range" => {"min" => 4, "max" => 1024000}})
    ContainerTotalVcpuLimit = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.gamelift#ContainerTotalVcpuLimit", name: "ContainerTotalVcpuLimit", traits: {"smithy.api#range" => {"min" => 0.125, "max" => 10}})
    ContainerVcpu = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.gamelift#ContainerVcpu", name: "ContainerVcpu", traits: {"smithy.api#range" => {"min" => 0.125, "max" => 10}})
    CreateAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateAliasInput", name: "CreateAliasInput")
    CreateAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateAliasOutput", name: "CreateAliasOutput")
    CreateBuildInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateBuildInput", name: "CreateBuildInput")
    CreateBuildOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateBuildOutput", name: "CreateBuildOutput")
    CreateContainerFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateContainerFleetInput", name: "CreateContainerFleetInput")
    CreateContainerFleetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateContainerFleetOutput", name: "CreateContainerFleetOutput")
    CreateContainerGroupDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateContainerGroupDefinitionInput", name: "CreateContainerGroupDefinitionInput")
    CreateContainerGroupDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateContainerGroupDefinitionOutput", name: "CreateContainerGroupDefinitionOutput")
    CreateFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateFleetInput", name: "CreateFleetInput")
    CreateFleetLocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateFleetLocationsInput", name: "CreateFleetLocationsInput")
    CreateFleetLocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateFleetLocationsOutput", name: "CreateFleetLocationsOutput")
    CreateFleetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateFleetOutput", name: "CreateFleetOutput")
    CreateGameServerGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateGameServerGroupInput", name: "CreateGameServerGroupInput")
    CreateGameServerGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateGameServerGroupOutput", name: "CreateGameServerGroupOutput")
    CreateGameSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateGameSessionInput", name: "CreateGameSessionInput")
    CreateGameSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateGameSessionOutput", name: "CreateGameSessionOutput")
    CreateGameSessionQueueInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateGameSessionQueueInput", name: "CreateGameSessionQueueInput")
    CreateGameSessionQueueOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateGameSessionQueueOutput", name: "CreateGameSessionQueueOutput")
    CreateLocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateLocationInput", name: "CreateLocationInput")
    CreateLocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateLocationOutput", name: "CreateLocationOutput")
    CreateMatchmakingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateMatchmakingConfigurationInput", name: "CreateMatchmakingConfigurationInput")
    CreateMatchmakingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateMatchmakingConfigurationOutput", name: "CreateMatchmakingConfigurationOutput")
    CreateMatchmakingRuleSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateMatchmakingRuleSetInput", name: "CreateMatchmakingRuleSetInput")
    CreateMatchmakingRuleSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateMatchmakingRuleSetOutput", name: "CreateMatchmakingRuleSetOutput")
    CreatePlayerSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreatePlayerSessionInput", name: "CreatePlayerSessionInput")
    CreatePlayerSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreatePlayerSessionOutput", name: "CreatePlayerSessionOutput")
    CreatePlayerSessionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreatePlayerSessionsInput", name: "CreatePlayerSessionsInput")
    CreatePlayerSessionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreatePlayerSessionsOutput", name: "CreatePlayerSessionsOutput")
    CreateScriptInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateScriptInput", name: "CreateScriptInput")
    CreateScriptOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateScriptOutput", name: "CreateScriptOutput")
    CreateVpcPeeringAuthorizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateVpcPeeringAuthorizationInput", name: "CreateVpcPeeringAuthorizationInput")
    CreateVpcPeeringAuthorizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateVpcPeeringAuthorizationOutput", name: "CreateVpcPeeringAuthorizationOutput")
    CreateVpcPeeringConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateVpcPeeringConnectionInput", name: "CreateVpcPeeringConnectionInput")
    CreateVpcPeeringConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#CreateVpcPeeringConnectionOutput", name: "CreateVpcPeeringConnectionOutput")
    CustomEventData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#CustomEventData", name: "CustomEventData", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    CustomInputLocationStringModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#CustomInputLocationStringModel", name: "CustomInputLocationStringModel", traits: {"smithy.api#length" => {"min" => 8, "max" => 64}, "smithy.api#pattern" => "^custom-[A-Za-z0-9\\-]+$"})
    CustomLocationNameOrArnModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#CustomLocationNameOrArnModel", name: "CustomLocationNameOrArnModel", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^custom-[A-Za-z0-9\\-]+|^arn:.*:location\\/custom-\\S+$"})
    DeleteAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteAliasInput", name: "DeleteAliasInput")
    DeleteBuildInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteBuildInput", name: "DeleteBuildInput")
    DeleteContainerFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteContainerFleetInput", name: "DeleteContainerFleetInput")
    DeleteContainerFleetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteContainerFleetOutput", name: "DeleteContainerFleetOutput")
    DeleteContainerGroupDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteContainerGroupDefinitionInput", name: "DeleteContainerGroupDefinitionInput")
    DeleteContainerGroupDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteContainerGroupDefinitionOutput", name: "DeleteContainerGroupDefinitionOutput")
    DeleteFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteFleetInput", name: "DeleteFleetInput")
    DeleteFleetLocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteFleetLocationsInput", name: "DeleteFleetLocationsInput")
    DeleteFleetLocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteFleetLocationsOutput", name: "DeleteFleetLocationsOutput")
    DeleteGameServerGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteGameServerGroupInput", name: "DeleteGameServerGroupInput")
    DeleteGameServerGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteGameServerGroupOutput", name: "DeleteGameServerGroupOutput")
    DeleteGameSessionQueueInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteGameSessionQueueInput", name: "DeleteGameSessionQueueInput")
    DeleteGameSessionQueueOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteGameSessionQueueOutput", name: "DeleteGameSessionQueueOutput")
    DeleteLocationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteLocationInput", name: "DeleteLocationInput")
    DeleteLocationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteLocationOutput", name: "DeleteLocationOutput")
    DeleteMatchmakingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteMatchmakingConfigurationInput", name: "DeleteMatchmakingConfigurationInput")
    DeleteMatchmakingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteMatchmakingConfigurationOutput", name: "DeleteMatchmakingConfigurationOutput")
    DeleteMatchmakingRuleSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteMatchmakingRuleSetInput", name: "DeleteMatchmakingRuleSetInput")
    DeleteMatchmakingRuleSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteMatchmakingRuleSetOutput", name: "DeleteMatchmakingRuleSetOutput")
    DeleteScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteScalingPolicyInput", name: "DeleteScalingPolicyInput")
    DeleteScriptInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteScriptInput", name: "DeleteScriptInput")
    DeleteVpcPeeringAuthorizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteVpcPeeringAuthorizationInput", name: "DeleteVpcPeeringAuthorizationInput")
    DeleteVpcPeeringAuthorizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteVpcPeeringAuthorizationOutput", name: "DeleteVpcPeeringAuthorizationOutput")
    DeleteVpcPeeringConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteVpcPeeringConnectionInput", name: "DeleteVpcPeeringConnectionInput")
    DeleteVpcPeeringConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeleteVpcPeeringConnectionOutput", name: "DeleteVpcPeeringConnectionOutput")
    DeploymentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeploymentConfiguration", name: "DeploymentConfiguration")
    DeploymentDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeploymentDetails", name: "DeploymentDetails")
    DeploymentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#DeploymentId", name: "DeploymentId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    DeploymentImpairmentStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#DeploymentImpairmentStrategy", name: "DeploymentImpairmentStrategy")
    DeploymentProtectionStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#DeploymentProtectionStrategy", name: "DeploymentProtectionStrategy")
    DeploymentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#DeploymentStatus", name: "DeploymentStatus")
    DeregisterComputeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeregisterComputeInput", name: "DeregisterComputeInput")
    DeregisterComputeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeregisterComputeOutput", name: "DeregisterComputeOutput")
    DeregisterGameServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DeregisterGameServerInput", name: "DeregisterGameServerInput")
    DescribeAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeAliasInput", name: "DescribeAliasInput")
    DescribeAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeAliasOutput", name: "DescribeAliasOutput")
    DescribeBuildInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeBuildInput", name: "DescribeBuildInput")
    DescribeBuildOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeBuildOutput", name: "DescribeBuildOutput")
    DescribeComputeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeComputeInput", name: "DescribeComputeInput")
    DescribeComputeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeComputeOutput", name: "DescribeComputeOutput")
    DescribeContainerFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeContainerFleetInput", name: "DescribeContainerFleetInput")
    DescribeContainerFleetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeContainerFleetOutput", name: "DescribeContainerFleetOutput")
    DescribeContainerGroupDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeContainerGroupDefinitionInput", name: "DescribeContainerGroupDefinitionInput")
    DescribeContainerGroupDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeContainerGroupDefinitionOutput", name: "DescribeContainerGroupDefinitionOutput")
    DescribeEC2InstanceLimitsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeEC2InstanceLimitsInput", name: "DescribeEC2InstanceLimitsInput")
    DescribeEC2InstanceLimitsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeEC2InstanceLimitsOutput", name: "DescribeEC2InstanceLimitsOutput")
    DescribeFleetAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetAttributesInput", name: "DescribeFleetAttributesInput")
    DescribeFleetAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetAttributesOutput", name: "DescribeFleetAttributesOutput")
    DescribeFleetCapacityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetCapacityInput", name: "DescribeFleetCapacityInput")
    DescribeFleetCapacityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetCapacityOutput", name: "DescribeFleetCapacityOutput")
    DescribeFleetDeploymentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetDeploymentInput", name: "DescribeFleetDeploymentInput")
    DescribeFleetDeploymentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetDeploymentOutput", name: "DescribeFleetDeploymentOutput")
    DescribeFleetEventsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetEventsInput", name: "DescribeFleetEventsInput")
    DescribeFleetEventsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetEventsOutput", name: "DescribeFleetEventsOutput")
    DescribeFleetLocationAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetLocationAttributesInput", name: "DescribeFleetLocationAttributesInput")
    DescribeFleetLocationAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetLocationAttributesOutput", name: "DescribeFleetLocationAttributesOutput")
    DescribeFleetLocationCapacityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetLocationCapacityInput", name: "DescribeFleetLocationCapacityInput")
    DescribeFleetLocationCapacityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetLocationCapacityOutput", name: "DescribeFleetLocationCapacityOutput")
    DescribeFleetLocationUtilizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetLocationUtilizationInput", name: "DescribeFleetLocationUtilizationInput")
    DescribeFleetLocationUtilizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetLocationUtilizationOutput", name: "DescribeFleetLocationUtilizationOutput")
    DescribeFleetPortSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetPortSettingsInput", name: "DescribeFleetPortSettingsInput")
    DescribeFleetPortSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetPortSettingsOutput", name: "DescribeFleetPortSettingsOutput")
    DescribeFleetUtilizationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetUtilizationInput", name: "DescribeFleetUtilizationInput")
    DescribeFleetUtilizationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeFleetUtilizationOutput", name: "DescribeFleetUtilizationOutput")
    DescribeGameServerGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameServerGroupInput", name: "DescribeGameServerGroupInput")
    DescribeGameServerGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameServerGroupOutput", name: "DescribeGameServerGroupOutput")
    DescribeGameServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameServerInput", name: "DescribeGameServerInput")
    DescribeGameServerInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameServerInstancesInput", name: "DescribeGameServerInstancesInput")
    DescribeGameServerInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameServerInstancesOutput", name: "DescribeGameServerInstancesOutput")
    DescribeGameServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameServerOutput", name: "DescribeGameServerOutput")
    DescribeGameSessionDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameSessionDetailsInput", name: "DescribeGameSessionDetailsInput")
    DescribeGameSessionDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameSessionDetailsOutput", name: "DescribeGameSessionDetailsOutput")
    DescribeGameSessionPlacementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameSessionPlacementInput", name: "DescribeGameSessionPlacementInput")
    DescribeGameSessionPlacementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameSessionPlacementOutput", name: "DescribeGameSessionPlacementOutput")
    DescribeGameSessionQueuesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameSessionQueuesInput", name: "DescribeGameSessionQueuesInput")
    DescribeGameSessionQueuesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameSessionQueuesOutput", name: "DescribeGameSessionQueuesOutput")
    DescribeGameSessionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameSessionsInput", name: "DescribeGameSessionsInput")
    DescribeGameSessionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeGameSessionsOutput", name: "DescribeGameSessionsOutput")
    DescribeInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeInstancesInput", name: "DescribeInstancesInput")
    DescribeInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeInstancesOutput", name: "DescribeInstancesOutput")
    DescribeMatchmakingConfigurationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeMatchmakingConfigurationsInput", name: "DescribeMatchmakingConfigurationsInput")
    DescribeMatchmakingConfigurationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeMatchmakingConfigurationsOutput", name: "DescribeMatchmakingConfigurationsOutput")
    DescribeMatchmakingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeMatchmakingInput", name: "DescribeMatchmakingInput")
    DescribeMatchmakingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeMatchmakingOutput", name: "DescribeMatchmakingOutput")
    DescribeMatchmakingRuleSetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeMatchmakingRuleSetsInput", name: "DescribeMatchmakingRuleSetsInput")
    DescribeMatchmakingRuleSetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeMatchmakingRuleSetsOutput", name: "DescribeMatchmakingRuleSetsOutput")
    DescribePlayerSessionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribePlayerSessionsInput", name: "DescribePlayerSessionsInput")
    DescribePlayerSessionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribePlayerSessionsOutput", name: "DescribePlayerSessionsOutput")
    DescribeRuntimeConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeRuntimeConfigurationInput", name: "DescribeRuntimeConfigurationInput")
    DescribeRuntimeConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeRuntimeConfigurationOutput", name: "DescribeRuntimeConfigurationOutput")
    DescribeScalingPoliciesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeScalingPoliciesInput", name: "DescribeScalingPoliciesInput")
    DescribeScalingPoliciesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeScalingPoliciesOutput", name: "DescribeScalingPoliciesOutput")
    DescribeScriptInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeScriptInput", name: "DescribeScriptInput")
    DescribeScriptOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeScriptOutput", name: "DescribeScriptOutput")
    DescribeVpcPeeringAuthorizationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeVpcPeeringAuthorizationsInput", name: "DescribeVpcPeeringAuthorizationsInput")
    DescribeVpcPeeringAuthorizationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeVpcPeeringAuthorizationsOutput", name: "DescribeVpcPeeringAuthorizationsOutput")
    DescribeVpcPeeringConnectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeVpcPeeringConnectionsInput", name: "DescribeVpcPeeringConnectionsInput")
    DescribeVpcPeeringConnectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DescribeVpcPeeringConnectionsOutput", name: "DescribeVpcPeeringConnectionsOutput")
    DesiredPlayerSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#DesiredPlayerSession", name: "DesiredPlayerSession")
    DesiredPlayerSessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#DesiredPlayerSessionList", name: "DesiredPlayerSessionList")
    DnsName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#DnsName", name: "DnsName")
    DnsNameInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#DnsNameInput", name: "DnsNameInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[0-9a-zA-Z_\\-\\.]+$"})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.gamelift#Double", name: "Double")
    DoubleObject = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.gamelift#DoubleObject", name: "DoubleObject")
    EC2InstanceCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#EC2InstanceCounts", name: "EC2InstanceCounts")
    EC2InstanceLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#EC2InstanceLimit", name: "EC2InstanceLimit")
    EC2InstanceLimitList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#EC2InstanceLimitList", name: "EC2InstanceLimitList")
    EC2InstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#EC2InstanceType", name: "EC2InstanceType")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#Event", name: "Event")
    EventCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#EventCode", name: "EventCode")
    EventCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#EventCount", name: "EventCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 101}})
    EventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#EventList", name: "EventList")
    FilterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#FilterConfiguration", name: "FilterConfiguration")
    FilterInstanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#FilterInstanceStatus", name: "FilterInstanceStatus")
    FilterInstanceStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#FilterInstanceStatuses", name: "FilterInstanceStatuses")
    FleetAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#FleetAction", name: "FleetAction")
    FleetActionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#FleetActionList", name: "FleetActionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    FleetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#FleetArn", name: "FleetArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:.*:[a-z]*fleet\\/[a-z]*fleet-[a-zA-Z0-9\\-]+$"})
    FleetAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#FleetAttributes", name: "FleetAttributes")
    FleetAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#FleetAttributesList", name: "FleetAttributesList")
    FleetBinaryArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#FleetBinaryArn", name: "FleetBinaryArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9:/-]+$"})
    FleetCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#FleetCapacity", name: "FleetCapacity")
    FleetCapacityExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#FleetCapacityExceededException", name: "FleetCapacityExceededException", traits: {"smithy.api#error" => "client"})
    FleetCapacityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#FleetCapacityList", name: "FleetCapacityList")
    FleetDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#FleetDeployment", name: "FleetDeployment")
    FleetDeployments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#FleetDeployments", name: "FleetDeployments")
    FleetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#FleetId", name: "FleetId", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-z]*fleet-[a-zA-Z0-9\\-]+$"})
    FleetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#FleetIdList", name: "FleetIdList", traits: {"smithy.api#length" => {"min" => 1}})
    FleetIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#FleetIdOrArn", name: "FleetIdOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-z]*fleet-[a-zA-Z0-9\\-]+$|^arn:.*:[a-z]*fleet\\/[a-z]*fleet-[a-zA-Z0-9\\-]+$"})
    FleetIdOrArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#FleetIdOrArnList", name: "FleetIdOrArnList", traits: {"smithy.api#length" => {"min" => 1}})
    FleetStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#FleetStatus", name: "FleetStatus")
    FleetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#FleetType", name: "FleetType")
    FleetUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#FleetUtilization", name: "FleetUtilization")
    FleetUtilizationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#FleetUtilizationList", name: "FleetUtilizationList")
    FlexMatchMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#FlexMatchMode", name: "FlexMatchMode")
    Float = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.gamelift#Float", name: "Float")
    FreeText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#FreeText", name: "FreeText")
    GameLiftAgentEndpointOutput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameLiftAgentEndpointOutput", name: "GameLiftAgentEndpointOutput", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    GameLiftServiceSdkEndpointOutput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameLiftServiceSdkEndpointOutput", name: "GameLiftServiceSdkEndpointOutput", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    GameProperty = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameProperty", name: "GameProperty")
    GamePropertyKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GamePropertyKey", name: "GamePropertyKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}})
    GamePropertyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#GamePropertyList", name: "GamePropertyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    GamePropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GamePropertyValue", name: "GamePropertyValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 96}})
    GameServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameServer", name: "GameServer")
    GameServerClaimStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameServerClaimStatus", name: "GameServerClaimStatus")
    GameServerConnectionInfo = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameServerConnectionInfo", name: "GameServerConnectionInfo", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "\\S"})
    GameServerContainerDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameServerContainerDefinition", name: "GameServerContainerDefinition")
    GameServerContainerDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameServerContainerDefinitionInput", name: "GameServerContainerDefinitionInput")
    GameServerContainerGroupCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameServerContainerGroupCounts", name: "GameServerContainerGroupCounts")
    GameServerContainerGroupsPerInstance = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#GameServerContainerGroupsPerInstance", name: "GameServerContainerGroupsPerInstance", traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    GameServerData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameServerData", name: "GameServerData", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    GameServerGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameServerGroup", name: "GameServerGroup")
    GameServerGroupAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameServerGroupAction", name: "GameServerGroupAction")
    GameServerGroupActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#GameServerGroupActions", name: "GameServerGroupActions", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    GameServerGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameServerGroupArn", name: "GameServerGroupArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:.*:gameservergroup\\/[a-zA-Z0-9-\\.]*$"})
    GameServerGroupAutoScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameServerGroupAutoScalingPolicy", name: "GameServerGroupAutoScalingPolicy")
    GameServerGroupDeleteOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameServerGroupDeleteOption", name: "GameServerGroupDeleteOption")
    GameServerGroupInstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameServerGroupInstanceType", name: "GameServerGroupInstanceType")
    GameServerGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameServerGroupName", name: "GameServerGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\.]+$"})
    GameServerGroupNameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameServerGroupNameOrArn", name: "GameServerGroupNameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\.]+|^arn:.*:gameservergroup\\/[a-zA-Z0-9-\\.]+$"})
    GameServerGroupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameServerGroupStatus", name: "GameServerGroupStatus")
    GameServerGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#GameServerGroups", name: "GameServerGroups")
    GameServerHealthCheck = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameServerHealthCheck", name: "GameServerHealthCheck")
    GameServerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameServerId", name: "GameServerId", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\.]+$"})
    GameServerInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameServerInstance", name: "GameServerInstance")
    GameServerInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameServerInstanceId", name: "GameServerInstanceId", traits: {"smithy.api#length" => {"min" => 19, "max" => 19}, "smithy.api#pattern" => "^i-[0-9a-zA-Z]{17}$"})
    GameServerInstanceIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#GameServerInstanceIds", name: "GameServerInstanceIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    GameServerInstanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameServerInstanceStatus", name: "GameServerInstanceStatus")
    GameServerInstances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#GameServerInstances", name: "GameServerInstances")
    GameServerProtectionPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameServerProtectionPolicy", name: "GameServerProtectionPolicy")
    GameServerUtilizationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameServerUtilizationStatus", name: "GameServerUtilizationStatus")
    GameServers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#GameServers", name: "GameServers")
    GameSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameSession", name: "GameSession")
    GameSessionActivationTimeoutSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#GameSessionActivationTimeoutSeconds", name: "GameSessionActivationTimeoutSeconds", traits: {"smithy.api#range" => {"min" => 1, "max" => 600}})
    GameSessionConnectionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameSessionConnectionInfo", name: "GameSessionConnectionInfo")
    GameSessionCreationLimitPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameSessionCreationLimitPolicy", name: "GameSessionCreationLimitPolicy")
    GameSessionData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameSessionData", name: "GameSessionData", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}})
    GameSessionDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameSessionDetail", name: "GameSessionDetail")
    GameSessionDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#GameSessionDetailList", name: "GameSessionDetailList")
    GameSessionFullException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameSessionFullException", name: "GameSessionFullException", traits: {"smithy.api#error" => "client"})
    GameSessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#GameSessionList", name: "GameSessionList")
    GameSessionPlacement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameSessionPlacement", name: "GameSessionPlacement")
    GameSessionPlacementState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameSessionPlacementState", name: "GameSessionPlacementState")
    GameSessionQueue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameSessionQueue", name: "GameSessionQueue")
    GameSessionQueueArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameSessionQueueArn", name: "GameSessionQueueArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:.*:gamesessionqueue\\/[a-zA-Z0-9-]+$"})
    GameSessionQueueDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GameSessionQueueDestination", name: "GameSessionQueueDestination")
    GameSessionQueueDestinationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#GameSessionQueueDestinationList", name: "GameSessionQueueDestinationList")
    GameSessionQueueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#GameSessionQueueList", name: "GameSessionQueueList")
    GameSessionQueueName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameSessionQueueName", name: "GameSessionQueueName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    GameSessionQueueNameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#GameSessionQueueNameOrArn", name: "GameSessionQueueNameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+|^arn:.*:gamesessionqueue\\/[a-zA-Z0-9-]+$"})
    GameSessionQueueNameOrArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#GameSessionQueueNameOrArnList", name: "GameSessionQueueNameOrArnList")
    GameSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameSessionStatus", name: "GameSessionStatus")
    GameSessionStatusReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#GameSessionStatusReason", name: "GameSessionStatusReason")
    GetComputeAccessInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GetComputeAccessInput", name: "GetComputeAccessInput")
    GetComputeAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GetComputeAccessOutput", name: "GetComputeAccessOutput")
    GetComputeAuthTokenInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GetComputeAuthTokenInput", name: "GetComputeAuthTokenInput")
    GetComputeAuthTokenOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GetComputeAuthTokenOutput", name: "GetComputeAuthTokenOutput")
    GetGameSessionLogUrlInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GetGameSessionLogUrlInput", name: "GetGameSessionLogUrlInput")
    GetGameSessionLogUrlOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GetGameSessionLogUrlOutput", name: "GetGameSessionLogUrlOutput")
    GetInstanceAccessInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GetInstanceAccessInput", name: "GetInstanceAccessInput")
    GetInstanceAccessOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#GetInstanceAccessOutput", name: "GetInstanceAccessOutput")
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#IamRoleArn", name: "IamRoleArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:.*:role\\/[\\w+=,.@-]+$"})
    IdStringModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#IdStringModel", name: "IdStringModel", traits: {"smithy.api#length" => {"min" => 1, "max" => 48}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    IdempotentParameterMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#IdempotentParameterMismatchException", name: "IdempotentParameterMismatchException", traits: {"smithy.api#error" => "client"})
    ImageUriString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ImageUriString", name: "ImageUriString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9-_\\.@\\/:]+$"})
    Instance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#Instance", name: "Instance")
    InstanceAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#InstanceAccess", name: "InstanceAccess")
    InstanceCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#InstanceCredentials", name: "InstanceCredentials", traits: {"smithy.api#sensitive" => {}})
    InstanceDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#InstanceDefinition", name: "InstanceDefinition")
    InstanceDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#InstanceDefinitions", name: "InstanceDefinitions", traits: {"smithy.api#length" => {"min" => 2, "max" => 20}})
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#InstanceId", name: "InstanceId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9\\.-]+$"})
    InstanceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#InstanceList", name: "InstanceList")
    InstancePathString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#InstancePathString", name: "InstancePathString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\/[\\s\\S]*$"})
    InstanceRoleCredentialsProvider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#InstanceRoleCredentialsProvider", name: "InstanceRoleCredentialsProvider")
    InstanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#InstanceStatus", name: "InstanceStatus")
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#Integer", name: "Integer")
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#InternalServiceException", name: "InternalServiceException", traits: {"smithy.api#error" => "server"})
    InvalidFleetStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#InvalidFleetStatusException", name: "InvalidFleetStatusException", traits: {"smithy.api#error" => "client"})
    InvalidGameSessionStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#InvalidGameSessionStatusException", name: "InvalidGameSessionStatusException", traits: {"smithy.api#error" => "client"})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client"})
    IpAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#IpAddress", name: "IpAddress", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[0-9A-Fa-f\\:\\.]+$", "smithy.api#sensitive" => {}})
    IpPermission = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#IpPermission", name: "IpPermission")
    IpPermissionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#IpPermissionsList", name: "IpPermissionsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    IpProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#IpProtocol", name: "IpProtocol")
    IpRange = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#IpRange", name: "IpRange", traits: {"smithy.api#pattern" => "^[^\\s]+$", "smithy.api#sensitive" => {}})
    LargeGameSessionData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#LargeGameSessionData", name: "LargeGameSessionData", traits: {"smithy.api#length" => {"min" => 1, "max" => 262144}})
    LatencyMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.gamelift#LatencyMap", name: "LatencyMap")
    LaunchParametersStringModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#LaunchParametersStringModel", name: "LaunchParametersStringModel", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z0-9_:.+\\/\\\\\\- =@;{},?'\\[\\]\"]+$"})
    LaunchPathStringModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#LaunchPathStringModel", name: "LaunchPathStringModel", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z0-9_:.+\\/\\\\\\- ]+$"})
    LaunchTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#LaunchTemplateId", name: "LaunchTemplateId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]+$"})
    LaunchTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#LaunchTemplateName", name: "LaunchTemplateName", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\(\\)\\.\\-/_]+$"})
    LaunchTemplateSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#LaunchTemplateSpecification", name: "LaunchTemplateSpecification")
    LaunchTemplateVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#LaunchTemplateVersion", name: "LaunchTemplateVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]+$"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListAliasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListAliasesInput", name: "ListAliasesInput")
    ListAliasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListAliasesOutput", name: "ListAliasesOutput")
    ListBuildsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListBuildsInput", name: "ListBuildsInput")
    ListBuildsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListBuildsOutput", name: "ListBuildsOutput")
    ListComputeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListComputeInput", name: "ListComputeInput")
    ListComputeInputStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ListComputeInputStatus", name: "ListComputeInputStatus")
    ListComputeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListComputeOutput", name: "ListComputeOutput")
    ListContainerFleetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListContainerFleetsInput", name: "ListContainerFleetsInput")
    ListContainerFleetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListContainerFleetsOutput", name: "ListContainerFleetsOutput")
    ListContainerGroupDefinitionVersionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListContainerGroupDefinitionVersionsInput", name: "ListContainerGroupDefinitionVersionsInput")
    ListContainerGroupDefinitionVersionsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#ListContainerGroupDefinitionVersionsLimit", name: "ListContainerGroupDefinitionVersionsLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListContainerGroupDefinitionVersionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListContainerGroupDefinitionVersionsOutput", name: "ListContainerGroupDefinitionVersionsOutput")
    ListContainerGroupDefinitionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListContainerGroupDefinitionsInput", name: "ListContainerGroupDefinitionsInput")
    ListContainerGroupDefinitionsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#ListContainerGroupDefinitionsLimit", name: "ListContainerGroupDefinitionsLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ListContainerGroupDefinitionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListContainerGroupDefinitionsOutput", name: "ListContainerGroupDefinitionsOutput")
    ListFleetDeploymentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListFleetDeploymentsInput", name: "ListFleetDeploymentsInput")
    ListFleetDeploymentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListFleetDeploymentsOutput", name: "ListFleetDeploymentsOutput")
    ListFleetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListFleetsInput", name: "ListFleetsInput")
    ListFleetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListFleetsOutput", name: "ListFleetsOutput")
    ListGameServerGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListGameServerGroupsInput", name: "ListGameServerGroupsInput")
    ListGameServerGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListGameServerGroupsOutput", name: "ListGameServerGroupsOutput")
    ListGameServersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListGameServersInput", name: "ListGameServersInput")
    ListGameServersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListGameServersOutput", name: "ListGameServersOutput")
    ListLocationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListLocationsInput", name: "ListLocationsInput")
    ListLocationsLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#ListLocationsLimit", name: "ListLocationsLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 200}})
    ListLocationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListLocationsOutput", name: "ListLocationsOutput")
    ListScriptsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListScriptsInput", name: "ListScriptsInput")
    ListScriptsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListScriptsOutput", name: "ListScriptsOutput")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LocationArnModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#LocationArnModel", name: "LocationArnModel", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:.*:location\\/custom-\\S+$"})
    LocationAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#LocationAttributes", name: "LocationAttributes")
    LocationAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#LocationAttributesList", name: "LocationAttributesList")
    LocationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#LocationConfiguration", name: "LocationConfiguration")
    LocationConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#LocationConfigurationList", name: "LocationConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    LocationFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#LocationFilter", name: "LocationFilter")
    LocationFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#LocationFilterList", name: "LocationFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    LocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#LocationList", name: "LocationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    LocationModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#LocationModel", name: "LocationModel")
    LocationModelList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#LocationModelList", name: "LocationModelList")
    LocationOrderOverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#LocationOrderOverrideList", name: "LocationOrderOverrideList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    LocationState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#LocationState", name: "LocationState")
    LocationStateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#LocationStateList", name: "LocationStateList")
    LocationStringModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#LocationStringModel", name: "LocationStringModel", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9\\-]+$"})
    LocationUpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#LocationUpdateStatus", name: "LocationUpdateStatus")
    LocationalDeployment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#LocationalDeployment", name: "LocationalDeployment")
    LocationalDeployments = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.gamelift#LocationalDeployments", name: "LocationalDeployments")
    LogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#LogConfiguration", name: "LogConfiguration")
    LogDestination = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#LogDestination", name: "LogDestination")
    LogGroupArnStringModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#LogGroupArnStringModel", name: "LogGroupArnStringModel", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9:/\\-\\*]+$"})
    MatchedPlayerSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#MatchedPlayerSession", name: "MatchedPlayerSession")
    MatchedPlayerSessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#MatchedPlayerSessionList", name: "MatchedPlayerSessionList")
    MatchmakerData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#MatchmakerData", name: "MatchmakerData", traits: {"smithy.api#length" => {"min" => 1, "max" => 390000}})
    MatchmakingAcceptanceTimeoutInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#MatchmakingAcceptanceTimeoutInteger", name: "MatchmakingAcceptanceTimeoutInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 600}})
    MatchmakingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#MatchmakingConfiguration", name: "MatchmakingConfiguration")
    MatchmakingConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#MatchmakingConfigurationArn", name: "MatchmakingConfigurationArn", traits: {"smithy.api#pattern" => "^arn:.*:matchmakingconfiguration\\/[a-zA-Z0-9-\\.]*$"})
    MatchmakingConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#MatchmakingConfigurationList", name: "MatchmakingConfigurationList")
    MatchmakingConfigurationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#MatchmakingConfigurationName", name: "MatchmakingConfigurationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\.]*|^arn:.*:matchmakingconfiguration\\/[a-zA-Z0-9-\\.]*$"})
    MatchmakingConfigurationNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#MatchmakingConfigurationNameList", name: "MatchmakingConfigurationNameList")
    MatchmakingConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#MatchmakingConfigurationStatus", name: "MatchmakingConfigurationStatus")
    MatchmakingIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#MatchmakingIdList", name: "MatchmakingIdList")
    MatchmakingIdStringModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#MatchmakingIdStringModel", name: "MatchmakingIdStringModel", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\.]*$"})
    MatchmakingRequestTimeoutInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#MatchmakingRequestTimeoutInteger", name: "MatchmakingRequestTimeoutInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 43200}})
    MatchmakingRuleSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#MatchmakingRuleSet", name: "MatchmakingRuleSet")
    MatchmakingRuleSetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#MatchmakingRuleSetArn", name: "MatchmakingRuleSetArn", traits: {"smithy.api#pattern" => "^arn:.*:matchmakingruleset\\/[a-zA-Z0-9-\\.]*$"})
    MatchmakingRuleSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#MatchmakingRuleSetList", name: "MatchmakingRuleSetList")
    MatchmakingRuleSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#MatchmakingRuleSetName", name: "MatchmakingRuleSetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9-\\.]*|^arn:.*:matchmakingruleset\\/[a-zA-Z0-9-\\.]*$"})
    MatchmakingRuleSetNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#MatchmakingRuleSetNameList", name: "MatchmakingRuleSetNameList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    MatchmakingTicket = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#MatchmakingTicket", name: "MatchmakingTicket")
    MatchmakingTicketList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#MatchmakingTicketList", name: "MatchmakingTicketList")
    MaxConcurrentGameSessionActivations = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#MaxConcurrentGameSessionActivations", name: "MaxConcurrentGameSessionActivations", traits: {"smithy.api#range" => {"min" => 1, "max" => 2147483647}})
    MaximumGameServerContainerGroupsPerInstance = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#MaximumGameServerContainerGroupsPerInstance", name: "MaximumGameServerContainerGroupsPerInstance", traits: {"smithy.api#range" => {"min" => 1, "max" => 5000}})
    MetricGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#MetricGroup", name: "MetricGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    MetricGroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#MetricGroupList", name: "MetricGroupList", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    MetricName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#MetricName", name: "MetricName")
    MinimumHealthyPercentage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#MinimumHealthyPercentage", name: "MinimumHealthyPercentage", traits: {"smithy.api#range" => {"min" => 30, "max" => 75}})
    NonBlankAndLengthConstraintString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#NonBlankAndLengthConstraintString", name: "NonBlankAndLengthConstraintString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "\\S"})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1}})
    NonNegativeDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.gamelift#NonNegativeDouble", name: "NonNegativeDouble", traits: {"smithy.api#range" => {"min" => 0}})
    NonNegativeLimitedLengthDouble = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#NonNegativeLimitedLengthDouble", name: "NonNegativeLimitedLengthDouble", traits: {"smithy.api#length" => {"min" => 1, "max" => 11}, "smithy.api#pattern" => "^\\d{1,5}(?:\\.\\d{1,5})?$"})
    NonZeroAnd128MaxAsciiString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#NonZeroAnd128MaxAsciiString", name: "NonZeroAnd128MaxAsciiString", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-]+$"})
    NonZeroAnd255MaxString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#NonZeroAnd255MaxString", name: "NonZeroAnd255MaxString", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    NonZeroAndMaxString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#NonZeroAndMaxString", name: "NonZeroAndMaxString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client"})
    NotReadyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#NotReadyException", name: "NotReadyException", traits: {"smithy.api#error" => "client"})
    OperatingSystem = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#OperatingSystem", name: "OperatingSystem")
    OutOfCapacityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#OutOfCapacityException", name: "OutOfCapacityException", traits: {"smithy.api#error" => "client"})
    PingBeacon = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#PingBeacon", name: "PingBeacon")
    PlacedPlayerSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#PlacedPlayerSession", name: "PlacedPlayerSession")
    PlacedPlayerSessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#PlacedPlayerSessionList", name: "PlacedPlayerSessionList")
    PlacementFallbackStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#PlacementFallbackStrategy", name: "PlacementFallbackStrategy")
    Player = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#Player", name: "Player")
    PlayerAttributeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.gamelift#PlayerAttributeMap", name: "PlayerAttributeMap")
    PlayerAttributeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#PlayerAttributeString", name: "PlayerAttributeString", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    PlayerAttributeStringDoubleMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.gamelift#PlayerAttributeStringDoubleMap", name: "PlayerAttributeStringDoubleMap")
    PlayerAttributeStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#PlayerAttributeStringList", name: "PlayerAttributeStringList")
    PlayerData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#PlayerData", name: "PlayerData", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    PlayerDataMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.gamelift#PlayerDataMap", name: "PlayerDataMap")
    PlayerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#PlayerId", name: "PlayerId", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#sensitive" => {}})
    PlayerIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#PlayerIdList", name: "PlayerIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}, "smithy.api#sensitive" => {}})
    PlayerIdsForAcceptMatch = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#PlayerIdsForAcceptMatch", name: "PlayerIdsForAcceptMatch", traits: {"smithy.api#sensitive" => {}})
    PlayerLatency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#PlayerLatency", name: "PlayerLatency")
    PlayerLatencyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#PlayerLatencyList", name: "PlayerLatencyList")
    PlayerLatencyPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#PlayerLatencyPolicy", name: "PlayerLatencyPolicy")
    PlayerLatencyPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#PlayerLatencyPolicyList", name: "PlayerLatencyPolicyList")
    PlayerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#PlayerList", name: "PlayerList")
    PlayerSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#PlayerSession", name: "PlayerSession")
    PlayerSessionCreationPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#PlayerSessionCreationPolicy", name: "PlayerSessionCreationPolicy")
    PlayerSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#PlayerSessionId", name: "PlayerSessionId", traits: {"smithy.api#pattern" => "^psess-\\S+$"})
    PlayerSessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#PlayerSessionList", name: "PlayerSessionList")
    PlayerSessionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#PlayerSessionStatus", name: "PlayerSessionStatus")
    PolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#PolicyType", name: "PolicyType")
    PortNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#PortNumber", name: "PortNumber", traits: {"smithy.api#range" => {"min" => 1, "max" => 60000}, "smithy.api#sensitive" => {}})
    PositiveInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#PositiveInteger", name: "PositiveInteger", traits: {"smithy.api#range" => {"min" => 1}})
    PositiveLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#PositiveLong", name: "PositiveLong", traits: {"smithy.api#range" => {"min" => 1}})
    PriorityConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#PriorityConfiguration", name: "PriorityConfiguration")
    PriorityConfigurationOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#PriorityConfigurationOverride", name: "PriorityConfigurationOverride")
    PriorityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#PriorityType", name: "PriorityType")
    PriorityTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#PriorityTypeList", name: "PriorityTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    ProtectionPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ProtectionPolicy", name: "ProtectionPolicy")
    PutScalingPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#PutScalingPolicyInput", name: "PutScalingPolicyInput")
    PutScalingPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#PutScalingPolicyOutput", name: "PutScalingPolicyOutput")
    QueueArnsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#QueueArnsList", name: "QueueArnsList")
    QueueCustomEventData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#QueueCustomEventData", name: "QueueCustomEventData", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    QueueSnsArnStringModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#QueueSnsArnStringModel", name: "QueueSnsArnStringModel", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]*(\\.fifo)?$"})
    RegisterComputeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#RegisterComputeInput", name: "RegisterComputeInput")
    RegisterComputeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#RegisterComputeOutput", name: "RegisterComputeOutput")
    RegisterGameServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#RegisterGameServerInput", name: "RegisterGameServerInput")
    RegisterGameServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#RegisterGameServerOutput", name: "RegisterGameServerOutput")
    RequestUploadCredentialsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#RequestUploadCredentialsInput", name: "RequestUploadCredentialsInput")
    RequestUploadCredentialsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#RequestUploadCredentialsOutput", name: "RequestUploadCredentialsOutput")
    ResolveAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ResolveAliasInput", name: "ResolveAliasInput")
    ResolveAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ResolveAliasOutput", name: "ResolveAliasOutput")
    ResourceCreationLimitPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ResourceCreationLimitPolicy", name: "ResourceCreationLimitPolicy")
    ResumeGameServerGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ResumeGameServerGroupInput", name: "ResumeGameServerGroupInput")
    ResumeGameServerGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ResumeGameServerGroupOutput", name: "ResumeGameServerGroupOutput")
    RoutingStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#RoutingStrategy", name: "RoutingStrategy")
    RoutingStrategyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#RoutingStrategyType", name: "RoutingStrategyType")
    RuleSetBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#RuleSetBody", name: "RuleSetBody", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    RuleSetLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#RuleSetLimit", name: "RuleSetLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    RuntimeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#RuntimeConfiguration", name: "RuntimeConfiguration")
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#S3Location", name: "S3Location")
    ScalingAdjustmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ScalingAdjustmentType", name: "ScalingAdjustmentType")
    ScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ScalingPolicy", name: "ScalingPolicy")
    ScalingPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ScalingPolicyList", name: "ScalingPolicyList")
    ScalingStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#ScalingStatusType", name: "ScalingStatusType")
    Script = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#Script", name: "Script")
    ScriptArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ScriptArn", name: "ScriptArn", traits: {"smithy.api#pattern" => "^arn:.*:script\\/script-\\S+$"})
    ScriptId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ScriptId", name: "ScriptId", traits: {"smithy.api#pattern" => "^script-\\S+$"})
    ScriptIdOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ScriptIdOrArn", name: "ScriptIdOrArn", traits: {"smithy.api#pattern" => "^script-\\S+|^arn:.*:script\\/script-\\S+$"})
    ScriptList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ScriptList", name: "ScriptList")
    SearchGameSessionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#SearchGameSessionsInput", name: "SearchGameSessionsInput")
    SearchGameSessionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#SearchGameSessionsOutput", name: "SearchGameSessionsOutput")
    ServerProcess = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ServerProcess", name: "ServerProcess")
    ServerProcessList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#ServerProcessList", name: "ServerProcessList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ServerSdkVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#ServerSdkVersion", name: "ServerSdkVersion", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^\\d+\\.\\d+\\.\\d+$"})
    SessionTarget = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#SessionTarget", name: "SessionTarget", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}})
    Sha256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#Sha256", name: "Sha256", traits: {"smithy.api#pattern" => "^sha256:[a-fA-F0-9]{64}$"})
    SnsArnStringModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#SnsArnStringModel", name: "SnsArnStringModel", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9:_/-]*(.fifo)?$"})
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#SortOrder", name: "SortOrder")
    StartFleetActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StartFleetActionsInput", name: "StartFleetActionsInput")
    StartFleetActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StartFleetActionsOutput", name: "StartFleetActionsOutput")
    StartGameSessionPlacementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StartGameSessionPlacementInput", name: "StartGameSessionPlacementInput")
    StartGameSessionPlacementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StartGameSessionPlacementOutput", name: "StartGameSessionPlacementOutput")
    StartMatchBackfillInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StartMatchBackfillInput", name: "StartMatchBackfillInput")
    StartMatchBackfillOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StartMatchBackfillOutput", name: "StartMatchBackfillOutput")
    StartMatchmakingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StartMatchmakingInput", name: "StartMatchmakingInput")
    StartMatchmakingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StartMatchmakingOutput", name: "StartMatchmakingOutput")
    StopFleetActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StopFleetActionsInput", name: "StopFleetActionsInput")
    StopFleetActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StopFleetActionsOutput", name: "StopFleetActionsOutput")
    StopGameSessionPlacementInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StopGameSessionPlacementInput", name: "StopGameSessionPlacementInput")
    StopGameSessionPlacementOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StopGameSessionPlacementOutput", name: "StopGameSessionPlacementOutput")
    StopMatchmakingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StopMatchmakingInput", name: "StopMatchmakingInput")
    StopMatchmakingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#StopMatchmakingOutput", name: "StopMatchmakingOutput")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#StringList", name: "StringList")
    StringModel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#StringModel", name: "StringModel")
    SupportContainerDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#SupportContainerDefinition", name: "SupportContainerDefinition")
    SupportContainerDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#SupportContainerDefinitionInput", name: "SupportContainerDefinitionInput")
    SupportContainerDefinitionInputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#SupportContainerDefinitionInputList", name: "SupportContainerDefinitionInputList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    SupportContainerDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#SupportContainerDefinitionList", name: "SupportContainerDefinitionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    SuspendGameServerGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#SuspendGameServerGroupInput", name: "SuspendGameServerGroupInput")
    SuspendGameServerGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#SuspendGameServerGroupOutput", name: "SuspendGameServerGroupOutput")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaggingFailedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#TaggingFailedException", name: "TaggingFailedException", traits: {"smithy.api#error" => "client"})
    TargetConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#TargetConfiguration", name: "TargetConfiguration")
    TargetTrackingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#TargetTrackingConfiguration", name: "TargetTrackingConfiguration")
    TerminalRoutingStrategyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#TerminalRoutingStrategyException", name: "TerminalRoutingStrategyException", traits: {"smithy.api#error" => "client"})
    TerminateGameSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#TerminateGameSessionInput", name: "TerminateGameSessionInput")
    TerminateGameSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#TerminateGameSessionOutput", name: "TerminateGameSessionOutput")
    TerminationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.gamelift#TerminationMode", name: "TerminationMode")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.gamelift#Timestamp", name: "Timestamp")
    UDPEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UDPEndpoint", name: "UDPEndpoint")
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client"})
    UnsupportedRegionException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UnsupportedRegionException", name: "UnsupportedRegionException", traits: {"smithy.api#error" => "client"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAliasInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateAliasInput", name: "UpdateAliasInput")
    UpdateAliasOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateAliasOutput", name: "UpdateAliasOutput")
    UpdateBuildInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateBuildInput", name: "UpdateBuildInput")
    UpdateBuildOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateBuildOutput", name: "UpdateBuildOutput")
    UpdateContainerFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateContainerFleetInput", name: "UpdateContainerFleetInput")
    UpdateContainerFleetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateContainerFleetOutput", name: "UpdateContainerFleetOutput")
    UpdateContainerGroupDefinitionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateContainerGroupDefinitionInput", name: "UpdateContainerGroupDefinitionInput")
    UpdateContainerGroupDefinitionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateContainerGroupDefinitionOutput", name: "UpdateContainerGroupDefinitionOutput")
    UpdateFleetAttributesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateFleetAttributesInput", name: "UpdateFleetAttributesInput")
    UpdateFleetAttributesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateFleetAttributesOutput", name: "UpdateFleetAttributesOutput")
    UpdateFleetCapacityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateFleetCapacityInput", name: "UpdateFleetCapacityInput")
    UpdateFleetCapacityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateFleetCapacityOutput", name: "UpdateFleetCapacityOutput")
    UpdateFleetPortSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateFleetPortSettingsInput", name: "UpdateFleetPortSettingsInput")
    UpdateFleetPortSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateFleetPortSettingsOutput", name: "UpdateFleetPortSettingsOutput")
    UpdateGameServerGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateGameServerGroupInput", name: "UpdateGameServerGroupInput")
    UpdateGameServerGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateGameServerGroupOutput", name: "UpdateGameServerGroupOutput")
    UpdateGameServerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateGameServerInput", name: "UpdateGameServerInput")
    UpdateGameServerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateGameServerOutput", name: "UpdateGameServerOutput")
    UpdateGameSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateGameSessionInput", name: "UpdateGameSessionInput")
    UpdateGameSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateGameSessionOutput", name: "UpdateGameSessionOutput")
    UpdateGameSessionQueueInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateGameSessionQueueInput", name: "UpdateGameSessionQueueInput")
    UpdateGameSessionQueueOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateGameSessionQueueOutput", name: "UpdateGameSessionQueueOutput")
    UpdateMatchmakingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateMatchmakingConfigurationInput", name: "UpdateMatchmakingConfigurationInput")
    UpdateMatchmakingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateMatchmakingConfigurationOutput", name: "UpdateMatchmakingConfigurationOutput")
    UpdateRuntimeConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateRuntimeConfigurationInput", name: "UpdateRuntimeConfigurationInput")
    UpdateRuntimeConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateRuntimeConfigurationOutput", name: "UpdateRuntimeConfigurationOutput")
    UpdateScriptInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateScriptInput", name: "UpdateScriptInput")
    UpdateScriptOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#UpdateScriptOutput", name: "UpdateScriptOutput")
    ValidateMatchmakingRuleSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ValidateMatchmakingRuleSetInput", name: "ValidateMatchmakingRuleSetInput")
    ValidateMatchmakingRuleSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#ValidateMatchmakingRuleSetOutput", name: "ValidateMatchmakingRuleSetOutput")
    VpcPeeringAuthorization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#VpcPeeringAuthorization", name: "VpcPeeringAuthorization")
    VpcPeeringAuthorizationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#VpcPeeringAuthorizationList", name: "VpcPeeringAuthorizationList")
    VpcPeeringConnection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#VpcPeeringConnection", name: "VpcPeeringConnection")
    VpcPeeringConnectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#VpcPeeringConnectionList", name: "VpcPeeringConnectionList")
    VpcPeeringConnectionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.gamelift#VpcPeeringConnectionStatus", name: "VpcPeeringConnectionStatus")
    VpcSubnet = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#VpcSubnet", name: "VpcSubnet", traits: {"smithy.api#length" => {"min" => 15, "max" => 24}, "smithy.api#pattern" => "^subnet-[0-9a-z]+$"})
    VpcSubnets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.gamelift#VpcSubnets", name: "VpcSubnets", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    WeightedCapacity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.gamelift#WeightedCapacity", name: "WeightedCapacity", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}, "smithy.api#pattern" => "^[\\u0031-\\u0039][\\u0030-\\u0039]{0,2}$"})
    WholeNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.gamelift#WholeNumber", name: "WholeNumber", traits: {"smithy.api#range" => {"min" => 0}})
    ZipBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.gamelift#ZipBlob", name: "ZipBlob", traits: {"smithy.api#length" => {"min" => 0, "max" => 5000000}})

    AcceptMatchInput.add_member(:ticket_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel, location_name: "TicketId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AcceptMatchInput.add_member(:player_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerIdsForAcceptMatch, location_name: "PlayerIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AcceptMatchInput.add_member(:acceptance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptanceType, location_name: "AcceptanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AcceptMatchInput.type = Types::AcceptMatchInput
    AcceptMatchOutput.type = Types::AcceptMatchOutput
    AcceptanceType.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCEPT", traits: {"smithy.api#enumValue" => "ACCEPT"}))
    AcceptanceType.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    Alias.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasId, location_name: "AliasId"))
    Alias.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankAndLengthConstraintString, location_name: "Name"))
    Alias.add_member(:alias_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasArn, location_name: "AliasArn"))
    Alias.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeText, location_name: "Description"))
    Alias.add_member(:routing_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingStrategy, location_name: "RoutingStrategy"))
    Alias.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    Alias.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTime"))
    Alias.type = Types::Alias
    AliasList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Alias)
    AnywhereConfiguration.add_member(:cost, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeLimitedLengthDouble, location_name: "Cost", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AnywhereConfiguration.type = Types::AnywhereConfiguration
    AttributeValue.add_member(:s, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerAttributeString, location_name: "S"))
    AttributeValue.add_member(:n, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleObject, location_name: "N"))
    AttributeValue.add_member(:sl, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerAttributeStringList, location_name: "SL"))
    AttributeValue.add_member(:sdm, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerAttributeStringDoubleMap, location_name: "SDM"))
    AttributeValue.type = Types::AttributeValue
    AwsCredentials.add_member(:access_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "AccessKeyId"))
    AwsCredentials.add_member(:secret_access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "SecretAccessKey"))
    AwsCredentials.add_member(:session_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "SessionToken"))
    AwsCredentials.type = Types::AwsCredentials
    BackfillMode.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    BackfillMode.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    BalancingStrategy.add_member(:spot_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPOT_ONLY", traits: {"smithy.api#enumValue" => "SPOT_ONLY"}))
    BalancingStrategy.add_member(:spot_preferred, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPOT_PREFERRED", traits: {"smithy.api#enumValue" => "SPOT_PREFERRED"}))
    BalancingStrategy.add_member(:on_demand_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ON_DEMAND_ONLY", traits: {"smithy.api#enumValue" => "ON_DEMAND_ONLY"}))
    Build.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildId, location_name: "BuildId"))
    Build.add_member(:build_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildArn, location_name: "BuildArn"))
    Build.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeText, location_name: "Name"))
    Build.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeText, location_name: "Version"))
    Build.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildStatus, location_name: "Status"))
    Build.add_member(:size_on_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, location_name: "SizeOnDisk"))
    Build.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, location_name: "OperatingSystem"))
    Build.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    Build.add_member(:server_sdk_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSdkVersion, location_name: "ServerSdkVersion"))
    Build.type = Types::Build
    BuildList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Build)
    BuildStatus.add_member(:initialized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INITIALIZED", traits: {"smithy.api#enumValue" => "INITIALIZED"}))
    BuildStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    BuildStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CertificateConfiguration.add_member(:certificate_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, location_name: "CertificateType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CertificateConfiguration.type = Types::CertificateConfiguration
    CertificateType.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Disabled", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateType.add_member(:generated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Generated", traits: {"smithy.api#enumValue" => "GENERATED"}))
    ClaimFilterOption.add_member(:instance_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterInstanceStatuses, location_name: "InstanceStatuses"))
    ClaimFilterOption.type = Types::ClaimFilterOption
    ClaimGameServerInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ClaimGameServerInput.add_member(:game_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerId, location_name: "GameServerId"))
    ClaimGameServerInput.add_member(:game_server_data, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerData, location_name: "GameServerData"))
    ClaimGameServerInput.add_member(:filter_option, ::Smithy::Schema::Shapes::MemberShape.new(target: ClaimFilterOption, location_name: "FilterOption"))
    ClaimGameServerInput.type = Types::ClaimGameServerInput
    ClaimGameServerOutput.add_member(:game_server, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServer, location_name: "GameServer"))
    ClaimGameServerOutput.type = Types::ClaimGameServerOutput
    ComparisonOperatorType.add_member(:greater_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GreaterThanOrEqualToThreshold", traits: {"smithy.api#enumValue" => "GreaterThanOrEqualToThreshold"}))
    ComparisonOperatorType.add_member(:greater_than_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GreaterThanThreshold", traits: {"smithy.api#enumValue" => "GreaterThanThreshold"}))
    ComparisonOperatorType.add_member(:less_than_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LessThanThreshold", traits: {"smithy.api#enumValue" => "LessThanThreshold"}))
    ComparisonOperatorType.add_member(:less_than_or_equal_to_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LessThanOrEqualToThreshold", traits: {"smithy.api#enumValue" => "LessThanOrEqualToThreshold"}))
    Compute.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    Compute.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    Compute.add_member(:compute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeName, location_name: "ComputeName"))
    Compute.add_member(:compute_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeArn, location_name: "ComputeArn"))
    Compute.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, location_name: "IpAddress"))
    Compute.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsName, location_name: "DnsName"))
    Compute.add_member(:compute_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeStatus, location_name: "ComputeStatus"))
    Compute.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    Compute.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    Compute.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, location_name: "OperatingSystem"))
    Compute.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "Type"))
    Compute.add_member(:game_lift_service_sdk_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: GameLiftServiceSdkEndpointOutput, location_name: "GameLiftServiceSdkEndpoint"))
    Compute.add_member(:game_lift_agent_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: GameLiftAgentEndpointOutput, location_name: "GameLiftAgentEndpoint"))
    Compute.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, location_name: "InstanceId"))
    Compute.add_member(:container_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAttributes, location_name: "ContainerAttributes"))
    Compute.add_member(:game_server_container_group_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionNameOrArn, location_name: "GameServerContainerGroupDefinitionArn"))
    Compute.type = Types::Compute
    ComputeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Compute)
    ComputeStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ComputeStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ComputeStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    ComputeStatus.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPAIRED", traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    ComputeType.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EC2", traits: {"smithy.api#enumValue" => "EC2"}))
    ComputeType.add_member(:anywhere, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANYWHERE", traits: {"smithy.api#enumValue" => "ANYWHERE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    ConnectionPortRange.add_member(:from_port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "FromPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConnectionPortRange.add_member(:to_port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "ToPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ConnectionPortRange.type = Types::ConnectionPortRange
    ContainerAttribute.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAnd128MaxAsciiString, location_name: "ContainerName"))
    ContainerAttribute.add_member(:container_runtime_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ContainerRuntimeId"))
    ContainerAttribute.type = Types::ContainerAttribute
    ContainerAttributes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAttribute)
    ContainerCommandStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAnd255MaxString)
    ContainerDependency.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAnd128MaxAsciiString, location_name: "ContainerName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContainerDependency.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDependencyCondition, location_name: "Condition", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContainerDependency.type = Types::ContainerDependency
    ContainerDependencyCondition.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "START", traits: {"smithy.api#enumValue" => "START"}))
    ContainerDependencyCondition.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    ContainerDependencyCondition.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    ContainerDependencyCondition.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    ContainerDependencyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDependency)
    ContainerEnvironment.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAnd255MaxString, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContainerEnvironment.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAnd255MaxString, location_name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContainerEnvironment.type = Types::ContainerEnvironment
    ContainerEnvironmentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerEnvironment)
    ContainerFleet.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    ContainerFleet.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    ContainerFleet.add_member(:fleet_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "FleetRoleArn"))
    ContainerFleet.add_member(:game_server_container_group_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionName, location_name: "GameServerContainerGroupDefinitionName"))
    ContainerFleet.add_member(:game_server_container_group_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionArn, location_name: "GameServerContainerGroupDefinitionArn"))
    ContainerFleet.add_member(:per_instance_container_group_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionName, location_name: "PerInstanceContainerGroupDefinitionName"))
    ContainerFleet.add_member(:per_instance_container_group_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionArn, location_name: "PerInstanceContainerGroupDefinitionArn"))
    ContainerFleet.add_member(:instance_connection_port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionPortRange, location_name: "InstanceConnectionPortRange"))
    ContainerFleet.add_member(:instance_inbound_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: IpPermissionsList, location_name: "InstanceInboundPermissions"))
    ContainerFleet.add_member(:game_server_container_groups_per_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerContainerGroupsPerInstance, location_name: "GameServerContainerGroupsPerInstance"))
    ContainerFleet.add_member(:maximum_game_server_container_groups_per_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumGameServerContainerGroupsPerInstance, location_name: "MaximumGameServerContainerGroupsPerInstance"))
    ContainerFleet.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "InstanceType"))
    ContainerFleet.add_member(:billing_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleetBillingType, location_name: "BillingType"))
    ContainerFleet.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Description"))
    ContainerFleet.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    ContainerFleet.add_member(:metric_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGroupList, location_name: "MetricGroups"))
    ContainerFleet.add_member(:new_game_session_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    ContainerFleet.add_member(:game_session_creation_limit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionCreationLimitPolicy, location_name: "GameSessionCreationLimitPolicy"))
    ContainerFleet.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleetStatus, location_name: "Status"))
    ContainerFleet.add_member(:deployment_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentDetails, location_name: "DeploymentDetails"))
    ContainerFleet.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, location_name: "LogConfiguration"))
    ContainerFleet.add_member(:location_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleetLocationAttributesList, location_name: "LocationAttributes"))
    ContainerFleet.type = Types::ContainerFleet
    ContainerFleetBillingType.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    ContainerFleetBillingType.add_member(:spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPOT", traits: {"smithy.api#enumValue" => "SPOT"}))
    ContainerFleetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleet)
    ContainerFleetLocationAttributes.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    ContainerFleetLocationAttributes.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleetLocationStatus, location_name: "Status"))
    ContainerFleetLocationAttributes.type = Types::ContainerFleetLocationAttributes
    ContainerFleetLocationAttributesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleetLocationAttributes)
    ContainerFleetLocationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ContainerFleetLocationStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ContainerFleetLocationStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ContainerFleetLocationStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    ContainerFleetLocationStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ContainerFleetLocationStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ContainerFleetLocationStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ContainerFleetRemoveAttribute.add_member(:per_instance_container_group_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PER_INSTANCE_CONTAINER_GROUP_DEFINITION", traits: {"smithy.api#enumValue" => "PER_INSTANCE_CONTAINER_GROUP_DEFINITION"}))
    ContainerFleetRemoveAttributeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleetRemoveAttribute)
    ContainerFleetStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ContainerFleetStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ContainerFleetStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    ContainerFleetStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    ContainerFleetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ContainerFleetStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ContainerFleetStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ContainerGroupDefinition.add_member(:container_group_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionArn, location_name: "ContainerGroupDefinitionArn"))
    ContainerGroupDefinition.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    ContainerGroupDefinition.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOperatingSystem, location_name: "OperatingSystem"))
    ContainerGroupDefinition.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContainerGroupDefinition.add_member(:container_group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupType, location_name: "ContainerGroupType"))
    ContainerGroupDefinition.add_member(:total_memory_limit_mebibytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerTotalMemoryLimit, location_name: "TotalMemoryLimitMebibytes"))
    ContainerGroupDefinition.add_member(:total_vcpu_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerTotalVcpuLimit, location_name: "TotalVcpuLimit"))
    ContainerGroupDefinition.add_member(:game_server_container_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerContainerDefinition, location_name: "GameServerContainerDefinition"))
    ContainerGroupDefinition.add_member(:support_container_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportContainerDefinitionList, location_name: "SupportContainerDefinitions"))
    ContainerGroupDefinition.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "VersionNumber"))
    ContainerGroupDefinition.add_member(:version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "VersionDescription"))
    ContainerGroupDefinition.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionStatus, location_name: "Status"))
    ContainerGroupDefinition.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "StatusReason"))
    ContainerGroupDefinition.type = Types::ContainerGroupDefinition
    ContainerGroupDefinitionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinition)
    ContainerGroupDefinitionStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READY", traits: {"smithy.api#enumValue" => "READY"}))
    ContainerGroupDefinitionStatus.add_member(:copying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COPYING", traits: {"smithy.api#enumValue" => "COPYING"}))
    ContainerGroupDefinitionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ContainerGroupType.add_member(:game_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GAME_SERVER", traits: {"smithy.api#enumValue" => "GAME_SERVER"}))
    ContainerGroupType.add_member(:per_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PER_INSTANCE", traits: {"smithy.api#enumValue" => "PER_INSTANCE"}))
    ContainerHealthCheck.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerCommandStringList, location_name: "Command", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContainerHealthCheck.add_member(:interval, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerHealthCheckInterval, location_name: "Interval"))
    ContainerHealthCheck.add_member(:retries, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerHealthCheckRetries, location_name: "Retries"))
    ContainerHealthCheck.add_member(:start_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerHealthCheckStartPeriod, location_name: "StartPeriod"))
    ContainerHealthCheck.add_member(:timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerHealthCheckTimeout, location_name: "Timeout"))
    ContainerHealthCheck.type = Types::ContainerHealthCheck
    ContainerIdentifier.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAnd128MaxAsciiString, location_name: "ContainerName"))
    ContainerIdentifier.add_member(:container_runtime_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ContainerRuntimeId"))
    ContainerIdentifier.type = Types::ContainerIdentifier
    ContainerIdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerIdentifier)
    ContainerMountPoint.add_member(:instance_path, ::Smithy::Schema::Shapes::MemberShape.new(target: InstancePathString, location_name: "InstancePath", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContainerMountPoint.add_member(:container_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerPathString, location_name: "ContainerPath"))
    ContainerMountPoint.add_member(:access_level, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMountPointAccessLevel, location_name: "AccessLevel"))
    ContainerMountPoint.type = Types::ContainerMountPoint
    ContainerMountPointAccessLevel.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READ_ONLY", traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    ContainerMountPointAccessLevel.add_member(:read_and_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READ_AND_WRITE", traits: {"smithy.api#enumValue" => "READ_AND_WRITE"}))
    ContainerMountPointList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMountPoint)
    ContainerOperatingSystem.add_member(:amazon_linux_2023, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_LINUX_2023", traits: {"smithy.api#enumValue" => "AMAZON_LINUX_2023"}))
    ContainerPortConfiguration.add_member(:container_port_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerPortRangeList, location_name: "ContainerPortRanges", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContainerPortConfiguration.type = Types::ContainerPortConfiguration
    ContainerPortRange.add_member(:from_port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "FromPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContainerPortRange.add_member(:to_port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "ToPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContainerPortRange.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: IpProtocol, location_name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ContainerPortRange.type = Types::ContainerPortRange
    ContainerPortRangeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerPortRange)
    CreateAliasInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankAndLengthConstraintString, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAliasInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Description"))
    CreateAliasInput.add_member(:routing_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingStrategy, location_name: "RoutingStrategy", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAliasInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateAliasInput.type = Types::CreateAliasInput
    CreateAliasOutput.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, location_name: "Alias"))
    CreateAliasOutput.type = Types::CreateAliasOutput
    CreateBuildInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    CreateBuildInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Version"))
    CreateBuildInput.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "StorageLocation"))
    CreateBuildInput.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, location_name: "OperatingSystem"))
    CreateBuildInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateBuildInput.add_member(:server_sdk_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSdkVersion, location_name: "ServerSdkVersion"))
    CreateBuildInput.type = Types::CreateBuildInput
    CreateBuildOutput.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: Build, location_name: "Build"))
    CreateBuildOutput.add_member(:upload_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCredentials, location_name: "UploadCredentials"))
    CreateBuildOutput.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "StorageLocation"))
    CreateBuildOutput.type = Types::CreateBuildOutput
    CreateContainerFleetInput.add_member(:fleet_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "FleetRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateContainerFleetInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Description"))
    CreateContainerFleetInput.add_member(:game_server_container_group_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionNameOrArn, location_name: "GameServerContainerGroupDefinitionName"))
    CreateContainerFleetInput.add_member(:per_instance_container_group_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionNameOrArn, location_name: "PerInstanceContainerGroupDefinitionName"))
    CreateContainerFleetInput.add_member(:instance_connection_port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionPortRange, location_name: "InstanceConnectionPortRange"))
    CreateContainerFleetInput.add_member(:instance_inbound_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: IpPermissionsList, location_name: "InstanceInboundPermissions"))
    CreateContainerFleetInput.add_member(:game_server_container_groups_per_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerContainerGroupsPerInstance, location_name: "GameServerContainerGroupsPerInstance"))
    CreateContainerFleetInput.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "InstanceType"))
    CreateContainerFleetInput.add_member(:billing_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleetBillingType, location_name: "BillingType"))
    CreateContainerFleetInput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationConfigurationList, location_name: "Locations"))
    CreateContainerFleetInput.add_member(:metric_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGroupList, location_name: "MetricGroups"))
    CreateContainerFleetInput.add_member(:new_game_session_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    CreateContainerFleetInput.add_member(:game_session_creation_limit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionCreationLimitPolicy, location_name: "GameSessionCreationLimitPolicy"))
    CreateContainerFleetInput.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, location_name: "LogConfiguration"))
    CreateContainerFleetInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateContainerFleetInput.type = Types::CreateContainerFleetInput
    CreateContainerFleetOutput.add_member(:container_fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleet, location_name: "ContainerFleet"))
    CreateContainerFleetOutput.type = Types::CreateContainerFleetOutput
    CreateContainerGroupDefinitionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateContainerGroupDefinitionInput.add_member(:container_group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupType, location_name: "ContainerGroupType"))
    CreateContainerGroupDefinitionInput.add_member(:total_memory_limit_mebibytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerTotalMemoryLimit, location_name: "TotalMemoryLimitMebibytes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateContainerGroupDefinitionInput.add_member(:total_vcpu_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerTotalVcpuLimit, location_name: "TotalVcpuLimit", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateContainerGroupDefinitionInput.add_member(:game_server_container_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerContainerDefinitionInput, location_name: "GameServerContainerDefinition"))
    CreateContainerGroupDefinitionInput.add_member(:support_container_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportContainerDefinitionInputList, location_name: "SupportContainerDefinitions"))
    CreateContainerGroupDefinitionInput.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOperatingSystem, location_name: "OperatingSystem", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateContainerGroupDefinitionInput.add_member(:version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "VersionDescription"))
    CreateContainerGroupDefinitionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateContainerGroupDefinitionInput.type = Types::CreateContainerGroupDefinitionInput
    CreateContainerGroupDefinitionOutput.add_member(:container_group_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinition, location_name: "ContainerGroupDefinition"))
    CreateContainerGroupDefinitionOutput.type = Types::CreateContainerGroupDefinitionOutput
    CreateFleetInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFleetInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Description"))
    CreateFleetInput.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIdOrArn, location_name: "BuildId"))
    CreateFleetInput.add_member(:script_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptIdOrArn, location_name: "ScriptId"))
    CreateFleetInput.add_member(:server_launch_path, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchPathStringModel, location_name: "ServerLaunchPath"))
    CreateFleetInput.add_member(:server_launch_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchParametersStringModel, location_name: "ServerLaunchParameters"))
    CreateFleetInput.add_member(:log_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "LogPaths"))
    CreateFleetInput.add_member(:ec2_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "EC2InstanceType"))
    CreateFleetInput.add_member(:ec2_inbound_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: IpPermissionsList, location_name: "EC2InboundPermissions"))
    CreateFleetInput.add_member(:new_game_session_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    CreateFleetInput.add_member(:runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeConfiguration, location_name: "RuntimeConfiguration"))
    CreateFleetInput.add_member(:resource_creation_limit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCreationLimitPolicy, location_name: "ResourceCreationLimitPolicy"))
    CreateFleetInput.add_member(:metric_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGroupList, location_name: "MetricGroups"))
    CreateFleetInput.add_member(:peer_vpc_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PeerVpcAwsAccountId"))
    CreateFleetInput.add_member(:peer_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PeerVpcId"))
    CreateFleetInput.add_member(:fleet_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetType, location_name: "FleetType"))
    CreateFleetInput.add_member(:instance_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "InstanceRoleArn"))
    CreateFleetInput.add_member(:certificate_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateConfiguration, location_name: "CertificateConfiguration"))
    CreateFleetInput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationConfigurationList, location_name: "Locations"))
    CreateFleetInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateFleetInput.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, location_name: "ComputeType"))
    CreateFleetInput.add_member(:anywhere_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnywhereConfiguration, location_name: "AnywhereConfiguration"))
    CreateFleetInput.add_member(:instance_role_credentials_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRoleCredentialsProvider, location_name: "InstanceRoleCredentialsProvider"))
    CreateFleetInput.type = Types::CreateFleetInput
    CreateFleetLocationsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFleetLocationsInput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationConfigurationList, location_name: "Locations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFleetLocationsInput.type = Types::CreateFleetLocationsInput
    CreateFleetLocationsOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId"))
    CreateFleetLocationsOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    CreateFleetLocationsOutput.add_member(:location_states, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStateList, location_name: "LocationStates"))
    CreateFleetLocationsOutput.type = Types::CreateFleetLocationsOutput
    CreateFleetOutput.add_member(:fleet_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAttributes, location_name: "FleetAttributes"))
    CreateFleetOutput.add_member(:location_states, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStateList, location_name: "LocationStates"))
    CreateFleetOutput.type = Types::CreateFleetOutput
    CreateGameServerGroupInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupName, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGameServerGroupInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGameServerGroupInput.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MinSize", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGameServerGroupInput.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "MaxSize", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGameServerGroupInput.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateSpecification, location_name: "LaunchTemplate", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGameServerGroupInput.add_member(:instance_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceDefinitions, location_name: "InstanceDefinitions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGameServerGroupInput.add_member(:auto_scaling_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupAutoScalingPolicy, location_name: "AutoScalingPolicy"))
    CreateGameServerGroupInput.add_member(:balancing_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: BalancingStrategy, location_name: "BalancingStrategy"))
    CreateGameServerGroupInput.add_member(:game_server_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerProtectionPolicy, location_name: "GameServerProtectionPolicy"))
    CreateGameServerGroupInput.add_member(:vpc_subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnets, location_name: "VpcSubnets"))
    CreateGameServerGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateGameServerGroupInput.type = Types::CreateGameServerGroupInput
    CreateGameServerGroupOutput.add_member(:game_server_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroup, location_name: "GameServerGroup"))
    CreateGameServerGroupOutput.type = Types::CreateGameServerGroupOutput
    CreateGameSessionInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId"))
    CreateGameSessionInput.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasIdOrArn, location_name: "AliasId"))
    CreateGameSessionInput.add_member(:maximum_player_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MaximumPlayerSessionCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGameSessionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    CreateGameSessionInput.add_member(:game_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: GamePropertyList, location_name: "GameProperties"))
    CreateGameSessionInput.add_member(:creator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "CreatorId"))
    CreateGameSessionInput.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdStringModel, location_name: "GameSessionId"))
    CreateGameSessionInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: IdStringModel, location_name: "IdempotencyToken"))
    CreateGameSessionInput.add_member(:game_session_data, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeGameSessionData, location_name: "GameSessionData"))
    CreateGameSessionInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    CreateGameSessionInput.type = Types::CreateGameSessionInput
    CreateGameSessionOutput.add_member(:game_session, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSession, location_name: "GameSession"))
    CreateGameSessionOutput.type = Types::CreateGameSessionOutput
    CreateGameSessionQueueInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateGameSessionQueueInput.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "TimeoutInSeconds"))
    CreateGameSessionQueueInput.add_member(:player_latency_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerLatencyPolicyList, location_name: "PlayerLatencyPolicies"))
    CreateGameSessionQueueInput.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueDestinationList, location_name: "Destinations"))
    CreateGameSessionQueueInput.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, location_name: "FilterConfiguration"))
    CreateGameSessionQueueInput.add_member(:priority_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PriorityConfiguration, location_name: "PriorityConfiguration"))
    CreateGameSessionQueueInput.add_member(:custom_event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueCustomEventData, location_name: "CustomEventData"))
    CreateGameSessionQueueInput.add_member(:notification_target, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueSnsArnStringModel, location_name: "NotificationTarget"))
    CreateGameSessionQueueInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateGameSessionQueueInput.type = Types::CreateGameSessionQueueInput
    CreateGameSessionQueueOutput.add_member(:game_session_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueue, location_name: "GameSessionQueue"))
    CreateGameSessionQueueOutput.type = Types::CreateGameSessionQueueOutput
    CreateLocationInput.add_member(:location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomInputLocationStringModel, location_name: "LocationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateLocationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateLocationInput.type = Types::CreateLocationInput
    CreateLocationOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationModel, location_name: "Location"))
    CreateLocationOutput.type = Types::CreateLocationOutput
    CreateMatchmakingConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateMatchmakingConfigurationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Description"))
    CreateMatchmakingConfigurationInput.add_member(:game_session_queue_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueArnsList, location_name: "GameSessionQueueArns"))
    CreateMatchmakingConfigurationInput.add_member(:request_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRequestTimeoutInteger, location_name: "RequestTimeoutSeconds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateMatchmakingConfigurationInput.add_member(:acceptance_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingAcceptanceTimeoutInteger, location_name: "AcceptanceTimeoutSeconds"))
    CreateMatchmakingConfigurationInput.add_member(:acceptance_required, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanModel, location_name: "AcceptanceRequired", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateMatchmakingConfigurationInput.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRuleSetName, location_name: "RuleSetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateMatchmakingConfigurationInput.add_member(:notification_target, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsArnStringModel, location_name: "NotificationTarget"))
    CreateMatchmakingConfigurationInput.add_member(:additional_player_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "AdditionalPlayerCount"))
    CreateMatchmakingConfigurationInput.add_member(:custom_event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEventData, location_name: "CustomEventData"))
    CreateMatchmakingConfigurationInput.add_member(:game_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: GamePropertyList, location_name: "GameProperties"))
    CreateMatchmakingConfigurationInput.add_member(:game_session_data, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionData, location_name: "GameSessionData"))
    CreateMatchmakingConfigurationInput.add_member(:backfill_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BackfillMode, location_name: "BackfillMode"))
    CreateMatchmakingConfigurationInput.add_member(:flex_match_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FlexMatchMode, location_name: "FlexMatchMode"))
    CreateMatchmakingConfigurationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateMatchmakingConfigurationInput.type = Types::CreateMatchmakingConfigurationInput
    CreateMatchmakingConfigurationOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfiguration, location_name: "Configuration"))
    CreateMatchmakingConfigurationOutput.type = Types::CreateMatchmakingConfigurationOutput
    CreateMatchmakingRuleSetInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateMatchmakingRuleSetInput.add_member(:rule_set_body, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetBody, location_name: "RuleSetBody", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateMatchmakingRuleSetInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateMatchmakingRuleSetInput.type = Types::CreateMatchmakingRuleSetInput
    CreateMatchmakingRuleSetOutput.add_member(:rule_set, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRuleSet, location_name: "RuleSet", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateMatchmakingRuleSetOutput.type = Types::CreateMatchmakingRuleSetOutput
    CreatePlayerSessionInput.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel, location_name: "GameSessionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreatePlayerSessionInput.add_member(:player_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerId, location_name: "PlayerId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreatePlayerSessionInput.add_member(:player_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerData, location_name: "PlayerData"))
    CreatePlayerSessionInput.type = Types::CreatePlayerSessionInput
    CreatePlayerSessionOutput.add_member(:player_session, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerSession, location_name: "PlayerSession"))
    CreatePlayerSessionOutput.type = Types::CreatePlayerSessionOutput
    CreatePlayerSessionsInput.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel, location_name: "GameSessionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreatePlayerSessionsInput.add_member(:player_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerIdList, location_name: "PlayerIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreatePlayerSessionsInput.add_member(:player_data_map, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerDataMap, location_name: "PlayerDataMap"))
    CreatePlayerSessionsInput.type = Types::CreatePlayerSessionsInput
    CreatePlayerSessionsOutput.add_member(:player_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerSessionList, location_name: "PlayerSessions"))
    CreatePlayerSessionsOutput.type = Types::CreatePlayerSessionsOutput
    CreateScriptInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    CreateScriptInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Version"))
    CreateScriptInput.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "StorageLocation"))
    CreateScriptInput.add_member(:zip_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ZipBlob, location_name: "ZipFile"))
    CreateScriptInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    CreateScriptInput.type = Types::CreateScriptInput
    CreateScriptOutput.add_member(:script, ::Smithy::Schema::Shapes::MemberShape.new(target: Script, location_name: "Script"))
    CreateScriptOutput.type = Types::CreateScriptOutput
    CreateVpcPeeringAuthorizationInput.add_member(:game_lift_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "GameLiftAwsAccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateVpcPeeringAuthorizationInput.add_member(:peer_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PeerVpcId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateVpcPeeringAuthorizationInput.type = Types::CreateVpcPeeringAuthorizationInput
    CreateVpcPeeringAuthorizationOutput.add_member(:vpc_peering_authorization, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcPeeringAuthorization, location_name: "VpcPeeringAuthorization"))
    CreateVpcPeeringAuthorizationOutput.type = Types::CreateVpcPeeringAuthorizationOutput
    CreateVpcPeeringConnectionInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateVpcPeeringConnectionInput.add_member(:peer_vpc_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PeerVpcAwsAccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateVpcPeeringConnectionInput.add_member(:peer_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PeerVpcId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateVpcPeeringConnectionInput.type = Types::CreateVpcPeeringConnectionInput
    CreateVpcPeeringConnectionOutput.type = Types::CreateVpcPeeringConnectionOutput
    DeleteAliasInput.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasIdOrArn, location_name: "AliasId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteAliasInput.type = Types::DeleteAliasInput
    DeleteBuildInput.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIdOrArn, location_name: "BuildId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteBuildInput.type = Types::DeleteBuildInput
    DeleteContainerFleetInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteContainerFleetInput.type = Types::DeleteContainerFleetInput
    DeleteContainerFleetOutput.type = Types::DeleteContainerFleetOutput
    DeleteContainerGroupDefinitionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionNameOrArn, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteContainerGroupDefinitionInput.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "VersionNumber"))
    DeleteContainerGroupDefinitionInput.add_member(:version_count_to_retain, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "VersionCountToRetain"))
    DeleteContainerGroupDefinitionInput.type = Types::DeleteContainerGroupDefinitionInput
    DeleteContainerGroupDefinitionOutput.type = Types::DeleteContainerGroupDefinitionOutput
    DeleteFleetInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteFleetInput.type = Types::DeleteFleetInput
    DeleteFleetLocationsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteFleetLocationsInput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, location_name: "Locations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteFleetLocationsInput.type = Types::DeleteFleetLocationsInput
    DeleteFleetLocationsOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId"))
    DeleteFleetLocationsOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    DeleteFleetLocationsOutput.add_member(:location_states, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStateList, location_name: "LocationStates"))
    DeleteFleetLocationsOutput.type = Types::DeleteFleetLocationsOutput
    DeleteGameServerGroupInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteGameServerGroupInput.add_member(:delete_option, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupDeleteOption, location_name: "DeleteOption"))
    DeleteGameServerGroupInput.type = Types::DeleteGameServerGroupInput
    DeleteGameServerGroupOutput.add_member(:game_server_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroup, location_name: "GameServerGroup"))
    DeleteGameServerGroupOutput.type = Types::DeleteGameServerGroupOutput
    DeleteGameSessionQueueInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueNameOrArn, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteGameSessionQueueInput.type = Types::DeleteGameSessionQueueInput
    DeleteGameSessionQueueOutput.type = Types::DeleteGameSessionQueueOutput
    DeleteLocationInput.add_member(:location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomLocationNameOrArnModel, location_name: "LocationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteLocationInput.type = Types::DeleteLocationInput
    DeleteLocationOutput.type = Types::DeleteLocationOutput
    DeleteMatchmakingConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfigurationName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteMatchmakingConfigurationInput.type = Types::DeleteMatchmakingConfigurationInput
    DeleteMatchmakingConfigurationOutput.type = Types::DeleteMatchmakingConfigurationOutput
    DeleteMatchmakingRuleSetInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRuleSetName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteMatchmakingRuleSetInput.type = Types::DeleteMatchmakingRuleSetInput
    DeleteMatchmakingRuleSetOutput.type = Types::DeleteMatchmakingRuleSetOutput
    DeleteScalingPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteScalingPolicyInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteScalingPolicyInput.type = Types::DeleteScalingPolicyInput
    DeleteScriptInput.add_member(:script_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptIdOrArn, location_name: "ScriptId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteScriptInput.type = Types::DeleteScriptInput
    DeleteVpcPeeringAuthorizationInput.add_member(:game_lift_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "GameLiftAwsAccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteVpcPeeringAuthorizationInput.add_member(:peer_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PeerVpcId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteVpcPeeringAuthorizationInput.type = Types::DeleteVpcPeeringAuthorizationInput
    DeleteVpcPeeringAuthorizationOutput.type = Types::DeleteVpcPeeringAuthorizationOutput
    DeleteVpcPeeringConnectionInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteVpcPeeringConnectionInput.add_member(:vpc_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "VpcPeeringConnectionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteVpcPeeringConnectionInput.type = Types::DeleteVpcPeeringConnectionInput
    DeleteVpcPeeringConnectionOutput.type = Types::DeleteVpcPeeringConnectionOutput
    DeploymentConfiguration.add_member(:protection_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentProtectionStrategy, location_name: "ProtectionStrategy"))
    DeploymentConfiguration.add_member(:minimum_healthy_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: MinimumHealthyPercentage, location_name: "MinimumHealthyPercentage"))
    DeploymentConfiguration.add_member(:impairment_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentImpairmentStrategy, location_name: "ImpairmentStrategy"))
    DeploymentConfiguration.type = Types::DeploymentConfiguration
    DeploymentDetails.add_member(:latest_deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, location_name: "LatestDeploymentId"))
    DeploymentDetails.type = Types::DeploymentDetails
    DeploymentImpairmentStrategy.add_member(:maintain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAINTAIN", traits: {"smithy.api#enumValue" => "MAINTAIN"}))
    DeploymentImpairmentStrategy.add_member(:rollback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK", traits: {"smithy.api#enumValue" => "ROLLBACK"}))
    DeploymentProtectionStrategy.add_member(:with_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WITH_PROTECTION", traits: {"smithy.api#enumValue" => "WITH_PROTECTION"}))
    DeploymentProtectionStrategy.add_member(:ignore_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IGNORE_PROTECTION", traits: {"smithy.api#enumValue" => "IGNORE_PROTECTION"}))
    DeploymentStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeploymentStatus.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPAIRED", traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    DeploymentStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    DeploymentStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    DeploymentStatus.add_member(:rollback_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK_COMPLETE", traits: {"smithy.api#enumValue" => "ROLLBACK_COMPLETE"}))
    DeploymentStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    DeploymentStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DeregisterComputeInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterComputeInput.add_member(:compute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNameOrArn, location_name: "ComputeName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterComputeInput.type = Types::DeregisterComputeInput
    DeregisterComputeOutput.type = Types::DeregisterComputeOutput
    DeregisterGameServerInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterGameServerInput.add_member(:game_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerId, location_name: "GameServerId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeregisterGameServerInput.type = Types::DeregisterGameServerInput
    DescribeAliasInput.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasIdOrArn, location_name: "AliasId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeAliasInput.type = Types::DescribeAliasInput
    DescribeAliasOutput.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, location_name: "Alias"))
    DescribeAliasOutput.type = Types::DescribeAliasOutput
    DescribeBuildInput.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIdOrArn, location_name: "BuildId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeBuildInput.type = Types::DescribeBuildInput
    DescribeBuildOutput.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: Build, location_name: "Build"))
    DescribeBuildOutput.type = Types::DescribeBuildOutput
    DescribeComputeInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeComputeInput.add_member(:compute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNameOrArn, location_name: "ComputeName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeComputeInput.type = Types::DescribeComputeInput
    DescribeComputeOutput.add_member(:compute, ::Smithy::Schema::Shapes::MemberShape.new(target: Compute, location_name: "Compute"))
    DescribeComputeOutput.type = Types::DescribeComputeOutput
    DescribeContainerFleetInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeContainerFleetInput.type = Types::DescribeContainerFleetInput
    DescribeContainerFleetOutput.add_member(:container_fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleet, location_name: "ContainerFleet"))
    DescribeContainerFleetOutput.type = Types::DescribeContainerFleetOutput
    DescribeContainerGroupDefinitionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionNameOrArn, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeContainerGroupDefinitionInput.add_member(:version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "VersionNumber"))
    DescribeContainerGroupDefinitionInput.type = Types::DescribeContainerGroupDefinitionInput
    DescribeContainerGroupDefinitionOutput.add_member(:container_group_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinition, location_name: "ContainerGroupDefinition"))
    DescribeContainerGroupDefinitionOutput.type = Types::DescribeContainerGroupDefinitionOutput
    DescribeEC2InstanceLimitsInput.add_member(:ec2_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "EC2InstanceType"))
    DescribeEC2InstanceLimitsInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    DescribeEC2InstanceLimitsInput.type = Types::DescribeEC2InstanceLimitsInput
    DescribeEC2InstanceLimitsOutput.add_member(:ec2_instance_limits, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceLimitList, location_name: "EC2InstanceLimits"))
    DescribeEC2InstanceLimitsOutput.type = Types::DescribeEC2InstanceLimitsOutput
    DescribeFleetAttributesInput.add_member(:fleet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArnList, location_name: "FleetIds"))
    DescribeFleetAttributesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeFleetAttributesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetAttributesInput.type = Types::DescribeFleetAttributesInput
    DescribeFleetAttributesOutput.add_member(:fleet_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAttributesList, location_name: "FleetAttributes"))
    DescribeFleetAttributesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetAttributesOutput.type = Types::DescribeFleetAttributesOutput
    DescribeFleetCapacityInput.add_member(:fleet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArnList, location_name: "FleetIds"))
    DescribeFleetCapacityInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeFleetCapacityInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetCapacityInput.type = Types::DescribeFleetCapacityInput
    DescribeFleetCapacityOutput.add_member(:fleet_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetCapacityList, location_name: "FleetCapacity"))
    DescribeFleetCapacityOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetCapacityOutput.type = Types::DescribeFleetCapacityOutput
    DescribeFleetDeploymentInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeFleetDeploymentInput.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, location_name: "DeploymentId"))
    DescribeFleetDeploymentInput.type = Types::DescribeFleetDeploymentInput
    DescribeFleetDeploymentOutput.add_member(:fleet_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetDeployment, location_name: "FleetDeployment"))
    DescribeFleetDeploymentOutput.add_member(:locational_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationalDeployments, location_name: "LocationalDeployments"))
    DescribeFleetDeploymentOutput.type = Types::DescribeFleetDeploymentOutput
    DescribeFleetEventsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeFleetEventsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartTime"))
    DescribeFleetEventsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndTime"))
    DescribeFleetEventsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeFleetEventsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetEventsInput.type = Types::DescribeFleetEventsInput
    DescribeFleetEventsOutput.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: EventList, location_name: "Events"))
    DescribeFleetEventsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetEventsOutput.type = Types::DescribeFleetEventsOutput
    DescribeFleetLocationAttributesInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeFleetLocationAttributesInput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, location_name: "Locations"))
    DescribeFleetLocationAttributesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeFleetLocationAttributesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetLocationAttributesInput.type = Types::DescribeFleetLocationAttributesInput
    DescribeFleetLocationAttributesOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId"))
    DescribeFleetLocationAttributesOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    DescribeFleetLocationAttributesOutput.add_member(:location_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationAttributesList, location_name: "LocationAttributes"))
    DescribeFleetLocationAttributesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetLocationAttributesOutput.type = Types::DescribeFleetLocationAttributesOutput
    DescribeFleetLocationCapacityInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeFleetLocationCapacityInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeFleetLocationCapacityInput.type = Types::DescribeFleetLocationCapacityInput
    DescribeFleetLocationCapacityOutput.add_member(:fleet_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetCapacity, location_name: "FleetCapacity"))
    DescribeFleetLocationCapacityOutput.type = Types::DescribeFleetLocationCapacityOutput
    DescribeFleetLocationUtilizationInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeFleetLocationUtilizationInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeFleetLocationUtilizationInput.type = Types::DescribeFleetLocationUtilizationInput
    DescribeFleetLocationUtilizationOutput.add_member(:fleet_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetUtilization, location_name: "FleetUtilization"))
    DescribeFleetLocationUtilizationOutput.type = Types::DescribeFleetLocationUtilizationOutput
    DescribeFleetPortSettingsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeFleetPortSettingsInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    DescribeFleetPortSettingsInput.type = Types::DescribeFleetPortSettingsInput
    DescribeFleetPortSettingsOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    DescribeFleetPortSettingsOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    DescribeFleetPortSettingsOutput.add_member(:inbound_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: IpPermissionsList, location_name: "InboundPermissions"))
    DescribeFleetPortSettingsOutput.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUpdateStatus, location_name: "UpdateStatus"))
    DescribeFleetPortSettingsOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    DescribeFleetPortSettingsOutput.type = Types::DescribeFleetPortSettingsOutput
    DescribeFleetUtilizationInput.add_member(:fleet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArnList, location_name: "FleetIds"))
    DescribeFleetUtilizationInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeFleetUtilizationInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetUtilizationInput.type = Types::DescribeFleetUtilizationInput
    DescribeFleetUtilizationOutput.add_member(:fleet_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetUtilizationList, location_name: "FleetUtilization"))
    DescribeFleetUtilizationOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeFleetUtilizationOutput.type = Types::DescribeFleetUtilizationOutput
    DescribeGameServerGroupInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeGameServerGroupInput.type = Types::DescribeGameServerGroupInput
    DescribeGameServerGroupOutput.add_member(:game_server_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroup, location_name: "GameServerGroup"))
    DescribeGameServerGroupOutput.type = Types::DescribeGameServerGroupOutput
    DescribeGameServerInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeGameServerInput.add_member(:game_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerId, location_name: "GameServerId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeGameServerInput.type = Types::DescribeGameServerInput
    DescribeGameServerInstancesInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeGameServerInstancesInput.add_member(:instance_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerInstanceIds, location_name: "InstanceIds"))
    DescribeGameServerInstancesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeGameServerInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameServerInstancesInput.type = Types::DescribeGameServerInstancesInput
    DescribeGameServerInstancesOutput.add_member(:game_server_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerInstances, location_name: "GameServerInstances"))
    DescribeGameServerInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameServerInstancesOutput.type = Types::DescribeGameServerInstancesOutput
    DescribeGameServerOutput.add_member(:game_server, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServer, location_name: "GameServer"))
    DescribeGameServerOutput.type = Types::DescribeGameServerOutput
    DescribeGameSessionDetailsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId"))
    DescribeGameSessionDetailsInput.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel, location_name: "GameSessionId"))
    DescribeGameSessionDetailsInput.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasIdOrArn, location_name: "AliasId"))
    DescribeGameSessionDetailsInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    DescribeGameSessionDetailsInput.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "StatusFilter"))
    DescribeGameSessionDetailsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeGameSessionDetailsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionDetailsInput.type = Types::DescribeGameSessionDetailsInput
    DescribeGameSessionDetailsOutput.add_member(:game_session_details, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionDetailList, location_name: "GameSessionDetails"))
    DescribeGameSessionDetailsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionDetailsOutput.type = Types::DescribeGameSessionDetailsOutput
    DescribeGameSessionPlacementInput.add_member(:placement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdStringModel, location_name: "PlacementId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeGameSessionPlacementInput.type = Types::DescribeGameSessionPlacementInput
    DescribeGameSessionPlacementOutput.add_member(:game_session_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionPlacement, location_name: "GameSessionPlacement"))
    DescribeGameSessionPlacementOutput.type = Types::DescribeGameSessionPlacementOutput
    DescribeGameSessionQueuesInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueNameOrArnList, location_name: "Names"))
    DescribeGameSessionQueuesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeGameSessionQueuesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionQueuesInput.type = Types::DescribeGameSessionQueuesInput
    DescribeGameSessionQueuesOutput.add_member(:game_session_queues, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueList, location_name: "GameSessionQueues"))
    DescribeGameSessionQueuesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionQueuesOutput.type = Types::DescribeGameSessionQueuesOutput
    DescribeGameSessionsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId"))
    DescribeGameSessionsInput.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel, location_name: "GameSessionId"))
    DescribeGameSessionsInput.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasIdOrArn, location_name: "AliasId"))
    DescribeGameSessionsInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    DescribeGameSessionsInput.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "StatusFilter"))
    DescribeGameSessionsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeGameSessionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionsInput.type = Types::DescribeGameSessionsInput
    DescribeGameSessionsOutput.add_member(:game_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionList, location_name: "GameSessions"))
    DescribeGameSessionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeGameSessionsOutput.type = Types::DescribeGameSessionsOutput
    DescribeInstancesInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeInstancesInput.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, location_name: "InstanceId"))
    DescribeInstancesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeInstancesInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    DescribeInstancesInput.type = Types::DescribeInstancesInput
    DescribeInstancesOutput.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceList, location_name: "Instances"))
    DescribeInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeInstancesOutput.type = Types::DescribeInstancesOutput
    DescribeMatchmakingConfigurationsInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfigurationNameList, location_name: "Names"))
    DescribeMatchmakingConfigurationsInput.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRuleSetName, location_name: "RuleSetName"))
    DescribeMatchmakingConfigurationsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeMatchmakingConfigurationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeMatchmakingConfigurationsInput.type = Types::DescribeMatchmakingConfigurationsInput
    DescribeMatchmakingConfigurationsOutput.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfigurationList, location_name: "Configurations"))
    DescribeMatchmakingConfigurationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeMatchmakingConfigurationsOutput.type = Types::DescribeMatchmakingConfigurationsOutput
    DescribeMatchmakingInput.add_member(:ticket_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdList, location_name: "TicketIds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeMatchmakingInput.type = Types::DescribeMatchmakingInput
    DescribeMatchmakingOutput.add_member(:ticket_list, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingTicketList, location_name: "TicketList"))
    DescribeMatchmakingOutput.type = Types::DescribeMatchmakingOutput
    DescribeMatchmakingRuleSetsInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRuleSetNameList, location_name: "Names"))
    DescribeMatchmakingRuleSetsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetLimit, location_name: "Limit"))
    DescribeMatchmakingRuleSetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeMatchmakingRuleSetsInput.type = Types::DescribeMatchmakingRuleSetsInput
    DescribeMatchmakingRuleSetsOutput.add_member(:rule_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRuleSetList, location_name: "RuleSets", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeMatchmakingRuleSetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeMatchmakingRuleSetsOutput.type = Types::DescribeMatchmakingRuleSetsOutput
    DescribePlayerSessionsInput.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel, location_name: "GameSessionId"))
    DescribePlayerSessionsInput.add_member(:player_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerId, location_name: "PlayerId"))
    DescribePlayerSessionsInput.add_member(:player_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerSessionId, location_name: "PlayerSessionId"))
    DescribePlayerSessionsInput.add_member(:player_session_status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PlayerSessionStatusFilter"))
    DescribePlayerSessionsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribePlayerSessionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribePlayerSessionsInput.type = Types::DescribePlayerSessionsInput
    DescribePlayerSessionsOutput.add_member(:player_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerSessionList, location_name: "PlayerSessions"))
    DescribePlayerSessionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribePlayerSessionsOutput.type = Types::DescribePlayerSessionsOutput
    DescribeRuntimeConfigurationInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeRuntimeConfigurationInput.type = Types::DescribeRuntimeConfigurationInput
    DescribeRuntimeConfigurationOutput.add_member(:runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeConfiguration, location_name: "RuntimeConfiguration"))
    DescribeRuntimeConfigurationOutput.type = Types::DescribeRuntimeConfigurationOutput
    DescribeScalingPoliciesInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeScalingPoliciesInput.add_member(:status_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingStatusType, location_name: "StatusFilter"))
    DescribeScalingPoliciesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    DescribeScalingPoliciesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeScalingPoliciesInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    DescribeScalingPoliciesInput.type = Types::DescribeScalingPoliciesInput
    DescribeScalingPoliciesOutput.add_member(:scaling_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingPolicyList, location_name: "ScalingPolicies"))
    DescribeScalingPoliciesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    DescribeScalingPoliciesOutput.type = Types::DescribeScalingPoliciesOutput
    DescribeScriptInput.add_member(:script_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptIdOrArn, location_name: "ScriptId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeScriptInput.type = Types::DescribeScriptInput
    DescribeScriptOutput.add_member(:script, ::Smithy::Schema::Shapes::MemberShape.new(target: Script, location_name: "Script"))
    DescribeScriptOutput.type = Types::DescribeScriptOutput
    DescribeVpcPeeringAuthorizationsInput.type = Types::DescribeVpcPeeringAuthorizationsInput
    DescribeVpcPeeringAuthorizationsOutput.add_member(:vpc_peering_authorizations, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcPeeringAuthorizationList, location_name: "VpcPeeringAuthorizations"))
    DescribeVpcPeeringAuthorizationsOutput.type = Types::DescribeVpcPeeringAuthorizationsOutput
    DescribeVpcPeeringConnectionsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    DescribeVpcPeeringConnectionsInput.type = Types::DescribeVpcPeeringConnectionsInput
    DescribeVpcPeeringConnectionsOutput.add_member(:vpc_peering_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcPeeringConnectionList, location_name: "VpcPeeringConnections"))
    DescribeVpcPeeringConnectionsOutput.type = Types::DescribeVpcPeeringConnectionsOutput
    DesiredPlayerSession.add_member(:player_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerId, location_name: "PlayerId"))
    DesiredPlayerSession.add_member(:player_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerData, location_name: "PlayerData"))
    DesiredPlayerSession.type = Types::DesiredPlayerSession
    DesiredPlayerSessionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredPlayerSession)
    EC2InstanceCounts.add_member(:desired, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "DESIRED"))
    EC2InstanceCounts.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MINIMUM"))
    EC2InstanceCounts.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MAXIMUM"))
    EC2InstanceCounts.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "PENDING"))
    EC2InstanceCounts.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "ACTIVE"))
    EC2InstanceCounts.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "IDLE"))
    EC2InstanceCounts.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "TERMINATING"))
    EC2InstanceCounts.type = Types::EC2InstanceCounts
    EC2InstanceLimit.add_member(:ec2_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "EC2InstanceType"))
    EC2InstanceLimit.add_member(:current_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "CurrentInstances"))
    EC2InstanceLimit.add_member(:instance_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "InstanceLimit"))
    EC2InstanceLimit.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    EC2InstanceLimit.type = Types::EC2InstanceLimit
    EC2InstanceLimitList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceLimit)
    EC2InstanceType.add_member(:t2_micro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "t2_micro", traits: {"smithy.api#enumValue" => "t2.micro"}))
    EC2InstanceType.add_member(:t2_small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "t2_small", traits: {"smithy.api#enumValue" => "t2.small"}))
    EC2InstanceType.add_member(:t2_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "t2_medium", traits: {"smithy.api#enumValue" => "t2.medium"}))
    EC2InstanceType.add_member(:t2_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "t2_large", traits: {"smithy.api#enumValue" => "t2.large"}))
    EC2InstanceType.add_member(:c3_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c3_large", traits: {"smithy.api#enumValue" => "c3.large"}))
    EC2InstanceType.add_member(:c3_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c3_xlarge", traits: {"smithy.api#enumValue" => "c3.xlarge"}))
    EC2InstanceType.add_member(:c3_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c3_2xlarge", traits: {"smithy.api#enumValue" => "c3.2xlarge"}))
    EC2InstanceType.add_member(:c3_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c3_4xlarge", traits: {"smithy.api#enumValue" => "c3.4xlarge"}))
    EC2InstanceType.add_member(:c3_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c3_8xlarge", traits: {"smithy.api#enumValue" => "c3.8xlarge"}))
    EC2InstanceType.add_member(:c4_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_large", traits: {"smithy.api#enumValue" => "c4.large"}))
    EC2InstanceType.add_member(:c4_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_xlarge", traits: {"smithy.api#enumValue" => "c4.xlarge"}))
    EC2InstanceType.add_member(:c4_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_2xlarge", traits: {"smithy.api#enumValue" => "c4.2xlarge"}))
    EC2InstanceType.add_member(:c4_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_4xlarge", traits: {"smithy.api#enumValue" => "c4.4xlarge"}))
    EC2InstanceType.add_member(:c4_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_8xlarge", traits: {"smithy.api#enumValue" => "c4.8xlarge"}))
    EC2InstanceType.add_member(:c5_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_large", traits: {"smithy.api#enumValue" => "c5.large"}))
    EC2InstanceType.add_member(:c5_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_xlarge", traits: {"smithy.api#enumValue" => "c5.xlarge"}))
    EC2InstanceType.add_member(:c5_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_2xlarge", traits: {"smithy.api#enumValue" => "c5.2xlarge"}))
    EC2InstanceType.add_member(:c5_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_4xlarge", traits: {"smithy.api#enumValue" => "c5.4xlarge"}))
    EC2InstanceType.add_member(:c5_9xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_9xlarge", traits: {"smithy.api#enumValue" => "c5.9xlarge"}))
    EC2InstanceType.add_member(:c5_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_12xlarge", traits: {"smithy.api#enumValue" => "c5.12xlarge"}))
    EC2InstanceType.add_member(:c5_18xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_18xlarge", traits: {"smithy.api#enumValue" => "c5.18xlarge"}))
    EC2InstanceType.add_member(:c5_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_24xlarge", traits: {"smithy.api#enumValue" => "c5.24xlarge"}))
    EC2InstanceType.add_member(:c5a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_large", traits: {"smithy.api#enumValue" => "c5a.large"}))
    EC2InstanceType.add_member(:c5a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_xlarge", traits: {"smithy.api#enumValue" => "c5a.xlarge"}))
    EC2InstanceType.add_member(:c5a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_2xlarge", traits: {"smithy.api#enumValue" => "c5a.2xlarge"}))
    EC2InstanceType.add_member(:c5a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_4xlarge", traits: {"smithy.api#enumValue" => "c5a.4xlarge"}))
    EC2InstanceType.add_member(:c5a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_8xlarge", traits: {"smithy.api#enumValue" => "c5a.8xlarge"}))
    EC2InstanceType.add_member(:c5a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_12xlarge", traits: {"smithy.api#enumValue" => "c5a.12xlarge"}))
    EC2InstanceType.add_member(:c5a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_16xlarge", traits: {"smithy.api#enumValue" => "c5a.16xlarge"}))
    EC2InstanceType.add_member(:c5a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_24xlarge", traits: {"smithy.api#enumValue" => "c5a.24xlarge"}))
    EC2InstanceType.add_member(:r3_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r3_large", traits: {"smithy.api#enumValue" => "r3.large"}))
    EC2InstanceType.add_member(:r3_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r3_xlarge", traits: {"smithy.api#enumValue" => "r3.xlarge"}))
    EC2InstanceType.add_member(:r3_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r3_2xlarge", traits: {"smithy.api#enumValue" => "r3.2xlarge"}))
    EC2InstanceType.add_member(:r3_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r3_4xlarge", traits: {"smithy.api#enumValue" => "r3.4xlarge"}))
    EC2InstanceType.add_member(:r3_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r3_8xlarge", traits: {"smithy.api#enumValue" => "r3.8xlarge"}))
    EC2InstanceType.add_member(:r4_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_large", traits: {"smithy.api#enumValue" => "r4.large"}))
    EC2InstanceType.add_member(:r4_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_xlarge", traits: {"smithy.api#enumValue" => "r4.xlarge"}))
    EC2InstanceType.add_member(:r4_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_2xlarge", traits: {"smithy.api#enumValue" => "r4.2xlarge"}))
    EC2InstanceType.add_member(:r4_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_4xlarge", traits: {"smithy.api#enumValue" => "r4.4xlarge"}))
    EC2InstanceType.add_member(:r4_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_8xlarge", traits: {"smithy.api#enumValue" => "r4.8xlarge"}))
    EC2InstanceType.add_member(:r4_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_16xlarge", traits: {"smithy.api#enumValue" => "r4.16xlarge"}))
    EC2InstanceType.add_member(:r5_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_large", traits: {"smithy.api#enumValue" => "r5.large"}))
    EC2InstanceType.add_member(:r5_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_xlarge", traits: {"smithy.api#enumValue" => "r5.xlarge"}))
    EC2InstanceType.add_member(:r5_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_2xlarge", traits: {"smithy.api#enumValue" => "r5.2xlarge"}))
    EC2InstanceType.add_member(:r5_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_4xlarge", traits: {"smithy.api#enumValue" => "r5.4xlarge"}))
    EC2InstanceType.add_member(:r5_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_8xlarge", traits: {"smithy.api#enumValue" => "r5.8xlarge"}))
    EC2InstanceType.add_member(:r5_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_12xlarge", traits: {"smithy.api#enumValue" => "r5.12xlarge"}))
    EC2InstanceType.add_member(:r5_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_16xlarge", traits: {"smithy.api#enumValue" => "r5.16xlarge"}))
    EC2InstanceType.add_member(:r5_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_24xlarge", traits: {"smithy.api#enumValue" => "r5.24xlarge"}))
    EC2InstanceType.add_member(:r5a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_large", traits: {"smithy.api#enumValue" => "r5a.large"}))
    EC2InstanceType.add_member(:r5a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_xlarge", traits: {"smithy.api#enumValue" => "r5a.xlarge"}))
    EC2InstanceType.add_member(:r5a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_2xlarge", traits: {"smithy.api#enumValue" => "r5a.2xlarge"}))
    EC2InstanceType.add_member(:r5a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_4xlarge", traits: {"smithy.api#enumValue" => "r5a.4xlarge"}))
    EC2InstanceType.add_member(:r5a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_8xlarge", traits: {"smithy.api#enumValue" => "r5a.8xlarge"}))
    EC2InstanceType.add_member(:r5a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_12xlarge", traits: {"smithy.api#enumValue" => "r5a.12xlarge"}))
    EC2InstanceType.add_member(:r5a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_16xlarge", traits: {"smithy.api#enumValue" => "r5a.16xlarge"}))
    EC2InstanceType.add_member(:r5a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_24xlarge", traits: {"smithy.api#enumValue" => "r5a.24xlarge"}))
    EC2InstanceType.add_member(:m3_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m3_medium", traits: {"smithy.api#enumValue" => "m3.medium"}))
    EC2InstanceType.add_member(:m3_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m3_large", traits: {"smithy.api#enumValue" => "m3.large"}))
    EC2InstanceType.add_member(:m3_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m3_xlarge", traits: {"smithy.api#enumValue" => "m3.xlarge"}))
    EC2InstanceType.add_member(:m3_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m3_2xlarge", traits: {"smithy.api#enumValue" => "m3.2xlarge"}))
    EC2InstanceType.add_member(:m4_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_large", traits: {"smithy.api#enumValue" => "m4.large"}))
    EC2InstanceType.add_member(:m4_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_xlarge", traits: {"smithy.api#enumValue" => "m4.xlarge"}))
    EC2InstanceType.add_member(:m4_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_2xlarge", traits: {"smithy.api#enumValue" => "m4.2xlarge"}))
    EC2InstanceType.add_member(:m4_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_4xlarge", traits: {"smithy.api#enumValue" => "m4.4xlarge"}))
    EC2InstanceType.add_member(:m4_10xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_10xlarge", traits: {"smithy.api#enumValue" => "m4.10xlarge"}))
    EC2InstanceType.add_member(:m5_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_large", traits: {"smithy.api#enumValue" => "m5.large"}))
    EC2InstanceType.add_member(:m5_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_xlarge", traits: {"smithy.api#enumValue" => "m5.xlarge"}))
    EC2InstanceType.add_member(:m5_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_2xlarge", traits: {"smithy.api#enumValue" => "m5.2xlarge"}))
    EC2InstanceType.add_member(:m5_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_4xlarge", traits: {"smithy.api#enumValue" => "m5.4xlarge"}))
    EC2InstanceType.add_member(:m5_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_8xlarge", traits: {"smithy.api#enumValue" => "m5.8xlarge"}))
    EC2InstanceType.add_member(:m5_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_12xlarge", traits: {"smithy.api#enumValue" => "m5.12xlarge"}))
    EC2InstanceType.add_member(:m5_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_16xlarge", traits: {"smithy.api#enumValue" => "m5.16xlarge"}))
    EC2InstanceType.add_member(:m5_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_24xlarge", traits: {"smithy.api#enumValue" => "m5.24xlarge"}))
    EC2InstanceType.add_member(:m5a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_large", traits: {"smithy.api#enumValue" => "m5a.large"}))
    EC2InstanceType.add_member(:m5a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_xlarge", traits: {"smithy.api#enumValue" => "m5a.xlarge"}))
    EC2InstanceType.add_member(:m5a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_2xlarge", traits: {"smithy.api#enumValue" => "m5a.2xlarge"}))
    EC2InstanceType.add_member(:m5a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_4xlarge", traits: {"smithy.api#enumValue" => "m5a.4xlarge"}))
    EC2InstanceType.add_member(:m5a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_8xlarge", traits: {"smithy.api#enumValue" => "m5a.8xlarge"}))
    EC2InstanceType.add_member(:m5a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_12xlarge", traits: {"smithy.api#enumValue" => "m5a.12xlarge"}))
    EC2InstanceType.add_member(:m5a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_16xlarge", traits: {"smithy.api#enumValue" => "m5a.16xlarge"}))
    EC2InstanceType.add_member(:m5a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_24xlarge", traits: {"smithy.api#enumValue" => "m5a.24xlarge"}))
    EC2InstanceType.add_member(:c5d_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5d_large", traits: {"smithy.api#enumValue" => "c5d.large"}))
    EC2InstanceType.add_member(:c5d_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5d_xlarge", traits: {"smithy.api#enumValue" => "c5d.xlarge"}))
    EC2InstanceType.add_member(:c5d_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5d_2xlarge", traits: {"smithy.api#enumValue" => "c5d.2xlarge"}))
    EC2InstanceType.add_member(:c5d_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5d_4xlarge", traits: {"smithy.api#enumValue" => "c5d.4xlarge"}))
    EC2InstanceType.add_member(:c5d_9xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5d_9xlarge", traits: {"smithy.api#enumValue" => "c5d.9xlarge"}))
    EC2InstanceType.add_member(:c5d_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5d_12xlarge", traits: {"smithy.api#enumValue" => "c5d.12xlarge"}))
    EC2InstanceType.add_member(:c5d_18xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5d_18xlarge", traits: {"smithy.api#enumValue" => "c5d.18xlarge"}))
    EC2InstanceType.add_member(:c5d_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5d_24xlarge", traits: {"smithy.api#enumValue" => "c5d.24xlarge"}))
    EC2InstanceType.add_member(:c6a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6a_large", traits: {"smithy.api#enumValue" => "c6a.large"}))
    EC2InstanceType.add_member(:c6a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6a_xlarge", traits: {"smithy.api#enumValue" => "c6a.xlarge"}))
    EC2InstanceType.add_member(:c6a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6a_2xlarge", traits: {"smithy.api#enumValue" => "c6a.2xlarge"}))
    EC2InstanceType.add_member(:c6a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6a_4xlarge", traits: {"smithy.api#enumValue" => "c6a.4xlarge"}))
    EC2InstanceType.add_member(:c6a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6a_8xlarge", traits: {"smithy.api#enumValue" => "c6a.8xlarge"}))
    EC2InstanceType.add_member(:c6a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6a_12xlarge", traits: {"smithy.api#enumValue" => "c6a.12xlarge"}))
    EC2InstanceType.add_member(:c6a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6a_16xlarge", traits: {"smithy.api#enumValue" => "c6a.16xlarge"}))
    EC2InstanceType.add_member(:c6a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6a_24xlarge", traits: {"smithy.api#enumValue" => "c6a.24xlarge"}))
    EC2InstanceType.add_member(:c6i_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6i_large", traits: {"smithy.api#enumValue" => "c6i.large"}))
    EC2InstanceType.add_member(:c6i_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6i_xlarge", traits: {"smithy.api#enumValue" => "c6i.xlarge"}))
    EC2InstanceType.add_member(:c6i_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6i_2xlarge", traits: {"smithy.api#enumValue" => "c6i.2xlarge"}))
    EC2InstanceType.add_member(:c6i_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6i_4xlarge", traits: {"smithy.api#enumValue" => "c6i.4xlarge"}))
    EC2InstanceType.add_member(:c6i_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6i_8xlarge", traits: {"smithy.api#enumValue" => "c6i.8xlarge"}))
    EC2InstanceType.add_member(:c6i_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6i_12xlarge", traits: {"smithy.api#enumValue" => "c6i.12xlarge"}))
    EC2InstanceType.add_member(:c6i_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6i_16xlarge", traits: {"smithy.api#enumValue" => "c6i.16xlarge"}))
    EC2InstanceType.add_member(:c6i_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6i_24xlarge", traits: {"smithy.api#enumValue" => "c6i.24xlarge"}))
    EC2InstanceType.add_member(:r5d_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5d_large", traits: {"smithy.api#enumValue" => "r5d.large"}))
    EC2InstanceType.add_member(:r5d_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5d_xlarge", traits: {"smithy.api#enumValue" => "r5d.xlarge"}))
    EC2InstanceType.add_member(:r5d_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5d_2xlarge", traits: {"smithy.api#enumValue" => "r5d.2xlarge"}))
    EC2InstanceType.add_member(:r5d_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5d_4xlarge", traits: {"smithy.api#enumValue" => "r5d.4xlarge"}))
    EC2InstanceType.add_member(:r5d_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5d_8xlarge", traits: {"smithy.api#enumValue" => "r5d.8xlarge"}))
    EC2InstanceType.add_member(:r5d_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5d_12xlarge", traits: {"smithy.api#enumValue" => "r5d.12xlarge"}))
    EC2InstanceType.add_member(:r5d_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5d_16xlarge", traits: {"smithy.api#enumValue" => "r5d.16xlarge"}))
    EC2InstanceType.add_member(:r5d_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5d_24xlarge", traits: {"smithy.api#enumValue" => "r5d.24xlarge"}))
    EC2InstanceType.add_member(:m6g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_medium", traits: {"smithy.api#enumValue" => "m6g.medium"}))
    EC2InstanceType.add_member(:m6g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_large", traits: {"smithy.api#enumValue" => "m6g.large"}))
    EC2InstanceType.add_member(:m6g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_xlarge", traits: {"smithy.api#enumValue" => "m6g.xlarge"}))
    EC2InstanceType.add_member(:m6g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_2xlarge", traits: {"smithy.api#enumValue" => "m6g.2xlarge"}))
    EC2InstanceType.add_member(:m6g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_4xlarge", traits: {"smithy.api#enumValue" => "m6g.4xlarge"}))
    EC2InstanceType.add_member(:m6g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_8xlarge", traits: {"smithy.api#enumValue" => "m6g.8xlarge"}))
    EC2InstanceType.add_member(:m6g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_12xlarge", traits: {"smithy.api#enumValue" => "m6g.12xlarge"}))
    EC2InstanceType.add_member(:m6g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_16xlarge", traits: {"smithy.api#enumValue" => "m6g.16xlarge"}))
    EC2InstanceType.add_member(:c6g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_medium", traits: {"smithy.api#enumValue" => "c6g.medium"}))
    EC2InstanceType.add_member(:c6g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_large", traits: {"smithy.api#enumValue" => "c6g.large"}))
    EC2InstanceType.add_member(:c6g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_xlarge", traits: {"smithy.api#enumValue" => "c6g.xlarge"}))
    EC2InstanceType.add_member(:c6g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_2xlarge", traits: {"smithy.api#enumValue" => "c6g.2xlarge"}))
    EC2InstanceType.add_member(:c6g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_4xlarge", traits: {"smithy.api#enumValue" => "c6g.4xlarge"}))
    EC2InstanceType.add_member(:c6g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_8xlarge", traits: {"smithy.api#enumValue" => "c6g.8xlarge"}))
    EC2InstanceType.add_member(:c6g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_12xlarge", traits: {"smithy.api#enumValue" => "c6g.12xlarge"}))
    EC2InstanceType.add_member(:c6g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_16xlarge", traits: {"smithy.api#enumValue" => "c6g.16xlarge"}))
    EC2InstanceType.add_member(:r6g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_medium", traits: {"smithy.api#enumValue" => "r6g.medium"}))
    EC2InstanceType.add_member(:r6g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_large", traits: {"smithy.api#enumValue" => "r6g.large"}))
    EC2InstanceType.add_member(:r6g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_xlarge", traits: {"smithy.api#enumValue" => "r6g.xlarge"}))
    EC2InstanceType.add_member(:r6g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_2xlarge", traits: {"smithy.api#enumValue" => "r6g.2xlarge"}))
    EC2InstanceType.add_member(:r6g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_4xlarge", traits: {"smithy.api#enumValue" => "r6g.4xlarge"}))
    EC2InstanceType.add_member(:r6g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_8xlarge", traits: {"smithy.api#enumValue" => "r6g.8xlarge"}))
    EC2InstanceType.add_member(:r6g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_12xlarge", traits: {"smithy.api#enumValue" => "r6g.12xlarge"}))
    EC2InstanceType.add_member(:r6g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_16xlarge", traits: {"smithy.api#enumValue" => "r6g.16xlarge"}))
    EC2InstanceType.add_member(:c6gn_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gn_medium", traits: {"smithy.api#enumValue" => "c6gn.medium"}))
    EC2InstanceType.add_member(:c6gn_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gn_large", traits: {"smithy.api#enumValue" => "c6gn.large"}))
    EC2InstanceType.add_member(:c6gn_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gn_xlarge", traits: {"smithy.api#enumValue" => "c6gn.xlarge"}))
    EC2InstanceType.add_member(:c6gn_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gn_2xlarge", traits: {"smithy.api#enumValue" => "c6gn.2xlarge"}))
    EC2InstanceType.add_member(:c6gn_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gn_4xlarge", traits: {"smithy.api#enumValue" => "c6gn.4xlarge"}))
    EC2InstanceType.add_member(:c6gn_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gn_8xlarge", traits: {"smithy.api#enumValue" => "c6gn.8xlarge"}))
    EC2InstanceType.add_member(:c6gn_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gn_12xlarge", traits: {"smithy.api#enumValue" => "c6gn.12xlarge"}))
    EC2InstanceType.add_member(:c6gn_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gn_16xlarge", traits: {"smithy.api#enumValue" => "c6gn.16xlarge"}))
    EC2InstanceType.add_member(:c7g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7g_medium", traits: {"smithy.api#enumValue" => "c7g.medium"}))
    EC2InstanceType.add_member(:c7g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7g_large", traits: {"smithy.api#enumValue" => "c7g.large"}))
    EC2InstanceType.add_member(:c7g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7g_xlarge", traits: {"smithy.api#enumValue" => "c7g.xlarge"}))
    EC2InstanceType.add_member(:c7g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7g_2xlarge", traits: {"smithy.api#enumValue" => "c7g.2xlarge"}))
    EC2InstanceType.add_member(:c7g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7g_4xlarge", traits: {"smithy.api#enumValue" => "c7g.4xlarge"}))
    EC2InstanceType.add_member(:c7g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7g_8xlarge", traits: {"smithy.api#enumValue" => "c7g.8xlarge"}))
    EC2InstanceType.add_member(:c7g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7g_12xlarge", traits: {"smithy.api#enumValue" => "c7g.12xlarge"}))
    EC2InstanceType.add_member(:c7g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7g_16xlarge", traits: {"smithy.api#enumValue" => "c7g.16xlarge"}))
    EC2InstanceType.add_member(:r7g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7g_medium", traits: {"smithy.api#enumValue" => "r7g.medium"}))
    EC2InstanceType.add_member(:r7g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7g_large", traits: {"smithy.api#enumValue" => "r7g.large"}))
    EC2InstanceType.add_member(:r7g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7g_xlarge", traits: {"smithy.api#enumValue" => "r7g.xlarge"}))
    EC2InstanceType.add_member(:r7g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7g_2xlarge", traits: {"smithy.api#enumValue" => "r7g.2xlarge"}))
    EC2InstanceType.add_member(:r7g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7g_4xlarge", traits: {"smithy.api#enumValue" => "r7g.4xlarge"}))
    EC2InstanceType.add_member(:r7g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7g_8xlarge", traits: {"smithy.api#enumValue" => "r7g.8xlarge"}))
    EC2InstanceType.add_member(:r7g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7g_12xlarge", traits: {"smithy.api#enumValue" => "r7g.12xlarge"}))
    EC2InstanceType.add_member(:r7g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7g_16xlarge", traits: {"smithy.api#enumValue" => "r7g.16xlarge"}))
    EC2InstanceType.add_member(:m7g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7g_medium", traits: {"smithy.api#enumValue" => "m7g.medium"}))
    EC2InstanceType.add_member(:m7g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7g_large", traits: {"smithy.api#enumValue" => "m7g.large"}))
    EC2InstanceType.add_member(:m7g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7g_xlarge", traits: {"smithy.api#enumValue" => "m7g.xlarge"}))
    EC2InstanceType.add_member(:m7g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7g_2xlarge", traits: {"smithy.api#enumValue" => "m7g.2xlarge"}))
    EC2InstanceType.add_member(:m7g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7g_4xlarge", traits: {"smithy.api#enumValue" => "m7g.4xlarge"}))
    EC2InstanceType.add_member(:m7g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7g_8xlarge", traits: {"smithy.api#enumValue" => "m7g.8xlarge"}))
    EC2InstanceType.add_member(:m7g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7g_12xlarge", traits: {"smithy.api#enumValue" => "m7g.12xlarge"}))
    EC2InstanceType.add_member(:m7g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7g_16xlarge", traits: {"smithy.api#enumValue" => "m7g.16xlarge"}))
    EC2InstanceType.add_member(:g5g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "g5g_xlarge", traits: {"smithy.api#enumValue" => "g5g.xlarge"}))
    EC2InstanceType.add_member(:g5g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "g5g_2xlarge", traits: {"smithy.api#enumValue" => "g5g.2xlarge"}))
    EC2InstanceType.add_member(:g5g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "g5g_4xlarge", traits: {"smithy.api#enumValue" => "g5g.4xlarge"}))
    EC2InstanceType.add_member(:g5g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "g5g_8xlarge", traits: {"smithy.api#enumValue" => "g5g.8xlarge"}))
    EC2InstanceType.add_member(:g5g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "g5g_16xlarge", traits: {"smithy.api#enumValue" => "g5g.16xlarge"}))
    EC2InstanceType.add_member(:r6i_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6i_large", traits: {"smithy.api#enumValue" => "r6i.large"}))
    EC2InstanceType.add_member(:r6i_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6i_xlarge", traits: {"smithy.api#enumValue" => "r6i.xlarge"}))
    EC2InstanceType.add_member(:r6i_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6i_2xlarge", traits: {"smithy.api#enumValue" => "r6i.2xlarge"}))
    EC2InstanceType.add_member(:r6i_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6i_4xlarge", traits: {"smithy.api#enumValue" => "r6i.4xlarge"}))
    EC2InstanceType.add_member(:r6i_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6i_8xlarge", traits: {"smithy.api#enumValue" => "r6i.8xlarge"}))
    EC2InstanceType.add_member(:r6i_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6i_12xlarge", traits: {"smithy.api#enumValue" => "r6i.12xlarge"}))
    EC2InstanceType.add_member(:r6i_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6i_16xlarge", traits: {"smithy.api#enumValue" => "r6i.16xlarge"}))
    EC2InstanceType.add_member(:c6gd_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gd_medium", traits: {"smithy.api#enumValue" => "c6gd.medium"}))
    EC2InstanceType.add_member(:c6gd_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gd_large", traits: {"smithy.api#enumValue" => "c6gd.large"}))
    EC2InstanceType.add_member(:c6gd_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gd_xlarge", traits: {"smithy.api#enumValue" => "c6gd.xlarge"}))
    EC2InstanceType.add_member(:c6gd_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gd_2xlarge", traits: {"smithy.api#enumValue" => "c6gd.2xlarge"}))
    EC2InstanceType.add_member(:c6gd_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gd_4xlarge", traits: {"smithy.api#enumValue" => "c6gd.4xlarge"}))
    EC2InstanceType.add_member(:c6gd_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gd_8xlarge", traits: {"smithy.api#enumValue" => "c6gd.8xlarge"}))
    EC2InstanceType.add_member(:c6gd_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gd_12xlarge", traits: {"smithy.api#enumValue" => "c6gd.12xlarge"}))
    EC2InstanceType.add_member(:c6gd_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6gd_16xlarge", traits: {"smithy.api#enumValue" => "c6gd.16xlarge"}))
    EC2InstanceType.add_member(:c6in_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6in_large", traits: {"smithy.api#enumValue" => "c6in.large"}))
    EC2InstanceType.add_member(:c6in_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6in_xlarge", traits: {"smithy.api#enumValue" => "c6in.xlarge"}))
    EC2InstanceType.add_member(:c6in_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6in_2xlarge", traits: {"smithy.api#enumValue" => "c6in.2xlarge"}))
    EC2InstanceType.add_member(:c6in_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6in_4xlarge", traits: {"smithy.api#enumValue" => "c6in.4xlarge"}))
    EC2InstanceType.add_member(:c6in_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6in_8xlarge", traits: {"smithy.api#enumValue" => "c6in.8xlarge"}))
    EC2InstanceType.add_member(:c6in_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6in_12xlarge", traits: {"smithy.api#enumValue" => "c6in.12xlarge"}))
    EC2InstanceType.add_member(:c6in_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6in_16xlarge", traits: {"smithy.api#enumValue" => "c6in.16xlarge"}))
    EC2InstanceType.add_member(:c7a_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7a_medium", traits: {"smithy.api#enumValue" => "c7a.medium"}))
    EC2InstanceType.add_member(:c7a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7a_large", traits: {"smithy.api#enumValue" => "c7a.large"}))
    EC2InstanceType.add_member(:c7a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7a_xlarge", traits: {"smithy.api#enumValue" => "c7a.xlarge"}))
    EC2InstanceType.add_member(:c7a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7a_2xlarge", traits: {"smithy.api#enumValue" => "c7a.2xlarge"}))
    EC2InstanceType.add_member(:c7a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7a_4xlarge", traits: {"smithy.api#enumValue" => "c7a.4xlarge"}))
    EC2InstanceType.add_member(:c7a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7a_8xlarge", traits: {"smithy.api#enumValue" => "c7a.8xlarge"}))
    EC2InstanceType.add_member(:c7a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7a_12xlarge", traits: {"smithy.api#enumValue" => "c7a.12xlarge"}))
    EC2InstanceType.add_member(:c7a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7a_16xlarge", traits: {"smithy.api#enumValue" => "c7a.16xlarge"}))
    EC2InstanceType.add_member(:c7gd_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gd_medium", traits: {"smithy.api#enumValue" => "c7gd.medium"}))
    EC2InstanceType.add_member(:c7gd_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gd_large", traits: {"smithy.api#enumValue" => "c7gd.large"}))
    EC2InstanceType.add_member(:c7gd_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gd_xlarge", traits: {"smithy.api#enumValue" => "c7gd.xlarge"}))
    EC2InstanceType.add_member(:c7gd_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gd_2xlarge", traits: {"smithy.api#enumValue" => "c7gd.2xlarge"}))
    EC2InstanceType.add_member(:c7gd_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gd_4xlarge", traits: {"smithy.api#enumValue" => "c7gd.4xlarge"}))
    EC2InstanceType.add_member(:c7gd_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gd_8xlarge", traits: {"smithy.api#enumValue" => "c7gd.8xlarge"}))
    EC2InstanceType.add_member(:c7gd_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gd_12xlarge", traits: {"smithy.api#enumValue" => "c7gd.12xlarge"}))
    EC2InstanceType.add_member(:c7gd_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gd_16xlarge", traits: {"smithy.api#enumValue" => "c7gd.16xlarge"}))
    EC2InstanceType.add_member(:c7gn_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gn_medium", traits: {"smithy.api#enumValue" => "c7gn.medium"}))
    EC2InstanceType.add_member(:c7gn_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gn_large", traits: {"smithy.api#enumValue" => "c7gn.large"}))
    EC2InstanceType.add_member(:c7gn_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gn_xlarge", traits: {"smithy.api#enumValue" => "c7gn.xlarge"}))
    EC2InstanceType.add_member(:c7gn_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gn_2xlarge", traits: {"smithy.api#enumValue" => "c7gn.2xlarge"}))
    EC2InstanceType.add_member(:c7gn_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gn_4xlarge", traits: {"smithy.api#enumValue" => "c7gn.4xlarge"}))
    EC2InstanceType.add_member(:c7gn_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gn_8xlarge", traits: {"smithy.api#enumValue" => "c7gn.8xlarge"}))
    EC2InstanceType.add_member(:c7gn_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gn_12xlarge", traits: {"smithy.api#enumValue" => "c7gn.12xlarge"}))
    EC2InstanceType.add_member(:c7gn_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7gn_16xlarge", traits: {"smithy.api#enumValue" => "c7gn.16xlarge"}))
    EC2InstanceType.add_member(:c7i_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7i_large", traits: {"smithy.api#enumValue" => "c7i.large"}))
    EC2InstanceType.add_member(:c7i_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7i_xlarge", traits: {"smithy.api#enumValue" => "c7i.xlarge"}))
    EC2InstanceType.add_member(:c7i_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7i_2xlarge", traits: {"smithy.api#enumValue" => "c7i.2xlarge"}))
    EC2InstanceType.add_member(:c7i_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7i_4xlarge", traits: {"smithy.api#enumValue" => "c7i.4xlarge"}))
    EC2InstanceType.add_member(:c7i_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7i_8xlarge", traits: {"smithy.api#enumValue" => "c7i.8xlarge"}))
    EC2InstanceType.add_member(:c7i_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7i_12xlarge", traits: {"smithy.api#enumValue" => "c7i.12xlarge"}))
    EC2InstanceType.add_member(:c7i_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7i_16xlarge", traits: {"smithy.api#enumValue" => "c7i.16xlarge"}))
    EC2InstanceType.add_member(:m6a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6a_large", traits: {"smithy.api#enumValue" => "m6a.large"}))
    EC2InstanceType.add_member(:m6a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6a_xlarge", traits: {"smithy.api#enumValue" => "m6a.xlarge"}))
    EC2InstanceType.add_member(:m6a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6a_2xlarge", traits: {"smithy.api#enumValue" => "m6a.2xlarge"}))
    EC2InstanceType.add_member(:m6a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6a_4xlarge", traits: {"smithy.api#enumValue" => "m6a.4xlarge"}))
    EC2InstanceType.add_member(:m6a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6a_8xlarge", traits: {"smithy.api#enumValue" => "m6a.8xlarge"}))
    EC2InstanceType.add_member(:m6a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6a_12xlarge", traits: {"smithy.api#enumValue" => "m6a.12xlarge"}))
    EC2InstanceType.add_member(:m6a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6a_16xlarge", traits: {"smithy.api#enumValue" => "m6a.16xlarge"}))
    EC2InstanceType.add_member(:m6gd_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6gd_medium", traits: {"smithy.api#enumValue" => "m6gd.medium"}))
    EC2InstanceType.add_member(:m6gd_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6gd_large", traits: {"smithy.api#enumValue" => "m6gd.large"}))
    EC2InstanceType.add_member(:m6gd_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6gd_xlarge", traits: {"smithy.api#enumValue" => "m6gd.xlarge"}))
    EC2InstanceType.add_member(:m6gd_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6gd_2xlarge", traits: {"smithy.api#enumValue" => "m6gd.2xlarge"}))
    EC2InstanceType.add_member(:m6gd_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6gd_4xlarge", traits: {"smithy.api#enumValue" => "m6gd.4xlarge"}))
    EC2InstanceType.add_member(:m6gd_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6gd_8xlarge", traits: {"smithy.api#enumValue" => "m6gd.8xlarge"}))
    EC2InstanceType.add_member(:m6gd_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6gd_12xlarge", traits: {"smithy.api#enumValue" => "m6gd.12xlarge"}))
    EC2InstanceType.add_member(:m6gd_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6gd_16xlarge", traits: {"smithy.api#enumValue" => "m6gd.16xlarge"}))
    EC2InstanceType.add_member(:m6i_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6i_large", traits: {"smithy.api#enumValue" => "m6i.large"}))
    EC2InstanceType.add_member(:m6i_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6i_xlarge", traits: {"smithy.api#enumValue" => "m6i.xlarge"}))
    EC2InstanceType.add_member(:m6i_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6i_2xlarge", traits: {"smithy.api#enumValue" => "m6i.2xlarge"}))
    EC2InstanceType.add_member(:m6i_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6i_4xlarge", traits: {"smithy.api#enumValue" => "m6i.4xlarge"}))
    EC2InstanceType.add_member(:m6i_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6i_8xlarge", traits: {"smithy.api#enumValue" => "m6i.8xlarge"}))
    EC2InstanceType.add_member(:m6i_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6i_12xlarge", traits: {"smithy.api#enumValue" => "m6i.12xlarge"}))
    EC2InstanceType.add_member(:m6i_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6i_16xlarge", traits: {"smithy.api#enumValue" => "m6i.16xlarge"}))
    EC2InstanceType.add_member(:m7a_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7a_medium", traits: {"smithy.api#enumValue" => "m7a.medium"}))
    EC2InstanceType.add_member(:m7a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7a_large", traits: {"smithy.api#enumValue" => "m7a.large"}))
    EC2InstanceType.add_member(:m7a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7a_xlarge", traits: {"smithy.api#enumValue" => "m7a.xlarge"}))
    EC2InstanceType.add_member(:m7a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7a_2xlarge", traits: {"smithy.api#enumValue" => "m7a.2xlarge"}))
    EC2InstanceType.add_member(:m7a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7a_4xlarge", traits: {"smithy.api#enumValue" => "m7a.4xlarge"}))
    EC2InstanceType.add_member(:m7a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7a_8xlarge", traits: {"smithy.api#enumValue" => "m7a.8xlarge"}))
    EC2InstanceType.add_member(:m7a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7a_12xlarge", traits: {"smithy.api#enumValue" => "m7a.12xlarge"}))
    EC2InstanceType.add_member(:m7a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7a_16xlarge", traits: {"smithy.api#enumValue" => "m7a.16xlarge"}))
    EC2InstanceType.add_member(:m7gd_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7gd_medium", traits: {"smithy.api#enumValue" => "m7gd.medium"}))
    EC2InstanceType.add_member(:m7gd_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7gd_large", traits: {"smithy.api#enumValue" => "m7gd.large"}))
    EC2InstanceType.add_member(:m7gd_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7gd_xlarge", traits: {"smithy.api#enumValue" => "m7gd.xlarge"}))
    EC2InstanceType.add_member(:m7gd_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7gd_2xlarge", traits: {"smithy.api#enumValue" => "m7gd.2xlarge"}))
    EC2InstanceType.add_member(:m7gd_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7gd_4xlarge", traits: {"smithy.api#enumValue" => "m7gd.4xlarge"}))
    EC2InstanceType.add_member(:m7gd_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7gd_8xlarge", traits: {"smithy.api#enumValue" => "m7gd.8xlarge"}))
    EC2InstanceType.add_member(:m7gd_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7gd_12xlarge", traits: {"smithy.api#enumValue" => "m7gd.12xlarge"}))
    EC2InstanceType.add_member(:m7gd_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7gd_16xlarge", traits: {"smithy.api#enumValue" => "m7gd.16xlarge"}))
    EC2InstanceType.add_member(:m7i_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7i_large", traits: {"smithy.api#enumValue" => "m7i.large"}))
    EC2InstanceType.add_member(:m7i_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7i_xlarge", traits: {"smithy.api#enumValue" => "m7i.xlarge"}))
    EC2InstanceType.add_member(:m7i_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7i_2xlarge", traits: {"smithy.api#enumValue" => "m7i.2xlarge"}))
    EC2InstanceType.add_member(:m7i_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7i_4xlarge", traits: {"smithy.api#enumValue" => "m7i.4xlarge"}))
    EC2InstanceType.add_member(:m7i_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7i_8xlarge", traits: {"smithy.api#enumValue" => "m7i.8xlarge"}))
    EC2InstanceType.add_member(:m7i_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7i_12xlarge", traits: {"smithy.api#enumValue" => "m7i.12xlarge"}))
    EC2InstanceType.add_member(:m7i_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7i_16xlarge", traits: {"smithy.api#enumValue" => "m7i.16xlarge"}))
    EC2InstanceType.add_member(:r6gd_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6gd_medium", traits: {"smithy.api#enumValue" => "r6gd.medium"}))
    EC2InstanceType.add_member(:r6gd_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6gd_large", traits: {"smithy.api#enumValue" => "r6gd.large"}))
    EC2InstanceType.add_member(:r6gd_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6gd_xlarge", traits: {"smithy.api#enumValue" => "r6gd.xlarge"}))
    EC2InstanceType.add_member(:r6gd_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6gd_2xlarge", traits: {"smithy.api#enumValue" => "r6gd.2xlarge"}))
    EC2InstanceType.add_member(:r6gd_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6gd_4xlarge", traits: {"smithy.api#enumValue" => "r6gd.4xlarge"}))
    EC2InstanceType.add_member(:r6gd_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6gd_8xlarge", traits: {"smithy.api#enumValue" => "r6gd.8xlarge"}))
    EC2InstanceType.add_member(:r6gd_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6gd_12xlarge", traits: {"smithy.api#enumValue" => "r6gd.12xlarge"}))
    EC2InstanceType.add_member(:r6gd_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6gd_16xlarge", traits: {"smithy.api#enumValue" => "r6gd.16xlarge"}))
    EC2InstanceType.add_member(:r7a_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7a_medium", traits: {"smithy.api#enumValue" => "r7a.medium"}))
    EC2InstanceType.add_member(:r7a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7a_large", traits: {"smithy.api#enumValue" => "r7a.large"}))
    EC2InstanceType.add_member(:r7a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7a_xlarge", traits: {"smithy.api#enumValue" => "r7a.xlarge"}))
    EC2InstanceType.add_member(:r7a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7a_2xlarge", traits: {"smithy.api#enumValue" => "r7a.2xlarge"}))
    EC2InstanceType.add_member(:r7a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7a_4xlarge", traits: {"smithy.api#enumValue" => "r7a.4xlarge"}))
    EC2InstanceType.add_member(:r7a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7a_8xlarge", traits: {"smithy.api#enumValue" => "r7a.8xlarge"}))
    EC2InstanceType.add_member(:r7a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7a_12xlarge", traits: {"smithy.api#enumValue" => "r7a.12xlarge"}))
    EC2InstanceType.add_member(:r7a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7a_16xlarge", traits: {"smithy.api#enumValue" => "r7a.16xlarge"}))
    EC2InstanceType.add_member(:r7gd_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7gd_medium", traits: {"smithy.api#enumValue" => "r7gd.medium"}))
    EC2InstanceType.add_member(:r7gd_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7gd_large", traits: {"smithy.api#enumValue" => "r7gd.large"}))
    EC2InstanceType.add_member(:r7gd_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7gd_xlarge", traits: {"smithy.api#enumValue" => "r7gd.xlarge"}))
    EC2InstanceType.add_member(:r7gd_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7gd_2xlarge", traits: {"smithy.api#enumValue" => "r7gd.2xlarge"}))
    EC2InstanceType.add_member(:r7gd_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7gd_4xlarge", traits: {"smithy.api#enumValue" => "r7gd.4xlarge"}))
    EC2InstanceType.add_member(:r7gd_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7gd_8xlarge", traits: {"smithy.api#enumValue" => "r7gd.8xlarge"}))
    EC2InstanceType.add_member(:r7gd_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7gd_12xlarge", traits: {"smithy.api#enumValue" => "r7gd.12xlarge"}))
    EC2InstanceType.add_member(:r7gd_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7gd_16xlarge", traits: {"smithy.api#enumValue" => "r7gd.16xlarge"}))
    EC2InstanceType.add_member(:r7i_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7i_large", traits: {"smithy.api#enumValue" => "r7i.large"}))
    EC2InstanceType.add_member(:r7i_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7i_xlarge", traits: {"smithy.api#enumValue" => "r7i.xlarge"}))
    EC2InstanceType.add_member(:r7i_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7i_2xlarge", traits: {"smithy.api#enumValue" => "r7i.2xlarge"}))
    EC2InstanceType.add_member(:r7i_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7i_4xlarge", traits: {"smithy.api#enumValue" => "r7i.4xlarge"}))
    EC2InstanceType.add_member(:r7i_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7i_8xlarge", traits: {"smithy.api#enumValue" => "r7i.8xlarge"}))
    EC2InstanceType.add_member(:r7i_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7i_12xlarge", traits: {"smithy.api#enumValue" => "r7i.12xlarge"}))
    EC2InstanceType.add_member(:r7i_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7i_16xlarge", traits: {"smithy.api#enumValue" => "r7i.16xlarge"}))
    EC2InstanceType.add_member(:r7i_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7i_24xlarge", traits: {"smithy.api#enumValue" => "r7i.24xlarge"}))
    EC2InstanceType.add_member(:r7i_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7i_48xlarge", traits: {"smithy.api#enumValue" => "r7i.48xlarge"}))
    EC2InstanceType.add_member(:c5ad_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5ad_large", traits: {"smithy.api#enumValue" => "c5ad.large"}))
    EC2InstanceType.add_member(:c5ad_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5ad_xlarge", traits: {"smithy.api#enumValue" => "c5ad.xlarge"}))
    EC2InstanceType.add_member(:c5ad_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5ad_2xlarge", traits: {"smithy.api#enumValue" => "c5ad.2xlarge"}))
    EC2InstanceType.add_member(:c5ad_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5ad_4xlarge", traits: {"smithy.api#enumValue" => "c5ad.4xlarge"}))
    EC2InstanceType.add_member(:c5ad_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5ad_8xlarge", traits: {"smithy.api#enumValue" => "c5ad.8xlarge"}))
    EC2InstanceType.add_member(:c5ad_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5ad_12xlarge", traits: {"smithy.api#enumValue" => "c5ad.12xlarge"}))
    EC2InstanceType.add_member(:c5ad_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5ad_16xlarge", traits: {"smithy.api#enumValue" => "c5ad.16xlarge"}))
    EC2InstanceType.add_member(:c5ad_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5ad_24xlarge", traits: {"smithy.api#enumValue" => "c5ad.24xlarge"}))
    EC2InstanceType.add_member(:c5n_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5n_large", traits: {"smithy.api#enumValue" => "c5n.large"}))
    EC2InstanceType.add_member(:c5n_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5n_xlarge", traits: {"smithy.api#enumValue" => "c5n.xlarge"}))
    EC2InstanceType.add_member(:c5n_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5n_2xlarge", traits: {"smithy.api#enumValue" => "c5n.2xlarge"}))
    EC2InstanceType.add_member(:c5n_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5n_4xlarge", traits: {"smithy.api#enumValue" => "c5n.4xlarge"}))
    EC2InstanceType.add_member(:c5n_9xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5n_9xlarge", traits: {"smithy.api#enumValue" => "c5n.9xlarge"}))
    EC2InstanceType.add_member(:c5n_18xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5n_18xlarge", traits: {"smithy.api#enumValue" => "c5n.18xlarge"}))
    EC2InstanceType.add_member(:r5ad_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5ad_large", traits: {"smithy.api#enumValue" => "r5ad.large"}))
    EC2InstanceType.add_member(:r5ad_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5ad_xlarge", traits: {"smithy.api#enumValue" => "r5ad.xlarge"}))
    EC2InstanceType.add_member(:r5ad_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5ad_2xlarge", traits: {"smithy.api#enumValue" => "r5ad.2xlarge"}))
    EC2InstanceType.add_member(:r5ad_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5ad_4xlarge", traits: {"smithy.api#enumValue" => "r5ad.4xlarge"}))
    EC2InstanceType.add_member(:r5ad_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5ad_8xlarge", traits: {"smithy.api#enumValue" => "r5ad.8xlarge"}))
    EC2InstanceType.add_member(:r5ad_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5ad_12xlarge", traits: {"smithy.api#enumValue" => "r5ad.12xlarge"}))
    EC2InstanceType.add_member(:r5ad_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5ad_16xlarge", traits: {"smithy.api#enumValue" => "r5ad.16xlarge"}))
    EC2InstanceType.add_member(:r5ad_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5ad_24xlarge", traits: {"smithy.api#enumValue" => "r5ad.24xlarge"}))
    EC2InstanceType.add_member(:c6id_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6id_large", traits: {"smithy.api#enumValue" => "c6id.large"}))
    EC2InstanceType.add_member(:c6id_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6id_xlarge", traits: {"smithy.api#enumValue" => "c6id.xlarge"}))
    EC2InstanceType.add_member(:c6id_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6id_2xlarge", traits: {"smithy.api#enumValue" => "c6id.2xlarge"}))
    EC2InstanceType.add_member(:c6id_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6id_4xlarge", traits: {"smithy.api#enumValue" => "c6id.4xlarge"}))
    EC2InstanceType.add_member(:c6id_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6id_8xlarge", traits: {"smithy.api#enumValue" => "c6id.8xlarge"}))
    EC2InstanceType.add_member(:c6id_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6id_12xlarge", traits: {"smithy.api#enumValue" => "c6id.12xlarge"}))
    EC2InstanceType.add_member(:c6id_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6id_16xlarge", traits: {"smithy.api#enumValue" => "c6id.16xlarge"}))
    EC2InstanceType.add_member(:c6id_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6id_24xlarge", traits: {"smithy.api#enumValue" => "c6id.24xlarge"}))
    EC2InstanceType.add_member(:c6id_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6id_32xlarge", traits: {"smithy.api#enumValue" => "c6id.32xlarge"}))
    EC2InstanceType.add_member(:c8g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c8g_medium", traits: {"smithy.api#enumValue" => "c8g.medium"}))
    EC2InstanceType.add_member(:c8g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c8g_large", traits: {"smithy.api#enumValue" => "c8g.large"}))
    EC2InstanceType.add_member(:c8g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c8g_xlarge", traits: {"smithy.api#enumValue" => "c8g.xlarge"}))
    EC2InstanceType.add_member(:c8g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c8g_2xlarge", traits: {"smithy.api#enumValue" => "c8g.2xlarge"}))
    EC2InstanceType.add_member(:c8g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c8g_4xlarge", traits: {"smithy.api#enumValue" => "c8g.4xlarge"}))
    EC2InstanceType.add_member(:c8g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c8g_8xlarge", traits: {"smithy.api#enumValue" => "c8g.8xlarge"}))
    EC2InstanceType.add_member(:c8g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c8g_12xlarge", traits: {"smithy.api#enumValue" => "c8g.12xlarge"}))
    EC2InstanceType.add_member(:c8g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c8g_16xlarge", traits: {"smithy.api#enumValue" => "c8g.16xlarge"}))
    EC2InstanceType.add_member(:c8g_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c8g_24xlarge", traits: {"smithy.api#enumValue" => "c8g.24xlarge"}))
    EC2InstanceType.add_member(:c8g_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c8g_48xlarge", traits: {"smithy.api#enumValue" => "c8g.48xlarge"}))
    EC2InstanceType.add_member(:m5ad_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5ad_large", traits: {"smithy.api#enumValue" => "m5ad.large"}))
    EC2InstanceType.add_member(:m5ad_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5ad_xlarge", traits: {"smithy.api#enumValue" => "m5ad.xlarge"}))
    EC2InstanceType.add_member(:m5ad_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5ad_2xlarge", traits: {"smithy.api#enumValue" => "m5ad.2xlarge"}))
    EC2InstanceType.add_member(:m5ad_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5ad_4xlarge", traits: {"smithy.api#enumValue" => "m5ad.4xlarge"}))
    EC2InstanceType.add_member(:m5ad_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5ad_8xlarge", traits: {"smithy.api#enumValue" => "m5ad.8xlarge"}))
    EC2InstanceType.add_member(:m5ad_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5ad_12xlarge", traits: {"smithy.api#enumValue" => "m5ad.12xlarge"}))
    EC2InstanceType.add_member(:m5ad_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5ad_16xlarge", traits: {"smithy.api#enumValue" => "m5ad.16xlarge"}))
    EC2InstanceType.add_member(:m5ad_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5ad_24xlarge", traits: {"smithy.api#enumValue" => "m5ad.24xlarge"}))
    EC2InstanceType.add_member(:m5d_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5d_large", traits: {"smithy.api#enumValue" => "m5d.large"}))
    EC2InstanceType.add_member(:m5d_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5d_xlarge", traits: {"smithy.api#enumValue" => "m5d.xlarge"}))
    EC2InstanceType.add_member(:m5d_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5d_2xlarge", traits: {"smithy.api#enumValue" => "m5d.2xlarge"}))
    EC2InstanceType.add_member(:m5d_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5d_4xlarge", traits: {"smithy.api#enumValue" => "m5d.4xlarge"}))
    EC2InstanceType.add_member(:m5d_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5d_8xlarge", traits: {"smithy.api#enumValue" => "m5d.8xlarge"}))
    EC2InstanceType.add_member(:m5d_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5d_12xlarge", traits: {"smithy.api#enumValue" => "m5d.12xlarge"}))
    EC2InstanceType.add_member(:m5d_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5d_16xlarge", traits: {"smithy.api#enumValue" => "m5d.16xlarge"}))
    EC2InstanceType.add_member(:m5d_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5d_24xlarge", traits: {"smithy.api#enumValue" => "m5d.24xlarge"}))
    EC2InstanceType.add_member(:m5dn_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5dn_large", traits: {"smithy.api#enumValue" => "m5dn.large"}))
    EC2InstanceType.add_member(:m5dn_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5dn_xlarge", traits: {"smithy.api#enumValue" => "m5dn.xlarge"}))
    EC2InstanceType.add_member(:m5dn_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5dn_2xlarge", traits: {"smithy.api#enumValue" => "m5dn.2xlarge"}))
    EC2InstanceType.add_member(:m5dn_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5dn_4xlarge", traits: {"smithy.api#enumValue" => "m5dn.4xlarge"}))
    EC2InstanceType.add_member(:m5dn_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5dn_8xlarge", traits: {"smithy.api#enumValue" => "m5dn.8xlarge"}))
    EC2InstanceType.add_member(:m5dn_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5dn_12xlarge", traits: {"smithy.api#enumValue" => "m5dn.12xlarge"}))
    EC2InstanceType.add_member(:m5dn_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5dn_16xlarge", traits: {"smithy.api#enumValue" => "m5dn.16xlarge"}))
    EC2InstanceType.add_member(:m5dn_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5dn_24xlarge", traits: {"smithy.api#enumValue" => "m5dn.24xlarge"}))
    EC2InstanceType.add_member(:m5n_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5n_large", traits: {"smithy.api#enumValue" => "m5n.large"}))
    EC2InstanceType.add_member(:m5n_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5n_xlarge", traits: {"smithy.api#enumValue" => "m5n.xlarge"}))
    EC2InstanceType.add_member(:m5n_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5n_2xlarge", traits: {"smithy.api#enumValue" => "m5n.2xlarge"}))
    EC2InstanceType.add_member(:m5n_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5n_4xlarge", traits: {"smithy.api#enumValue" => "m5n.4xlarge"}))
    EC2InstanceType.add_member(:m5n_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5n_8xlarge", traits: {"smithy.api#enumValue" => "m5n.8xlarge"}))
    EC2InstanceType.add_member(:m5n_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5n_12xlarge", traits: {"smithy.api#enumValue" => "m5n.12xlarge"}))
    EC2InstanceType.add_member(:m5n_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5n_16xlarge", traits: {"smithy.api#enumValue" => "m5n.16xlarge"}))
    EC2InstanceType.add_member(:m5n_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5n_24xlarge", traits: {"smithy.api#enumValue" => "m5n.24xlarge"}))
    EC2InstanceType.add_member(:m6id_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6id_large", traits: {"smithy.api#enumValue" => "m6id.large"}))
    EC2InstanceType.add_member(:m6id_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6id_xlarge", traits: {"smithy.api#enumValue" => "m6id.xlarge"}))
    EC2InstanceType.add_member(:m6id_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6id_2xlarge", traits: {"smithy.api#enumValue" => "m6id.2xlarge"}))
    EC2InstanceType.add_member(:m6id_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6id_4xlarge", traits: {"smithy.api#enumValue" => "m6id.4xlarge"}))
    EC2InstanceType.add_member(:m6id_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6id_8xlarge", traits: {"smithy.api#enumValue" => "m6id.8xlarge"}))
    EC2InstanceType.add_member(:m6id_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6id_12xlarge", traits: {"smithy.api#enumValue" => "m6id.12xlarge"}))
    EC2InstanceType.add_member(:m6id_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6id_16xlarge", traits: {"smithy.api#enumValue" => "m6id.16xlarge"}))
    EC2InstanceType.add_member(:m6id_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6id_24xlarge", traits: {"smithy.api#enumValue" => "m6id.24xlarge"}))
    EC2InstanceType.add_member(:m6id_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6id_32xlarge", traits: {"smithy.api#enumValue" => "m6id.32xlarge"}))
    EC2InstanceType.add_member(:m6idn_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6idn_large", traits: {"smithy.api#enumValue" => "m6idn.large"}))
    EC2InstanceType.add_member(:m6idn_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6idn_xlarge", traits: {"smithy.api#enumValue" => "m6idn.xlarge"}))
    EC2InstanceType.add_member(:m6idn_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6idn_2xlarge", traits: {"smithy.api#enumValue" => "m6idn.2xlarge"}))
    EC2InstanceType.add_member(:m6idn_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6idn_4xlarge", traits: {"smithy.api#enumValue" => "m6idn.4xlarge"}))
    EC2InstanceType.add_member(:m6idn_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6idn_8xlarge", traits: {"smithy.api#enumValue" => "m6idn.8xlarge"}))
    EC2InstanceType.add_member(:m6idn_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6idn_12xlarge", traits: {"smithy.api#enumValue" => "m6idn.12xlarge"}))
    EC2InstanceType.add_member(:m6idn_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6idn_16xlarge", traits: {"smithy.api#enumValue" => "m6idn.16xlarge"}))
    EC2InstanceType.add_member(:m6idn_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6idn_24xlarge", traits: {"smithy.api#enumValue" => "m6idn.24xlarge"}))
    EC2InstanceType.add_member(:m6idn_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6idn_32xlarge", traits: {"smithy.api#enumValue" => "m6idn.32xlarge"}))
    EC2InstanceType.add_member(:m6in_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6in_large", traits: {"smithy.api#enumValue" => "m6in.large"}))
    EC2InstanceType.add_member(:m6in_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6in_xlarge", traits: {"smithy.api#enumValue" => "m6in.xlarge"}))
    EC2InstanceType.add_member(:m6in_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6in_2xlarge", traits: {"smithy.api#enumValue" => "m6in.2xlarge"}))
    EC2InstanceType.add_member(:m6in_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6in_4xlarge", traits: {"smithy.api#enumValue" => "m6in.4xlarge"}))
    EC2InstanceType.add_member(:m6in_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6in_8xlarge", traits: {"smithy.api#enumValue" => "m6in.8xlarge"}))
    EC2InstanceType.add_member(:m6in_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6in_12xlarge", traits: {"smithy.api#enumValue" => "m6in.12xlarge"}))
    EC2InstanceType.add_member(:m6in_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6in_16xlarge", traits: {"smithy.api#enumValue" => "m6in.16xlarge"}))
    EC2InstanceType.add_member(:m6in_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6in_24xlarge", traits: {"smithy.api#enumValue" => "m6in.24xlarge"}))
    EC2InstanceType.add_member(:m6in_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6in_32xlarge", traits: {"smithy.api#enumValue" => "m6in.32xlarge"}))
    EC2InstanceType.add_member(:m8g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m8g_medium", traits: {"smithy.api#enumValue" => "m8g.medium"}))
    EC2InstanceType.add_member(:m8g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m8g_large", traits: {"smithy.api#enumValue" => "m8g.large"}))
    EC2InstanceType.add_member(:m8g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m8g_xlarge", traits: {"smithy.api#enumValue" => "m8g.xlarge"}))
    EC2InstanceType.add_member(:m8g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m8g_2xlarge", traits: {"smithy.api#enumValue" => "m8g.2xlarge"}))
    EC2InstanceType.add_member(:m8g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m8g_4xlarge", traits: {"smithy.api#enumValue" => "m8g.4xlarge"}))
    EC2InstanceType.add_member(:m8g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m8g_8xlarge", traits: {"smithy.api#enumValue" => "m8g.8xlarge"}))
    EC2InstanceType.add_member(:m8g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m8g_12xlarge", traits: {"smithy.api#enumValue" => "m8g.12xlarge"}))
    EC2InstanceType.add_member(:m8g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m8g_16xlarge", traits: {"smithy.api#enumValue" => "m8g.16xlarge"}))
    EC2InstanceType.add_member(:m8g_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m8g_24xlarge", traits: {"smithy.api#enumValue" => "m8g.24xlarge"}))
    EC2InstanceType.add_member(:m8g_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m8g_48xlarge", traits: {"smithy.api#enumValue" => "m8g.48xlarge"}))
    EC2InstanceType.add_member(:r5dn_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5dn_large", traits: {"smithy.api#enumValue" => "r5dn.large"}))
    EC2InstanceType.add_member(:r5dn_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5dn_xlarge", traits: {"smithy.api#enumValue" => "r5dn.xlarge"}))
    EC2InstanceType.add_member(:r5dn_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5dn_2xlarge", traits: {"smithy.api#enumValue" => "r5dn.2xlarge"}))
    EC2InstanceType.add_member(:r5dn_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5dn_4xlarge", traits: {"smithy.api#enumValue" => "r5dn.4xlarge"}))
    EC2InstanceType.add_member(:r5dn_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5dn_8xlarge", traits: {"smithy.api#enumValue" => "r5dn.8xlarge"}))
    EC2InstanceType.add_member(:r5dn_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5dn_12xlarge", traits: {"smithy.api#enumValue" => "r5dn.12xlarge"}))
    EC2InstanceType.add_member(:r5dn_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5dn_16xlarge", traits: {"smithy.api#enumValue" => "r5dn.16xlarge"}))
    EC2InstanceType.add_member(:r5dn_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5dn_24xlarge", traits: {"smithy.api#enumValue" => "r5dn.24xlarge"}))
    EC2InstanceType.add_member(:r5n_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5n_large", traits: {"smithy.api#enumValue" => "r5n.large"}))
    EC2InstanceType.add_member(:r5n_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5n_xlarge", traits: {"smithy.api#enumValue" => "r5n.xlarge"}))
    EC2InstanceType.add_member(:r5n_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5n_2xlarge", traits: {"smithy.api#enumValue" => "r5n.2xlarge"}))
    EC2InstanceType.add_member(:r5n_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5n_4xlarge", traits: {"smithy.api#enumValue" => "r5n.4xlarge"}))
    EC2InstanceType.add_member(:r5n_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5n_8xlarge", traits: {"smithy.api#enumValue" => "r5n.8xlarge"}))
    EC2InstanceType.add_member(:r5n_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5n_12xlarge", traits: {"smithy.api#enumValue" => "r5n.12xlarge"}))
    EC2InstanceType.add_member(:r5n_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5n_16xlarge", traits: {"smithy.api#enumValue" => "r5n.16xlarge"}))
    EC2InstanceType.add_member(:r5n_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5n_24xlarge", traits: {"smithy.api#enumValue" => "r5n.24xlarge"}))
    EC2InstanceType.add_member(:r6a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6a_large", traits: {"smithy.api#enumValue" => "r6a.large"}))
    EC2InstanceType.add_member(:r6a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6a_xlarge", traits: {"smithy.api#enumValue" => "r6a.xlarge"}))
    EC2InstanceType.add_member(:r6a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6a_2xlarge", traits: {"smithy.api#enumValue" => "r6a.2xlarge"}))
    EC2InstanceType.add_member(:r6a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6a_4xlarge", traits: {"smithy.api#enumValue" => "r6a.4xlarge"}))
    EC2InstanceType.add_member(:r6a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6a_8xlarge", traits: {"smithy.api#enumValue" => "r6a.8xlarge"}))
    EC2InstanceType.add_member(:r6a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6a_12xlarge", traits: {"smithy.api#enumValue" => "r6a.12xlarge"}))
    EC2InstanceType.add_member(:r6a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6a_16xlarge", traits: {"smithy.api#enumValue" => "r6a.16xlarge"}))
    EC2InstanceType.add_member(:r6a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6a_24xlarge", traits: {"smithy.api#enumValue" => "r6a.24xlarge"}))
    EC2InstanceType.add_member(:r6a_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6a_32xlarge", traits: {"smithy.api#enumValue" => "r6a.32xlarge"}))
    EC2InstanceType.add_member(:r6a_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6a_48xlarge", traits: {"smithy.api#enumValue" => "r6a.48xlarge"}))
    EC2InstanceType.add_member(:r6id_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6id_large", traits: {"smithy.api#enumValue" => "r6id.large"}))
    EC2InstanceType.add_member(:r6id_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6id_xlarge", traits: {"smithy.api#enumValue" => "r6id.xlarge"}))
    EC2InstanceType.add_member(:r6id_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6id_2xlarge", traits: {"smithy.api#enumValue" => "r6id.2xlarge"}))
    EC2InstanceType.add_member(:r6id_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6id_4xlarge", traits: {"smithy.api#enumValue" => "r6id.4xlarge"}))
    EC2InstanceType.add_member(:r6id_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6id_8xlarge", traits: {"smithy.api#enumValue" => "r6id.8xlarge"}))
    EC2InstanceType.add_member(:r6id_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6id_12xlarge", traits: {"smithy.api#enumValue" => "r6id.12xlarge"}))
    EC2InstanceType.add_member(:r6id_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6id_16xlarge", traits: {"smithy.api#enumValue" => "r6id.16xlarge"}))
    EC2InstanceType.add_member(:r6id_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6id_24xlarge", traits: {"smithy.api#enumValue" => "r6id.24xlarge"}))
    EC2InstanceType.add_member(:r6id_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6id_32xlarge", traits: {"smithy.api#enumValue" => "r6id.32xlarge"}))
    EC2InstanceType.add_member(:r6idn_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6idn_large", traits: {"smithy.api#enumValue" => "r6idn.large"}))
    EC2InstanceType.add_member(:r6idn_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6idn_xlarge", traits: {"smithy.api#enumValue" => "r6idn.xlarge"}))
    EC2InstanceType.add_member(:r6idn_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6idn_2xlarge", traits: {"smithy.api#enumValue" => "r6idn.2xlarge"}))
    EC2InstanceType.add_member(:r6idn_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6idn_4xlarge", traits: {"smithy.api#enumValue" => "r6idn.4xlarge"}))
    EC2InstanceType.add_member(:r6idn_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6idn_8xlarge", traits: {"smithy.api#enumValue" => "r6idn.8xlarge"}))
    EC2InstanceType.add_member(:r6idn_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6idn_12xlarge", traits: {"smithy.api#enumValue" => "r6idn.12xlarge"}))
    EC2InstanceType.add_member(:r6idn_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6idn_16xlarge", traits: {"smithy.api#enumValue" => "r6idn.16xlarge"}))
    EC2InstanceType.add_member(:r6idn_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6idn_24xlarge", traits: {"smithy.api#enumValue" => "r6idn.24xlarge"}))
    EC2InstanceType.add_member(:r6idn_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6idn_32xlarge", traits: {"smithy.api#enumValue" => "r6idn.32xlarge"}))
    EC2InstanceType.add_member(:r6in_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6in_large", traits: {"smithy.api#enumValue" => "r6in.large"}))
    EC2InstanceType.add_member(:r6in_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6in_xlarge", traits: {"smithy.api#enumValue" => "r6in.xlarge"}))
    EC2InstanceType.add_member(:r6in_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6in_2xlarge", traits: {"smithy.api#enumValue" => "r6in.2xlarge"}))
    EC2InstanceType.add_member(:r6in_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6in_4xlarge", traits: {"smithy.api#enumValue" => "r6in.4xlarge"}))
    EC2InstanceType.add_member(:r6in_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6in_8xlarge", traits: {"smithy.api#enumValue" => "r6in.8xlarge"}))
    EC2InstanceType.add_member(:r6in_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6in_12xlarge", traits: {"smithy.api#enumValue" => "r6in.12xlarge"}))
    EC2InstanceType.add_member(:r6in_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6in_16xlarge", traits: {"smithy.api#enumValue" => "r6in.16xlarge"}))
    EC2InstanceType.add_member(:r6in_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6in_24xlarge", traits: {"smithy.api#enumValue" => "r6in.24xlarge"}))
    EC2InstanceType.add_member(:r6in_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6in_32xlarge", traits: {"smithy.api#enumValue" => "r6in.32xlarge"}))
    EC2InstanceType.add_member(:r8g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r8g_medium", traits: {"smithy.api#enumValue" => "r8g.medium"}))
    EC2InstanceType.add_member(:r8g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r8g_large", traits: {"smithy.api#enumValue" => "r8g.large"}))
    EC2InstanceType.add_member(:r8g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r8g_xlarge", traits: {"smithy.api#enumValue" => "r8g.xlarge"}))
    EC2InstanceType.add_member(:r8g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r8g_2xlarge", traits: {"smithy.api#enumValue" => "r8g.2xlarge"}))
    EC2InstanceType.add_member(:r8g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r8g_4xlarge", traits: {"smithy.api#enumValue" => "r8g.4xlarge"}))
    EC2InstanceType.add_member(:r8g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r8g_8xlarge", traits: {"smithy.api#enumValue" => "r8g.8xlarge"}))
    EC2InstanceType.add_member(:r8g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r8g_12xlarge", traits: {"smithy.api#enumValue" => "r8g.12xlarge"}))
    EC2InstanceType.add_member(:r8g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r8g_16xlarge", traits: {"smithy.api#enumValue" => "r8g.16xlarge"}))
    EC2InstanceType.add_member(:r8g_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r8g_24xlarge", traits: {"smithy.api#enumValue" => "r8g.24xlarge"}))
    EC2InstanceType.add_member(:r8g_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r8g_48xlarge", traits: {"smithy.api#enumValue" => "r8g.48xlarge"}))
    EC2InstanceType.add_member(:m4_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_16xlarge", traits: {"smithy.api#enumValue" => "m4.16xlarge"}))
    EC2InstanceType.add_member(:c6a_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6a_32xlarge", traits: {"smithy.api#enumValue" => "c6a.32xlarge"}))
    EC2InstanceType.add_member(:c6a_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6a_48xlarge", traits: {"smithy.api#enumValue" => "c6a.48xlarge"}))
    EC2InstanceType.add_member(:c6i_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6i_32xlarge", traits: {"smithy.api#enumValue" => "c6i.32xlarge"}))
    EC2InstanceType.add_member(:r6i_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6i_24xlarge", traits: {"smithy.api#enumValue" => "r6i.24xlarge"}))
    EC2InstanceType.add_member(:r6i_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6i_32xlarge", traits: {"smithy.api#enumValue" => "r6i.32xlarge"}))
    EC2InstanceType.add_member(:c6in_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6in_24xlarge", traits: {"smithy.api#enumValue" => "c6in.24xlarge"}))
    EC2InstanceType.add_member(:c6in_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6in_32xlarge", traits: {"smithy.api#enumValue" => "c6in.32xlarge"}))
    EC2InstanceType.add_member(:c7a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7a_24xlarge", traits: {"smithy.api#enumValue" => "c7a.24xlarge"}))
    EC2InstanceType.add_member(:c7a_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7a_32xlarge", traits: {"smithy.api#enumValue" => "c7a.32xlarge"}))
    EC2InstanceType.add_member(:c7a_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7a_48xlarge", traits: {"smithy.api#enumValue" => "c7a.48xlarge"}))
    EC2InstanceType.add_member(:c7i_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7i_24xlarge", traits: {"smithy.api#enumValue" => "c7i.24xlarge"}))
    EC2InstanceType.add_member(:c7i_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c7i_48xlarge", traits: {"smithy.api#enumValue" => "c7i.48xlarge"}))
    EC2InstanceType.add_member(:m6a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6a_24xlarge", traits: {"smithy.api#enumValue" => "m6a.24xlarge"}))
    EC2InstanceType.add_member(:m6a_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6a_32xlarge", traits: {"smithy.api#enumValue" => "m6a.32xlarge"}))
    EC2InstanceType.add_member(:m6a_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6a_48xlarge", traits: {"smithy.api#enumValue" => "m6a.48xlarge"}))
    EC2InstanceType.add_member(:m6i_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6i_24xlarge", traits: {"smithy.api#enumValue" => "m6i.24xlarge"}))
    EC2InstanceType.add_member(:m6i_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6i_32xlarge", traits: {"smithy.api#enumValue" => "m6i.32xlarge"}))
    EC2InstanceType.add_member(:m7a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7a_24xlarge", traits: {"smithy.api#enumValue" => "m7a.24xlarge"}))
    EC2InstanceType.add_member(:m7a_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7a_32xlarge", traits: {"smithy.api#enumValue" => "m7a.32xlarge"}))
    EC2InstanceType.add_member(:m7a_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7a_48xlarge", traits: {"smithy.api#enumValue" => "m7a.48xlarge"}))
    EC2InstanceType.add_member(:m7i_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7i_24xlarge", traits: {"smithy.api#enumValue" => "m7i.24xlarge"}))
    EC2InstanceType.add_member(:m7i_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m7i_48xlarge", traits: {"smithy.api#enumValue" => "m7i.48xlarge"}))
    EC2InstanceType.add_member(:r7a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7a_24xlarge", traits: {"smithy.api#enumValue" => "r7a.24xlarge"}))
    EC2InstanceType.add_member(:r7a_32xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7a_32xlarge", traits: {"smithy.api#enumValue" => "r7a.32xlarge"}))
    EC2InstanceType.add_member(:r7a_48xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r7a_48xlarge", traits: {"smithy.api#enumValue" => "r7a.48xlarge"}))
    Event.add_member(:event_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "EventId"))
    Event.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "ResourceId"))
    Event.add_member(:event_code, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCode, location_name: "EventCode"))
    Event.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    Event.add_member(:event_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EventTime"))
    Event.add_member(:pre_signed_log_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PreSignedLogUrl"))
    Event.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: EventCount, location_name: "Count"))
    Event.type = Types::Event
    EventCode.add_member(:generic_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERIC_EVENT", traits: {"smithy.api#enumValue" => "GENERIC_EVENT"}))
    EventCode.add_member(:fleet_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_CREATED", traits: {"smithy.api#enumValue" => "FLEET_CREATED"}))
    EventCode.add_member(:fleet_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_DELETED", traits: {"smithy.api#enumValue" => "FLEET_DELETED"}))
    EventCode.add_member(:fleet_scaling_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_SCALING_EVENT", traits: {"smithy.api#enumValue" => "FLEET_SCALING_EVENT"}))
    EventCode.add_member(:fleet_state_downloading, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_STATE_DOWNLOADING", traits: {"smithy.api#enumValue" => "FLEET_STATE_DOWNLOADING"}))
    EventCode.add_member(:fleet_state_validating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_STATE_VALIDATING", traits: {"smithy.api#enumValue" => "FLEET_STATE_VALIDATING"}))
    EventCode.add_member(:fleet_state_building, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_STATE_BUILDING", traits: {"smithy.api#enumValue" => "FLEET_STATE_BUILDING"}))
    EventCode.add_member(:fleet_state_activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_STATE_ACTIVATING", traits: {"smithy.api#enumValue" => "FLEET_STATE_ACTIVATING"}))
    EventCode.add_member(:fleet_state_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_STATE_ACTIVE", traits: {"smithy.api#enumValue" => "FLEET_STATE_ACTIVE"}))
    EventCode.add_member(:fleet_state_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_STATE_ERROR", traits: {"smithy.api#enumValue" => "FLEET_STATE_ERROR"}))
    EventCode.add_member(:fleet_state_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_STATE_PENDING", traits: {"smithy.api#enumValue" => "FLEET_STATE_PENDING"}))
    EventCode.add_member(:fleet_state_creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_STATE_CREATING", traits: {"smithy.api#enumValue" => "FLEET_STATE_CREATING"}))
    EventCode.add_member(:fleet_state_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_STATE_CREATED", traits: {"smithy.api#enumValue" => "FLEET_STATE_CREATED"}))
    EventCode.add_member(:fleet_state_updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_STATE_UPDATING", traits: {"smithy.api#enumValue" => "FLEET_STATE_UPDATING"}))
    EventCode.add_member(:fleet_initialization_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_INITIALIZATION_FAILED", traits: {"smithy.api#enumValue" => "FLEET_INITIALIZATION_FAILED"}))
    EventCode.add_member(:fleet_binary_download_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_BINARY_DOWNLOAD_FAILED", traits: {"smithy.api#enumValue" => "FLEET_BINARY_DOWNLOAD_FAILED"}))
    EventCode.add_member(:fleet_validation_launch_path_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND", traits: {"smithy.api#enumValue" => "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND"}))
    EventCode.add_member(:fleet_validation_executable_runtime_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE", traits: {"smithy.api#enumValue" => "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE"}))
    EventCode.add_member(:fleet_validation_timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_VALIDATION_TIMED_OUT", traits: {"smithy.api#enumValue" => "FLEET_VALIDATION_TIMED_OUT"}))
    EventCode.add_member(:fleet_activation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_ACTIVATION_FAILED", traits: {"smithy.api#enumValue" => "FLEET_ACTIVATION_FAILED"}))
    EventCode.add_member(:fleet_activation_failed_no_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_ACTIVATION_FAILED_NO_INSTANCES", traits: {"smithy.api#enumValue" => "FLEET_ACTIVATION_FAILED_NO_INSTANCES"}))
    EventCode.add_member(:fleet_new_game_session_protection_policy_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED", traits: {"smithy.api#enumValue" => "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED"}))
    EventCode.add_member(:server_process_invalid_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_PROCESS_INVALID_PATH", traits: {"smithy.api#enumValue" => "SERVER_PROCESS_INVALID_PATH"}))
    EventCode.add_member(:server_process_sdk_initialization_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT", traits: {"smithy.api#enumValue" => "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT"}))
    EventCode.add_member(:server_process_process_ready_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_PROCESS_PROCESS_READY_TIMEOUT", traits: {"smithy.api#enumValue" => "SERVER_PROCESS_PROCESS_READY_TIMEOUT"}))
    EventCode.add_member(:server_process_crashed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_PROCESS_CRASHED", traits: {"smithy.api#enumValue" => "SERVER_PROCESS_CRASHED"}))
    EventCode.add_member(:server_process_terminated_unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_PROCESS_TERMINATED_UNHEALTHY", traits: {"smithy.api#enumValue" => "SERVER_PROCESS_TERMINATED_UNHEALTHY"}))
    EventCode.add_member(:server_process_force_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_PROCESS_FORCE_TERMINATED", traits: {"smithy.api#enumValue" => "SERVER_PROCESS_FORCE_TERMINATED"}))
    EventCode.add_member(:server_process_process_exit_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT", traits: {"smithy.api#enumValue" => "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT"}))
    EventCode.add_member(:server_process_sdk_initialization_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_PROCESS_SDK_INITIALIZATION_FAILED", traits: {"smithy.api#enumValue" => "SERVER_PROCESS_SDK_INITIALIZATION_FAILED"}))
    EventCode.add_member(:server_process_misconfigured_container_port, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVER_PROCESS_MISCONFIGURED_CONTAINER_PORT", traits: {"smithy.api#enumValue" => "SERVER_PROCESS_MISCONFIGURED_CONTAINER_PORT"}))
    EventCode.add_member(:game_session_activation_timeout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GAME_SESSION_ACTIVATION_TIMEOUT", traits: {"smithy.api#enumValue" => "GAME_SESSION_ACTIVATION_TIMEOUT"}))
    EventCode.add_member(:fleet_creation_extracting_build, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_CREATION_EXTRACTING_BUILD", traits: {"smithy.api#enumValue" => "FLEET_CREATION_EXTRACTING_BUILD"}))
    EventCode.add_member(:fleet_creation_running_installer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_CREATION_RUNNING_INSTALLER", traits: {"smithy.api#enumValue" => "FLEET_CREATION_RUNNING_INSTALLER"}))
    EventCode.add_member(:fleet_creation_validating_runtime_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG", traits: {"smithy.api#enumValue" => "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG"}))
    EventCode.add_member(:fleet_vpc_peering_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_VPC_PEERING_SUCCEEDED", traits: {"smithy.api#enumValue" => "FLEET_VPC_PEERING_SUCCEEDED"}))
    EventCode.add_member(:fleet_vpc_peering_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_VPC_PEERING_FAILED", traits: {"smithy.api#enumValue" => "FLEET_VPC_PEERING_FAILED"}))
    EventCode.add_member(:fleet_vpc_peering_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_VPC_PEERING_DELETED", traits: {"smithy.api#enumValue" => "FLEET_VPC_PEERING_DELETED"}))
    EventCode.add_member(:instance_interrupted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE_INTERRUPTED", traits: {"smithy.api#enumValue" => "INSTANCE_INTERRUPTED"}))
    EventCode.add_member(:instance_recycled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE_RECYCLED", traits: {"smithy.api#enumValue" => "INSTANCE_RECYCLED"}))
    EventCode.add_member(:instance_replaced_unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANCE_REPLACED_UNHEALTHY", traits: {"smithy.api#enumValue" => "INSTANCE_REPLACED_UNHEALTHY"}))
    EventCode.add_member(:fleet_creation_completed_installer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_CREATION_COMPLETED_INSTALLER", traits: {"smithy.api#enumValue" => "FLEET_CREATION_COMPLETED_INSTALLER"}))
    EventCode.add_member(:fleet_creation_failed_installer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_CREATION_FAILED_INSTALLER", traits: {"smithy.api#enumValue" => "FLEET_CREATION_FAILED_INSTALLER"}))
    EventCode.add_member(:compute_log_upload_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPUTE_LOG_UPLOAD_FAILED", traits: {"smithy.api#enumValue" => "COMPUTE_LOG_UPLOAD_FAILED"}))
    EventCode.add_member(:game_server_container_group_crashed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GAME_SERVER_CONTAINER_GROUP_CRASHED", traits: {"smithy.api#enumValue" => "GAME_SERVER_CONTAINER_GROUP_CRASHED"}))
    EventCode.add_member(:per_instance_container_group_crashed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PER_INSTANCE_CONTAINER_GROUP_CRASHED", traits: {"smithy.api#enumValue" => "PER_INSTANCE_CONTAINER_GROUP_CRASHED"}))
    EventCode.add_member(:game_server_container_group_replaced_unhealthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GAME_SERVER_CONTAINER_GROUP_REPLACED_UNHEALTHY", traits: {"smithy.api#enumValue" => "GAME_SERVER_CONTAINER_GROUP_REPLACED_UNHEALTHY"}))
    EventCode.add_member(:location_state_pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION_STATE_PENDING", traits: {"smithy.api#enumValue" => "LOCATION_STATE_PENDING"}))
    EventCode.add_member(:location_state_creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION_STATE_CREATING", traits: {"smithy.api#enumValue" => "LOCATION_STATE_CREATING"}))
    EventCode.add_member(:location_state_created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION_STATE_CREATED", traits: {"smithy.api#enumValue" => "LOCATION_STATE_CREATED"}))
    EventCode.add_member(:location_state_activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION_STATE_ACTIVATING", traits: {"smithy.api#enumValue" => "LOCATION_STATE_ACTIVATING"}))
    EventCode.add_member(:location_state_active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION_STATE_ACTIVE", traits: {"smithy.api#enumValue" => "LOCATION_STATE_ACTIVE"}))
    EventCode.add_member(:location_state_updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION_STATE_UPDATING", traits: {"smithy.api#enumValue" => "LOCATION_STATE_UPDATING"}))
    EventCode.add_member(:location_state_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION_STATE_ERROR", traits: {"smithy.api#enumValue" => "LOCATION_STATE_ERROR"}))
    EventCode.add_member(:location_state_deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION_STATE_DELETING", traits: {"smithy.api#enumValue" => "LOCATION_STATE_DELETING"}))
    EventCode.add_member(:location_state_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION_STATE_DELETED", traits: {"smithy.api#enumValue" => "LOCATION_STATE_DELETED"}))
    EventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Event)
    FilterConfiguration.add_member(:allowed_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, location_name: "AllowedLocations"))
    FilterConfiguration.type = Types::FilterConfiguration
    FilterInstanceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FilterInstanceStatus.add_member(:draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DRAINING", traits: {"smithy.api#enumValue" => "DRAINING"}))
    FilterInstanceStatuses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterInstanceStatus)
    FleetAction.add_member(:auto_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AutoScaling", traits: {"smithy.api#enumValue" => "AUTO_SCALING"}))
    FleetActionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAction)
    FleetAttributes.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    FleetAttributes.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    FleetAttributes.add_member(:fleet_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetType, location_name: "FleetType"))
    FleetAttributes.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "InstanceType"))
    FleetAttributes.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Description"))
    FleetAttributes.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    FleetAttributes.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    FleetAttributes.add_member(:termination_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TerminationTime"))
    FleetAttributes.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetStatus, location_name: "Status"))
    FleetAttributes.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildId, location_name: "BuildId"))
    FleetAttributes.add_member(:build_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildArn, location_name: "BuildArn"))
    FleetAttributes.add_member(:script_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptId, location_name: "ScriptId"))
    FleetAttributes.add_member(:script_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptArn, location_name: "ScriptArn"))
    FleetAttributes.add_member(:server_launch_path, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchPathStringModel, location_name: "ServerLaunchPath"))
    FleetAttributes.add_member(:server_launch_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchParametersStringModel, location_name: "ServerLaunchParameters"))
    FleetAttributes.add_member(:log_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "LogPaths"))
    FleetAttributes.add_member(:new_game_session_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    FleetAttributes.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, location_name: "OperatingSystem"))
    FleetAttributes.add_member(:resource_creation_limit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCreationLimitPolicy, location_name: "ResourceCreationLimitPolicy"))
    FleetAttributes.add_member(:metric_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGroupList, location_name: "MetricGroups"))
    FleetAttributes.add_member(:stopped_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetActionList, location_name: "StoppedActions"))
    FleetAttributes.add_member(:instance_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "InstanceRoleArn"))
    FleetAttributes.add_member(:certificate_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateConfiguration, location_name: "CertificateConfiguration"))
    FleetAttributes.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, location_name: "ComputeType"))
    FleetAttributes.add_member(:anywhere_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnywhereConfiguration, location_name: "AnywhereConfiguration"))
    FleetAttributes.add_member(:instance_role_credentials_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceRoleCredentialsProvider, location_name: "InstanceRoleCredentialsProvider"))
    FleetAttributes.type = Types::FleetAttributes
    FleetAttributesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAttributes)
    FleetCapacity.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    FleetCapacity.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    FleetCapacity.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "InstanceType"))
    FleetCapacity.add_member(:instance_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceCounts, location_name: "InstanceCounts"))
    FleetCapacity.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    FleetCapacity.add_member(:game_server_container_group_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerContainerGroupCounts, location_name: "GameServerContainerGroupCounts"))
    FleetCapacity.type = Types::FleetCapacity
    FleetCapacityExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    FleetCapacityExceededException.type = Types::FleetCapacityExceededException
    FleetCapacityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetCapacity)
    FleetDeployment.add_member(:deployment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentId, location_name: "DeploymentId"))
    FleetDeployment.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    FleetDeployment.add_member(:game_server_binary_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetBinaryArn, location_name: "GameServerBinaryArn"))
    FleetDeployment.add_member(:rollback_game_server_binary_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetBinaryArn, location_name: "RollbackGameServerBinaryArn"))
    FleetDeployment.add_member(:per_instance_binary_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetBinaryArn, location_name: "PerInstanceBinaryArn"))
    FleetDeployment.add_member(:rollback_per_instance_binary_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetBinaryArn, location_name: "RollbackPerInstanceBinaryArn"))
    FleetDeployment.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatus, location_name: "DeploymentStatus"))
    FleetDeployment.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, location_name: "DeploymentConfiguration"))
    FleetDeployment.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    FleetDeployment.type = Types::FleetDeployment
    FleetDeployments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetDeployment)
    FleetIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId)
    FleetIdOrArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn)
    FleetStatus.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    FleetStatus.add_member(:downloading, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOWNLOADING", traits: {"smithy.api#enumValue" => "DOWNLOADING"}))
    FleetStatus.add_member(:validating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VALIDATING", traits: {"smithy.api#enumValue" => "VALIDATING"}))
    FleetStatus.add_member(:building, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILDING", traits: {"smithy.api#enumValue" => "BUILDING"}))
    FleetStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    FleetStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FleetStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FleetStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    FleetStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    FleetStatus.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    FleetType.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OnDemand", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    FleetType.add_member(:spot, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Spot", traits: {"smithy.api#enumValue" => "SPOT"}))
    FleetUtilization.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    FleetUtilization.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    FleetUtilization.add_member(:active_server_process_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "ActiveServerProcessCount"))
    FleetUtilization.add_member(:active_game_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "ActiveGameSessionCount"))
    FleetUtilization.add_member(:current_player_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "CurrentPlayerSessionCount"))
    FleetUtilization.add_member(:maximum_player_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MaximumPlayerSessionCount"))
    FleetUtilization.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    FleetUtilization.type = Types::FleetUtilization
    FleetUtilizationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FleetUtilization)
    FlexMatchMode.add_member(:standalone, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDALONE", traits: {"smithy.api#enumValue" => "STANDALONE"}))
    FlexMatchMode.add_member(:with_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WITH_QUEUE", traits: {"smithy.api#enumValue" => "WITH_QUEUE"}))
    GameProperty.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: GamePropertyKey, location_name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GameProperty.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: GamePropertyValue, location_name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GameProperty.type = Types::GameProperty
    GamePropertyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GameProperty)
    GameServer.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupName, location_name: "GameServerGroupName"))
    GameServer.add_member(:game_server_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupArn, location_name: "GameServerGroupArn"))
    GameServer.add_member(:game_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerId, location_name: "GameServerId"))
    GameServer.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerInstanceId, location_name: "InstanceId"))
    GameServer.add_member(:connection_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerConnectionInfo, location_name: "ConnectionInfo"))
    GameServer.add_member(:game_server_data, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerData, location_name: "GameServerData"))
    GameServer.add_member(:claim_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerClaimStatus, location_name: "ClaimStatus"))
    GameServer.add_member(:utilization_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerUtilizationStatus, location_name: "UtilizationStatus"))
    GameServer.add_member(:registration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "RegistrationTime"))
    GameServer.add_member(:last_claim_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastClaimTime"))
    GameServer.add_member(:last_health_check_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastHealthCheckTime"))
    GameServer.type = Types::GameServer
    GameServerClaimStatus.add_member(:claimed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLAIMED", traits: {"smithy.api#enumValue" => "CLAIMED"}))
    GameServerContainerDefinition.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAnd128MaxAsciiString, location_name: "ContainerName"))
    GameServerContainerDefinition.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDependencyList, location_name: "DependsOn"))
    GameServerContainerDefinition.add_member(:mount_points, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMountPointList, location_name: "MountPoints"))
    GameServerContainerDefinition.add_member(:environment_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerEnvironmentList, location_name: "EnvironmentOverride"))
    GameServerContainerDefinition.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageUriString, location_name: "ImageUri"))
    GameServerContainerDefinition.add_member(:port_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerPortConfiguration, location_name: "PortConfiguration"))
    GameServerContainerDefinition.add_member(:resolved_image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: Sha256, location_name: "ResolvedImageDigest"))
    GameServerContainerDefinition.add_member(:server_sdk_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSdkVersion, location_name: "ServerSdkVersion"))
    GameServerContainerDefinition.type = Types::GameServerContainerDefinition
    GameServerContainerDefinitionInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAnd128MaxAsciiString, location_name: "ContainerName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GameServerContainerDefinitionInput.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDependencyList, location_name: "DependsOn"))
    GameServerContainerDefinitionInput.add_member(:mount_points, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMountPointList, location_name: "MountPoints"))
    GameServerContainerDefinitionInput.add_member(:environment_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerEnvironmentList, location_name: "EnvironmentOverride"))
    GameServerContainerDefinitionInput.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageUriString, location_name: "ImageUri", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GameServerContainerDefinitionInput.add_member(:port_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerPortConfiguration, location_name: "PortConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GameServerContainerDefinitionInput.add_member(:server_sdk_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSdkVersion, location_name: "ServerSdkVersion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GameServerContainerDefinitionInput.type = Types::GameServerContainerDefinitionInput
    GameServerContainerGroupCounts.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "PENDING"))
    GameServerContainerGroupCounts.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "ACTIVE"))
    GameServerContainerGroupCounts.add_member(:idle, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "IDLE"))
    GameServerContainerGroupCounts.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "TERMINATING"))
    GameServerContainerGroupCounts.type = Types::GameServerContainerGroupCounts
    GameServerGroup.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupName, location_name: "GameServerGroupName"))
    GameServerGroup.add_member(:game_server_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupArn, location_name: "GameServerGroupArn"))
    GameServerGroup.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn"))
    GameServerGroup.add_member(:instance_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceDefinitions, location_name: "InstanceDefinitions"))
    GameServerGroup.add_member(:balancing_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: BalancingStrategy, location_name: "BalancingStrategy"))
    GameServerGroup.add_member(:game_server_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerProtectionPolicy, location_name: "GameServerProtectionPolicy"))
    GameServerGroup.add_member(:auto_scaling_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupArn, location_name: "AutoScalingGroupArn"))
    GameServerGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupStatus, location_name: "Status"))
    GameServerGroup.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "StatusReason"))
    GameServerGroup.add_member(:suspended_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupActions, location_name: "SuspendedActions"))
    GameServerGroup.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    GameServerGroup.add_member(:last_updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "LastUpdatedTime"))
    GameServerGroup.type = Types::GameServerGroup
    GameServerGroupAction.add_member(:replace_instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPLACE_INSTANCE_TYPES", traits: {"smithy.api#enumValue" => "REPLACE_INSTANCE_TYPES"}))
    GameServerGroupActions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupAction)
    GameServerGroupAutoScalingPolicy.add_member(:estimated_instance_warmup, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "EstimatedInstanceWarmup"))
    GameServerGroupAutoScalingPolicy.add_member(:target_tracking_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingConfiguration, location_name: "TargetTrackingConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GameServerGroupAutoScalingPolicy.type = Types::GameServerGroupAutoScalingPolicy
    GameServerGroupDeleteOption.add_member(:safe_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SAFE_DELETE", traits: {"smithy.api#enumValue" => "SAFE_DELETE"}))
    GameServerGroupDeleteOption.add_member(:force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORCE_DELETE", traits: {"smithy.api#enumValue" => "FORCE_DELETE"}))
    GameServerGroupDeleteOption.add_member(:retain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETAIN", traits: {"smithy.api#enumValue" => "RETAIN"}))
    GameServerGroupInstanceType.add_member(:c4_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_large", traits: {"smithy.api#enumValue" => "c4.large"}))
    GameServerGroupInstanceType.add_member(:c4_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_xlarge", traits: {"smithy.api#enumValue" => "c4.xlarge"}))
    GameServerGroupInstanceType.add_member(:c4_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_2xlarge", traits: {"smithy.api#enumValue" => "c4.2xlarge"}))
    GameServerGroupInstanceType.add_member(:c4_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_4xlarge", traits: {"smithy.api#enumValue" => "c4.4xlarge"}))
    GameServerGroupInstanceType.add_member(:c4_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c4_8xlarge", traits: {"smithy.api#enumValue" => "c4.8xlarge"}))
    GameServerGroupInstanceType.add_member(:c5_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_large", traits: {"smithy.api#enumValue" => "c5.large"}))
    GameServerGroupInstanceType.add_member(:c5_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_xlarge", traits: {"smithy.api#enumValue" => "c5.xlarge"}))
    GameServerGroupInstanceType.add_member(:c5_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_2xlarge", traits: {"smithy.api#enumValue" => "c5.2xlarge"}))
    GameServerGroupInstanceType.add_member(:c5_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_4xlarge", traits: {"smithy.api#enumValue" => "c5.4xlarge"}))
    GameServerGroupInstanceType.add_member(:c5_9xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_9xlarge", traits: {"smithy.api#enumValue" => "c5.9xlarge"}))
    GameServerGroupInstanceType.add_member(:c5_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_12xlarge", traits: {"smithy.api#enumValue" => "c5.12xlarge"}))
    GameServerGroupInstanceType.add_member(:c5_18xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_18xlarge", traits: {"smithy.api#enumValue" => "c5.18xlarge"}))
    GameServerGroupInstanceType.add_member(:c5_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5_24xlarge", traits: {"smithy.api#enumValue" => "c5.24xlarge"}))
    GameServerGroupInstanceType.add_member(:c5a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_large", traits: {"smithy.api#enumValue" => "c5a.large"}))
    GameServerGroupInstanceType.add_member(:c5a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_xlarge", traits: {"smithy.api#enumValue" => "c5a.xlarge"}))
    GameServerGroupInstanceType.add_member(:c5a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_2xlarge", traits: {"smithy.api#enumValue" => "c5a.2xlarge"}))
    GameServerGroupInstanceType.add_member(:c5a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_4xlarge", traits: {"smithy.api#enumValue" => "c5a.4xlarge"}))
    GameServerGroupInstanceType.add_member(:c5a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_8xlarge", traits: {"smithy.api#enumValue" => "c5a.8xlarge"}))
    GameServerGroupInstanceType.add_member(:c5a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_12xlarge", traits: {"smithy.api#enumValue" => "c5a.12xlarge"}))
    GameServerGroupInstanceType.add_member(:c5a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_16xlarge", traits: {"smithy.api#enumValue" => "c5a.16xlarge"}))
    GameServerGroupInstanceType.add_member(:c5a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c5a_24xlarge", traits: {"smithy.api#enumValue" => "c5a.24xlarge"}))
    GameServerGroupInstanceType.add_member(:c6g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_medium", traits: {"smithy.api#enumValue" => "c6g.medium"}))
    GameServerGroupInstanceType.add_member(:c6g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_large", traits: {"smithy.api#enumValue" => "c6g.large"}))
    GameServerGroupInstanceType.add_member(:c6g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_xlarge", traits: {"smithy.api#enumValue" => "c6g.xlarge"}))
    GameServerGroupInstanceType.add_member(:c6g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_2xlarge", traits: {"smithy.api#enumValue" => "c6g.2xlarge"}))
    GameServerGroupInstanceType.add_member(:c6g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_4xlarge", traits: {"smithy.api#enumValue" => "c6g.4xlarge"}))
    GameServerGroupInstanceType.add_member(:c6g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_8xlarge", traits: {"smithy.api#enumValue" => "c6g.8xlarge"}))
    GameServerGroupInstanceType.add_member(:c6g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_12xlarge", traits: {"smithy.api#enumValue" => "c6g.12xlarge"}))
    GameServerGroupInstanceType.add_member(:c6g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "c6g_16xlarge", traits: {"smithy.api#enumValue" => "c6g.16xlarge"}))
    GameServerGroupInstanceType.add_member(:r4_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_large", traits: {"smithy.api#enumValue" => "r4.large"}))
    GameServerGroupInstanceType.add_member(:r4_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_xlarge", traits: {"smithy.api#enumValue" => "r4.xlarge"}))
    GameServerGroupInstanceType.add_member(:r4_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_2xlarge", traits: {"smithy.api#enumValue" => "r4.2xlarge"}))
    GameServerGroupInstanceType.add_member(:r4_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_4xlarge", traits: {"smithy.api#enumValue" => "r4.4xlarge"}))
    GameServerGroupInstanceType.add_member(:r4_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_8xlarge", traits: {"smithy.api#enumValue" => "r4.8xlarge"}))
    GameServerGroupInstanceType.add_member(:r4_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r4_16xlarge", traits: {"smithy.api#enumValue" => "r4.16xlarge"}))
    GameServerGroupInstanceType.add_member(:r5_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_large", traits: {"smithy.api#enumValue" => "r5.large"}))
    GameServerGroupInstanceType.add_member(:r5_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_xlarge", traits: {"smithy.api#enumValue" => "r5.xlarge"}))
    GameServerGroupInstanceType.add_member(:r5_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_2xlarge", traits: {"smithy.api#enumValue" => "r5.2xlarge"}))
    GameServerGroupInstanceType.add_member(:r5_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_4xlarge", traits: {"smithy.api#enumValue" => "r5.4xlarge"}))
    GameServerGroupInstanceType.add_member(:r5_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_8xlarge", traits: {"smithy.api#enumValue" => "r5.8xlarge"}))
    GameServerGroupInstanceType.add_member(:r5_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_12xlarge", traits: {"smithy.api#enumValue" => "r5.12xlarge"}))
    GameServerGroupInstanceType.add_member(:r5_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_16xlarge", traits: {"smithy.api#enumValue" => "r5.16xlarge"}))
    GameServerGroupInstanceType.add_member(:r5_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5_24xlarge", traits: {"smithy.api#enumValue" => "r5.24xlarge"}))
    GameServerGroupInstanceType.add_member(:r5a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_large", traits: {"smithy.api#enumValue" => "r5a.large"}))
    GameServerGroupInstanceType.add_member(:r5a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_xlarge", traits: {"smithy.api#enumValue" => "r5a.xlarge"}))
    GameServerGroupInstanceType.add_member(:r5a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_2xlarge", traits: {"smithy.api#enumValue" => "r5a.2xlarge"}))
    GameServerGroupInstanceType.add_member(:r5a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_4xlarge", traits: {"smithy.api#enumValue" => "r5a.4xlarge"}))
    GameServerGroupInstanceType.add_member(:r5a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_8xlarge", traits: {"smithy.api#enumValue" => "r5a.8xlarge"}))
    GameServerGroupInstanceType.add_member(:r5a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_12xlarge", traits: {"smithy.api#enumValue" => "r5a.12xlarge"}))
    GameServerGroupInstanceType.add_member(:r5a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_16xlarge", traits: {"smithy.api#enumValue" => "r5a.16xlarge"}))
    GameServerGroupInstanceType.add_member(:r5a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r5a_24xlarge", traits: {"smithy.api#enumValue" => "r5a.24xlarge"}))
    GameServerGroupInstanceType.add_member(:r6g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_medium", traits: {"smithy.api#enumValue" => "r6g.medium"}))
    GameServerGroupInstanceType.add_member(:r6g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_large", traits: {"smithy.api#enumValue" => "r6g.large"}))
    GameServerGroupInstanceType.add_member(:r6g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_xlarge", traits: {"smithy.api#enumValue" => "r6g.xlarge"}))
    GameServerGroupInstanceType.add_member(:r6g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_2xlarge", traits: {"smithy.api#enumValue" => "r6g.2xlarge"}))
    GameServerGroupInstanceType.add_member(:r6g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_4xlarge", traits: {"smithy.api#enumValue" => "r6g.4xlarge"}))
    GameServerGroupInstanceType.add_member(:r6g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_8xlarge", traits: {"smithy.api#enumValue" => "r6g.8xlarge"}))
    GameServerGroupInstanceType.add_member(:r6g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_12xlarge", traits: {"smithy.api#enumValue" => "r6g.12xlarge"}))
    GameServerGroupInstanceType.add_member(:r6g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "r6g_16xlarge", traits: {"smithy.api#enumValue" => "r6g.16xlarge"}))
    GameServerGroupInstanceType.add_member(:m4_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_large", traits: {"smithy.api#enumValue" => "m4.large"}))
    GameServerGroupInstanceType.add_member(:m4_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_xlarge", traits: {"smithy.api#enumValue" => "m4.xlarge"}))
    GameServerGroupInstanceType.add_member(:m4_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_2xlarge", traits: {"smithy.api#enumValue" => "m4.2xlarge"}))
    GameServerGroupInstanceType.add_member(:m4_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_4xlarge", traits: {"smithy.api#enumValue" => "m4.4xlarge"}))
    GameServerGroupInstanceType.add_member(:m4_10xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m4_10xlarge", traits: {"smithy.api#enumValue" => "m4.10xlarge"}))
    GameServerGroupInstanceType.add_member(:m5_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_large", traits: {"smithy.api#enumValue" => "m5.large"}))
    GameServerGroupInstanceType.add_member(:m5_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_xlarge", traits: {"smithy.api#enumValue" => "m5.xlarge"}))
    GameServerGroupInstanceType.add_member(:m5_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_2xlarge", traits: {"smithy.api#enumValue" => "m5.2xlarge"}))
    GameServerGroupInstanceType.add_member(:m5_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_4xlarge", traits: {"smithy.api#enumValue" => "m5.4xlarge"}))
    GameServerGroupInstanceType.add_member(:m5_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_8xlarge", traits: {"smithy.api#enumValue" => "m5.8xlarge"}))
    GameServerGroupInstanceType.add_member(:m5_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_12xlarge", traits: {"smithy.api#enumValue" => "m5.12xlarge"}))
    GameServerGroupInstanceType.add_member(:m5_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_16xlarge", traits: {"smithy.api#enumValue" => "m5.16xlarge"}))
    GameServerGroupInstanceType.add_member(:m5_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5_24xlarge", traits: {"smithy.api#enumValue" => "m5.24xlarge"}))
    GameServerGroupInstanceType.add_member(:m5a_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_large", traits: {"smithy.api#enumValue" => "m5a.large"}))
    GameServerGroupInstanceType.add_member(:m5a_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_xlarge", traits: {"smithy.api#enumValue" => "m5a.xlarge"}))
    GameServerGroupInstanceType.add_member(:m5a_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_2xlarge", traits: {"smithy.api#enumValue" => "m5a.2xlarge"}))
    GameServerGroupInstanceType.add_member(:m5a_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_4xlarge", traits: {"smithy.api#enumValue" => "m5a.4xlarge"}))
    GameServerGroupInstanceType.add_member(:m5a_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_8xlarge", traits: {"smithy.api#enumValue" => "m5a.8xlarge"}))
    GameServerGroupInstanceType.add_member(:m5a_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_12xlarge", traits: {"smithy.api#enumValue" => "m5a.12xlarge"}))
    GameServerGroupInstanceType.add_member(:m5a_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_16xlarge", traits: {"smithy.api#enumValue" => "m5a.16xlarge"}))
    GameServerGroupInstanceType.add_member(:m5a_24xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m5a_24xlarge", traits: {"smithy.api#enumValue" => "m5a.24xlarge"}))
    GameServerGroupInstanceType.add_member(:m6g_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_medium", traits: {"smithy.api#enumValue" => "m6g.medium"}))
    GameServerGroupInstanceType.add_member(:m6g_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_large", traits: {"smithy.api#enumValue" => "m6g.large"}))
    GameServerGroupInstanceType.add_member(:m6g_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_xlarge", traits: {"smithy.api#enumValue" => "m6g.xlarge"}))
    GameServerGroupInstanceType.add_member(:m6g_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_2xlarge", traits: {"smithy.api#enumValue" => "m6g.2xlarge"}))
    GameServerGroupInstanceType.add_member(:m6g_4xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_4xlarge", traits: {"smithy.api#enumValue" => "m6g.4xlarge"}))
    GameServerGroupInstanceType.add_member(:m6g_8xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_8xlarge", traits: {"smithy.api#enumValue" => "m6g.8xlarge"}))
    GameServerGroupInstanceType.add_member(:m6g_12xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_12xlarge", traits: {"smithy.api#enumValue" => "m6g.12xlarge"}))
    GameServerGroupInstanceType.add_member(:m6g_16xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "m6g_16xlarge", traits: {"smithy.api#enumValue" => "m6g.16xlarge"}))
    GameServerGroupStatus.add_member(:new, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NEW", traits: {"smithy.api#enumValue" => "NEW"}))
    GameServerGroupStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    GameServerGroupStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GameServerGroupStatus.add_member(:delete_scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_SCHEDULED", traits: {"smithy.api#enumValue" => "DELETE_SCHEDULED"}))
    GameServerGroupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    GameServerGroupStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    GameServerGroupStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    GameServerGroups.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroup)
    GameServerHealthCheck.add_member(:healthy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEALTHY", traits: {"smithy.api#enumValue" => "HEALTHY"}))
    GameServerInstance.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupName, location_name: "GameServerGroupName"))
    GameServerInstance.add_member(:game_server_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupArn, location_name: "GameServerGroupArn"))
    GameServerInstance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerInstanceId, location_name: "InstanceId"))
    GameServerInstance.add_member(:instance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerInstanceStatus, location_name: "InstanceStatus"))
    GameServerInstance.type = Types::GameServerInstance
    GameServerInstanceIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerInstanceId)
    GameServerInstanceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GameServerInstanceStatus.add_member(:draining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DRAINING", traits: {"smithy.api#enumValue" => "DRAINING"}))
    GameServerInstanceStatus.add_member(:spot_terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SPOT_TERMINATING", traits: {"smithy.api#enumValue" => "SPOT_TERMINATING"}))
    GameServerInstances.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerInstance)
    GameServerProtectionPolicy.add_member(:no_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_PROTECTION", traits: {"smithy.api#enumValue" => "NO_PROTECTION"}))
    GameServerProtectionPolicy.add_member(:full_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL_PROTECTION", traits: {"smithy.api#enumValue" => "FULL_PROTECTION"}))
    GameServerUtilizationStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    GameServerUtilizationStatus.add_member(:utilized, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UTILIZED", traits: {"smithy.api#enumValue" => "UTILIZED"}))
    GameServers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GameServer)
    GameSession.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "GameSessionId"))
    GameSession.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    GameSession.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    GameSession.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    GameSession.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    GameSession.add_member(:termination_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TerminationTime"))
    GameSession.add_member(:current_player_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "CurrentPlayerSessionCount"))
    GameSession.add_member(:maximum_player_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MaximumPlayerSessionCount"))
    GameSession.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionStatus, location_name: "Status"))
    GameSession.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionStatusReason, location_name: "StatusReason"))
    GameSession.add_member(:game_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: GamePropertyList, location_name: "GameProperties"))
    GameSession.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, location_name: "IpAddress"))
    GameSession.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsName, location_name: "DnsName"))
    GameSession.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "Port"))
    GameSession.add_member(:player_session_creation_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerSessionCreationPolicy, location_name: "PlayerSessionCreationPolicy"))
    GameSession.add_member(:creator_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "CreatorId"))
    GameSession.add_member(:game_session_data, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeGameSessionData, location_name: "GameSessionData"))
    GameSession.add_member(:matchmaker_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakerData, location_name: "MatchmakerData"))
    GameSession.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    GameSession.type = Types::GameSession
    GameSessionConnectionInfo.add_member(:game_session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel, location_name: "GameSessionArn"))
    GameSessionConnectionInfo.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, location_name: "IpAddress"))
    GameSessionConnectionInfo.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsName, location_name: "DnsName"))
    GameSessionConnectionInfo.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Port"))
    GameSessionConnectionInfo.add_member(:matched_player_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchedPlayerSessionList, location_name: "MatchedPlayerSessions"))
    GameSessionConnectionInfo.type = Types::GameSessionConnectionInfo
    GameSessionCreationLimitPolicy.add_member(:new_game_sessions_per_creator, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "NewGameSessionsPerCreator"))
    GameSessionCreationLimitPolicy.add_member(:policy_period_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "PolicyPeriodInMinutes"))
    GameSessionCreationLimitPolicy.type = Types::GameSessionCreationLimitPolicy
    GameSessionDetail.add_member(:game_session, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSession, location_name: "GameSession"))
    GameSessionDetail.add_member(:protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionPolicy, location_name: "ProtectionPolicy"))
    GameSessionDetail.type = Types::GameSessionDetail
    GameSessionDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionDetail)
    GameSessionFullException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    GameSessionFullException.type = Types::GameSessionFullException
    GameSessionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GameSession)
    GameSessionPlacement.add_member(:placement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdStringModel, location_name: "PlacementId"))
    GameSessionPlacement.add_member(:game_session_queue_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueName, location_name: "GameSessionQueueName"))
    GameSessionPlacement.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionPlacementState, location_name: "Status"))
    GameSessionPlacement.add_member(:game_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: GamePropertyList, location_name: "GameProperties"))
    GameSessionPlacement.add_member(:maximum_player_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MaximumPlayerSessionCount"))
    GameSessionPlacement.add_member(:game_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "GameSessionName"))
    GameSessionPlacement.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "GameSessionId"))
    GameSessionPlacement.add_member(:game_session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "GameSessionArn"))
    GameSessionPlacement.add_member(:game_session_region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "GameSessionRegion"))
    GameSessionPlacement.add_member(:player_latencies, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerLatencyList, location_name: "PlayerLatencies"))
    GameSessionPlacement.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartTime"))
    GameSessionPlacement.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndTime"))
    GameSessionPlacement.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, location_name: "IpAddress"))
    GameSessionPlacement.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsName, location_name: "DnsName"))
    GameSessionPlacement.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "Port"))
    GameSessionPlacement.add_member(:placed_player_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacedPlayerSessionList, location_name: "PlacedPlayerSessions"))
    GameSessionPlacement.add_member(:game_session_data, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeGameSessionData, location_name: "GameSessionData"))
    GameSessionPlacement.add_member(:matchmaker_data, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakerData, location_name: "MatchmakerData"))
    GameSessionPlacement.add_member(:priority_configuration_override, ::Smithy::Schema::Shapes::MemberShape.new(target: PriorityConfigurationOverride, location_name: "PriorityConfigurationOverride"))
    GameSessionPlacement.type = Types::GameSessionPlacement
    GameSessionPlacementState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    GameSessionPlacementState.add_member(:fulfilled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULFILLED", traits: {"smithy.api#enumValue" => "FULFILLED"}))
    GameSessionPlacementState.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    GameSessionPlacementState.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    GameSessionPlacementState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    GameSessionQueue.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueName, location_name: "Name"))
    GameSessionQueue.add_member(:game_session_queue_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueArn, location_name: "GameSessionQueueArn"))
    GameSessionQueue.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "TimeoutInSeconds"))
    GameSessionQueue.add_member(:player_latency_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerLatencyPolicyList, location_name: "PlayerLatencyPolicies"))
    GameSessionQueue.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueDestinationList, location_name: "Destinations"))
    GameSessionQueue.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, location_name: "FilterConfiguration"))
    GameSessionQueue.add_member(:priority_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PriorityConfiguration, location_name: "PriorityConfiguration"))
    GameSessionQueue.add_member(:custom_event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueCustomEventData, location_name: "CustomEventData"))
    GameSessionQueue.add_member(:notification_target, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueSnsArnStringModel, location_name: "NotificationTarget"))
    GameSessionQueue.type = Types::GameSessionQueue
    GameSessionQueueDestination.add_member(:destination_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel, location_name: "DestinationArn"))
    GameSessionQueueDestination.type = Types::GameSessionQueueDestination
    GameSessionQueueDestinationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueDestination)
    GameSessionQueueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueue)
    GameSessionQueueNameOrArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueNameOrArn)
    GameSessionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GameSessionStatus.add_member(:activating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVATING", traits: {"smithy.api#enumValue" => "ACTIVATING"}))
    GameSessionStatus.add_member(:terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATED", traits: {"smithy.api#enumValue" => "TERMINATED"}))
    GameSessionStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    GameSessionStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    GameSessionStatusReason.add_member(:interrupted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERRUPTED", traits: {"smithy.api#enumValue" => "INTERRUPTED"}))
    GameSessionStatusReason.add_member(:triggered_on_process_terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRIGGERED_ON_PROCESS_TERMINATE", traits: {"smithy.api#enumValue" => "TRIGGERED_ON_PROCESS_TERMINATE"}))
    GameSessionStatusReason.add_member(:force_terminated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORCE_TERMINATED", traits: {"smithy.api#enumValue" => "FORCE_TERMINATED"}))
    GetComputeAccessInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetComputeAccessInput.add_member(:compute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNameOrArn, location_name: "ComputeName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetComputeAccessInput.type = Types::GetComputeAccessInput
    GetComputeAccessOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId"))
    GetComputeAccessOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    GetComputeAccessOutput.add_member(:compute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNameOrArn, location_name: "ComputeName"))
    GetComputeAccessOutput.add_member(:compute_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeArn, location_name: "ComputeArn"))
    GetComputeAccessOutput.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCredentials, location_name: "Credentials"))
    GetComputeAccessOutput.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionTarget, location_name: "Target"))
    GetComputeAccessOutput.add_member(:container_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerIdentifierList, location_name: "ContainerIdentifiers"))
    GetComputeAccessOutput.type = Types::GetComputeAccessOutput
    GetComputeAuthTokenInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetComputeAuthTokenInput.add_member(:compute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNameOrArn, location_name: "ComputeName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetComputeAuthTokenInput.type = Types::GetComputeAuthTokenInput
    GetComputeAuthTokenOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId"))
    GetComputeAuthTokenOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    GetComputeAuthTokenOutput.add_member(:compute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeNameOrArn, location_name: "ComputeName"))
    GetComputeAuthTokenOutput.add_member(:compute_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeArn, location_name: "ComputeArn"))
    GetComputeAuthTokenOutput.add_member(:auth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeAuthToken, location_name: "AuthToken"))
    GetComputeAuthTokenOutput.add_member(:expiration_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ExpirationTimestamp"))
    GetComputeAuthTokenOutput.type = Types::GetComputeAuthTokenOutput
    GetGameSessionLogUrlInput.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel, location_name: "GameSessionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetGameSessionLogUrlInput.type = Types::GetGameSessionLogUrlInput
    GetGameSessionLogUrlOutput.add_member(:pre_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PreSignedUrl"))
    GetGameSessionLogUrlOutput.type = Types::GetGameSessionLogUrlOutput
    GetInstanceAccessInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetInstanceAccessInput.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, location_name: "InstanceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    GetInstanceAccessInput.type = Types::GetInstanceAccessInput
    GetInstanceAccessOutput.add_member(:instance_access, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceAccess, location_name: "InstanceAccess"))
    GetInstanceAccessOutput.type = Types::GetInstanceAccessOutput
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    Instance.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    Instance.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    Instance.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, location_name: "InstanceId"))
    Instance.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, location_name: "IpAddress"))
    Instance.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsName, location_name: "DnsName"))
    Instance.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, location_name: "OperatingSystem"))
    Instance.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EC2InstanceType, location_name: "Type"))
    Instance.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceStatus, location_name: "Status"))
    Instance.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    Instance.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    Instance.type = Types::Instance
    InstanceAccess.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    InstanceAccess.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceId, location_name: "InstanceId"))
    InstanceAccess.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, location_name: "IpAddress"))
    InstanceAccess.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: OperatingSystem, location_name: "OperatingSystem"))
    InstanceAccess.add_member(:credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCredentials, location_name: "Credentials"))
    InstanceAccess.type = Types::InstanceAccess
    InstanceCredentials.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "UserName"))
    InstanceCredentials.add_member(:secret, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Secret"))
    InstanceCredentials.type = Types::InstanceCredentials
    InstanceDefinition.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupInstanceType, location_name: "InstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    InstanceDefinition.add_member(:weighted_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: WeightedCapacity, location_name: "WeightedCapacity"))
    InstanceDefinition.type = Types::InstanceDefinition
    InstanceDefinitions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceDefinition)
    InstanceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Instance)
    InstanceRoleCredentialsProvider.add_member(:shared_credential_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHARED_CREDENTIAL_FILE", traits: {"smithy.api#enumValue" => "SHARED_CREDENTIAL_FILE"}))
    InstanceStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    InstanceStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    InstanceStatus.add_member(:terminating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATING", traits: {"smithy.api#enumValue" => "TERMINATING"}))
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    InternalServiceException.type = Types::InternalServiceException
    InvalidFleetStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    InvalidFleetStatusException.type = Types::InvalidFleetStatusException
    InvalidGameSessionStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    InvalidGameSessionStatusException.type = Types::InvalidGameSessionStatusException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    InvalidRequestException.type = Types::InvalidRequestException
    IpPermission.add_member(:from_port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "FromPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IpPermission.add_member(:to_port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "ToPort", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IpPermission.add_member(:ip_range, ::Smithy::Schema::Shapes::MemberShape.new(target: IpRange, location_name: "IpRange", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IpPermission.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: IpProtocol, location_name: "Protocol", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    IpPermission.type = Types::IpPermission
    IpPermissionsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IpPermission)
    IpProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    IpProtocol.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UDP", traits: {"smithy.api#enumValue" => "UDP"}))
    LatencyMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    LatencyMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger)
    LaunchTemplateSpecification.add_member(:launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateId, location_name: "LaunchTemplateId"))
    LaunchTemplateSpecification.add_member(:launch_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateName, location_name: "LaunchTemplateName"))
    LaunchTemplateSpecification.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateVersion, location_name: "Version"))
    LaunchTemplateSpecification.type = Types::LaunchTemplateSpecification
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAliasesInput.add_member(:routing_strategy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingStrategyType, location_name: "RoutingStrategyType"))
    ListAliasesInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Name"))
    ListAliasesInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    ListAliasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "NextToken"))
    ListAliasesInput.type = Types::ListAliasesInput
    ListAliasesOutput.add_member(:aliases, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasList, location_name: "Aliases"))
    ListAliasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "NextToken"))
    ListAliasesOutput.type = Types::ListAliasesOutput
    ListBuildsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildStatus, location_name: "Status"))
    ListBuildsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    ListBuildsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "NextToken"))
    ListBuildsInput.type = Types::ListBuildsInput
    ListBuildsOutput.add_member(:builds, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildList, location_name: "Builds"))
    ListBuildsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "NextToken"))
    ListBuildsOutput.type = Types::ListBuildsOutput
    ListComputeInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListComputeInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    ListComputeInput.add_member(:container_group_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionNameOrArn, location_name: "ContainerGroupDefinitionName"))
    ListComputeInput.add_member(:compute_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ListComputeInputStatus, location_name: "ComputeStatus"))
    ListComputeInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    ListComputeInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListComputeInput.type = Types::ListComputeInput
    ListComputeInputStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ListComputeInputStatus.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPAIRED", traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    ListComputeOutput.add_member(:compute_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeList, location_name: "ComputeList"))
    ListComputeOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListComputeOutput.type = Types::ListComputeOutput
    ListContainerFleetsInput.add_member(:container_group_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionNameOrArn, location_name: "ContainerGroupDefinitionName"))
    ListContainerFleetsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    ListContainerFleetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListContainerFleetsInput.type = Types::ListContainerFleetsInput
    ListContainerFleetsOutput.add_member(:container_fleets, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleetList, location_name: "ContainerFleets"))
    ListContainerFleetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListContainerFleetsOutput.type = Types::ListContainerFleetsOutput
    ListContainerGroupDefinitionVersionsInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionNameOrArn, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListContainerGroupDefinitionVersionsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListContainerGroupDefinitionVersionsLimit, location_name: "Limit"))
    ListContainerGroupDefinitionVersionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListContainerGroupDefinitionVersionsInput.type = Types::ListContainerGroupDefinitionVersionsInput
    ListContainerGroupDefinitionVersionsOutput.add_member(:container_group_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionList, location_name: "ContainerGroupDefinitions"))
    ListContainerGroupDefinitionVersionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListContainerGroupDefinitionVersionsOutput.type = Types::ListContainerGroupDefinitionVersionsOutput
    ListContainerGroupDefinitionsInput.add_member(:container_group_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupType, location_name: "ContainerGroupType"))
    ListContainerGroupDefinitionsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListContainerGroupDefinitionsLimit, location_name: "Limit"))
    ListContainerGroupDefinitionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListContainerGroupDefinitionsInput.type = Types::ListContainerGroupDefinitionsInput
    ListContainerGroupDefinitionsOutput.add_member(:container_group_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionList, location_name: "ContainerGroupDefinitions"))
    ListContainerGroupDefinitionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListContainerGroupDefinitionsOutput.type = Types::ListContainerGroupDefinitionsOutput
    ListFleetDeploymentsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId"))
    ListFleetDeploymentsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    ListFleetDeploymentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListFleetDeploymentsInput.type = Types::ListFleetDeploymentsInput
    ListFleetDeploymentsOutput.add_member(:fleet_deployments, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetDeployments, location_name: "FleetDeployments"))
    ListFleetDeploymentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListFleetDeploymentsOutput.type = Types::ListFleetDeploymentsOutput
    ListFleetsInput.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIdOrArn, location_name: "BuildId"))
    ListFleetsInput.add_member(:script_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptIdOrArn, location_name: "ScriptId"))
    ListFleetsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    ListFleetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListFleetsInput.type = Types::ListFleetsInput
    ListFleetsOutput.add_member(:fleet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdList, location_name: "FleetIds"))
    ListFleetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListFleetsOutput.type = Types::ListFleetsOutput
    ListGameServerGroupsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    ListGameServerGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListGameServerGroupsInput.type = Types::ListGameServerGroupsInput
    ListGameServerGroupsOutput.add_member(:game_server_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroups, location_name: "GameServerGroups"))
    ListGameServerGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListGameServerGroupsOutput.type = Types::ListGameServerGroupsOutput
    ListGameServersInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListGameServersInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, location_name: "SortOrder"))
    ListGameServersInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    ListGameServersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListGameServersInput.type = Types::ListGameServersInput
    ListGameServersOutput.add_member(:game_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServers, location_name: "GameServers"))
    ListGameServersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListGameServersOutput.type = Types::ListGameServersOutput
    ListLocationsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationFilterList, location_name: "Filters"))
    ListLocationsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListLocationsLimit, location_name: "Limit"))
    ListLocationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListLocationsInput.type = Types::ListLocationsInput
    ListLocationsOutput.add_member(:locations, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationModelList, location_name: "Locations"))
    ListLocationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    ListLocationsOutput.type = Types::ListLocationsOutput
    ListScriptsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    ListScriptsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "NextToken"))
    ListScriptsInput.type = Types::ListScriptsInput
    ListScriptsOutput.add_member(:scripts, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptList, location_name: "Scripts"))
    ListScriptsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "NextToken"))
    ListScriptsOutput.type = Types::ListScriptsOutput
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LocationAttributes.add_member(:location_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationState, location_name: "LocationState"))
    LocationAttributes.add_member(:stopped_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetActionList, location_name: "StoppedActions"))
    LocationAttributes.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUpdateStatus, location_name: "UpdateStatus"))
    LocationAttributes.type = Types::LocationAttributes
    LocationAttributesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LocationAttributes)
    LocationConfiguration.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    LocationConfiguration.type = Types::LocationConfiguration
    LocationConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LocationConfiguration)
    LocationFilter.add_member(:aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS", traits: {"smithy.api#enumValue" => "AWS"}))
    LocationFilter.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    LocationFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LocationFilter)
    LocationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel)
    LocationModel.add_member(:location_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "LocationName"))
    LocationModel.add_member(:location_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationArnModel, location_name: "LocationArn"))
    LocationModel.add_member(:ping_beacon, ::Smithy::Schema::Shapes::MemberShape.new(target: PingBeacon, location_name: "PingBeacon"))
    LocationModel.type = Types::LocationModel
    LocationModelList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LocationModel)
    LocationOrderOverrideList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel)
    LocationState.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    LocationState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetStatus, location_name: "Status"))
    LocationState.type = Types::LocationState
    LocationStateList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LocationState)
    LocationUpdateStatus.add_member(:pending_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_UPDATE", traits: {"smithy.api#enumValue" => "PENDING_UPDATE"}))
    LocationalDeployment.add_member(:deployment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentStatus, location_name: "DeploymentStatus"))
    LocationalDeployment.type = Types::LocationalDeployment
    LocationalDeployments.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAnd128MaxAsciiString)
    LocationalDeployments.value = ::Smithy::Schema::Shapes::MemberShape.new(target: LocationalDeployment)
    LogConfiguration.add_member(:log_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: LogDestination, location_name: "LogDestination"))
    LogConfiguration.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "S3BucketName"))
    LogConfiguration.add_member(:log_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArnStringModel, location_name: "LogGroupArn"))
    LogConfiguration.type = Types::LogConfiguration
    LogDestination.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    LogDestination.add_member(:cloudwatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUDWATCH", traits: {"smithy.api#enumValue" => "CLOUDWATCH"}))
    LogDestination.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    MatchedPlayerSession.add_member(:player_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerId, location_name: "PlayerId"))
    MatchedPlayerSession.add_member(:player_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerSessionId, location_name: "PlayerSessionId"))
    MatchedPlayerSession.type = Types::MatchedPlayerSession
    MatchedPlayerSessionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatchedPlayerSession)
    MatchmakingConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel, location_name: "Name"))
    MatchmakingConfiguration.add_member(:configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfigurationArn, location_name: "ConfigurationArn"))
    MatchmakingConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Description"))
    MatchmakingConfiguration.add_member(:game_session_queue_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueArnsList, location_name: "GameSessionQueueArns"))
    MatchmakingConfiguration.add_member(:request_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRequestTimeoutInteger, location_name: "RequestTimeoutSeconds"))
    MatchmakingConfiguration.add_member(:acceptance_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingAcceptanceTimeoutInteger, location_name: "AcceptanceTimeoutSeconds"))
    MatchmakingConfiguration.add_member(:acceptance_required, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanModel, location_name: "AcceptanceRequired"))
    MatchmakingConfiguration.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel, location_name: "RuleSetName"))
    MatchmakingConfiguration.add_member(:rule_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRuleSetArn, location_name: "RuleSetArn"))
    MatchmakingConfiguration.add_member(:notification_target, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsArnStringModel, location_name: "NotificationTarget"))
    MatchmakingConfiguration.add_member(:additional_player_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "AdditionalPlayerCount"))
    MatchmakingConfiguration.add_member(:custom_event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEventData, location_name: "CustomEventData"))
    MatchmakingConfiguration.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    MatchmakingConfiguration.add_member(:game_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: GamePropertyList, location_name: "GameProperties"))
    MatchmakingConfiguration.add_member(:game_session_data, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionData, location_name: "GameSessionData"))
    MatchmakingConfiguration.add_member(:backfill_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BackfillMode, location_name: "BackfillMode"))
    MatchmakingConfiguration.add_member(:flex_match_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FlexMatchMode, location_name: "FlexMatchMode"))
    MatchmakingConfiguration.type = Types::MatchmakingConfiguration
    MatchmakingConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfiguration)
    MatchmakingConfigurationNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfigurationName)
    MatchmakingConfigurationStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    MatchmakingConfigurationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    MatchmakingConfigurationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MatchmakingConfigurationStatus.add_member(:placing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLACING", traits: {"smithy.api#enumValue" => "PLACING"}))
    MatchmakingConfigurationStatus.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    MatchmakingConfigurationStatus.add_member(:requires_acceptance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUIRES_ACCEPTANCE", traits: {"smithy.api#enumValue" => "REQUIRES_ACCEPTANCE"}))
    MatchmakingConfigurationStatus.add_member(:searching, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SEARCHING", traits: {"smithy.api#enumValue" => "SEARCHING"}))
    MatchmakingConfigurationStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    MatchmakingIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel)
    MatchmakingRuleSet.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel, location_name: "RuleSetName"))
    MatchmakingRuleSet.add_member(:rule_set_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRuleSetArn, location_name: "RuleSetArn"))
    MatchmakingRuleSet.add_member(:rule_set_body, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetBody, location_name: "RuleSetBody", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    MatchmakingRuleSet.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    MatchmakingRuleSet.type = Types::MatchmakingRuleSet
    MatchmakingRuleSetList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRuleSet)
    MatchmakingRuleSetNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRuleSetName)
    MatchmakingTicket.add_member(:ticket_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel, location_name: "TicketId"))
    MatchmakingTicket.add_member(:configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel, location_name: "ConfigurationName"))
    MatchmakingTicket.add_member(:configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfigurationArn, location_name: "ConfigurationArn"))
    MatchmakingTicket.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfigurationStatus, location_name: "Status"))
    MatchmakingTicket.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StringModel, location_name: "StatusReason"))
    MatchmakingTicket.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StringModel, location_name: "StatusMessage"))
    MatchmakingTicket.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "StartTime"))
    MatchmakingTicket.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "EndTime"))
    MatchmakingTicket.add_member(:players, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerList, location_name: "Players"))
    MatchmakingTicket.add_member(:game_session_connection_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionConnectionInfo, location_name: "GameSessionConnectionInfo"))
    MatchmakingTicket.add_member(:estimated_wait_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "EstimatedWaitTime"))
    MatchmakingTicket.type = Types::MatchmakingTicket
    MatchmakingTicketList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingTicket)
    MetricGroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGroup)
    MetricName.add_member(:activating_game_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ActivatingGameSessions", traits: {"smithy.api#enumValue" => "ActivatingGameSessions"}))
    MetricName.add_member(:active_game_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ActiveGameSessions", traits: {"smithy.api#enumValue" => "ActiveGameSessions"}))
    MetricName.add_member(:active_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ActiveInstances", traits: {"smithy.api#enumValue" => "ActiveInstances"}))
    MetricName.add_member(:available_game_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AvailableGameSessions", traits: {"smithy.api#enumValue" => "AvailableGameSessions"}))
    MetricName.add_member(:available_player_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AvailablePlayerSessions", traits: {"smithy.api#enumValue" => "AvailablePlayerSessions"}))
    MetricName.add_member(:current_player_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CurrentPlayerSessions", traits: {"smithy.api#enumValue" => "CurrentPlayerSessions"}))
    MetricName.add_member(:idle_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IdleInstances", traits: {"smithy.api#enumValue" => "IdleInstances"}))
    MetricName.add_member(:percent_available_game_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PercentAvailableGameSessions", traits: {"smithy.api#enumValue" => "PercentAvailableGameSessions"}))
    MetricName.add_member(:percent_idle_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PercentIdleInstances", traits: {"smithy.api#enumValue" => "PercentIdleInstances"}))
    MetricName.add_member(:queue_depth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QueueDepth", traits: {"smithy.api#enumValue" => "QueueDepth"}))
    MetricName.add_member(:wait_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WaitTime", traits: {"smithy.api#enumValue" => "WaitTime"}))
    MetricName.add_member(:concurrent_activatable_game_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ConcurrentActivatableGameSessions", traits: {"smithy.api#enumValue" => "ConcurrentActivatableGameSessions"}))
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    NotFoundException.type = Types::NotFoundException
    NotReadyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    NotReadyException.type = Types::NotReadyException
    OperatingSystem.add_member(:windows_2012, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_2012", traits: {"smithy.api#enumValue" => "WINDOWS_2012"}))
    OperatingSystem.add_member(:amazon_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_LINUX", traits: {"smithy.api#enumValue" => "AMAZON_LINUX"}))
    OperatingSystem.add_member(:amazon_linux_2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_LINUX_2", traits: {"smithy.api#enumValue" => "AMAZON_LINUX_2"}))
    OperatingSystem.add_member(:windows_2016, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_2016", traits: {"smithy.api#enumValue" => "WINDOWS_2016"}))
    OperatingSystem.add_member(:amazon_linux_2023, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_LINUX_2023", traits: {"smithy.api#enumValue" => "AMAZON_LINUX_2023"}))
    OutOfCapacityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    OutOfCapacityException.type = Types::OutOfCapacityException
    PingBeacon.add_member(:udp_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: UDPEndpoint, location_name: "UDPEndpoint"))
    PingBeacon.type = Types::PingBeacon
    PlacedPlayerSession.add_member(:player_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerId, location_name: "PlayerId"))
    PlacedPlayerSession.add_member(:player_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerSessionId, location_name: "PlayerSessionId"))
    PlacedPlayerSession.type = Types::PlacedPlayerSession
    PlacedPlayerSessionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlacedPlayerSession)
    PlacementFallbackStrategy.add_member(:default_after_single_pass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT_AFTER_SINGLE_PASS", traits: {"smithy.api#enumValue" => "DEFAULT_AFTER_SINGLE_PASS"}))
    PlacementFallbackStrategy.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    Player.add_member(:player_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerId, location_name: "PlayerId"))
    Player.add_member(:player_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerAttributeMap, location_name: "PlayerAttributes"))
    Player.add_member(:team, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Team"))
    Player.add_member(:latency_in_ms, ::Smithy::Schema::Shapes::MemberShape.new(target: LatencyMap, location_name: "LatencyInMs"))
    Player.type = Types::Player
    PlayerAttributeMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString)
    PlayerAttributeMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: AttributeValue)
    PlayerAttributeStringDoubleMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerAttributeString)
    PlayerAttributeStringDoubleMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleObject)
    PlayerAttributeStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerAttributeString)
    PlayerDataMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString)
    PlayerDataMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerData)
    PlayerIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerId)
    PlayerIdsForAcceptMatch.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerId)
    PlayerLatency.add_member(:player_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerId, location_name: "PlayerId"))
    PlayerLatency.add_member(:region_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "RegionIdentifier"))
    PlayerLatency.add_member(:latency_in_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Float, location_name: "LatencyInMilliseconds"))
    PlayerLatency.type = Types::PlayerLatency
    PlayerLatencyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerLatency)
    PlayerLatencyPolicy.add_member(:maximum_individual_player_latency_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MaximumIndividualPlayerLatencyMilliseconds"))
    PlayerLatencyPolicy.add_member(:policy_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "PolicyDurationSeconds"))
    PlayerLatencyPolicy.type = Types::PlayerLatencyPolicy
    PlayerLatencyPolicyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerLatencyPolicy)
    PlayerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Player)
    PlayerSession.add_member(:player_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerSessionId, location_name: "PlayerSessionId"))
    PlayerSession.add_member(:player_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerId, location_name: "PlayerId"))
    PlayerSession.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "GameSessionId"))
    PlayerSession.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    PlayerSession.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    PlayerSession.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    PlayerSession.add_member(:termination_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "TerminationTime"))
    PlayerSession.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerSessionStatus, location_name: "Status"))
    PlayerSession.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, location_name: "IpAddress"))
    PlayerSession.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsName, location_name: "DnsName"))
    PlayerSession.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PortNumber, location_name: "Port"))
    PlayerSession.add_member(:player_data, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerData, location_name: "PlayerData"))
    PlayerSession.type = Types::PlayerSession
    PlayerSessionCreationPolicy.add_member(:accept_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCEPT_ALL", traits: {"smithy.api#enumValue" => "ACCEPT_ALL"}))
    PlayerSessionCreationPolicy.add_member(:deny_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENY_ALL", traits: {"smithy.api#enumValue" => "DENY_ALL"}))
    PlayerSessionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerSession)
    PlayerSessionStatus.add_member(:reserved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESERVED", traits: {"smithy.api#enumValue" => "RESERVED"}))
    PlayerSessionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PlayerSessionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    PlayerSessionStatus.add_member(:timedout, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMEDOUT", traits: {"smithy.api#enumValue" => "TIMEDOUT"}))
    PolicyType.add_member(:rule_based, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RuleBased", traits: {"smithy.api#enumValue" => "RuleBased"}))
    PolicyType.add_member(:target_based, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TargetBased", traits: {"smithy.api#enumValue" => "TargetBased"}))
    PriorityConfiguration.add_member(:priority_order, ::Smithy::Schema::Shapes::MemberShape.new(target: PriorityTypeList, location_name: "PriorityOrder"))
    PriorityConfiguration.add_member(:location_order, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationList, location_name: "LocationOrder"))
    PriorityConfiguration.type = Types::PriorityConfiguration
    PriorityConfigurationOverride.add_member(:placement_fallback_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementFallbackStrategy, location_name: "PlacementFallbackStrategy"))
    PriorityConfigurationOverride.add_member(:location_order, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationOrderOverrideList, location_name: "LocationOrder", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PriorityConfigurationOverride.type = Types::PriorityConfigurationOverride
    PriorityType.add_member(:latency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LATENCY", traits: {"smithy.api#enumValue" => "LATENCY"}))
    PriorityType.add_member(:cost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COST", traits: {"smithy.api#enumValue" => "COST"}))
    PriorityType.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESTINATION", traits: {"smithy.api#enumValue" => "DESTINATION"}))
    PriorityType.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCATION", traits: {"smithy.api#enumValue" => "LOCATION"}))
    PriorityTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PriorityType)
    ProtectionPolicy.add_member(:no_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NoProtection", traits: {"smithy.api#enumValue" => "NoProtection"}))
    ProtectionPolicy.add_member(:full_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FullProtection", traits: {"smithy.api#enumValue" => "FullProtection"}))
    PutScalingPolicyInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutScalingPolicyInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutScalingPolicyInput.add_member(:scaling_adjustment, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "ScalingAdjustment"))
    PutScalingPolicyInput.add_member(:scaling_adjustment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingAdjustmentType, location_name: "ScalingAdjustmentType"))
    PutScalingPolicyInput.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "Threshold"))
    PutScalingPolicyInput.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperatorType, location_name: "ComparisonOperator"))
    PutScalingPolicyInput.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "EvaluationPeriods"))
    PutScalingPolicyInput.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, location_name: "MetricName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    PutScalingPolicyInput.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, location_name: "PolicyType"))
    PutScalingPolicyInput.add_member(:target_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetConfiguration, location_name: "TargetConfiguration"))
    PutScalingPolicyInput.type = Types::PutScalingPolicyInput
    PutScalingPolicyOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    PutScalingPolicyOutput.type = Types::PutScalingPolicyOutput
    QueueArnsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel)
    RegisterComputeInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterComputeInput.add_member(:compute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeName, location_name: "ComputeName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterComputeInput.add_member(:certificate_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "CertificatePath"))
    RegisterComputeInput.add_member(:dns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsNameInput, location_name: "DnsName"))
    RegisterComputeInput.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddress, location_name: "IpAddress"))
    RegisterComputeInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    RegisterComputeInput.type = Types::RegisterComputeInput
    RegisterComputeOutput.add_member(:compute, ::Smithy::Schema::Shapes::MemberShape.new(target: Compute, location_name: "Compute"))
    RegisterComputeOutput.type = Types::RegisterComputeOutput
    RegisterGameServerInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterGameServerInput.add_member(:game_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerId, location_name: "GameServerId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterGameServerInput.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerInstanceId, location_name: "InstanceId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RegisterGameServerInput.add_member(:connection_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerConnectionInfo, location_name: "ConnectionInfo"))
    RegisterGameServerInput.add_member(:game_server_data, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerData, location_name: "GameServerData"))
    RegisterGameServerInput.type = Types::RegisterGameServerInput
    RegisterGameServerOutput.add_member(:game_server, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServer, location_name: "GameServer"))
    RegisterGameServerOutput.type = Types::RegisterGameServerOutput
    RequestUploadCredentialsInput.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIdOrArn, location_name: "BuildId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    RequestUploadCredentialsInput.type = Types::RequestUploadCredentialsInput
    RequestUploadCredentialsOutput.add_member(:upload_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsCredentials, location_name: "UploadCredentials"))
    RequestUploadCredentialsOutput.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "StorageLocation"))
    RequestUploadCredentialsOutput.type = Types::RequestUploadCredentialsOutput
    ResolveAliasInput.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasIdOrArn, location_name: "AliasId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResolveAliasInput.type = Types::ResolveAliasInput
    ResolveAliasOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    ResolveAliasOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    ResolveAliasOutput.type = Types::ResolveAliasOutput
    ResourceCreationLimitPolicy.add_member(:new_game_sessions_per_creator, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "NewGameSessionsPerCreator"))
    ResourceCreationLimitPolicy.add_member(:policy_period_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "PolicyPeriodInMinutes"))
    ResourceCreationLimitPolicy.type = Types::ResourceCreationLimitPolicy
    ResumeGameServerGroupInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResumeGameServerGroupInput.add_member(:resume_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupActions, location_name: "ResumeActions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ResumeGameServerGroupInput.type = Types::ResumeGameServerGroupInput
    ResumeGameServerGroupOutput.add_member(:game_server_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroup, location_name: "GameServerGroup"))
    ResumeGameServerGroupOutput.type = Types::ResumeGameServerGroupOutput
    RoutingStrategy.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingStrategyType, location_name: "Type"))
    RoutingStrategy.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    RoutingStrategy.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FreeText, location_name: "Message"))
    RoutingStrategy.type = Types::RoutingStrategy
    RoutingStrategyType.add_member(:simple, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIMPLE", traits: {"smithy.api#enumValue" => "SIMPLE"}))
    RoutingStrategyType.add_member(:terminal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINAL", traits: {"smithy.api#enumValue" => "TERMINAL"}))
    RuntimeConfiguration.add_member(:server_processes, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerProcessList, location_name: "ServerProcesses"))
    RuntimeConfiguration.add_member(:max_concurrent_game_session_activations, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxConcurrentGameSessionActivations, location_name: "MaxConcurrentGameSessionActivations"))
    RuntimeConfiguration.add_member(:game_session_activation_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionActivationTimeoutSeconds, location_name: "GameSessionActivationTimeoutSeconds"))
    RuntimeConfiguration.type = Types::RuntimeConfiguration
    S3Location.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Bucket"))
    S3Location.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Key"))
    S3Location.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "RoleArn"))
    S3Location.add_member(:object_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "ObjectVersion"))
    S3Location.type = Types::S3Location
    ScalingAdjustmentType.add_member(:change_in_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ChangeInCapacity", traits: {"smithy.api#enumValue" => "ChangeInCapacity"}))
    ScalingAdjustmentType.add_member(:exact_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ExactCapacity", traits: {"smithy.api#enumValue" => "ExactCapacity"}))
    ScalingAdjustmentType.add_member(:percent_change_in_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PercentChangeInCapacity", traits: {"smithy.api#enumValue" => "PercentChangeInCapacity"}))
    ScalingPolicy.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    ScalingPolicy.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    ScalingPolicy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    ScalingPolicy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingStatusType, location_name: "Status"))
    ScalingPolicy.add_member(:scaling_adjustment, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, location_name: "ScalingAdjustment"))
    ScalingPolicy.add_member(:scaling_adjustment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingAdjustmentType, location_name: "ScalingAdjustmentType"))
    ScalingPolicy.add_member(:comparison_operator, ::Smithy::Schema::Shapes::MemberShape.new(target: ComparisonOperatorType, location_name: "ComparisonOperator"))
    ScalingPolicy.add_member(:threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "Threshold"))
    ScalingPolicy.add_member(:evaluation_periods, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "EvaluationPeriods"))
    ScalingPolicy.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, location_name: "MetricName"))
    ScalingPolicy.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, location_name: "PolicyType"))
    ScalingPolicy.add_member(:target_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetConfiguration, location_name: "TargetConfiguration"))
    ScalingPolicy.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationUpdateStatus, location_name: "UpdateStatus"))
    ScalingPolicy.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    ScalingPolicy.type = Types::ScalingPolicy
    ScalingPolicyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingPolicy)
    ScalingStatusType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ScalingStatusType.add_member(:update_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_REQUESTED", traits: {"smithy.api#enumValue" => "UPDATE_REQUESTED"}))
    ScalingStatusType.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ScalingStatusType.add_member(:delete_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_REQUESTED", traits: {"smithy.api#enumValue" => "DELETE_REQUESTED"}))
    ScalingStatusType.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ScalingStatusType.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ScalingStatusType.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    Script.add_member(:script_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptId, location_name: "ScriptId"))
    Script.add_member(:script_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptArn, location_name: "ScriptArn"))
    Script.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    Script.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Version"))
    Script.add_member(:size_on_disk, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveLong, location_name: "SizeOnDisk"))
    Script.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    Script.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "StorageLocation"))
    Script.type = Types::Script
    ScriptList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Script)
    SearchGameSessionsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId"))
    SearchGameSessionsInput.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasIdOrArn, location_name: "AliasId"))
    SearchGameSessionsInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    SearchGameSessionsInput.add_member(:filter_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "FilterExpression"))
    SearchGameSessionsInput.add_member(:sort_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "SortExpression"))
    SearchGameSessionsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Limit"))
    SearchGameSessionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    SearchGameSessionsInput.type = Types::SearchGameSessionsInput
    SearchGameSessionsOutput.add_member(:game_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionList, location_name: "GameSessions"))
    SearchGameSessionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "NextToken"))
    SearchGameSessionsOutput.type = Types::SearchGameSessionsOutput
    ServerProcess.add_member(:launch_path, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchPathStringModel, location_name: "LaunchPath", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServerProcess.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchParametersStringModel, location_name: "Parameters"))
    ServerProcess.add_member(:concurrent_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "ConcurrentExecutions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServerProcess.type = Types::ServerProcess
    ServerProcessList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ServerProcess)
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    StartFleetActionsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartFleetActionsInput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetActionList, location_name: "Actions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartFleetActionsInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    StartFleetActionsInput.type = Types::StartFleetActionsInput
    StartFleetActionsOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    StartFleetActionsOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    StartFleetActionsOutput.type = Types::StartFleetActionsOutput
    StartGameSessionPlacementInput.add_member(:placement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdStringModel, location_name: "PlacementId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartGameSessionPlacementInput.add_member(:game_session_queue_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueNameOrArn, location_name: "GameSessionQueueName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartGameSessionPlacementInput.add_member(:game_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: GamePropertyList, location_name: "GameProperties"))
    StartGameSessionPlacementInput.add_member(:maximum_player_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MaximumPlayerSessionCount", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartGameSessionPlacementInput.add_member(:game_session_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "GameSessionName"))
    StartGameSessionPlacementInput.add_member(:player_latencies, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerLatencyList, location_name: "PlayerLatencies"))
    StartGameSessionPlacementInput.add_member(:desired_player_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: DesiredPlayerSessionList, location_name: "DesiredPlayerSessions"))
    StartGameSessionPlacementInput.add_member(:game_session_data, ::Smithy::Schema::Shapes::MemberShape.new(target: LargeGameSessionData, location_name: "GameSessionData"))
    StartGameSessionPlacementInput.add_member(:priority_configuration_override, ::Smithy::Schema::Shapes::MemberShape.new(target: PriorityConfigurationOverride, location_name: "PriorityConfigurationOverride"))
    StartGameSessionPlacementInput.type = Types::StartGameSessionPlacementInput
    StartGameSessionPlacementOutput.add_member(:game_session_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionPlacement, location_name: "GameSessionPlacement"))
    StartGameSessionPlacementOutput.type = Types::StartGameSessionPlacementOutput
    StartMatchBackfillInput.add_member(:ticket_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel, location_name: "TicketId"))
    StartMatchBackfillInput.add_member(:configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfigurationName, location_name: "ConfigurationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartMatchBackfillInput.add_member(:game_session_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel, location_name: "GameSessionArn"))
    StartMatchBackfillInput.add_member(:players, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerList, location_name: "Players", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartMatchBackfillInput.type = Types::StartMatchBackfillInput
    StartMatchBackfillOutput.add_member(:matchmaking_ticket, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingTicket, location_name: "MatchmakingTicket"))
    StartMatchBackfillOutput.type = Types::StartMatchBackfillOutput
    StartMatchmakingInput.add_member(:ticket_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel, location_name: "TicketId"))
    StartMatchmakingInput.add_member(:configuration_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfigurationName, location_name: "ConfigurationName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartMatchmakingInput.add_member(:players, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerList, location_name: "Players", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartMatchmakingInput.type = Types::StartMatchmakingInput
    StartMatchmakingOutput.add_member(:matchmaking_ticket, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingTicket, location_name: "MatchmakingTicket"))
    StartMatchmakingOutput.type = Types::StartMatchmakingOutput
    StopFleetActionsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopFleetActionsInput.add_member(:actions, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetActionList, location_name: "Actions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopFleetActionsInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    StopFleetActionsInput.type = Types::StopFleetActionsInput
    StopFleetActionsOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    StopFleetActionsOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    StopFleetActionsOutput.type = Types::StopFleetActionsOutput
    StopGameSessionPlacementInput.add_member(:placement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IdStringModel, location_name: "PlacementId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopGameSessionPlacementInput.type = Types::StopGameSessionPlacementInput
    StopGameSessionPlacementOutput.add_member(:game_session_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionPlacement, location_name: "GameSessionPlacement"))
    StopGameSessionPlacementOutput.type = Types::StopGameSessionPlacementOutput
    StopMatchmakingInput.add_member(:ticket_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingIdStringModel, location_name: "TicketId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopMatchmakingInput.type = Types::StopMatchmakingInput
    StopMatchmakingOutput.type = Types::StopMatchmakingOutput
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString)
    SupportContainerDefinition.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAnd128MaxAsciiString, location_name: "ContainerName"))
    SupportContainerDefinition.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDependencyList, location_name: "DependsOn"))
    SupportContainerDefinition.add_member(:mount_points, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMountPointList, location_name: "MountPoints"))
    SupportContainerDefinition.add_member(:environment_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerEnvironmentList, location_name: "EnvironmentOverride"))
    SupportContainerDefinition.add_member(:essential, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanModel, location_name: "Essential"))
    SupportContainerDefinition.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerHealthCheck, location_name: "HealthCheck"))
    SupportContainerDefinition.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageUriString, location_name: "ImageUri"))
    SupportContainerDefinition.add_member(:memory_hard_limit_mebibytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMemoryLimit, location_name: "MemoryHardLimitMebibytes"))
    SupportContainerDefinition.add_member(:port_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerPortConfiguration, location_name: "PortConfiguration"))
    SupportContainerDefinition.add_member(:resolved_image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: Sha256, location_name: "ResolvedImageDigest"))
    SupportContainerDefinition.add_member(:vcpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerVcpu, location_name: "Vcpu"))
    SupportContainerDefinition.type = Types::SupportContainerDefinition
    SupportContainerDefinitionInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAnd128MaxAsciiString, location_name: "ContainerName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SupportContainerDefinitionInput.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDependencyList, location_name: "DependsOn"))
    SupportContainerDefinitionInput.add_member(:mount_points, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMountPointList, location_name: "MountPoints"))
    SupportContainerDefinitionInput.add_member(:environment_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerEnvironmentList, location_name: "EnvironmentOverride"))
    SupportContainerDefinitionInput.add_member(:essential, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanModel, location_name: "Essential"))
    SupportContainerDefinitionInput.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerHealthCheck, location_name: "HealthCheck"))
    SupportContainerDefinitionInput.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageUriString, location_name: "ImageUri", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SupportContainerDefinitionInput.add_member(:memory_hard_limit_mebibytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerMemoryLimit, location_name: "MemoryHardLimitMebibytes"))
    SupportContainerDefinitionInput.add_member(:port_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerPortConfiguration, location_name: "PortConfiguration"))
    SupportContainerDefinitionInput.add_member(:vcpu, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerVcpu, location_name: "Vcpu"))
    SupportContainerDefinitionInput.type = Types::SupportContainerDefinitionInput
    SupportContainerDefinitionInputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SupportContainerDefinitionInput)
    SupportContainerDefinitionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SupportContainerDefinition)
    SuspendGameServerGroupInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SuspendGameServerGroupInput.add_member(:suspend_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupActions, location_name: "SuspendActions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SuspendGameServerGroupInput.type = Types::SuspendGameServerGroupInput
    SuspendGameServerGroupOutput.add_member(:game_server_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroup, location_name: "GameServerGroup"))
    SuspendGameServerGroupOutput.type = Types::SuspendGameServerGroupOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaggingFailedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    TaggingFailedException.type = Types::TaggingFailedException
    TargetConfiguration.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "TargetValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TargetConfiguration.type = Types::TargetConfiguration
    TargetTrackingConfiguration.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, location_name: "TargetValue", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TargetTrackingConfiguration.type = Types::TargetTrackingConfiguration
    TerminalRoutingStrategyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    TerminalRoutingStrategyException.type = Types::TerminalRoutingStrategyException
    TerminateGameSessionInput.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel, location_name: "GameSessionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateGameSessionInput.add_member(:termination_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TerminationMode, location_name: "TerminationMode", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TerminateGameSessionInput.type = Types::TerminateGameSessionInput
    TerminateGameSessionOutput.add_member(:game_session, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSession, location_name: "GameSession"))
    TerminateGameSessionOutput.type = Types::TerminateGameSessionOutput
    TerminationMode.add_member(:trigger_on_process_terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TRIGGER_ON_PROCESS_TERMINATE", traits: {"smithy.api#enumValue" => "TRIGGER_ON_PROCESS_TERMINATE"}))
    TerminationMode.add_member(:force_terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORCE_TERMINATE", traits: {"smithy.api#enumValue" => "FORCE_TERMINATE"}))
    UDPEndpoint.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Domain"))
    UDPEndpoint.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "Port"))
    UDPEndpoint.type = Types::UDPEndpoint
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UnsupportedRegionException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "Message"))
    UnsupportedRegionException.type = Types::UnsupportedRegionException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, location_name: "ResourceARN", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAliasInput.add_member(:alias_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AliasIdOrArn, location_name: "AliasId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateAliasInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonBlankAndLengthConstraintString, location_name: "Name"))
    UpdateAliasInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Description"))
    UpdateAliasInput.add_member(:routing_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: RoutingStrategy, location_name: "RoutingStrategy"))
    UpdateAliasInput.type = Types::UpdateAliasInput
    UpdateAliasOutput.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, location_name: "Alias"))
    UpdateAliasOutput.type = Types::UpdateAliasOutput
    UpdateBuildInput.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIdOrArn, location_name: "BuildId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateBuildInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    UpdateBuildInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Version"))
    UpdateBuildInput.type = Types::UpdateBuildInput
    UpdateBuildOutput.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: Build, location_name: "Build"))
    UpdateBuildOutput.type = Types::UpdateBuildOutput
    UpdateContainerFleetInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateContainerFleetInput.add_member(:game_server_container_group_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionNameOrArn, location_name: "GameServerContainerGroupDefinitionName"))
    UpdateContainerFleetInput.add_member(:per_instance_container_group_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionNameOrArn, location_name: "PerInstanceContainerGroupDefinitionName"))
    UpdateContainerFleetInput.add_member(:game_server_container_groups_per_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerContainerGroupsPerInstance, location_name: "GameServerContainerGroupsPerInstance"))
    UpdateContainerFleetInput.add_member(:instance_connection_port_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ConnectionPortRange, location_name: "InstanceConnectionPortRange"))
    UpdateContainerFleetInput.add_member(:instance_inbound_permission_authorizations, ::Smithy::Schema::Shapes::MemberShape.new(target: IpPermissionsList, location_name: "InstanceInboundPermissionAuthorizations"))
    UpdateContainerFleetInput.add_member(:instance_inbound_permission_revocations, ::Smithy::Schema::Shapes::MemberShape.new(target: IpPermissionsList, location_name: "InstanceInboundPermissionRevocations"))
    UpdateContainerFleetInput.add_member(:deployment_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentConfiguration, location_name: "DeploymentConfiguration"))
    UpdateContainerFleetInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Description"))
    UpdateContainerFleetInput.add_member(:metric_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGroupList, location_name: "MetricGroups"))
    UpdateContainerFleetInput.add_member(:new_game_session_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    UpdateContainerFleetInput.add_member(:game_session_creation_limit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionCreationLimitPolicy, location_name: "GameSessionCreationLimitPolicy"))
    UpdateContainerFleetInput.add_member(:log_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: LogConfiguration, location_name: "LogConfiguration"))
    UpdateContainerFleetInput.add_member(:remove_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleetRemoveAttributeList, location_name: "RemoveAttributes"))
    UpdateContainerFleetInput.type = Types::UpdateContainerFleetInput
    UpdateContainerFleetOutput.add_member(:container_fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerFleet, location_name: "ContainerFleet"))
    UpdateContainerFleetOutput.type = Types::UpdateContainerFleetOutput
    UpdateContainerGroupDefinitionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinitionNameOrArn, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateContainerGroupDefinitionInput.add_member(:game_server_container_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerContainerDefinitionInput, location_name: "GameServerContainerDefinition"))
    UpdateContainerGroupDefinitionInput.add_member(:support_container_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: SupportContainerDefinitionInputList, location_name: "SupportContainerDefinitions"))
    UpdateContainerGroupDefinitionInput.add_member(:total_memory_limit_mebibytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerTotalMemoryLimit, location_name: "TotalMemoryLimitMebibytes"))
    UpdateContainerGroupDefinitionInput.add_member(:total_vcpu_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerTotalVcpuLimit, location_name: "TotalVcpuLimit"))
    UpdateContainerGroupDefinitionInput.add_member(:version_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "VersionDescription"))
    UpdateContainerGroupDefinitionInput.add_member(:source_version_number, ::Smithy::Schema::Shapes::MemberShape.new(target: PositiveInteger, location_name: "SourceVersionNumber"))
    UpdateContainerGroupDefinitionInput.add_member(:operating_system, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerOperatingSystem, location_name: "OperatingSystem"))
    UpdateContainerGroupDefinitionInput.type = Types::UpdateContainerGroupDefinitionInput
    UpdateContainerGroupDefinitionOutput.add_member(:container_group_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerGroupDefinition, location_name: "ContainerGroupDefinition"))
    UpdateContainerGroupDefinitionOutput.type = Types::UpdateContainerGroupDefinitionOutput
    UpdateFleetAttributesInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateFleetAttributesInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    UpdateFleetAttributesInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Description"))
    UpdateFleetAttributesInput.add_member(:new_game_session_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionPolicy, location_name: "NewGameSessionProtectionPolicy"))
    UpdateFleetAttributesInput.add_member(:resource_creation_limit_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCreationLimitPolicy, location_name: "ResourceCreationLimitPolicy"))
    UpdateFleetAttributesInput.add_member(:metric_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricGroupList, location_name: "MetricGroups"))
    UpdateFleetAttributesInput.add_member(:anywhere_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AnywhereConfiguration, location_name: "AnywhereConfiguration"))
    UpdateFleetAttributesInput.type = Types::UpdateFleetAttributesInput
    UpdateFleetAttributesOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    UpdateFleetAttributesOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    UpdateFleetAttributesOutput.type = Types::UpdateFleetAttributesOutput
    UpdateFleetCapacityInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateFleetCapacityInput.add_member(:desired_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "DesiredInstances"))
    UpdateFleetCapacityInput.add_member(:min_size, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MinSize"))
    UpdateFleetCapacityInput.add_member(:max_size, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MaxSize"))
    UpdateFleetCapacityInput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    UpdateFleetCapacityInput.type = Types::UpdateFleetCapacityInput
    UpdateFleetCapacityOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    UpdateFleetCapacityOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    UpdateFleetCapacityOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: LocationStringModel, location_name: "Location"))
    UpdateFleetCapacityOutput.type = Types::UpdateFleetCapacityOutput
    UpdateFleetPortSettingsInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateFleetPortSettingsInput.add_member(:inbound_permission_authorizations, ::Smithy::Schema::Shapes::MemberShape.new(target: IpPermissionsList, location_name: "InboundPermissionAuthorizations"))
    UpdateFleetPortSettingsInput.add_member(:inbound_permission_revocations, ::Smithy::Schema::Shapes::MemberShape.new(target: IpPermissionsList, location_name: "InboundPermissionRevocations"))
    UpdateFleetPortSettingsInput.type = Types::UpdateFleetPortSettingsInput
    UpdateFleetPortSettingsOutput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    UpdateFleetPortSettingsOutput.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    UpdateFleetPortSettingsOutput.type = Types::UpdateFleetPortSettingsOutput
    UpdateGameServerGroupInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateGameServerGroupInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoleArn, location_name: "RoleArn"))
    UpdateGameServerGroupInput.add_member(:instance_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceDefinitions, location_name: "InstanceDefinitions"))
    UpdateGameServerGroupInput.add_member(:game_server_protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerProtectionPolicy, location_name: "GameServerProtectionPolicy"))
    UpdateGameServerGroupInput.add_member(:balancing_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: BalancingStrategy, location_name: "BalancingStrategy"))
    UpdateGameServerGroupInput.type = Types::UpdateGameServerGroupInput
    UpdateGameServerGroupOutput.add_member(:game_server_group, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroup, location_name: "GameServerGroup"))
    UpdateGameServerGroupOutput.type = Types::UpdateGameServerGroupOutput
    UpdateGameServerInput.add_member(:game_server_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerGroupNameOrArn, location_name: "GameServerGroupName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateGameServerInput.add_member(:game_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerId, location_name: "GameServerId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateGameServerInput.add_member(:game_server_data, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerData, location_name: "GameServerData"))
    UpdateGameServerInput.add_member(:utilization_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerUtilizationStatus, location_name: "UtilizationStatus"))
    UpdateGameServerInput.add_member(:health_check, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServerHealthCheck, location_name: "HealthCheck"))
    UpdateGameServerInput.type = Types::UpdateGameServerInput
    UpdateGameServerOutput.add_member(:game_server, ::Smithy::Schema::Shapes::MemberShape.new(target: GameServer, location_name: "GameServer"))
    UpdateGameServerOutput.type = Types::UpdateGameServerOutput
    UpdateGameSessionInput.add_member(:game_session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnStringModel, location_name: "GameSessionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateGameSessionInput.add_member(:maximum_player_session_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "MaximumPlayerSessionCount"))
    UpdateGameSessionInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    UpdateGameSessionInput.add_member(:player_session_creation_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerSessionCreationPolicy, location_name: "PlayerSessionCreationPolicy"))
    UpdateGameSessionInput.add_member(:protection_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtectionPolicy, location_name: "ProtectionPolicy"))
    UpdateGameSessionInput.add_member(:game_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: GamePropertyList, location_name: "GameProperties"))
    UpdateGameSessionInput.type = Types::UpdateGameSessionInput
    UpdateGameSessionOutput.add_member(:game_session, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSession, location_name: "GameSession"))
    UpdateGameSessionOutput.type = Types::UpdateGameSessionOutput
    UpdateGameSessionQueueInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueNameOrArn, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateGameSessionQueueInput.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "TimeoutInSeconds"))
    UpdateGameSessionQueueInput.add_member(:player_latency_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PlayerLatencyPolicyList, location_name: "PlayerLatencyPolicies"))
    UpdateGameSessionQueueInput.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueueDestinationList, location_name: "Destinations"))
    UpdateGameSessionQueueInput.add_member(:filter_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterConfiguration, location_name: "FilterConfiguration"))
    UpdateGameSessionQueueInput.add_member(:priority_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PriorityConfiguration, location_name: "PriorityConfiguration"))
    UpdateGameSessionQueueInput.add_member(:custom_event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueCustomEventData, location_name: "CustomEventData"))
    UpdateGameSessionQueueInput.add_member(:notification_target, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueSnsArnStringModel, location_name: "NotificationTarget"))
    UpdateGameSessionQueueInput.type = Types::UpdateGameSessionQueueInput
    UpdateGameSessionQueueOutput.add_member(:game_session_queue, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionQueue, location_name: "GameSessionQueue"))
    UpdateGameSessionQueueOutput.type = Types::UpdateGameSessionQueueOutput
    UpdateMatchmakingConfigurationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfigurationName, location_name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateMatchmakingConfigurationInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Description"))
    UpdateMatchmakingConfigurationInput.add_member(:game_session_queue_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: QueueArnsList, location_name: "GameSessionQueueArns"))
    UpdateMatchmakingConfigurationInput.add_member(:request_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRequestTimeoutInteger, location_name: "RequestTimeoutSeconds"))
    UpdateMatchmakingConfigurationInput.add_member(:acceptance_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingAcceptanceTimeoutInteger, location_name: "AcceptanceTimeoutSeconds"))
    UpdateMatchmakingConfigurationInput.add_member(:acceptance_required, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanModel, location_name: "AcceptanceRequired"))
    UpdateMatchmakingConfigurationInput.add_member(:rule_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingRuleSetName, location_name: "RuleSetName"))
    UpdateMatchmakingConfigurationInput.add_member(:notification_target, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsArnStringModel, location_name: "NotificationTarget"))
    UpdateMatchmakingConfigurationInput.add_member(:additional_player_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WholeNumber, location_name: "AdditionalPlayerCount"))
    UpdateMatchmakingConfigurationInput.add_member(:custom_event_data, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomEventData, location_name: "CustomEventData"))
    UpdateMatchmakingConfigurationInput.add_member(:game_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: GamePropertyList, location_name: "GameProperties"))
    UpdateMatchmakingConfigurationInput.add_member(:game_session_data, ::Smithy::Schema::Shapes::MemberShape.new(target: GameSessionData, location_name: "GameSessionData"))
    UpdateMatchmakingConfigurationInput.add_member(:backfill_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BackfillMode, location_name: "BackfillMode"))
    UpdateMatchmakingConfigurationInput.add_member(:flex_match_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: FlexMatchMode, location_name: "FlexMatchMode"))
    UpdateMatchmakingConfigurationInput.type = Types::UpdateMatchmakingConfigurationInput
    UpdateMatchmakingConfigurationOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchmakingConfiguration, location_name: "Configuration"))
    UpdateMatchmakingConfigurationOutput.type = Types::UpdateMatchmakingConfigurationOutput
    UpdateRuntimeConfigurationInput.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetIdOrArn, location_name: "FleetId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateRuntimeConfigurationInput.add_member(:runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeConfiguration, location_name: "RuntimeConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateRuntimeConfigurationInput.type = Types::UpdateRuntimeConfigurationInput
    UpdateRuntimeConfigurationOutput.add_member(:runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeConfiguration, location_name: "RuntimeConfiguration"))
    UpdateRuntimeConfigurationOutput.type = Types::UpdateRuntimeConfigurationOutput
    UpdateScriptInput.add_member(:script_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptIdOrArn, location_name: "ScriptId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateScriptInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Name"))
    UpdateScriptInput.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Version"))
    UpdateScriptInput.add_member(:storage_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "StorageLocation"))
    UpdateScriptInput.add_member(:zip_file, ::Smithy::Schema::Shapes::MemberShape.new(target: ZipBlob, location_name: "ZipFile"))
    UpdateScriptInput.type = Types::UpdateScriptInput
    UpdateScriptOutput.add_member(:script, ::Smithy::Schema::Shapes::MemberShape.new(target: Script, location_name: "Script"))
    UpdateScriptOutput.type = Types::UpdateScriptOutput
    ValidateMatchmakingRuleSetInput.add_member(:rule_set_body, ::Smithy::Schema::Shapes::MemberShape.new(target: RuleSetBody, location_name: "RuleSetBody", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ValidateMatchmakingRuleSetInput.type = Types::ValidateMatchmakingRuleSetInput
    ValidateMatchmakingRuleSetOutput.add_member(:valid, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanModel, location_name: "Valid"))
    ValidateMatchmakingRuleSetOutput.type = Types::ValidateMatchmakingRuleSetOutput
    VpcPeeringAuthorization.add_member(:game_lift_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "GameLiftAwsAccountId"))
    VpcPeeringAuthorization.add_member(:peer_vpc_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PeerVpcAwsAccountId"))
    VpcPeeringAuthorization.add_member(:peer_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PeerVpcId"))
    VpcPeeringAuthorization.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreationTime"))
    VpcPeeringAuthorization.add_member(:expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "ExpirationTime"))
    VpcPeeringAuthorization.type = Types::VpcPeeringAuthorization
    VpcPeeringAuthorizationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcPeeringAuthorization)
    VpcPeeringConnection.add_member(:fleet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetId, location_name: "FleetId"))
    VpcPeeringConnection.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArn, location_name: "FleetArn"))
    VpcPeeringConnection.add_member(:ip_v4_cidr_block, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "IpV4CidrBlock"))
    VpcPeeringConnection.add_member(:vpc_peering_connection_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "VpcPeeringConnectionId"))
    VpcPeeringConnection.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcPeeringConnectionStatus, location_name: "Status"))
    VpcPeeringConnection.add_member(:peer_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "PeerVpcId"))
    VpcPeeringConnection.add_member(:game_lift_vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "GameLiftVpcId"))
    VpcPeeringConnection.type = Types::VpcPeeringConnection
    VpcPeeringConnectionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcPeeringConnection)
    VpcPeeringConnectionStatus.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Code"))
    VpcPeeringConnectionStatus.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonZeroAndMaxString, location_name: "Message"))
    VpcPeeringConnectionStatus.type = Types::VpcPeeringConnectionStatus
    VpcSubnets.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VpcSubnet)

    GameLift = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.gamelift#GameLift"
      service.name = "GameLift"
      service.version = "2015-10-01"
      service.traits = {"aws.api#service" => {"sdkId" => "GameLift", "arnNamespace" => "gamelift", "cloudFormationName" => "GameLift", "cloudTrailEventSource" => "gamelift.amazonaws.com", "endpointPrefix" => "gamelift"}, "aws.auth#sigv4" => {"name" => "gamelift"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon GameLift", "smithy.api#xmlNamespace" => {"uri" => "http://gamelift.amazonaws.com/doc/"}}
      service.add_operation(:accept_match, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#AcceptMatch"
        operation.name = "AcceptMatch"
        operation.input = AcceptMatchInput
        operation.output = AcceptMatchOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:claim_game_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ClaimGameServer"
        operation.name = "ClaimGameServer"
        operation.input = ClaimGameServerInput
        operation.output = ClaimGameServerOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << OutOfCapacityException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:create_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateAlias"
        operation.name = "CreateAlias"
        operation.input = CreateAliasInput
        operation.output = CreateAliasOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:create_build, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateBuild"
        operation.name = "CreateBuild"
        operation.input = CreateBuildInput
        operation.output = CreateBuildOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:create_container_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateContainerFleet"
        operation.name = "CreateContainerFleet"
        operation.input = CreateContainerFleetInput
        operation.output = CreateContainerFleetOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:create_container_group_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateContainerGroupDefinition"
        operation.name = "CreateContainerGroupDefinition"
        operation.input = CreateContainerGroupDefinitionInput
        operation.output = CreateContainerGroupDefinitionOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:create_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateFleet"
        operation.name = "CreateFleet"
        operation.input = CreateFleetInput
        operation.output = CreateFleetOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << NotReadyException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:create_fleet_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateFleetLocations"
        operation.name = "CreateFleetLocations"
        operation.input = CreateFleetLocationsInput
        operation.output = CreateFleetLocationsOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidFleetStatusException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << NotReadyException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:create_game_server_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateGameServerGroup"
        operation.name = "CreateGameServerGroup"
        operation.input = CreateGameServerGroupInput
        operation.output = CreateGameServerGroupOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:create_game_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateGameSession"
        operation.name = "CreateGameSession"
        operation.input = CreateGameSessionInput
        operation.output = CreateGameSessionOutput
        operation.errors << ConflictException
        operation.errors << FleetCapacityExceededException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InternalServiceException
        operation.errors << InvalidFleetStatusException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TerminalRoutingStrategyException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:create_game_session_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateGameSessionQueue"
        operation.name = "CreateGameSessionQueue"
        operation.input = CreateGameSessionQueueInput
        operation.output = CreateGameSessionQueueOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:create_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateLocation"
        operation.name = "CreateLocation"
        operation.input = CreateLocationInput
        operation.output = CreateLocationOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:create_matchmaking_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateMatchmakingConfiguration"
        operation.name = "CreateMatchmakingConfiguration"
        operation.input = CreateMatchmakingConfigurationInput
        operation.output = CreateMatchmakingConfigurationOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:create_matchmaking_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateMatchmakingRuleSet"
        operation.name = "CreateMatchmakingRuleSet"
        operation.input = CreateMatchmakingRuleSetInput
        operation.output = CreateMatchmakingRuleSetOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << TaggingFailedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:create_player_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreatePlayerSession"
        operation.name = "CreatePlayerSession"
        operation.input = CreatePlayerSessionInput
        operation.output = CreatePlayerSessionOutput
        operation.errors << GameSessionFullException
        operation.errors << InternalServiceException
        operation.errors << InvalidGameSessionStatusException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TerminalRoutingStrategyException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:create_player_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreatePlayerSessions"
        operation.name = "CreatePlayerSessions"
        operation.input = CreatePlayerSessionsInput
        operation.output = CreatePlayerSessionsOutput
        operation.errors << GameSessionFullException
        operation.errors << InternalServiceException
        operation.errors << InvalidGameSessionStatusException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TerminalRoutingStrategyException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:create_script, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateScript"
        operation.name = "CreateScript"
        operation.input = CreateScriptInput
        operation.output = CreateScriptOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:create_vpc_peering_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateVpcPeeringAuthorization"
        operation.name = "CreateVpcPeeringAuthorization"
        operation.input = CreateVpcPeeringAuthorizationInput
        operation.output = CreateVpcPeeringAuthorizationOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:create_vpc_peering_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#CreateVpcPeeringConnection"
        operation.name = "CreateVpcPeeringConnection"
        operation.input = CreateVpcPeeringConnectionInput
        operation.output = CreateVpcPeeringConnectionOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:delete_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteAlias"
        operation.name = "DeleteAlias"
        operation.input = DeleteAliasInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:delete_build, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteBuild"
        operation.name = "DeleteBuild"
        operation.input = DeleteBuildInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:delete_container_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteContainerFleet"
        operation.name = "DeleteContainerFleet"
        operation.input = DeleteContainerFleetInput
        operation.output = DeleteContainerFleetOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:delete_container_group_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteContainerGroupDefinition"
        operation.name = "DeleteContainerGroupDefinition"
        operation.input = DeleteContainerGroupDefinitionInput
        operation.output = DeleteContainerGroupDefinitionOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:delete_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteFleet"
        operation.name = "DeleteFleet"
        operation.input = DeleteFleetInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServiceException
        operation.errors << InvalidFleetStatusException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:delete_fleet_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteFleetLocations"
        operation.name = "DeleteFleetLocations"
        operation.input = DeleteFleetLocationsInput
        operation.output = DeleteFleetLocationsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:delete_game_server_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteGameServerGroup"
        operation.name = "DeleteGameServerGroup"
        operation.input = DeleteGameServerGroupInput
        operation.output = DeleteGameServerGroupOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:delete_game_session_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteGameSessionQueue"
        operation.name = "DeleteGameSessionQueue"
        operation.input = DeleteGameSessionQueueInput
        operation.output = DeleteGameSessionQueueOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:delete_location, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteLocation"
        operation.name = "DeleteLocation"
        operation.input = DeleteLocationInput
        operation.output = DeleteLocationOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:delete_matchmaking_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteMatchmakingConfiguration"
        operation.name = "DeleteMatchmakingConfiguration"
        operation.input = DeleteMatchmakingConfigurationInput
        operation.output = DeleteMatchmakingConfigurationOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:delete_matchmaking_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteMatchmakingRuleSet"
        operation.name = "DeleteMatchmakingRuleSet"
        operation.input = DeleteMatchmakingRuleSetInput
        operation.output = DeleteMatchmakingRuleSetOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:delete_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteScalingPolicy"
        operation.name = "DeleteScalingPolicy"
        operation.input = DeleteScalingPolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:delete_script, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteScript"
        operation.name = "DeleteScript"
        operation.input = DeleteScriptInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:delete_vpc_peering_authorization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteVpcPeeringAuthorization"
        operation.name = "DeleteVpcPeeringAuthorization"
        operation.input = DeleteVpcPeeringAuthorizationInput
        operation.output = DeleteVpcPeeringAuthorizationOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:delete_vpc_peering_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeleteVpcPeeringConnection"
        operation.name = "DeleteVpcPeeringConnection"
        operation.input = DeleteVpcPeeringConnectionInput
        operation.output = DeleteVpcPeeringConnectionOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:deregister_compute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeregisterCompute"
        operation.name = "DeregisterCompute"
        operation.input = DeregisterComputeInput
        operation.output = DeregisterComputeOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:deregister_game_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DeregisterGameServer"
        operation.name = "DeregisterGameServer"
        operation.input = DeregisterGameServerInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:describe_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeAlias"
        operation.name = "DescribeAlias"
        operation.input = DescribeAliasInput
        operation.output = DescribeAliasOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:describe_build, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeBuild"
        operation.name = "DescribeBuild"
        operation.input = DescribeBuildInput
        operation.output = DescribeBuildOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:describe_compute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeCompute"
        operation.name = "DescribeCompute"
        operation.input = DescribeComputeInput
        operation.output = DescribeComputeOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:describe_container_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeContainerFleet"
        operation.name = "DescribeContainerFleet"
        operation.input = DescribeContainerFleetInput
        operation.output = DescribeContainerFleetOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:describe_container_group_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeContainerGroupDefinition"
        operation.name = "DescribeContainerGroupDefinition"
        operation.input = DescribeContainerGroupDefinitionInput
        operation.output = DescribeContainerGroupDefinitionOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:describe_ec2_instance_limits, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeEC2InstanceLimits"
        operation.name = "DescribeEC2InstanceLimits"
        operation.input = DescribeEC2InstanceLimitsInput
        operation.output = DescribeEC2InstanceLimitsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:describe_fleet_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeFleetAttributes"
        operation.name = "DescribeFleetAttributes"
        operation.input = DescribeFleetAttributesInput
        operation.output = DescribeFleetAttributesOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetAttributes.new
      end)
      service.add_operation(:describe_fleet_capacity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeFleetCapacity"
        operation.name = "DescribeFleetCapacity"
        operation.input = DescribeFleetCapacityInput
        operation.output = DescribeFleetCapacityOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetCapacity.new
      end)
      service.add_operation(:describe_fleet_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeFleetDeployment"
        operation.name = "DescribeFleetDeployment"
        operation.input = DescribeFleetDeploymentInput
        operation.output = DescribeFleetDeploymentOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:describe_fleet_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeFleetEvents"
        operation.name = "DescribeFleetEvents"
        operation.input = DescribeFleetEventsInput
        operation.output = DescribeFleetEventsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetEvents.new
      end)
      service.add_operation(:describe_fleet_location_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeFleetLocationAttributes"
        operation.name = "DescribeFleetLocationAttributes"
        operation.input = DescribeFleetLocationAttributesInput
        operation.output = DescribeFleetLocationAttributesOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetLocationAttributes.new
      end)
      service.add_operation(:describe_fleet_location_capacity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeFleetLocationCapacity"
        operation.name = "DescribeFleetLocationCapacity"
        operation.input = DescribeFleetLocationCapacityInput
        operation.output = DescribeFleetLocationCapacityOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:describe_fleet_location_utilization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeFleetLocationUtilization"
        operation.name = "DescribeFleetLocationUtilization"
        operation.input = DescribeFleetLocationUtilizationInput
        operation.output = DescribeFleetLocationUtilizationOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:describe_fleet_port_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeFleetPortSettings"
        operation.name = "DescribeFleetPortSettings"
        operation.input = DescribeFleetPortSettingsInput
        operation.output = DescribeFleetPortSettingsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:describe_fleet_utilization, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeFleetUtilization"
        operation.name = "DescribeFleetUtilization"
        operation.input = DescribeFleetUtilizationInput
        operation.output = DescribeFleetUtilizationOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeFleetUtilization.new
      end)
      service.add_operation(:describe_game_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeGameServer"
        operation.name = "DescribeGameServer"
        operation.input = DescribeGameServerInput
        operation.output = DescribeGameServerOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:describe_game_server_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeGameServerGroup"
        operation.name = "DescribeGameServerGroup"
        operation.input = DescribeGameServerGroupInput
        operation.output = DescribeGameServerGroupOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:describe_game_server_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeGameServerInstances"
        operation.name = "DescribeGameServerInstances"
        operation.input = DescribeGameServerInstancesInput
        operation.output = DescribeGameServerInstancesOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeGameServerInstances.new
      end)
      service.add_operation(:describe_game_session_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeGameSessionDetails"
        operation.name = "DescribeGameSessionDetails"
        operation.input = DescribeGameSessionDetailsInput
        operation.output = DescribeGameSessionDetailsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TerminalRoutingStrategyException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeGameSessionDetails.new
      end)
      service.add_operation(:describe_game_session_placement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeGameSessionPlacement"
        operation.name = "DescribeGameSessionPlacement"
        operation.input = DescribeGameSessionPlacementInput
        operation.output = DescribeGameSessionPlacementOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:describe_game_session_queues, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeGameSessionQueues"
        operation.name = "DescribeGameSessionQueues"
        operation.input = DescribeGameSessionQueuesInput
        operation.output = DescribeGameSessionQueuesOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeGameSessionQueues.new
      end)
      service.add_operation(:describe_game_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeGameSessions"
        operation.name = "DescribeGameSessions"
        operation.input = DescribeGameSessionsInput
        operation.output = DescribeGameSessionsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TerminalRoutingStrategyException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeGameSessions.new
      end)
      service.add_operation(:describe_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeInstances"
        operation.name = "DescribeInstances"
        operation.input = DescribeInstancesInput
        operation.output = DescribeInstancesOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeInstances.new
      end)
      service.add_operation(:describe_matchmaking, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeMatchmaking"
        operation.name = "DescribeMatchmaking"
        operation.input = DescribeMatchmakingInput
        operation.output = DescribeMatchmakingOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:describe_matchmaking_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeMatchmakingConfigurations"
        operation.name = "DescribeMatchmakingConfigurations"
        operation.input = DescribeMatchmakingConfigurationsInput
        operation.output = DescribeMatchmakingConfigurationsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMatchmakingConfigurations.new
      end)
      service.add_operation(:describe_matchmaking_rule_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeMatchmakingRuleSets"
        operation.name = "DescribeMatchmakingRuleSets"
        operation.input = DescribeMatchmakingRuleSetsInput
        operation.output = DescribeMatchmakingRuleSetsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeMatchmakingRuleSets.new
      end)
      service.add_operation(:describe_player_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribePlayerSessions"
        operation.name = "DescribePlayerSessions"
        operation.input = DescribePlayerSessionsInput
        operation.output = DescribePlayerSessionsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribePlayerSessions.new
      end)
      service.add_operation(:describe_runtime_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeRuntimeConfiguration"
        operation.name = "DescribeRuntimeConfiguration"
        operation.input = DescribeRuntimeConfigurationInput
        operation.output = DescribeRuntimeConfigurationOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:describe_scaling_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeScalingPolicies"
        operation.name = "DescribeScalingPolicies"
        operation.input = DescribeScalingPoliciesInput
        operation.output = DescribeScalingPoliciesOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeScalingPolicies.new
      end)
      service.add_operation(:describe_script, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeScript"
        operation.name = "DescribeScript"
        operation.input = DescribeScriptInput
        operation.output = DescribeScriptOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:describe_vpc_peering_authorizations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeVpcPeeringAuthorizations"
        operation.name = "DescribeVpcPeeringAuthorizations"
        operation.input = DescribeVpcPeeringAuthorizationsInput
        operation.output = DescribeVpcPeeringAuthorizationsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:describe_vpc_peering_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#DescribeVpcPeeringConnections"
        operation.name = "DescribeVpcPeeringConnections"
        operation.input = DescribeVpcPeeringConnectionsInput
        operation.output = DescribeVpcPeeringConnectionsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:get_compute_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#GetComputeAccess"
        operation.name = "GetComputeAccess"
        operation.input = GetComputeAccessInput
        operation.output = GetComputeAccessOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:get_compute_auth_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#GetComputeAuthToken"
        operation.name = "GetComputeAuthToken"
        operation.input = GetComputeAuthTokenInput
        operation.output = GetComputeAuthTokenOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:get_game_session_log_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#GetGameSessionLogUrl"
        operation.name = "GetGameSessionLogUrl"
        operation.input = GetGameSessionLogUrlInput
        operation.output = GetGameSessionLogUrlOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:get_instance_access, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#GetInstanceAccess"
        operation.name = "GetInstanceAccess"
        operation.input = GetInstanceAccessInput
        operation.output = GetInstanceAccessOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:list_aliases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListAliases"
        operation.name = "ListAliases"
        operation.input = ListAliasesInput
        operation.output = ListAliasesOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnauthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListAliases.new
      end)
      service.add_operation(:list_builds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListBuilds"
        operation.name = "ListBuilds"
        operation.input = ListBuildsInput
        operation.output = ListBuildsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListBuildsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListBuilds.new
      end)
      service.add_operation(:list_compute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListCompute"
        operation.name = "ListCompute"
        operation.input = ListComputeInput
        operation.output = ListComputeOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::ListCompute.new
      end)
      service.add_operation(:list_container_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListContainerFleets"
        operation.name = "ListContainerFleets"
        operation.input = ListContainerFleetsInput
        operation.output = ListContainerFleetsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::ListContainerFleets.new
      end)
      service.add_operation(:list_container_group_definition_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListContainerGroupDefinitionVersions"
        operation.name = "ListContainerGroupDefinitionVersions"
        operation.input = ListContainerGroupDefinitionVersionsInput
        operation.output = ListContainerGroupDefinitionVersionsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::ListContainerGroupDefinitionVersions.new
      end)
      service.add_operation(:list_container_group_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListContainerGroupDefinitions"
        operation.name = "ListContainerGroupDefinitions"
        operation.input = ListContainerGroupDefinitionsInput
        operation.output = ListContainerGroupDefinitionsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::ListContainerGroupDefinitions.new
      end)
      service.add_operation(:list_fleet_deployments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListFleetDeployments"
        operation.name = "ListFleetDeployments"
        operation.input = ListFleetDeploymentsInput
        operation.output = ListFleetDeploymentsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFleetDeployments.new
      end)
      service.add_operation(:list_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListFleets"
        operation.name = "ListFleets"
        operation.input = ListFleetsInput
        operation.output = ListFleetsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFleets.new
      end)
      service.add_operation(:list_game_server_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListGameServerGroups"
        operation.name = "ListGameServerGroups"
        operation.input = ListGameServerGroupsInput
        operation.output = ListGameServerGroupsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnauthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListGameServerGroups.new
      end)
      service.add_operation(:list_game_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListGameServers"
        operation.name = "ListGameServers"
        operation.input = ListGameServersInput
        operation.output = ListGameServersOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnauthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListGameServers.new
      end)
      service.add_operation(:list_locations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListLocations"
        operation.name = "ListLocations"
        operation.input = ListLocationsInput
        operation.output = ListLocationsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnauthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListLocations.new
      end)
      service.add_operation(:list_scripts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListScripts"
        operation.name = "ListScripts"
        operation.input = ListScriptsInput
        operation.output = ListScriptsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnauthorizedException
        operation.traits = {}
        operation[:paginator] = Paginators::ListScripts.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:put_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#PutScalingPolicy"
        operation.name = "PutScalingPolicy"
        operation.input = PutScalingPolicyInput
        operation.output = PutScalingPolicyOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:register_compute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#RegisterCompute"
        operation.name = "RegisterCompute"
        operation.input = RegisterComputeInput
        operation.output = RegisterComputeOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotReadyException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:register_game_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#RegisterGameServer"
        operation.name = "RegisterGameServer"
        operation.input = RegisterGameServerInput
        operation.output = RegisterGameServerOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:request_upload_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#RequestUploadCredentials"
        operation.name = "RequestUploadCredentials"
        operation.input = RequestUploadCredentialsInput
        operation.output = RequestUploadCredentialsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:resolve_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ResolveAlias"
        operation.name = "ResolveAlias"
        operation.input = ResolveAliasInput
        operation.output = ResolveAliasOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TerminalRoutingStrategyException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:resume_game_server_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ResumeGameServerGroup"
        operation.name = "ResumeGameServerGroup"
        operation.input = ResumeGameServerGroupInput
        operation.output = ResumeGameServerGroupOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:search_game_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#SearchGameSessions"
        operation.name = "SearchGameSessions"
        operation.input = SearchGameSessionsInput
        operation.output = SearchGameSessionsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TerminalRoutingStrategyException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
        operation[:paginator] = Paginators::SearchGameSessions.new
      end)
      service.add_operation(:start_fleet_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#StartFleetActions"
        operation.name = "StartFleetActions"
        operation.input = StartFleetActionsInput
        operation.output = StartFleetActionsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:start_game_session_placement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#StartGameSessionPlacement"
        operation.name = "StartGameSessionPlacement"
        operation.input = StartGameSessionPlacementInput
        operation.output = StartGameSessionPlacementOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:start_match_backfill, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#StartMatchBackfill"
        operation.name = "StartMatchBackfill"
        operation.input = StartMatchBackfillInput
        operation.output = StartMatchBackfillOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:start_matchmaking, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#StartMatchmaking"
        operation.name = "StartMatchmaking"
        operation.input = StartMatchmakingInput
        operation.output = StartMatchmakingOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:stop_fleet_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#StopFleetActions"
        operation.name = "StopFleetActions"
        operation.input = StopFleetActionsInput
        operation.output = StopFleetActionsOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:stop_game_session_placement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#StopGameSessionPlacement"
        operation.name = "StopGameSessionPlacement"
        operation.input = StopGameSessionPlacementInput
        operation.output = StopGameSessionPlacementOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:stop_matchmaking, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#StopMatchmaking"
        operation.name = "StopMatchmaking"
        operation.input = StopMatchmakingInput
        operation.output = StopMatchmakingOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:suspend_game_server_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#SuspendGameServerGroup"
        operation.name = "SuspendGameServerGroup"
        operation.input = SuspendGameServerGroupInput
        operation.output = SuspendGameServerGroupOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:terminate_game_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#TerminateGameSession"
        operation.name = "TerminateGameSession"
        operation.input = TerminateGameSessionInput
        operation.output = TerminateGameSessionOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidGameSessionStatusException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << NotReadyException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << TaggingFailedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:update_alias, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateAlias"
        operation.name = "UpdateAlias"
        operation.input = UpdateAliasInput
        operation.output = UpdateAliasOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:update_build, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateBuild"
        operation.name = "UpdateBuild"
        operation.input = UpdateBuildInput
        operation.output = UpdateBuildOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:update_container_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateContainerFleet"
        operation.name = "UpdateContainerFleet"
        operation.input = UpdateContainerFleetInput
        operation.output = UpdateContainerFleetOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << NotReadyException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:update_container_group_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateContainerGroupDefinition"
        operation.name = "UpdateContainerGroupDefinition"
        operation.input = UpdateContainerGroupDefinitionInput
        operation.output = UpdateContainerGroupDefinitionOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:update_fleet_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateFleetAttributes"
        operation.name = "UpdateFleetAttributes"
        operation.input = UpdateFleetAttributesInput
        operation.output = UpdateFleetAttributesOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidFleetStatusException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:update_fleet_capacity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateFleetCapacity"
        operation.name = "UpdateFleetCapacity"
        operation.input = UpdateFleetCapacityInput
        operation.output = UpdateFleetCapacityOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidFleetStatusException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:update_fleet_port_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateFleetPortSettings"
        operation.name = "UpdateFleetPortSettings"
        operation.input = UpdateFleetPortSettingsInput
        operation.output = UpdateFleetPortSettingsOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidFleetStatusException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:update_game_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateGameServer"
        operation.name = "UpdateGameServer"
        operation.input = UpdateGameServerInput
        operation.output = UpdateGameServerOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:update_game_server_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateGameServerGroup"
        operation.name = "UpdateGameServerGroup"
        operation.input = UpdateGameServerGroupInput
        operation.output = UpdateGameServerGroupOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:update_game_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateGameSession"
        operation.name = "UpdateGameSession"
        operation.input = UpdateGameSessionInput
        operation.output = UpdateGameSessionOutput
        operation.errors << ConflictException
        operation.errors << InternalServiceException
        operation.errors << InvalidGameSessionStatusException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:update_game_session_queue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateGameSessionQueue"
        operation.name = "UpdateGameSessionQueue"
        operation.input = UpdateGameSessionQueueInput
        operation.output = UpdateGameSessionQueueOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:update_matchmaking_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateMatchmakingConfiguration"
        operation.name = "UpdateMatchmakingConfiguration"
        operation.input = UpdateMatchmakingConfigurationInput
        operation.output = UpdateMatchmakingConfigurationOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnsupportedRegionException
        operation.traits = {}
      end)
      service.add_operation(:update_runtime_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateRuntimeConfiguration"
        operation.name = "UpdateRuntimeConfiguration"
        operation.input = UpdateRuntimeConfigurationInput
        operation.output = UpdateRuntimeConfigurationOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidFleetStatusException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:update_script, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#UpdateScript"
        operation.name = "UpdateScript"
        operation.input = UpdateScriptInput
        operation.output = UpdateScriptOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {}
      end)
      service.add_operation(:validate_matchmaking_rule_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.gamelift#ValidateMatchmakingRuleSet"
        operation.name = "ValidateMatchmakingRuleSet"
        operation.input = ValidateMatchmakingRuleSetInput
        operation.output = ValidateMatchmakingRuleSetOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidRequestException
        operation.errors << UnsupportedRegionException
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
