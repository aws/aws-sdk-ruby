# frozen_string_literal: true

# This is generated code!

module Aws::CodeBuild
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#AccountLimitExceededException", name: "AccountLimitExceededException", traits: {"smithy.api#error" => "client"})
    AccountSuspendedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#AccountSuspendedException", name: "AccountSuspendedException", traits: {"smithy.api#error" => "client"})
    ArtifactNamespace = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ArtifactNamespace", name: "ArtifactNamespace")
    ArtifactPackaging = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ArtifactPackaging", name: "ArtifactPackaging")
    ArtifactsType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ArtifactsType", name: "ArtifactsType")
    AuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#AuthType", name: "AuthType")
    AutoRetryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#AutoRetryConfig", name: "AutoRetryConfig")
    BatchDeleteBuildsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchDeleteBuildsInput", name: "BatchDeleteBuildsInput")
    BatchDeleteBuildsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchDeleteBuildsOutput", name: "BatchDeleteBuildsOutput")
    BatchGetBuildBatchesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetBuildBatchesInput", name: "BatchGetBuildBatchesInput")
    BatchGetBuildBatchesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetBuildBatchesOutput", name: "BatchGetBuildBatchesOutput")
    BatchGetBuildsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetBuildsInput", name: "BatchGetBuildsInput")
    BatchGetBuildsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetBuildsOutput", name: "BatchGetBuildsOutput")
    BatchGetCommandExecutionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetCommandExecutionsInput", name: "BatchGetCommandExecutionsInput")
    BatchGetCommandExecutionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetCommandExecutionsOutput", name: "BatchGetCommandExecutionsOutput")
    BatchGetFleetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetFleetsInput", name: "BatchGetFleetsInput")
    BatchGetFleetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetFleetsOutput", name: "BatchGetFleetsOutput")
    BatchGetProjectsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetProjectsInput", name: "BatchGetProjectsInput")
    BatchGetProjectsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetProjectsOutput", name: "BatchGetProjectsOutput")
    BatchGetReportGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetReportGroupsInput", name: "BatchGetReportGroupsInput")
    BatchGetReportGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetReportGroupsOutput", name: "BatchGetReportGroupsOutput")
    BatchGetReportsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetReportsInput", name: "BatchGetReportsInput")
    BatchGetReportsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetReportsOutput", name: "BatchGetReportsOutput")
    BatchGetSandboxesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetSandboxesInput", name: "BatchGetSandboxesInput")
    BatchGetSandboxesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchGetSandboxesOutput", name: "BatchGetSandboxesOutput")
    BatchReportModeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#BatchReportModeType", name: "BatchReportModeType")
    BatchRestrictions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BatchRestrictions", name: "BatchRestrictions")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codebuild#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BucketOwnerAccess = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#BucketOwnerAccess", name: "BucketOwnerAccess")
    Build = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#Build", name: "Build")
    BuildArtifacts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BuildArtifacts", name: "BuildArtifacts")
    BuildArtifactsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#BuildArtifactsList", name: "BuildArtifactsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 12}})
    BuildBatch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BuildBatch", name: "BuildBatch")
    BuildBatchFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BuildBatchFilter", name: "BuildBatchFilter")
    BuildBatchIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#BuildBatchIds", name: "BuildBatchIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    BuildBatchPhase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BuildBatchPhase", name: "BuildBatchPhase")
    BuildBatchPhaseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#BuildBatchPhaseType", name: "BuildBatchPhaseType")
    BuildBatchPhases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#BuildBatchPhases", name: "BuildBatchPhases")
    BuildBatches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#BuildBatches", name: "BuildBatches", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    BuildGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BuildGroup", name: "BuildGroup")
    BuildGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#BuildGroups", name: "BuildGroups")
    BuildIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#BuildIds", name: "BuildIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    BuildNotDeleted = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BuildNotDeleted", name: "BuildNotDeleted")
    BuildPhase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BuildPhase", name: "BuildPhase")
    BuildPhaseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#BuildPhaseType", name: "BuildPhaseType")
    BuildPhases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#BuildPhases", name: "BuildPhases")
    BuildReportArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#BuildReportArns", name: "BuildReportArns")
    BuildStatusConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BuildStatusConfig", name: "BuildStatusConfig")
    BuildSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#BuildSummaries", name: "BuildSummaries")
    BuildSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#BuildSummary", name: "BuildSummary")
    BuildTimeOut = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codebuild#BuildTimeOut", name: "BuildTimeOut", traits: {"smithy.api#range" => {"min" => 5, "max" => 2160}})
    Builds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#Builds", name: "Builds")
    BuildsNotDeleted = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#BuildsNotDeleted", name: "BuildsNotDeleted")
    CacheMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#CacheMode", name: "CacheMode")
    CacheType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#CacheType", name: "CacheType")
    CloudWatchLogsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CloudWatchLogsConfig", name: "CloudWatchLogsConfig")
    CodeCoverage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CodeCoverage", name: "CodeCoverage")
    CodeCoverageReportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CodeCoverageReportSummary", name: "CodeCoverageReportSummary")
    CodeCoverages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#CodeCoverages", name: "CodeCoverages")
    CommandExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CommandExecution", name: "CommandExecution")
    CommandExecutionIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#CommandExecutionIds", name: "CommandExecutionIds", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CommandExecutions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#CommandExecutions", name: "CommandExecutions")
    CommandType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#CommandType", name: "CommandType")
    ComputeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ComputeConfiguration", name: "ComputeConfiguration")
    ComputeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ComputeType", name: "ComputeType")
    ComputeTypesAllowed = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ComputeTypesAllowed", name: "ComputeTypesAllowed")
    CreateFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CreateFleetInput", name: "CreateFleetInput")
    CreateFleetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CreateFleetOutput", name: "CreateFleetOutput")
    CreateProjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CreateProjectInput", name: "CreateProjectInput")
    CreateProjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CreateProjectOutput", name: "CreateProjectOutput")
    CreateReportGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CreateReportGroupInput", name: "CreateReportGroupInput")
    CreateReportGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CreateReportGroupOutput", name: "CreateReportGroupOutput")
    CreateWebhookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CreateWebhookInput", name: "CreateWebhookInput")
    CreateWebhookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#CreateWebhookOutput", name: "CreateWebhookOutput")
    CredentialProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#CredentialProviderType", name: "CredentialProviderType")
    DebugSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DebugSession", name: "DebugSession")
    DeleteBuildBatchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteBuildBatchInput", name: "DeleteBuildBatchInput")
    DeleteBuildBatchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteBuildBatchOutput", name: "DeleteBuildBatchOutput")
    DeleteFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteFleetInput", name: "DeleteFleetInput")
    DeleteFleetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteFleetOutput", name: "DeleteFleetOutput")
    DeleteProjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteProjectInput", name: "DeleteProjectInput")
    DeleteProjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteProjectOutput", name: "DeleteProjectOutput")
    DeleteReportGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteReportGroupInput", name: "DeleteReportGroupInput")
    DeleteReportGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteReportGroupOutput", name: "DeleteReportGroupOutput")
    DeleteReportInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteReportInput", name: "DeleteReportInput")
    DeleteReportOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteReportOutput", name: "DeleteReportOutput")
    DeleteResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteResourcePolicyInput", name: "DeleteResourcePolicyInput")
    DeleteResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteResourcePolicyOutput", name: "DeleteResourcePolicyOutput")
    DeleteSourceCredentialsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteSourceCredentialsInput", name: "DeleteSourceCredentialsInput")
    DeleteSourceCredentialsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteSourceCredentialsOutput", name: "DeleteSourceCredentialsOutput")
    DeleteWebhookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteWebhookInput", name: "DeleteWebhookInput")
    DeleteWebhookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DeleteWebhookOutput", name: "DeleteWebhookOutput")
    DescribeCodeCoveragesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DescribeCodeCoveragesInput", name: "DescribeCodeCoveragesInput")
    DescribeCodeCoveragesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DescribeCodeCoveragesOutput", name: "DescribeCodeCoveragesOutput")
    DescribeTestCasesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DescribeTestCasesInput", name: "DescribeTestCasesInput")
    DescribeTestCasesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DescribeTestCasesOutput", name: "DescribeTestCasesOutput")
    DockerServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DockerServer", name: "DockerServer")
    DockerServerStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#DockerServerStatus", name: "DockerServerStatus")
    EnvironmentImage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#EnvironmentImage", name: "EnvironmentImage")
    EnvironmentImages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#EnvironmentImages", name: "EnvironmentImages")
    EnvironmentLanguage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#EnvironmentLanguage", name: "EnvironmentLanguage")
    EnvironmentLanguages = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#EnvironmentLanguages", name: "EnvironmentLanguages")
    EnvironmentPlatform = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#EnvironmentPlatform", name: "EnvironmentPlatform")
    EnvironmentPlatforms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#EnvironmentPlatforms", name: "EnvironmentPlatforms")
    EnvironmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#EnvironmentType", name: "EnvironmentType")
    EnvironmentVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#EnvironmentVariable", name: "EnvironmentVariable")
    EnvironmentVariableType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#EnvironmentVariableType", name: "EnvironmentVariableType")
    EnvironmentVariables = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#EnvironmentVariables", name: "EnvironmentVariables")
    ExportedEnvironmentVariable = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ExportedEnvironmentVariable", name: "ExportedEnvironmentVariable")
    ExportedEnvironmentVariables = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ExportedEnvironmentVariables", name: "ExportedEnvironmentVariables")
    FileSystemType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#FileSystemType", name: "FileSystemType")
    FilterGroup = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#FilterGroup", name: "FilterGroup")
    FilterGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#FilterGroups", name: "FilterGroups")
    Fleet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#Fleet", name: "Fleet")
    FleetArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#FleetArns", name: "FleetArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FleetCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codebuild#FleetCapacity", name: "FleetCapacity")
    FleetContextCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#FleetContextCode", name: "FleetContextCode")
    FleetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codebuild#FleetName", name: "FleetName", traits: {"smithy.api#length" => {"min" => 2, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{1,127}$"})
    FleetNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#FleetNames", name: "FleetNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FleetOverflowBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#FleetOverflowBehavior", name: "FleetOverflowBehavior")
    FleetProxyRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#FleetProxyRule", name: "FleetProxyRule")
    FleetProxyRuleBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#FleetProxyRuleBehavior", name: "FleetProxyRuleBehavior")
    FleetProxyRuleEffectType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#FleetProxyRuleEffectType", name: "FleetProxyRuleEffectType")
    FleetProxyRuleEntities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#FleetProxyRuleEntities", name: "FleetProxyRuleEntities", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FleetProxyRuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#FleetProxyRuleType", name: "FleetProxyRuleType")
    FleetProxyRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#FleetProxyRules", name: "FleetProxyRules", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    FleetScalingMetricType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#FleetScalingMetricType", name: "FleetScalingMetricType")
    FleetScalingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#FleetScalingType", name: "FleetScalingType")
    FleetSortByType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#FleetSortByType", name: "FleetSortByType")
    FleetStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#FleetStatus", name: "FleetStatus")
    FleetStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#FleetStatusCode", name: "FleetStatusCode")
    Fleets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#Fleets", name: "Fleets", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    FleetsAllowed = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#FleetsAllowed", name: "FleetsAllowed")
    GetReportGroupTrendInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#GetReportGroupTrendInput", name: "GetReportGroupTrendInput")
    GetReportGroupTrendOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#GetReportGroupTrendOutput", name: "GetReportGroupTrendOutput")
    GetResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#GetResourcePolicyInput", name: "GetResourcePolicyInput")
    GetResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#GetResourcePolicyOutput", name: "GetResourcePolicyOutput")
    GitCloneDepth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codebuild#GitCloneDepth", name: "GitCloneDepth", traits: {"smithy.api#range" => {"min" => 0}})
    GitSubmodulesConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#GitSubmodulesConfig", name: "GitSubmodulesConfig")
    Identifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#Identifiers", name: "Identifiers")
    ImagePullCredentialsType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ImagePullCredentialsType", name: "ImagePullCredentialsType")
    ImageVersions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ImageVersions", name: "ImageVersions")
    ImportSourceCredentialsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ImportSourceCredentialsInput", name: "ImportSourceCredentialsInput")
    ImportSourceCredentialsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ImportSourceCredentialsOutput", name: "ImportSourceCredentialsOutput")
    InvalidInputException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#InvalidInputException", name: "InvalidInputException", traits: {"smithy.api#error" => "client"})
    InvalidateProjectCacheInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#InvalidateProjectCacheInput", name: "InvalidateProjectCacheInput")
    InvalidateProjectCacheOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#InvalidateProjectCacheOutput", name: "InvalidateProjectCacheOutput")
    KeyInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codebuild#KeyInput", name: "KeyInput", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=@+\\-]*)$"})
    LanguageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#LanguageType", name: "LanguageType")
    ListBuildBatchesForProjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListBuildBatchesForProjectInput", name: "ListBuildBatchesForProjectInput")
    ListBuildBatchesForProjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListBuildBatchesForProjectOutput", name: "ListBuildBatchesForProjectOutput")
    ListBuildBatchesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListBuildBatchesInput", name: "ListBuildBatchesInput")
    ListBuildBatchesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListBuildBatchesOutput", name: "ListBuildBatchesOutput")
    ListBuildsForProjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListBuildsForProjectInput", name: "ListBuildsForProjectInput")
    ListBuildsForProjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListBuildsForProjectOutput", name: "ListBuildsForProjectOutput")
    ListBuildsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListBuildsInput", name: "ListBuildsInput")
    ListBuildsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListBuildsOutput", name: "ListBuildsOutput")
    ListCommandExecutionsForSandboxInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListCommandExecutionsForSandboxInput", name: "ListCommandExecutionsForSandboxInput")
    ListCommandExecutionsForSandboxOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListCommandExecutionsForSandboxOutput", name: "ListCommandExecutionsForSandboxOutput")
    ListCuratedEnvironmentImagesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListCuratedEnvironmentImagesInput", name: "ListCuratedEnvironmentImagesInput")
    ListCuratedEnvironmentImagesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListCuratedEnvironmentImagesOutput", name: "ListCuratedEnvironmentImagesOutput")
    ListFleetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListFleetsInput", name: "ListFleetsInput")
    ListFleetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListFleetsOutput", name: "ListFleetsOutput")
    ListProjectsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListProjectsInput", name: "ListProjectsInput")
    ListProjectsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListProjectsOutput", name: "ListProjectsOutput")
    ListReportGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListReportGroupsInput", name: "ListReportGroupsInput")
    ListReportGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListReportGroupsOutput", name: "ListReportGroupsOutput")
    ListReportsForReportGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListReportsForReportGroupInput", name: "ListReportsForReportGroupInput")
    ListReportsForReportGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListReportsForReportGroupOutput", name: "ListReportsForReportGroupOutput")
    ListReportsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListReportsInput", name: "ListReportsInput")
    ListReportsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListReportsOutput", name: "ListReportsOutput")
    ListSandboxesForProjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListSandboxesForProjectInput", name: "ListSandboxesForProjectInput")
    ListSandboxesForProjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListSandboxesForProjectOutput", name: "ListSandboxesForProjectOutput")
    ListSandboxesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListSandboxesInput", name: "ListSandboxesInput")
    ListSandboxesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListSandboxesOutput", name: "ListSandboxesOutput")
    ListSharedProjectsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListSharedProjectsInput", name: "ListSharedProjectsInput")
    ListSharedProjectsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListSharedProjectsOutput", name: "ListSharedProjectsOutput")
    ListSharedReportGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListSharedReportGroupsInput", name: "ListSharedReportGroupsInput")
    ListSharedReportGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListSharedReportGroupsOutput", name: "ListSharedReportGroupsOutput")
    ListSourceCredentialsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListSourceCredentialsInput", name: "ListSourceCredentialsInput")
    ListSourceCredentialsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ListSourceCredentialsOutput", name: "ListSourceCredentialsOutput")
    LogsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#LogsConfig", name: "LogsConfig")
    LogsConfigStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#LogsConfigStatusType", name: "LogsConfigStatusType")
    LogsLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#LogsLocation", name: "LogsLocation")
    MachineType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#MachineType", name: "MachineType")
    NetworkInterface = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#NetworkInterface", name: "NetworkInterface")
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codebuild#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1}})
    NonNegativeInt = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codebuild#NonNegativeInt", name: "NonNegativeInt", traits: {"smithy.api#range" => {"min" => 0}})
    OAuthProviderException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#OAuthProviderException", name: "OAuthProviderException", traits: {"smithy.api#error" => "client"})
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codebuild#PageSize", name: "PageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Percentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.codebuild#Percentage", name: "Percentage", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    PhaseContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#PhaseContext", name: "PhaseContext")
    PhaseContexts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#PhaseContexts", name: "PhaseContexts")
    PlatformType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#PlatformType", name: "PlatformType")
    Project = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#Project", name: "Project")
    ProjectArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ProjectArns", name: "ProjectArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProjectArtifacts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ProjectArtifacts", name: "ProjectArtifacts")
    ProjectArtifactsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ProjectArtifactsList", name: "ProjectArtifactsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 12}})
    ProjectBadge = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ProjectBadge", name: "ProjectBadge")
    ProjectBuildBatchConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ProjectBuildBatchConfig", name: "ProjectBuildBatchConfig")
    ProjectCache = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ProjectCache", name: "ProjectCache")
    ProjectCacheModes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ProjectCacheModes", name: "ProjectCacheModes")
    ProjectDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codebuild#ProjectDescription", name: "ProjectDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    ProjectEnvironment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ProjectEnvironment", name: "ProjectEnvironment")
    ProjectFileSystemLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ProjectFileSystemLocation", name: "ProjectFileSystemLocation")
    ProjectFileSystemLocations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ProjectFileSystemLocations", name: "ProjectFileSystemLocations")
    ProjectFleet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ProjectFleet", name: "ProjectFleet")
    ProjectName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codebuild#ProjectName", name: "ProjectName", traits: {"smithy.api#length" => {"min" => 2, "max" => 150}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9\\-_]{1,149}$"})
    ProjectNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ProjectNames", name: "ProjectNames", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ProjectSecondarySourceVersions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ProjectSecondarySourceVersions", name: "ProjectSecondarySourceVersions", traits: {"smithy.api#length" => {"min" => 0, "max" => 12}})
    ProjectSortByType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ProjectSortByType", name: "ProjectSortByType")
    ProjectSource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ProjectSource", name: "ProjectSource")
    ProjectSourceVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ProjectSourceVersion", name: "ProjectSourceVersion")
    ProjectSources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ProjectSources", name: "ProjectSources", traits: {"smithy.api#length" => {"min" => 0, "max" => 12}})
    ProjectVisibilityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ProjectVisibilityType", name: "ProjectVisibilityType")
    Projects = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#Projects", name: "Projects")
    ProxyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ProxyConfiguration", name: "ProxyConfiguration")
    PullRequestBuildApproverRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#PullRequestBuildApproverRole", name: "PullRequestBuildApproverRole")
    PullRequestBuildApproverRoles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#PullRequestBuildApproverRoles", name: "PullRequestBuildApproverRoles")
    PullRequestBuildCommentApproval = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#PullRequestBuildCommentApproval", name: "PullRequestBuildCommentApproval")
    PullRequestBuildPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#PullRequestBuildPolicy", name: "PullRequestBuildPolicy")
    PutResourcePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#PutResourcePolicyInput", name: "PutResourcePolicyInput")
    PutResourcePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#PutResourcePolicyOutput", name: "PutResourcePolicyOutput")
    RegistryCredential = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#RegistryCredential", name: "RegistryCredential")
    Report = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#Report", name: "Report")
    ReportArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ReportArns", name: "ReportArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ReportCodeCoverageSortByType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ReportCodeCoverageSortByType", name: "ReportCodeCoverageSortByType")
    ReportExportConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ReportExportConfig", name: "ReportExportConfig")
    ReportExportConfigType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ReportExportConfigType", name: "ReportExportConfigType")
    ReportFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ReportFilter", name: "ReportFilter")
    ReportGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ReportGroup", name: "ReportGroup")
    ReportGroupArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ReportGroupArns", name: "ReportGroupArns", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ReportGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codebuild#ReportGroupName", name: "ReportGroupName", traits: {"smithy.api#length" => {"min" => 2, "max" => 128}})
    ReportGroupSortByType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ReportGroupSortByType", name: "ReportGroupSortByType")
    ReportGroupStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ReportGroupStatusType", name: "ReportGroupStatusType")
    ReportGroupTrendFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ReportGroupTrendFieldType", name: "ReportGroupTrendFieldType")
    ReportGroupTrendRawDataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ReportGroupTrendRawDataList", name: "ReportGroupTrendRawDataList")
    ReportGroupTrendStats = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ReportGroupTrendStats", name: "ReportGroupTrendStats")
    ReportGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ReportGroups", name: "ReportGroups", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ReportPackagingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ReportPackagingType", name: "ReportPackagingType")
    ReportStatusCounts = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codebuild#ReportStatusCounts", name: "ReportStatusCounts")
    ReportStatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ReportStatusType", name: "ReportStatusType")
    ReportType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ReportType", name: "ReportType")
    ReportWithRawData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ReportWithRawData", name: "ReportWithRawData")
    Reports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#Reports", name: "Reports", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResolvedArtifact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ResolvedArtifact", name: "ResolvedArtifact")
    ResolvedSecondaryArtifacts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#ResolvedSecondaryArtifacts", name: "ResolvedSecondaryArtifacts")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    RetryBuildBatchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#RetryBuildBatchInput", name: "RetryBuildBatchInput")
    RetryBuildBatchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#RetryBuildBatchOutput", name: "RetryBuildBatchOutput")
    RetryBuildBatchType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#RetryBuildBatchType", name: "RetryBuildBatchType")
    RetryBuildInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#RetryBuildInput", name: "RetryBuildInput")
    RetryBuildOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#RetryBuildOutput", name: "RetryBuildOutput")
    S3LogsConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#S3LogsConfig", name: "S3LogsConfig")
    S3ReportExportConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#S3ReportExportConfig", name: "S3ReportExportConfig")
    SSMSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#SSMSession", name: "SSMSession")
    Sandbox = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#Sandbox", name: "Sandbox")
    SandboxIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#SandboxIds", name: "SandboxIds")
    SandboxSession = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#SandboxSession", name: "SandboxSession")
    SandboxSessionPhase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#SandboxSessionPhase", name: "SandboxSessionPhase")
    SandboxSessionPhases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#SandboxSessionPhases", name: "SandboxSessionPhases")
    Sandboxes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#Sandboxes", name: "Sandboxes")
    ScalingConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ScalingConfigurationInput", name: "ScalingConfigurationInput")
    ScalingConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ScalingConfigurationOutput", name: "ScalingConfigurationOutput")
    ScopeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#ScopeConfiguration", name: "ScopeConfiguration")
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    SensitiveNonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codebuild#SensitiveNonEmptyString", name: "SensitiveNonEmptyString", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    SensitiveString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codebuild#SensitiveString", name: "SensitiveString", traits: {"smithy.api#sensitive" => {}})
    ServerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#ServerType", name: "ServerType")
    SharedResourceSortByType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#SharedResourceSortByType", name: "SharedResourceSortByType")
    SortOrderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#SortOrderType", name: "SortOrderType")
    SourceAuth = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#SourceAuth", name: "SourceAuth")
    SourceAuthType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#SourceAuthType", name: "SourceAuthType")
    SourceCredentialsInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#SourceCredentialsInfo", name: "SourceCredentialsInfo")
    SourceCredentialsInfos = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#SourceCredentialsInfos", name: "SourceCredentialsInfos")
    SourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#SourceType", name: "SourceType")
    StartBuildBatchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StartBuildBatchInput", name: "StartBuildBatchInput")
    StartBuildBatchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StartBuildBatchOutput", name: "StartBuildBatchOutput")
    StartBuildInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StartBuildInput", name: "StartBuildInput")
    StartBuildOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StartBuildOutput", name: "StartBuildOutput")
    StartCommandExecutionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StartCommandExecutionInput", name: "StartCommandExecutionInput")
    StartCommandExecutionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StartCommandExecutionOutput", name: "StartCommandExecutionOutput")
    StartSandboxConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StartSandboxConnectionInput", name: "StartSandboxConnectionInput")
    StartSandboxConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StartSandboxConnectionOutput", name: "StartSandboxConnectionOutput")
    StartSandboxInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StartSandboxInput", name: "StartSandboxInput")
    StartSandboxOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StartSandboxOutput", name: "StartSandboxOutput")
    StatusType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#StatusType", name: "StatusType")
    StopBuildBatchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StopBuildBatchInput", name: "StopBuildBatchInput")
    StopBuildBatchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StopBuildBatchOutput", name: "StopBuildBatchOutput")
    StopBuildInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StopBuildInput", name: "StopBuildInput")
    StopBuildOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StopBuildOutput", name: "StopBuildOutput")
    StopSandboxInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StopSandboxInput", name: "StopSandboxInput")
    StopSandboxOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#StopSandboxOutput", name: "StopSandboxOutput")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codebuild#String", name: "String")
    Subnets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#Subnets", name: "Subnets", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#Tag", name: "Tag")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TargetTrackingScalingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#TargetTrackingScalingConfiguration", name: "TargetTrackingScalingConfiguration")
    TargetTrackingScalingConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#TargetTrackingScalingConfigurations", name: "TargetTrackingScalingConfigurations")
    TestCase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#TestCase", name: "TestCase")
    TestCaseFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#TestCaseFilter", name: "TestCaseFilter")
    TestCases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codebuild#TestCases", name: "TestCases")
    TestReportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#TestReportSummary", name: "TestReportSummary")
    TimeOut = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codebuild#TimeOut", name: "TimeOut", traits: {"smithy.api#range" => {"min" => 5, "max" => 480}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codebuild#Timestamp", name: "Timestamp")
    UpdateFleetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#UpdateFleetInput", name: "UpdateFleetInput")
    UpdateFleetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#UpdateFleetOutput", name: "UpdateFleetOutput")
    UpdateProjectInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#UpdateProjectInput", name: "UpdateProjectInput")
    UpdateProjectOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#UpdateProjectOutput", name: "UpdateProjectOutput")
    UpdateProjectVisibilityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#UpdateProjectVisibilityInput", name: "UpdateProjectVisibilityInput")
    UpdateProjectVisibilityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#UpdateProjectVisibilityOutput", name: "UpdateProjectVisibilityOutput")
    UpdateReportGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#UpdateReportGroupInput", name: "UpdateReportGroupInput")
    UpdateReportGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#UpdateReportGroupOutput", name: "UpdateReportGroupOutput")
    UpdateWebhookInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#UpdateWebhookInput", name: "UpdateWebhookInput")
    UpdateWebhookOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#UpdateWebhookOutput", name: "UpdateWebhookOutput")
    ValueInput = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codebuild#ValueInput", name: "ValueInput", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=@+\\-]*)$"})
    VpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#VpcConfig", name: "VpcConfig")
    Webhook = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#Webhook", name: "Webhook")
    WebhookBuildType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#WebhookBuildType", name: "WebhookBuildType")
    WebhookFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codebuild#WebhookFilter", name: "WebhookFilter")
    WebhookFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#WebhookFilterType", name: "WebhookFilterType")
    WebhookScopeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#WebhookScopeType", name: "WebhookScopeType")
    WebhookStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#WebhookStatus", name: "WebhookStatus")
    WrapperBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codebuild#WrapperBoolean", name: "WrapperBoolean")
    WrapperDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.codebuild#WrapperDouble", name: "WrapperDouble")
    WrapperInt = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codebuild#WrapperInt", name: "WrapperInt")
    WrapperLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codebuild#WrapperLong", name: "WrapperLong")

    AccountLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccountLimitExceededException.type = Types::AccountLimitExceededException
    AccountSuspendedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccountSuspendedException.type = Types::AccountSuspendedException
    ArtifactNamespace.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ArtifactNamespace.add_member(:build_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_ID", traits: {"smithy.api#enumValue" => "BUILD_ID"}))
    ArtifactPackaging.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ArtifactPackaging.add_member(:zip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZIP", traits: {"smithy.api#enumValue" => "ZIP"}))
    ArtifactsType.add_member(:codepipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODEPIPELINE", traits: {"smithy.api#enumValue" => "CODEPIPELINE"}))
    ArtifactsType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ArtifactsType.add_member(:no_artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_ARTIFACTS", traits: {"smithy.api#enumValue" => "NO_ARTIFACTS"}))
    AuthType.add_member(:oauth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OAUTH", traits: {"smithy.api#enumValue" => "OAUTH"}))
    AuthType.add_member(:basic_auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASIC_AUTH", traits: {"smithy.api#enumValue" => "BASIC_AUTH"}))
    AuthType.add_member(:personal_access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PERSONAL_ACCESS_TOKEN", traits: {"smithy.api#enumValue" => "PERSONAL_ACCESS_TOKEN"}))
    AuthType.add_member(:codeconnections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODECONNECTIONS", traits: {"smithy.api#enumValue" => "CODECONNECTIONS"}))
    AuthType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    AutoRetryConfig.add_member(:auto_retry_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "autoRetryLimit"))
    AutoRetryConfig.add_member(:auto_retry_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "autoRetryNumber"))
    AutoRetryConfig.add_member(:next_auto_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextAutoRetry"))
    AutoRetryConfig.add_member(:previous_auto_retry, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "previousAutoRetry"))
    AutoRetryConfig.type = Types::AutoRetryConfig
    BatchDeleteBuildsInput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildIds, location_name: "ids", traits: {"smithy.api#required" => {}}))
    BatchDeleteBuildsInput.type = Types::BatchDeleteBuildsInput
    BatchDeleteBuildsOutput.add_member(:builds_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildIds, location_name: "buildsDeleted"))
    BatchDeleteBuildsOutput.add_member(:builds_not_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildsNotDeleted, location_name: "buildsNotDeleted"))
    BatchDeleteBuildsOutput.type = Types::BatchDeleteBuildsOutput
    BatchGetBuildBatchesInput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatchIds, location_name: "ids", traits: {"smithy.api#required" => {}}))
    BatchGetBuildBatchesInput.type = Types::BatchGetBuildBatchesInput
    BatchGetBuildBatchesOutput.add_member(:build_batches, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatches, location_name: "buildBatches"))
    BatchGetBuildBatchesOutput.add_member(:build_batches_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatchIds, location_name: "buildBatchesNotFound"))
    BatchGetBuildBatchesOutput.type = Types::BatchGetBuildBatchesOutput
    BatchGetBuildsInput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildIds, location_name: "ids", traits: {"smithy.api#required" => {}}))
    BatchGetBuildsInput.type = Types::BatchGetBuildsInput
    BatchGetBuildsOutput.add_member(:builds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Builds, location_name: "builds"))
    BatchGetBuildsOutput.add_member(:builds_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildIds, location_name: "buildsNotFound"))
    BatchGetBuildsOutput.type = Types::BatchGetBuildsOutput
    BatchGetCommandExecutionsInput.add_member(:sandbox_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sandboxId", traits: {"smithy.api#required" => {}}))
    BatchGetCommandExecutionsInput.add_member(:command_execution_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecutionIds, location_name: "commandExecutionIds", traits: {"smithy.api#required" => {}}))
    BatchGetCommandExecutionsInput.type = Types::BatchGetCommandExecutionsInput
    BatchGetCommandExecutionsOutput.add_member(:command_executions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecutions, location_name: "commandExecutions"))
    BatchGetCommandExecutionsOutput.add_member(:command_executions_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecutionIds, location_name: "commandExecutionsNotFound"))
    BatchGetCommandExecutionsOutput.type = Types::BatchGetCommandExecutionsOutput
    BatchGetFleetsInput.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetNames, location_name: "names", traits: {"smithy.api#required" => {}}))
    BatchGetFleetsInput.type = Types::BatchGetFleetsInput
    BatchGetFleetsOutput.add_member(:fleets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fleets, location_name: "fleets"))
    BatchGetFleetsOutput.add_member(:fleets_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetNames, location_name: "fleetsNotFound"))
    BatchGetFleetsOutput.type = Types::BatchGetFleetsOutput
    BatchGetProjectsInput.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectNames, location_name: "names", traits: {"smithy.api#required" => {}}))
    BatchGetProjectsInput.type = Types::BatchGetProjectsInput
    BatchGetProjectsOutput.add_member(:projects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Projects, location_name: "projects"))
    BatchGetProjectsOutput.add_member(:projects_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectNames, location_name: "projectsNotFound"))
    BatchGetProjectsOutput.type = Types::BatchGetProjectsOutput
    BatchGetReportGroupsInput.add_member(:report_group_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroupArns, location_name: "reportGroupArns", traits: {"smithy.api#required" => {}}))
    BatchGetReportGroupsInput.type = Types::BatchGetReportGroupsInput
    BatchGetReportGroupsOutput.add_member(:report_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroups, location_name: "reportGroups"))
    BatchGetReportGroupsOutput.add_member(:report_groups_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroupArns, location_name: "reportGroupsNotFound"))
    BatchGetReportGroupsOutput.type = Types::BatchGetReportGroupsOutput
    BatchGetReportsInput.add_member(:report_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportArns, location_name: "reportArns", traits: {"smithy.api#required" => {}}))
    BatchGetReportsInput.type = Types::BatchGetReportsInput
    BatchGetReportsOutput.add_member(:reports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Reports, location_name: "reports"))
    BatchGetReportsOutput.add_member(:reports_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportArns, location_name: "reportsNotFound"))
    BatchGetReportsOutput.type = Types::BatchGetReportsOutput
    BatchGetSandboxesInput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxIds, location_name: "ids", traits: {"smithy.api#required" => {}}))
    BatchGetSandboxesInput.type = Types::BatchGetSandboxesInput
    BatchGetSandboxesOutput.add_member(:sandboxes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sandboxes, location_name: "sandboxes"))
    BatchGetSandboxesOutput.add_member(:sandboxes_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxIds, location_name: "sandboxesNotFound"))
    BatchGetSandboxesOutput.type = Types::BatchGetSandboxesOutput
    BatchReportModeType.add_member(:report_individual_builds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPORT_INDIVIDUAL_BUILDS", traits: {"smithy.api#enumValue" => "REPORT_INDIVIDUAL_BUILDS"}))
    BatchReportModeType.add_member(:report_aggregated_batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPORT_AGGREGATED_BATCH", traits: {"smithy.api#enumValue" => "REPORT_AGGREGATED_BATCH"}))
    BatchRestrictions.add_member(:maximum_builds_allowed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "maximumBuildsAllowed"))
    BatchRestrictions.add_member(:compute_types_allowed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeTypesAllowed, location_name: "computeTypesAllowed"))
    BatchRestrictions.add_member(:fleets_allowed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetsAllowed, location_name: "fleetsAllowed"))
    BatchRestrictions.type = Types::BatchRestrictions
    BucketOwnerAccess.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    BucketOwnerAccess.add_member(:read_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "READ_ONLY", traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    BucketOwnerAccess.add_member(:full, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    Build.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    Build.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Build.add_member(:build_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperLong, location_name: "buildNumber"))
    Build.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    Build.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    Build.add_member(:current_phase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "currentPhase"))
    Build.add_member(:build_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: "buildStatus"))
    Build.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sourceVersion"))
    Build.add_member(:resolved_source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resolvedSourceVersion"))
    Build.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectName"))
    Build.add_member(:phases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildPhases, location_name: "phases"))
    Build.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSource, location_name: "source"))
    Build.add_member(:secondary_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSources, location_name: "secondarySources"))
    Build.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSecondarySourceVersions, location_name: "secondarySourceVersions"))
    Build.add_member(:artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildArtifacts, location_name: "artifacts"))
    Build.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildArtifactsList, location_name: "secondaryArtifacts"))
    Build.add_member(:cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectCache, location_name: "cache"))
    Build.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectEnvironment, location_name: "environment"))
    Build.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRole"))
    Build.add_member(:logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsLocation, location_name: "logs"))
    Build.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "timeoutInMinutes"))
    Build.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "queuedTimeoutInMinutes"))
    Build.add_member(:build_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "buildComplete", traits: {"smithy.api#default" => false}))
    Build.add_member(:initiator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "initiator"))
    Build.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    Build.add_member(:network_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface, location_name: "networkInterface"))
    Build.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKey"))
    Build.add_member(:exported_environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportedEnvironmentVariables, location_name: "exportedEnvironmentVariables"))
    Build.add_member(:report_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildReportArns, location_name: "reportArns"))
    Build.add_member(:file_system_locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectFileSystemLocations, location_name: "fileSystemLocations"))
    Build.add_member(:debug_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DebugSession, location_name: "debugSession"))
    Build.add_member(:build_batch_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "buildBatchArn"))
    Build.add_member(:auto_retry_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoRetryConfig, location_name: "autoRetryConfig"))
    Build.type = Types::Build
    BuildArtifacts.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "location"))
    BuildArtifacts.add_member(:sha256sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sha256sum"))
    BuildArtifacts.add_member(:md5sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "md5sum"))
    BuildArtifacts.add_member(:override_artifact_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "overrideArtifactName"))
    BuildArtifacts.add_member(:encryption_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "encryptionDisabled"))
    BuildArtifacts.add_member(:artifact_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "artifactIdentifier"))
    BuildArtifacts.add_member(:bucket_owner_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketOwnerAccess, location_name: "bucketOwnerAccess"))
    BuildArtifacts.type = Types::BuildArtifacts
    BuildArtifactsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildArtifacts)
    BuildBatch.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    BuildBatch.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    BuildBatch.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    BuildBatch.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    BuildBatch.add_member(:current_phase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "currentPhase"))
    BuildBatch.add_member(:build_batch_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: "buildBatchStatus"))
    BuildBatch.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sourceVersion"))
    BuildBatch.add_member(:resolved_source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resolvedSourceVersion"))
    BuildBatch.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectName"))
    BuildBatch.add_member(:phases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatchPhases, location_name: "phases"))
    BuildBatch.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSource, location_name: "source"))
    BuildBatch.add_member(:secondary_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSources, location_name: "secondarySources"))
    BuildBatch.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSecondarySourceVersions, location_name: "secondarySourceVersions"))
    BuildBatch.add_member(:artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildArtifacts, location_name: "artifacts"))
    BuildBatch.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildArtifactsList, location_name: "secondaryArtifacts"))
    BuildBatch.add_member(:cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectCache, location_name: "cache"))
    BuildBatch.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectEnvironment, location_name: "environment"))
    BuildBatch.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRole"))
    BuildBatch.add_member(:log_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfig, location_name: "logConfig"))
    BuildBatch.add_member(:build_timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "buildTimeoutInMinutes"))
    BuildBatch.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "queuedTimeoutInMinutes"))
    BuildBatch.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "complete", traits: {"smithy.api#default" => false}))
    BuildBatch.add_member(:initiator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "initiator"))
    BuildBatch.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    BuildBatch.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKey"))
    BuildBatch.add_member(:build_batch_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperLong, location_name: "buildBatchNumber"))
    BuildBatch.add_member(:file_system_locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectFileSystemLocations, location_name: "fileSystemLocations"))
    BuildBatch.add_member(:build_batch_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectBuildBatchConfig, location_name: "buildBatchConfig"))
    BuildBatch.add_member(:build_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildGroups, location_name: "buildGroups"))
    BuildBatch.add_member(:debug_session_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "debugSessionEnabled"))
    BuildBatch.add_member(:report_arns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildReportArns, location_name: "reportArns"))
    BuildBatch.type = Types::BuildBatch
    BuildBatchFilter.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: "status"))
    BuildBatchFilter.type = Types::BuildBatchFilter
    BuildBatchIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    BuildBatchPhase.add_member(:phase_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatchPhaseType, location_name: "phaseType"))
    BuildBatchPhase.add_member(:phase_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: "phaseStatus"))
    BuildBatchPhase.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    BuildBatchPhase.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    BuildBatchPhase.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperLong, location_name: "durationInSeconds"))
    BuildBatchPhase.add_member(:contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhaseContexts, location_name: "contexts"))
    BuildBatchPhase.type = Types::BuildBatchPhase
    BuildBatchPhaseType.add_member(:submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    BuildBatchPhaseType.add_member(:download_batchspec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOWNLOAD_BATCHSPEC", traits: {"smithy.api#enumValue" => "DOWNLOAD_BATCHSPEC"}))
    BuildBatchPhaseType.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BuildBatchPhaseType.add_member(:combine_artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMBINE_ARTIFACTS", traits: {"smithy.api#enumValue" => "COMBINE_ARTIFACTS"}))
    BuildBatchPhaseType.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    BuildBatchPhaseType.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BuildBatchPhaseType.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    BuildBatchPhases.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatchPhase)
    BuildBatches.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatch)
    BuildGroup.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "identifier"))
    BuildGroup.add_member(:depends_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifiers, location_name: "dependsOn"))
    BuildGroup.add_member(:ignore_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "ignoreFailure", traits: {"smithy.api#default" => false}))
    BuildGroup.add_member(:current_build_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSummary, location_name: "currentBuildSummary"))
    BuildGroup.add_member(:prior_build_summary_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSummaries, location_name: "priorBuildSummaryList"))
    BuildGroup.type = Types::BuildGroup
    BuildGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildGroup)
    BuildIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    BuildNotDeleted.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    BuildNotDeleted.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "statusCode"))
    BuildNotDeleted.type = Types::BuildNotDeleted
    BuildPhase.add_member(:phase_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildPhaseType, location_name: "phaseType"))
    BuildPhase.add_member(:phase_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: "phaseStatus"))
    BuildPhase.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    BuildPhase.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    BuildPhase.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperLong, location_name: "durationInSeconds"))
    BuildPhase.add_member(:contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhaseContexts, location_name: "contexts"))
    BuildPhase.type = Types::BuildPhase
    BuildPhaseType.add_member(:submitted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    BuildPhaseType.add_member(:queued, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    BuildPhaseType.add_member(:provisioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    BuildPhaseType.add_member(:download_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOWNLOAD_SOURCE", traits: {"smithy.api#enumValue" => "DOWNLOAD_SOURCE"}))
    BuildPhaseType.add_member(:install, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTALL", traits: {"smithy.api#enumValue" => "INSTALL"}))
    BuildPhaseType.add_member(:pre_build, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRE_BUILD", traits: {"smithy.api#enumValue" => "PRE_BUILD"}))
    BuildPhaseType.add_member(:build, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD", traits: {"smithy.api#enumValue" => "BUILD"}))
    BuildPhaseType.add_member(:post_build, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POST_BUILD", traits: {"smithy.api#enumValue" => "POST_BUILD"}))
    BuildPhaseType.add_member(:upload_artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPLOAD_ARTIFACTS", traits: {"smithy.api#enumValue" => "UPLOAD_ARTIFACTS"}))
    BuildPhaseType.add_member(:finalizing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FINALIZING", traits: {"smithy.api#enumValue" => "FINALIZING"}))
    BuildPhaseType.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    BuildPhases.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildPhase)
    BuildReportArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    BuildStatusConfig.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "context"))
    BuildStatusConfig.add_member(:target_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "targetUrl"))
    BuildStatusConfig.type = Types::BuildStatusConfig
    BuildSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSummary)
    BuildSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    BuildSummary.add_member(:requested_on, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "requestedOn"))
    BuildSummary.add_member(:build_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: "buildStatus"))
    BuildSummary.add_member(:primary_artifact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedArtifact, location_name: "primaryArtifact"))
    BuildSummary.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedSecondaryArtifacts, location_name: "secondaryArtifacts"))
    BuildSummary.type = Types::BuildSummary
    Builds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Build)
    BuildsNotDeleted.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildNotDeleted)
    CacheMode.add_member(:local_docker_layer_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCAL_DOCKER_LAYER_CACHE", traits: {"smithy.api#enumValue" => "LOCAL_DOCKER_LAYER_CACHE"}))
    CacheMode.add_member(:local_source_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCAL_SOURCE_CACHE", traits: {"smithy.api#enumValue" => "LOCAL_SOURCE_CACHE"}))
    CacheMode.add_member(:local_custom_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCAL_CUSTOM_CACHE", traits: {"smithy.api#enumValue" => "LOCAL_CUSTOM_CACHE"}))
    CacheType.add_member(:no_cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_CACHE", traits: {"smithy.api#enumValue" => "NO_CACHE"}))
    CacheType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    CacheType.add_member(:local, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LOCAL", traits: {"smithy.api#enumValue" => "LOCAL"}))
    CloudWatchLogsConfig.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfigStatusType, location_name: "status", traits: {"smithy.api#required" => {}}))
    CloudWatchLogsConfig.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "groupName"))
    CloudWatchLogsConfig.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "streamName"))
    CloudWatchLogsConfig.type = Types::CloudWatchLogsConfig
    CodeCoverage.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    CodeCoverage.add_member(:report_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reportARN"))
    CodeCoverage.add_member(:file_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "filePath"))
    CodeCoverage.add_member(:line_coverage_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: "lineCoveragePercentage"))
    CodeCoverage.add_member(:lines_covered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInt, location_name: "linesCovered"))
    CodeCoverage.add_member(:lines_missed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInt, location_name: "linesMissed"))
    CodeCoverage.add_member(:branch_coverage_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: "branchCoveragePercentage"))
    CodeCoverage.add_member(:branches_covered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInt, location_name: "branchesCovered"))
    CodeCoverage.add_member(:branches_missed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInt, location_name: "branchesMissed"))
    CodeCoverage.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "expired"))
    CodeCoverage.type = Types::CodeCoverage
    CodeCoverageReportSummary.add_member(:line_coverage_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: "lineCoveragePercentage"))
    CodeCoverageReportSummary.add_member(:lines_covered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInt, location_name: "linesCovered"))
    CodeCoverageReportSummary.add_member(:lines_missed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInt, location_name: "linesMissed"))
    CodeCoverageReportSummary.add_member(:branch_coverage_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: "branchCoveragePercentage"))
    CodeCoverageReportSummary.add_member(:branches_covered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInt, location_name: "branchesCovered"))
    CodeCoverageReportSummary.add_member(:branches_missed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonNegativeInt, location_name: "branchesMissed"))
    CodeCoverageReportSummary.type = Types::CodeCoverageReportSummary
    CodeCoverages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeCoverage)
    CommandExecution.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    CommandExecution.add_member(:sandbox_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sandboxId"))
    CommandExecution.add_member(:submit_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "submitTime"))
    CommandExecution.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    CommandExecution.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    CommandExecution.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "status"))
    CommandExecution.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "command"))
    CommandExecution.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandType, location_name: "type"))
    CommandExecution.add_member(:exit_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "exitCode"))
    CommandExecution.add_member(:standard_output_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "standardOutputContent"))
    CommandExecution.add_member(:standard_err_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "standardErrContent"))
    CommandExecution.add_member(:logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsLocation, location_name: "logs"))
    CommandExecution.add_member(:sandbox_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sandboxArn"))
    CommandExecution.type = Types::CommandExecution
    CommandExecutionIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    CommandExecutions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecution)
    CommandType.add_member(:shell, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHELL", traits: {"smithy.api#enumValue" => "SHELL"}))
    ComputeConfiguration.add_member(:v_cpu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperLong, location_name: "vCpu"))
    ComputeConfiguration.add_member(:memory, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperLong, location_name: "memory"))
    ComputeConfiguration.add_member(:disk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperLong, location_name: "disk"))
    ComputeConfiguration.add_member(:machine_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MachineType, location_name: "machineType"))
    ComputeConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "instanceType"))
    ComputeConfiguration.type = Types::ComputeConfiguration
    ComputeType.add_member(:build_general1_small, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_GENERAL1_SMALL", traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_SMALL"}))
    ComputeType.add_member(:build_general1_medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_GENERAL1_MEDIUM", traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_MEDIUM"}))
    ComputeType.add_member(:build_general1_large, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_GENERAL1_LARGE", traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_LARGE"}))
    ComputeType.add_member(:build_general1_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_GENERAL1_XLARGE", traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_XLARGE"}))
    ComputeType.add_member(:build_general1_2_xlarge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_GENERAL1_2XLARGE", traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_2XLARGE"}))
    ComputeType.add_member(:build_lambda_1_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_LAMBDA_1GB", traits: {"smithy.api#enumValue" => "BUILD_LAMBDA_1GB"}))
    ComputeType.add_member(:build_lambda_2_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_LAMBDA_2GB", traits: {"smithy.api#enumValue" => "BUILD_LAMBDA_2GB"}))
    ComputeType.add_member(:build_lambda_4_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_LAMBDA_4GB", traits: {"smithy.api#enumValue" => "BUILD_LAMBDA_4GB"}))
    ComputeType.add_member(:build_lambda_8_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_LAMBDA_8GB", traits: {"smithy.api#enumValue" => "BUILD_LAMBDA_8GB"}))
    ComputeType.add_member(:build_lambda_10_gb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_LAMBDA_10GB", traits: {"smithy.api#enumValue" => "BUILD_LAMBDA_10GB"}))
    ComputeType.add_member(:attribute_based_compute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ATTRIBUTE_BASED_COMPUTE", traits: {"smithy.api#enumValue" => "ATTRIBUTE_BASED_COMPUTE"}))
    ComputeType.add_member(:custom_instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "CUSTOM_INSTANCE_TYPE"}))
    ComputeTypesAllowed.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    CreateFleetInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateFleetInput.add_member(:base_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetCapacity, location_name: "baseCapacity", traits: {"smithy.api#required" => {}}))
    CreateFleetInput.add_member(:environment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentType, location_name: "environmentType", traits: {"smithy.api#required" => {}}))
    CreateFleetInput.add_member(:compute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: "computeType", traits: {"smithy.api#required" => {}}))
    CreateFleetInput.add_member(:compute_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: "computeConfiguration"))
    CreateFleetInput.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfigurationInput, location_name: "scalingConfiguration"))
    CreateFleetInput.add_member(:overflow_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetOverflowBehavior, location_name: "overflowBehavior"))
    CreateFleetInput.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CreateFleetInput.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProxyConfiguration, location_name: "proxyConfiguration"))
    CreateFleetInput.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "imageId"))
    CreateFleetInput.add_member(:fleet_service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fleetServiceRole"))
    CreateFleetInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateFleetInput.type = Types::CreateFleetInput
    CreateFleetOutput.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fleet, location_name: "fleet"))
    CreateFleetOutput.type = Types::CreateFleetOutput
    CreateProjectInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateProjectInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDescription, location_name: "description"))
    CreateProjectInput.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSource, location_name: "source", traits: {"smithy.api#required" => {}}))
    CreateProjectInput.add_member(:secondary_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSources, location_name: "secondarySources"))
    CreateProjectInput.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceVersion"))
    CreateProjectInput.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSecondarySourceVersions, location_name: "secondarySourceVersions"))
    CreateProjectInput.add_member(:artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArtifacts, location_name: "artifacts", traits: {"smithy.api#required" => {}}))
    CreateProjectInput.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArtifactsList, location_name: "secondaryArtifacts"))
    CreateProjectInput.add_member(:cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectCache, location_name: "cache"))
    CreateProjectInput.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectEnvironment, location_name: "environment", traits: {"smithy.api#required" => {}}))
    CreateProjectInput.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRole", traits: {"smithy.api#required" => {}}))
    CreateProjectInput.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildTimeOut, location_name: "timeoutInMinutes"))
    CreateProjectInput.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOut, location_name: "queuedTimeoutInMinutes"))
    CreateProjectInput.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKey"))
    CreateProjectInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateProjectInput.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CreateProjectInput.add_member(:badge_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "badgeEnabled"))
    CreateProjectInput.add_member(:logs_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfig, location_name: "logsConfig"))
    CreateProjectInput.add_member(:file_system_locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectFileSystemLocations, location_name: "fileSystemLocations"))
    CreateProjectInput.add_member(:build_batch_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectBuildBatchConfig, location_name: "buildBatchConfig"))
    CreateProjectInput.add_member(:concurrent_build_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "concurrentBuildLimit"))
    CreateProjectInput.add_member(:auto_retry_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "autoRetryLimit"))
    CreateProjectInput.type = Types::CreateProjectInput
    CreateProjectOutput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: "project"))
    CreateProjectOutput.type = Types::CreateProjectOutput
    CreateReportGroupInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroupName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateReportGroupInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportType, location_name: "type", traits: {"smithy.api#required" => {}}))
    CreateReportGroupInput.add_member(:export_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportExportConfig, location_name: "exportConfig", traits: {"smithy.api#required" => {}}))
    CreateReportGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateReportGroupInput.type = Types::CreateReportGroupInput
    CreateReportGroupOutput.add_member(:report_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroup, location_name: "reportGroup"))
    CreateReportGroupOutput.type = Types::CreateReportGroupOutput
    CreateWebhookInput.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: "projectName", traits: {"smithy.api#required" => {}}))
    CreateWebhookInput.add_member(:branch_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "branchFilter"))
    CreateWebhookInput.add_member(:filter_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterGroups, location_name: "filterGroups"))
    CreateWebhookInput.add_member(:build_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookBuildType, location_name: "buildType"))
    CreateWebhookInput.add_member(:manual_creation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "manualCreation"))
    CreateWebhookInput.add_member(:scope_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeConfiguration, location_name: "scopeConfiguration"))
    CreateWebhookInput.add_member(:pull_request_build_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestBuildPolicy, location_name: "pullRequestBuildPolicy"))
    CreateWebhookInput.type = Types::CreateWebhookInput
    CreateWebhookOutput.add_member(:webhook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Webhook, location_name: "webhook"))
    CreateWebhookOutput.type = Types::CreateWebhookOutput
    CredentialProviderType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    DebugSession.add_member(:session_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "sessionEnabled"))
    DebugSession.add_member(:session_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sessionTarget"))
    DebugSession.type = Types::DebugSession
    DeleteBuildBatchInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id", traits: {"smithy.api#required" => {}}))
    DeleteBuildBatchInput.type = Types::DeleteBuildBatchInput
    DeleteBuildBatchOutput.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "statusCode"))
    DeleteBuildBatchOutput.add_member(:builds_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildIds, location_name: "buildsDeleted"))
    DeleteBuildBatchOutput.add_member(:builds_not_deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildsNotDeleted, location_name: "buildsNotDeleted"))
    DeleteBuildBatchOutput.type = Types::DeleteBuildBatchOutput
    DeleteFleetInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteFleetInput.type = Types::DeleteFleetInput
    DeleteFleetOutput.type = Types::DeleteFleetOutput
    DeleteProjectInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name", traits: {"smithy.api#required" => {}}))
    DeleteProjectInput.type = Types::DeleteProjectInput
    DeleteProjectOutput.type = Types::DeleteProjectOutput
    DeleteReportGroupInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteReportGroupInput.add_member(:delete_reports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "deleteReports", traits: {"smithy.api#default" => false}))
    DeleteReportGroupInput.type = Types::DeleteReportGroupInput
    DeleteReportGroupOutput.type = Types::DeleteReportGroupOutput
    DeleteReportInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteReportInput.type = Types::DeleteReportInput
    DeleteReportOutput.type = Types::DeleteReportOutput
    DeleteResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyInput.type = Types::DeleteResourcePolicyInput
    DeleteResourcePolicyOutput.type = Types::DeleteResourcePolicyOutput
    DeleteSourceCredentialsInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteSourceCredentialsInput.type = Types::DeleteSourceCredentialsInput
    DeleteSourceCredentialsOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    DeleteSourceCredentialsOutput.type = Types::DeleteSourceCredentialsOutput
    DeleteWebhookInput.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: "projectName", traits: {"smithy.api#required" => {}}))
    DeleteWebhookInput.type = Types::DeleteWebhookInput
    DeleteWebhookOutput.type = Types::DeleteWebhookOutput
    DescribeCodeCoveragesInput.add_member(:report_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reportArn", traits: {"smithy.api#required" => {}}))
    DescribeCodeCoveragesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeCodeCoveragesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    DescribeCodeCoveragesInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    DescribeCodeCoveragesInput.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportCodeCoverageSortByType, location_name: "sortBy"))
    DescribeCodeCoveragesInput.add_member(:min_line_coverage_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: "minLineCoveragePercentage"))
    DescribeCodeCoveragesInput.add_member(:max_line_coverage_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: "maxLineCoveragePercentage"))
    DescribeCodeCoveragesInput.type = Types::DescribeCodeCoveragesInput
    DescribeCodeCoveragesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeCodeCoveragesOutput.add_member(:code_coverages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeCoverages, location_name: "codeCoverages"))
    DescribeCodeCoveragesOutput.type = Types::DescribeCodeCoveragesOutput
    DescribeTestCasesInput.add_member(:report_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "reportArn", traits: {"smithy.api#required" => {}}))
    DescribeTestCasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeTestCasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    DescribeTestCasesInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseFilter, location_name: "filter"))
    DescribeTestCasesInput.type = Types::DescribeTestCasesInput
    DescribeTestCasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    DescribeTestCasesOutput.add_member(:test_cases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCases, location_name: "testCases"))
    DescribeTestCasesOutput.type = Types::DescribeTestCasesOutput
    DockerServer.add_member(:compute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: "computeType", traits: {"smithy.api#required" => {}}))
    DockerServer.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    DockerServer.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DockerServerStatus, location_name: "status"))
    DockerServer.type = Types::DockerServer
    DockerServerStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "status"))
    DockerServerStatus.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    DockerServerStatus.type = Types::DockerServerStatus
    EnvironmentImage.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    EnvironmentImage.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "description"))
    EnvironmentImage.add_member(:versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImageVersions, location_name: "versions"))
    EnvironmentImage.type = Types::EnvironmentImage
    EnvironmentImages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentImage)
    EnvironmentLanguage.add_member(:language, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LanguageType, location_name: "language"))
    EnvironmentLanguage.add_member(:images, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentImages, location_name: "images"))
    EnvironmentLanguage.type = Types::EnvironmentLanguage
    EnvironmentLanguages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentLanguage)
    EnvironmentPlatform.add_member(:platform, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformType, location_name: "platform"))
    EnvironmentPlatform.add_member(:languages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentLanguages, location_name: "languages"))
    EnvironmentPlatform.type = Types::EnvironmentPlatform
    EnvironmentPlatforms.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentPlatform)
    EnvironmentType.add_member(:windows_container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_CONTAINER", traits: {"smithy.api#enumValue" => "WINDOWS_CONTAINER"}))
    EnvironmentType.add_member(:linux_container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINUX_CONTAINER", traits: {"smithy.api#enumValue" => "LINUX_CONTAINER"}))
    EnvironmentType.add_member(:linux_gpu_container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINUX_GPU_CONTAINER", traits: {"smithy.api#enumValue" => "LINUX_GPU_CONTAINER"}))
    EnvironmentType.add_member(:arm_container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARM_CONTAINER", traits: {"smithy.api#enumValue" => "ARM_CONTAINER"}))
    EnvironmentType.add_member(:windows_server_2019_container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2019_CONTAINER", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019_CONTAINER"}))
    EnvironmentType.add_member(:windows_server_2022_container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER_2022_CONTAINER", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2022_CONTAINER"}))
    EnvironmentType.add_member(:linux_lambda_container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINUX_LAMBDA_CONTAINER", traits: {"smithy.api#enumValue" => "LINUX_LAMBDA_CONTAINER"}))
    EnvironmentType.add_member(:arm_lambda_container, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARM_LAMBDA_CONTAINER", traits: {"smithy.api#enumValue" => "ARM_LAMBDA_CONTAINER"}))
    EnvironmentType.add_member(:linux_ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINUX_EC2", traits: {"smithy.api#enumValue" => "LINUX_EC2"}))
    EnvironmentType.add_member(:arm_ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARM_EC2", traits: {"smithy.api#enumValue" => "ARM_EC2"}))
    EnvironmentType.add_member(:windows_ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_EC2", traits: {"smithy.api#enumValue" => "WINDOWS_EC2"}))
    EnvironmentType.add_member(:mac_arm, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MAC_ARM", traits: {"smithy.api#enumValue" => "MAC_ARM"}))
    EnvironmentVariable.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name", traits: {"smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "value", traits: {"smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableType, location_name: "type"))
    EnvironmentVariable.type = Types::EnvironmentVariable
    EnvironmentVariableType.add_member(:plaintext, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PLAINTEXT", traits: {"smithy.api#enumValue" => "PLAINTEXT"}))
    EnvironmentVariableType.add_member(:parameter_store, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PARAMETER_STORE", traits: {"smithy.api#enumValue" => "PARAMETER_STORE"}))
    EnvironmentVariableType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    EnvironmentVariables.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariable)
    ExportedEnvironmentVariable.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    ExportedEnvironmentVariable.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "value"))
    ExportedEnvironmentVariable.type = Types::ExportedEnvironmentVariable
    ExportedEnvironmentVariables.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportedEnvironmentVariable)
    FileSystemType.add_member(:efs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EFS", traits: {"smithy.api#enumValue" => "EFS"}))
    FilterGroup.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookFilter)
    FilterGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterGroup)
    Fleet.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Fleet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetName, location_name: "name"))
    Fleet.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    Fleet.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    Fleet.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModified"))
    Fleet.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetStatus, location_name: "status"))
    Fleet.add_member(:base_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetCapacity, location_name: "baseCapacity"))
    Fleet.add_member(:environment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentType, location_name: "environmentType"))
    Fleet.add_member(:compute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: "computeType"))
    Fleet.add_member(:compute_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: "computeConfiguration"))
    Fleet.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfigurationOutput, location_name: "scalingConfiguration"))
    Fleet.add_member(:overflow_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetOverflowBehavior, location_name: "overflowBehavior"))
    Fleet.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    Fleet.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProxyConfiguration, location_name: "proxyConfiguration"))
    Fleet.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "imageId"))
    Fleet.add_member(:fleet_service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fleetServiceRole"))
    Fleet.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Fleet.type = Types::Fleet
    FleetArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    FleetContextCode.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    FleetContextCode.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    FleetContextCode.add_member(:action_required, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTION_REQUIRED", traits: {"smithy.api#enumValue" => "ACTION_REQUIRED"}))
    FleetContextCode.add_member(:pending_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    FleetContextCode.add_member(:insufficient_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSUFFICIENT_CAPACITY", traits: {"smithy.api#enumValue" => "INSUFFICIENT_CAPACITY"}))
    FleetNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    FleetOverflowBehavior.add_member(:queue, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "QUEUE", traits: {"smithy.api#enumValue" => "QUEUE"}))
    FleetOverflowBehavior.add_member(:on_demand, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    FleetProxyRule.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetProxyRuleType, location_name: "type", traits: {"smithy.api#required" => {}}))
    FleetProxyRule.add_member(:effect, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetProxyRuleEffectType, location_name: "effect", traits: {"smithy.api#required" => {}}))
    FleetProxyRule.add_member(:entities, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetProxyRuleEntities, location_name: "entities", traits: {"smithy.api#required" => {}}))
    FleetProxyRule.type = Types::FleetProxyRule
    FleetProxyRuleBehavior.add_member(:allow_all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW_ALL", traits: {"smithy.api#enumValue" => "ALLOW_ALL"}))
    FleetProxyRuleBehavior.add_member(:deny_all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENY_ALL", traits: {"smithy.api#enumValue" => "DENY_ALL"}))
    FleetProxyRuleEffectType.add_member(:allow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    FleetProxyRuleEffectType.add_member(:deny, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    FleetProxyRuleEntities.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    FleetProxyRuleType.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOMAIN", traits: {"smithy.api#enumValue" => "DOMAIN"}))
    FleetProxyRuleType.add_member(:ip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IP", traits: {"smithy.api#enumValue" => "IP"}))
    FleetProxyRules.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetProxyRule)
    FleetScalingMetricType.add_member(:fleet_utilization_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FLEET_UTILIZATION_RATE", traits: {"smithy.api#enumValue" => "FLEET_UTILIZATION_RATE"}))
    FleetScalingType.add_member(:target_tracking_scaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TARGET_TRACKING_SCALING", traits: {"smithy.api#enumValue" => "TARGET_TRACKING_SCALING"}))
    FleetSortByType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    FleetSortByType.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED_TIME", traits: {"smithy.api#enumValue" => "CREATED_TIME"}))
    FleetSortByType.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAST_MODIFIED_TIME", traits: {"smithy.api#enumValue" => "LAST_MODIFIED_TIME"}))
    FleetStatus.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetStatusCode, location_name: "statusCode"))
    FleetStatus.add_member(:context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetContextCode, location_name: "context"))
    FleetStatus.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    FleetStatus.type = Types::FleetStatus
    FleetStatusCode.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    FleetStatusCode.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FleetStatusCode.add_member(:rotating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROTATING", traits: {"smithy.api#enumValue" => "ROTATING"}))
    FleetStatusCode.add_member(:pending_deletion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    FleetStatusCode.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FleetStatusCode.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    FleetStatusCode.add_member(:update_rollback_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_ROLLBACK_FAILED"}))
    FleetStatusCode.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    Fleets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fleet)
    FleetsAllowed.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    GetReportGroupTrendInput.add_member(:report_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reportGroupArn", traits: {"smithy.api#required" => {}}))
    GetReportGroupTrendInput.add_member(:num_of_reports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "numOfReports"))
    GetReportGroupTrendInput.add_member(:trend_field, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroupTrendFieldType, location_name: "trendField", traits: {"smithy.api#required" => {}}))
    GetReportGroupTrendInput.type = Types::GetReportGroupTrendInput
    GetReportGroupTrendOutput.add_member(:stats, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroupTrendStats, location_name: "stats"))
    GetReportGroupTrendOutput.add_member(:raw_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroupTrendRawDataList, location_name: "rawData"))
    GetReportGroupTrendOutput.type = Types::GetReportGroupTrendOutput
    GetResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "policy"))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GitSubmodulesConfig.add_member(:fetch_submodules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "fetchSubmodules", traits: {"smithy.api#required" => {}}))
    GitSubmodulesConfig.type = Types::GitSubmodulesConfig
    Identifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ImagePullCredentialsType.add_member(:codebuild, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODEBUILD", traits: {"smithy.api#enumValue" => "CODEBUILD"}))
    ImagePullCredentialsType.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SERVICE_ROLE", traits: {"smithy.api#enumValue" => "SERVICE_ROLE"}))
    ImageVersions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ImportSourceCredentialsInput.add_member(:username, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "username"))
    ImportSourceCredentialsInput.add_member(:token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "token", traits: {"smithy.api#required" => {}}))
    ImportSourceCredentialsInput.add_member(:server_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerType, location_name: "serverType", traits: {"smithy.api#required" => {}}))
    ImportSourceCredentialsInput.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: "authType", traits: {"smithy.api#required" => {}}))
    ImportSourceCredentialsInput.add_member(:should_overwrite, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "shouldOverwrite"))
    ImportSourceCredentialsInput.type = Types::ImportSourceCredentialsInput
    ImportSourceCredentialsOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    ImportSourceCredentialsOutput.type = Types::ImportSourceCredentialsOutput
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidInputException.type = Types::InvalidInputException
    InvalidateProjectCacheInput.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectName", traits: {"smithy.api#required" => {}}))
    InvalidateProjectCacheInput.type = Types::InvalidateProjectCacheInput
    InvalidateProjectCacheOutput.type = Types::InvalidateProjectCacheOutput
    LanguageType.add_member(:java, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "JAVA", traits: {"smithy.api#enumValue" => "JAVA"}))
    LanguageType.add_member(:python, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PYTHON", traits: {"smithy.api#enumValue" => "PYTHON"}))
    LanguageType.add_member(:node_js, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NODE_JS", traits: {"smithy.api#enumValue" => "NODE_JS"}))
    LanguageType.add_member(:ruby, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUBY", traits: {"smithy.api#enumValue" => "RUBY"}))
    LanguageType.add_member(:golang, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GOLANG", traits: {"smithy.api#enumValue" => "GOLANG"}))
    LanguageType.add_member(:docker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOCKER", traits: {"smithy.api#enumValue" => "DOCKER"}))
    LanguageType.add_member(:android, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ANDROID", traits: {"smithy.api#enumValue" => "ANDROID"}))
    LanguageType.add_member(:dotnet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOTNET", traits: {"smithy.api#enumValue" => "DOTNET"}))
    LanguageType.add_member(:base, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASE", traits: {"smithy.api#enumValue" => "BASE"}))
    LanguageType.add_member(:php, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PHP", traits: {"smithy.api#enumValue" => "PHP"}))
    ListBuildBatchesForProjectInput.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectName"))
    ListBuildBatchesForProjectInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatchFilter, location_name: "filter"))
    ListBuildBatchesForProjectInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListBuildBatchesForProjectInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListBuildBatchesForProjectInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildBatchesForProjectInput.type = Types::ListBuildBatchesForProjectInput
    ListBuildBatchesForProjectOutput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatchIds, location_name: "ids"))
    ListBuildBatchesForProjectOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildBatchesForProjectOutput.type = Types::ListBuildBatchesForProjectOutput
    ListBuildBatchesInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatchFilter, location_name: "filter"))
    ListBuildBatchesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListBuildBatchesInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListBuildBatchesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildBatchesInput.type = Types::ListBuildBatchesInput
    ListBuildBatchesOutput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatchIds, location_name: "ids"))
    ListBuildBatchesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildBatchesOutput.type = Types::ListBuildBatchesOutput
    ListBuildsForProjectInput.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectName", traits: {"smithy.api#required" => {}}))
    ListBuildsForProjectInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListBuildsForProjectInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildsForProjectInput.type = Types::ListBuildsForProjectInput
    ListBuildsForProjectOutput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildIds, location_name: "ids"))
    ListBuildsForProjectOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildsForProjectOutput.type = Types::ListBuildsForProjectOutput
    ListBuildsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListBuildsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildsInput.type = Types::ListBuildsInput
    ListBuildsOutput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildIds, location_name: "ids"))
    ListBuildsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListBuildsOutput.type = Types::ListBuildsOutput
    ListCommandExecutionsForSandboxInput.add_member(:sandbox_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sandboxId", traits: {"smithy.api#required" => {}}))
    ListCommandExecutionsForSandboxInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListCommandExecutionsForSandboxInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListCommandExecutionsForSandboxInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: "nextToken"))
    ListCommandExecutionsForSandboxInput.type = Types::ListCommandExecutionsForSandboxInput
    ListCommandExecutionsForSandboxOutput.add_member(:command_executions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecutions, location_name: "commandExecutions"))
    ListCommandExecutionsForSandboxOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListCommandExecutionsForSandboxOutput.type = Types::ListCommandExecutionsForSandboxOutput
    ListCuratedEnvironmentImagesInput.type = Types::ListCuratedEnvironmentImagesInput
    ListCuratedEnvironmentImagesOutput.add_member(:platforms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentPlatforms, location_name: "platforms"))
    ListCuratedEnvironmentImagesOutput.type = Types::ListCuratedEnvironmentImagesOutput
    ListFleetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: "nextToken"))
    ListFleetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListFleetsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListFleetsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetSortByType, location_name: "sortBy"))
    ListFleetsInput.type = Types::ListFleetsInput
    ListFleetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListFleetsOutput.add_member(:fleets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetArns, location_name: "fleets"))
    ListFleetsOutput.type = Types::ListFleetsOutput
    ListProjectsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSortByType, location_name: "sortBy"))
    ListProjectsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListProjectsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListProjectsInput.type = Types::ListProjectsInput
    ListProjectsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListProjectsOutput.add_member(:projects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectNames, location_name: "projects"))
    ListProjectsOutput.type = Types::ListProjectsOutput
    ListReportGroupsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListReportGroupsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroupSortByType, location_name: "sortBy"))
    ListReportGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListReportGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListReportGroupsInput.type = Types::ListReportGroupsInput
    ListReportGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListReportGroupsOutput.add_member(:report_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroupArns, location_name: "reportGroups"))
    ListReportGroupsOutput.type = Types::ListReportGroupsOutput
    ListReportsForReportGroupInput.add_member(:report_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "reportGroupArn", traits: {"smithy.api#required" => {}}))
    ListReportsForReportGroupInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListReportsForReportGroupInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListReportsForReportGroupInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListReportsForReportGroupInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFilter, location_name: "filter"))
    ListReportsForReportGroupInput.type = Types::ListReportsForReportGroupInput
    ListReportsForReportGroupOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListReportsForReportGroupOutput.add_member(:reports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportArns, location_name: "reports"))
    ListReportsForReportGroupOutput.type = Types::ListReportsForReportGroupOutput
    ListReportsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListReportsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListReportsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListReportsInput.add_member(:filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportFilter, location_name: "filter"))
    ListReportsInput.type = Types::ListReportsInput
    ListReportsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListReportsOutput.add_member(:reports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportArns, location_name: "reports"))
    ListReportsOutput.type = Types::ListReportsOutput
    ListSandboxesForProjectInput.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectName", traits: {"smithy.api#required" => {}}))
    ListSandboxesForProjectInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListSandboxesForProjectInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListSandboxesForProjectInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: "nextToken"))
    ListSandboxesForProjectInput.type = Types::ListSandboxesForProjectInput
    ListSandboxesForProjectOutput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxIds, location_name: "ids"))
    ListSandboxesForProjectOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSandboxesForProjectOutput.type = Types::ListSandboxesForProjectOutput
    ListSandboxesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListSandboxesInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListSandboxesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSandboxesInput.type = Types::ListSandboxesInput
    ListSandboxesOutput.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxIds, location_name: "ids"))
    ListSandboxesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSandboxesOutput.type = Types::ListSandboxesOutput
    ListSharedProjectsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedResourceSortByType, location_name: "sortBy"))
    ListSharedProjectsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListSharedProjectsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListSharedProjectsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListSharedProjectsInput.type = Types::ListSharedProjectsInput
    ListSharedProjectsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSharedProjectsOutput.add_member(:projects, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArns, location_name: "projects"))
    ListSharedProjectsOutput.type = Types::ListSharedProjectsOutput
    ListSharedReportGroupsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrderType, location_name: "sortOrder"))
    ListSharedReportGroupsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedResourceSortByType, location_name: "sortBy"))
    ListSharedReportGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSharedReportGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageSize, location_name: "maxResults"))
    ListSharedReportGroupsInput.type = Types::ListSharedReportGroupsInput
    ListSharedReportGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSharedReportGroupsOutput.add_member(:report_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroupArns, location_name: "reportGroups"))
    ListSharedReportGroupsOutput.type = Types::ListSharedReportGroupsOutput
    ListSourceCredentialsInput.type = Types::ListSourceCredentialsInput
    ListSourceCredentialsOutput.add_member(:source_credentials_infos, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCredentialsInfos, location_name: "sourceCredentialsInfos"))
    ListSourceCredentialsOutput.type = Types::ListSourceCredentialsOutput
    LogsConfig.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsConfig, location_name: "cloudWatchLogs"))
    LogsConfig.add_member(:s3_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3LogsConfig, location_name: "s3Logs"))
    LogsConfig.type = Types::LogsConfig
    LogsConfigStatusType.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    LogsConfigStatusType.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    LogsLocation.add_member(:group_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "groupName"))
    LogsLocation.add_member(:stream_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "streamName"))
    LogsLocation.add_member(:deep_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "deepLink"))
    LogsLocation.add_member(:s3_deep_link, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "s3DeepLink"))
    LogsLocation.add_member(:cloud_watch_logs_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "cloudWatchLogsArn"))
    LogsLocation.add_member(:s3_logs_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "s3LogsArn"))
    LogsLocation.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchLogsConfig, location_name: "cloudWatchLogs"))
    LogsLocation.add_member(:s3_logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3LogsConfig, location_name: "s3Logs"))
    LogsLocation.type = Types::LogsLocation
    MachineType.add_member(:general, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERAL", traits: {"smithy.api#enumValue" => "GENERAL"}))
    MachineType.add_member(:nvme, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NVME", traits: {"smithy.api#enumValue" => "NVME"}))
    NetworkInterface.add_member(:subnet_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "subnetId"))
    NetworkInterface.add_member(:network_interface_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "networkInterfaceId"))
    NetworkInterface.type = Types::NetworkInterface
    OAuthProviderException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    OAuthProviderException.type = Types::OAuthProviderException
    PhaseContext.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "statusCode"))
    PhaseContext.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    PhaseContext.type = Types::PhaseContext
    PhaseContexts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhaseContext)
    PlatformType.add_member(:debian, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEBIAN", traits: {"smithy.api#enumValue" => "DEBIAN"}))
    PlatformType.add_member(:amazon_linux, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_LINUX", traits: {"smithy.api#enumValue" => "AMAZON_LINUX"}))
    PlatformType.add_member(:ubuntu, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UBUNTU", traits: {"smithy.api#enumValue" => "UBUNTU"}))
    PlatformType.add_member(:windows_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS_SERVER", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER"}))
    Project.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: "name"))
    Project.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Project.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDescription, location_name: "description"))
    Project.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSource, location_name: "source"))
    Project.add_member(:secondary_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSources, location_name: "secondarySources"))
    Project.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceVersion"))
    Project.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSecondarySourceVersions, location_name: "secondarySourceVersions"))
    Project.add_member(:artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArtifacts, location_name: "artifacts"))
    Project.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArtifactsList, location_name: "secondaryArtifacts"))
    Project.add_member(:cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectCache, location_name: "cache"))
    Project.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectEnvironment, location_name: "environment"))
    Project.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRole"))
    Project.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildTimeOut, location_name: "timeoutInMinutes"))
    Project.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOut, location_name: "queuedTimeoutInMinutes"))
    Project.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKey"))
    Project.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Project.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    Project.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModified"))
    Project.add_member(:webhook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Webhook, location_name: "webhook"))
    Project.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    Project.add_member(:badge, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectBadge, location_name: "badge"))
    Project.add_member(:logs_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfig, location_name: "logsConfig"))
    Project.add_member(:file_system_locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectFileSystemLocations, location_name: "fileSystemLocations"))
    Project.add_member(:build_batch_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectBuildBatchConfig, location_name: "buildBatchConfig"))
    Project.add_member(:concurrent_build_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "concurrentBuildLimit"))
    Project.add_member(:project_visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVisibilityType, location_name: "projectVisibility"))
    Project.add_member(:public_project_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "publicProjectAlias"))
    Project.add_member(:resource_access_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceAccessRole"))
    Project.add_member(:auto_retry_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "autoRetryLimit"))
    Project.type = Types::Project
    ProjectArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ProjectArtifacts.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsType, location_name: "type", traits: {"smithy.api#required" => {}}))
    ProjectArtifacts.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "location"))
    ProjectArtifacts.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "path"))
    ProjectArtifacts.add_member(:namespace_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactNamespace, location_name: "namespaceType"))
    ProjectArtifacts.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ProjectArtifacts.add_member(:packaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactPackaging, location_name: "packaging"))
    ProjectArtifacts.add_member(:override_artifact_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "overrideArtifactName"))
    ProjectArtifacts.add_member(:encryption_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "encryptionDisabled"))
    ProjectArtifacts.add_member(:artifact_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "artifactIdentifier"))
    ProjectArtifacts.add_member(:bucket_owner_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketOwnerAccess, location_name: "bucketOwnerAccess"))
    ProjectArtifacts.type = Types::ProjectArtifacts
    ProjectArtifactsList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArtifacts)
    ProjectBadge.add_member(:badge_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "badgeEnabled", traits: {"smithy.api#default" => false}))
    ProjectBadge.add_member(:badge_request_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "badgeRequestUrl"))
    ProjectBadge.type = Types::ProjectBadge
    ProjectBuildBatchConfig.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRole"))
    ProjectBuildBatchConfig.add_member(:combine_artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "combineArtifacts"))
    ProjectBuildBatchConfig.add_member(:restrictions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchRestrictions, location_name: "restrictions"))
    ProjectBuildBatchConfig.add_member(:timeout_in_mins, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "timeoutInMins"))
    ProjectBuildBatchConfig.add_member(:batch_report_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchReportModeType, location_name: "batchReportMode"))
    ProjectBuildBatchConfig.type = Types::ProjectBuildBatchConfig
    ProjectCache.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheType, location_name: "type", traits: {"smithy.api#required" => {}}))
    ProjectCache.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "location"))
    ProjectCache.add_member(:modes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectCacheModes, location_name: "modes"))
    ProjectCache.add_member(:cache_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "cacheNamespace"))
    ProjectCache.type = Types::ProjectCache
    ProjectCacheModes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CacheMode)
    ProjectEnvironment.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentType, location_name: "type", traits: {"smithy.api#required" => {}}))
    ProjectEnvironment.add_member(:image, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "image", traits: {"smithy.api#required" => {}}))
    ProjectEnvironment.add_member(:compute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: "computeType", traits: {"smithy.api#required" => {}}))
    ProjectEnvironment.add_member(:compute_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: "computeConfiguration"))
    ProjectEnvironment.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectFleet, location_name: "fleet"))
    ProjectEnvironment.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environmentVariables"))
    ProjectEnvironment.add_member(:privileged_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "privilegedMode"))
    ProjectEnvironment.add_member(:certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "certificate"))
    ProjectEnvironment.add_member(:registry_credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryCredential, location_name: "registryCredential"))
    ProjectEnvironment.add_member(:image_pull_credentials_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImagePullCredentialsType, location_name: "imagePullCredentialsType"))
    ProjectEnvironment.add_member(:docker_server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DockerServer, location_name: "dockerServer"))
    ProjectEnvironment.type = Types::ProjectEnvironment
    ProjectFileSystemLocation.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileSystemType, location_name: "type"))
    ProjectFileSystemLocation.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "location"))
    ProjectFileSystemLocation.add_member(:mount_point, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "mountPoint"))
    ProjectFileSystemLocation.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "identifier"))
    ProjectFileSystemLocation.add_member(:mount_options, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "mountOptions"))
    ProjectFileSystemLocation.type = Types::ProjectFileSystemLocation
    ProjectFileSystemLocations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectFileSystemLocation)
    ProjectFleet.add_member(:fleet_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "fleetArn"))
    ProjectFleet.type = Types::ProjectFleet
    ProjectNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ProjectSecondarySourceVersions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSourceVersion)
    ProjectSortByType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    ProjectSortByType.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED_TIME", traits: {"smithy.api#enumValue" => "CREATED_TIME"}))
    ProjectSortByType.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAST_MODIFIED_TIME", traits: {"smithy.api#enumValue" => "LAST_MODIFIED_TIME"}))
    ProjectSource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: "type", traits: {"smithy.api#required" => {}}))
    ProjectSource.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "location"))
    ProjectSource.add_member(:git_clone_depth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitCloneDepth, location_name: "gitCloneDepth"))
    ProjectSource.add_member(:git_submodules_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitSubmodulesConfig, location_name: "gitSubmodulesConfig"))
    ProjectSource.add_member(:buildspec, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "buildspec"))
    ProjectSource.add_member(:auth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceAuth, location_name: "auth"))
    ProjectSource.add_member(:report_build_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "reportBuildStatus"))
    ProjectSource.add_member(:build_status_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildStatusConfig, location_name: "buildStatusConfig"))
    ProjectSource.add_member(:insecure_ssl, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "insecureSsl"))
    ProjectSource.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceIdentifier"))
    ProjectSource.type = Types::ProjectSource
    ProjectSourceVersion.add_member(:source_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceIdentifier", traits: {"smithy.api#required" => {}}))
    ProjectSourceVersion.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceVersion", traits: {"smithy.api#required" => {}}))
    ProjectSourceVersion.type = Types::ProjectSourceVersion
    ProjectSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSource)
    ProjectVisibilityType.add_member(:public_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PUBLIC_READ", traits: {"smithy.api#enumValue" => "PUBLIC_READ"}))
    ProjectVisibilityType.add_member(:private, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    Projects.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Project)
    ProxyConfiguration.add_member(:default_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetProxyRuleBehavior, location_name: "defaultBehavior"))
    ProxyConfiguration.add_member(:ordered_proxy_rules, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetProxyRules, location_name: "orderedProxyRules"))
    ProxyConfiguration.type = Types::ProxyConfiguration
    PullRequestBuildApproverRole.add_member(:github_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB_READ", traits: {"smithy.api#enumValue" => "GITHUB_READ"}))
    PullRequestBuildApproverRole.add_member(:github_triage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB_TRIAGE", traits: {"smithy.api#enumValue" => "GITHUB_TRIAGE"}))
    PullRequestBuildApproverRole.add_member(:github_write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB_WRITE", traits: {"smithy.api#enumValue" => "GITHUB_WRITE"}))
    PullRequestBuildApproverRole.add_member(:github_maintain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB_MAINTAIN", traits: {"smithy.api#enumValue" => "GITHUB_MAINTAIN"}))
    PullRequestBuildApproverRole.add_member(:github_admin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB_ADMIN", traits: {"smithy.api#enumValue" => "GITHUB_ADMIN"}))
    PullRequestBuildApproverRole.add_member(:gitlab_guest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB_GUEST", traits: {"smithy.api#enumValue" => "GITLAB_GUEST"}))
    PullRequestBuildApproverRole.add_member(:gitlab_planner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB_PLANNER", traits: {"smithy.api#enumValue" => "GITLAB_PLANNER"}))
    PullRequestBuildApproverRole.add_member(:gitlab_reporter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB_REPORTER", traits: {"smithy.api#enumValue" => "GITLAB_REPORTER"}))
    PullRequestBuildApproverRole.add_member(:gitlab_developer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB_DEVELOPER", traits: {"smithy.api#enumValue" => "GITLAB_DEVELOPER"}))
    PullRequestBuildApproverRole.add_member(:gitlab_maintainer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB_MAINTAINER", traits: {"smithy.api#enumValue" => "GITLAB_MAINTAINER"}))
    PullRequestBuildApproverRole.add_member(:gitlab_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB_OWNER", traits: {"smithy.api#enumValue" => "GITLAB_OWNER"}))
    PullRequestBuildApproverRole.add_member(:bitbucket_read, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BITBUCKET_READ", traits: {"smithy.api#enumValue" => "BITBUCKET_READ"}))
    PullRequestBuildApproverRole.add_member(:bitbucket_write, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BITBUCKET_WRITE", traits: {"smithy.api#enumValue" => "BITBUCKET_WRITE"}))
    PullRequestBuildApproverRole.add_member(:bitbucket_admin, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BITBUCKET_ADMIN", traits: {"smithy.api#enumValue" => "BITBUCKET_ADMIN"}))
    PullRequestBuildApproverRoles.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestBuildApproverRole)
    PullRequestBuildCommentApproval.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PullRequestBuildCommentApproval.add_member(:all_pull_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ALL_PULL_REQUESTS", traits: {"smithy.api#enumValue" => "ALL_PULL_REQUESTS"}))
    PullRequestBuildCommentApproval.add_member(:fork_pull_requests, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FORK_PULL_REQUESTS", traits: {"smithy.api#enumValue" => "FORK_PULL_REQUESTS"}))
    PullRequestBuildPolicy.add_member(:requires_comment_approval, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestBuildCommentApproval, location_name: "requiresCommentApproval", traits: {"smithy.api#required" => {}}))
    PullRequestBuildPolicy.add_member(:approver_roles, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestBuildApproverRoles, location_name: "approverRoles"))
    PullRequestBuildPolicy.type = Types::PullRequestBuildPolicy
    PutResourcePolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.type = Types::PutResourcePolicyInput
    PutResourcePolicyOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceArn"))
    PutResourcePolicyOutput.type = Types::PutResourcePolicyOutput
    RegistryCredential.add_member(:credential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "credential", traits: {"smithy.api#required" => {}}))
    RegistryCredential.add_member(:credential_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CredentialProviderType, location_name: "credentialProvider", traits: {"smithy.api#required" => {}}))
    RegistryCredential.type = Types::RegistryCredential
    Report.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Report.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportType, location_name: "type"))
    Report.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Report.add_member(:report_group_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reportGroupArn"))
    Report.add_member(:execution_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "executionId"))
    Report.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportStatusType, location_name: "status"))
    Report.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    Report.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "expired"))
    Report.add_member(:export_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportExportConfig, location_name: "exportConfig"))
    Report.add_member(:truncated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "truncated"))
    Report.add_member(:test_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestReportSummary, location_name: "testSummary"))
    Report.add_member(:code_coverage_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeCoverageReportSummary, location_name: "codeCoverageSummary"))
    Report.type = Types::Report
    ReportArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ReportCodeCoverageSortByType.add_member(:line_coverage_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINE_COVERAGE_PERCENTAGE", traits: {"smithy.api#enumValue" => "LINE_COVERAGE_PERCENTAGE"}))
    ReportCodeCoverageSortByType.add_member(:file_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FILE_PATH", traits: {"smithy.api#enumValue" => "FILE_PATH"}))
    ReportExportConfig.add_member(:export_config_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportExportConfigType, location_name: "exportConfigType"))
    ReportExportConfig.add_member(:s3_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ReportExportConfig, location_name: "s3Destination"))
    ReportExportConfig.type = Types::ReportExportConfig
    ReportExportConfigType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ReportExportConfigType.add_member(:no_export, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_EXPORT", traits: {"smithy.api#enumValue" => "NO_EXPORT"}))
    ReportFilter.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportStatusType, location_name: "status"))
    ReportFilter.type = Types::ReportFilter
    ReportGroup.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    ReportGroup.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroupName, location_name: "name"))
    ReportGroup.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportType, location_name: "type"))
    ReportGroup.add_member(:export_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportExportConfig, location_name: "exportConfig"))
    ReportGroup.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "created"))
    ReportGroup.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModified"))
    ReportGroup.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ReportGroup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroupStatusType, location_name: "status"))
    ReportGroup.type = Types::ReportGroup
    ReportGroupArns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ReportGroupSortByType.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    ReportGroupSortByType.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED_TIME", traits: {"smithy.api#enumValue" => "CREATED_TIME"}))
    ReportGroupSortByType.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LAST_MODIFIED_TIME", traits: {"smithy.api#enumValue" => "LAST_MODIFIED_TIME"}))
    ReportGroupStatusType.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReportGroupStatusType.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ReportGroupTrendFieldType.add_member(:pass_rate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PASS_RATE", traits: {"smithy.api#enumValue" => "PASS_RATE"}))
    ReportGroupTrendFieldType.add_member(:duration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DURATION", traits: {"smithy.api#enumValue" => "DURATION"}))
    ReportGroupTrendFieldType.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TOTAL", traits: {"smithy.api#enumValue" => "TOTAL"}))
    ReportGroupTrendFieldType.add_member(:line_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINE_COVERAGE", traits: {"smithy.api#enumValue" => "LINE_COVERAGE"}))
    ReportGroupTrendFieldType.add_member(:lines_covered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINES_COVERED", traits: {"smithy.api#enumValue" => "LINES_COVERED"}))
    ReportGroupTrendFieldType.add_member(:lines_missed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINES_MISSED", traits: {"smithy.api#enumValue" => "LINES_MISSED"}))
    ReportGroupTrendFieldType.add_member(:branch_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BRANCH_COVERAGE", traits: {"smithy.api#enumValue" => "BRANCH_COVERAGE"}))
    ReportGroupTrendFieldType.add_member(:branches_covered, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BRANCHES_COVERED", traits: {"smithy.api#enumValue" => "BRANCHES_COVERED"}))
    ReportGroupTrendFieldType.add_member(:branches_missed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BRANCHES_MISSED", traits: {"smithy.api#enumValue" => "BRANCHES_MISSED"}))
    ReportGroupTrendRawDataList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportWithRawData)
    ReportGroupTrendStats.add_member(:average, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "average"))
    ReportGroupTrendStats.add_member(:max, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "max"))
    ReportGroupTrendStats.add_member(:min, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "min"))
    ReportGroupTrendStats.type = Types::ReportGroupTrendStats
    ReportGroups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroup)
    ReportPackagingType.add_member(:zip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZIP", traits: {"smithy.api#enumValue" => "ZIP"}))
    ReportPackagingType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReportStatusCounts.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ReportStatusCounts.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt)
    ReportStatusType.add_member(:generating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GENERATING", traits: {"smithy.api#enumValue" => "GENERATING"}))
    ReportStatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ReportStatusType.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ReportStatusType.add_member(:incomplete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INCOMPLETE", traits: {"smithy.api#enumValue" => "INCOMPLETE"}))
    ReportStatusType.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ReportType.add_member(:test, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST", traits: {"smithy.api#enumValue" => "TEST"}))
    ReportType.add_member(:code_coverage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODE_COVERAGE", traits: {"smithy.api#enumValue" => "CODE_COVERAGE"}))
    ReportWithRawData.add_member(:report_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reportArn"))
    ReportWithRawData.add_member(:data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "data"))
    ReportWithRawData.type = Types::ReportWithRawData
    Reports.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Report)
    ResolvedArtifact.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsType, location_name: "type"))
    ResolvedArtifact.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "location"))
    ResolvedArtifact.add_member(:identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "identifier"))
    ResolvedArtifact.type = Types::ResolvedArtifact
    ResolvedSecondaryArtifacts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResolvedArtifact)
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryBuildBatchInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    RetryBuildBatchInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "idempotencyToken"))
    RetryBuildBatchInput.add_member(:retry_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryBuildBatchType, location_name: "retryType"))
    RetryBuildBatchInput.type = Types::RetryBuildBatchInput
    RetryBuildBatchOutput.add_member(:build_batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatch, location_name: "buildBatch"))
    RetryBuildBatchOutput.type = Types::RetryBuildBatchOutput
    RetryBuildBatchType.add_member(:retry_all_builds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETRY_ALL_BUILDS", traits: {"smithy.api#enumValue" => "RETRY_ALL_BUILDS"}))
    RetryBuildBatchType.add_member(:retry_failed_builds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETRY_FAILED_BUILDS", traits: {"smithy.api#enumValue" => "RETRY_FAILED_BUILDS"}))
    RetryBuildInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    RetryBuildInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "idempotencyToken"))
    RetryBuildInput.type = Types::RetryBuildInput
    RetryBuildOutput.add_member(:build, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Build, location_name: "build"))
    RetryBuildOutput.type = Types::RetryBuildOutput
    S3LogsConfig.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfigStatusType, location_name: "status", traits: {"smithy.api#required" => {}}))
    S3LogsConfig.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "location"))
    S3LogsConfig.add_member(:encryption_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "encryptionDisabled"))
    S3LogsConfig.add_member(:bucket_owner_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketOwnerAccess, location_name: "bucketOwnerAccess"))
    S3LogsConfig.type = Types::S3LogsConfig
    S3ReportExportConfig.add_member(:bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "bucket"))
    S3ReportExportConfig.add_member(:bucket_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "bucketOwner"))
    S3ReportExportConfig.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "path"))
    S3ReportExportConfig.add_member(:packaging, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportPackagingType, location_name: "packaging"))
    S3ReportExportConfig.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKey"))
    S3ReportExportConfig.add_member(:encryption_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "encryptionDisabled"))
    S3ReportExportConfig.type = Types::S3ReportExportConfig
    SSMSession.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sessionId"))
    SSMSession.add_member(:token_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "tokenValue"))
    SSMSession.add_member(:stream_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "streamUrl"))
    SSMSession.type = Types::SSMSession
    Sandbox.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    Sandbox.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    Sandbox.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectName"))
    Sandbox.add_member(:request_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "requestTime"))
    Sandbox.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    Sandbox.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    Sandbox.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "status"))
    Sandbox.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSource, location_name: "source"))
    Sandbox.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sourceVersion"))
    Sandbox.add_member(:secondary_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSources, location_name: "secondarySources"))
    Sandbox.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSecondarySourceVersions, location_name: "secondarySourceVersions"))
    Sandbox.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectEnvironment, location_name: "environment"))
    Sandbox.add_member(:file_system_locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectFileSystemLocations, location_name: "fileSystemLocations"))
    Sandbox.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "timeoutInMinutes"))
    Sandbox.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "queuedTimeoutInMinutes"))
    Sandbox.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    Sandbox.add_member(:log_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfig, location_name: "logConfig"))
    Sandbox.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKey"))
    Sandbox.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRole"))
    Sandbox.add_member(:current_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxSession, location_name: "currentSession"))
    Sandbox.type = Types::Sandbox
    SandboxIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    SandboxSession.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id"))
    SandboxSession.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "status"))
    SandboxSession.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    SandboxSession.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    SandboxSession.add_member(:current_phase, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "currentPhase"))
    SandboxSession.add_member(:phases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxSessionPhases, location_name: "phases"))
    SandboxSession.add_member(:resolved_source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resolvedSourceVersion"))
    SandboxSession.add_member(:logs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsLocation, location_name: "logs"))
    SandboxSession.add_member(:network_interface, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInterface, location_name: "networkInterface"))
    SandboxSession.type = Types::SandboxSession
    SandboxSessionPhase.add_member(:phase_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "phaseType"))
    SandboxSessionPhase.add_member(:phase_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatusType, location_name: "phaseStatus"))
    SandboxSessionPhase.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    SandboxSessionPhase.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    SandboxSessionPhase.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperLong, location_name: "durationInSeconds"))
    SandboxSessionPhase.add_member(:contexts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PhaseContexts, location_name: "contexts"))
    SandboxSessionPhase.type = Types::SandboxSessionPhase
    SandboxSessionPhases.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SandboxSessionPhase)
    Sandboxes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sandbox)
    ScalingConfigurationInput.add_member(:scaling_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetScalingType, location_name: "scalingType"))
    ScalingConfigurationInput.add_member(:target_tracking_scaling_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetTrackingScalingConfigurations, location_name: "targetTrackingScalingConfigs"))
    ScalingConfigurationInput.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetCapacity, location_name: "maxCapacity"))
    ScalingConfigurationInput.type = Types::ScalingConfigurationInput
    ScalingConfigurationOutput.add_member(:scaling_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetScalingType, location_name: "scalingType"))
    ScalingConfigurationOutput.add_member(:target_tracking_scaling_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetTrackingScalingConfigurations, location_name: "targetTrackingScalingConfigs"))
    ScalingConfigurationOutput.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetCapacity, location_name: "maxCapacity"))
    ScalingConfigurationOutput.add_member(:desired_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetCapacity, location_name: "desiredCapacity"))
    ScalingConfigurationOutput.type = Types::ScalingConfigurationOutput
    ScopeConfiguration.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ScopeConfiguration.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    ScopeConfiguration.add_member(:scope, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookScopeType, location_name: "scope", traits: {"smithy.api#required" => {}}))
    ScopeConfiguration.type = Types::ScopeConfiguration
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    ServerType.add_member(:github, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB", traits: {"smithy.api#enumValue" => "GITHUB"}))
    ServerType.add_member(:bitbucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BITBUCKET", traits: {"smithy.api#enumValue" => "BITBUCKET"}))
    ServerType.add_member(:github_enterprise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB_ENTERPRISE", traits: {"smithy.api#enumValue" => "GITHUB_ENTERPRISE"}))
    ServerType.add_member(:gitlab, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB", traits: {"smithy.api#enumValue" => "GITLAB"}))
    ServerType.add_member(:gitlab_self_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB_SELF_MANAGED", traits: {"smithy.api#enumValue" => "GITLAB_SELF_MANAGED"}))
    SharedResourceSortByType.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ARN", traits: {"smithy.api#enumValue" => "ARN"}))
    SharedResourceSortByType.add_member(:modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MODIFIED_TIME", traits: {"smithy.api#enumValue" => "MODIFIED_TIME"}))
    SortOrderType.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrderType.add_member(:descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SourceAuth.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceAuthType, location_name: "type", traits: {"smithy.api#required" => {}}))
    SourceAuth.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    SourceAuth.type = Types::SourceAuth
    SourceAuthType.add_member(:oauth, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OAUTH", traits: {"smithy.api#enumValue" => "OAUTH"}))
    SourceAuthType.add_member(:codeconnections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODECONNECTIONS", traits: {"smithy.api#enumValue" => "CODECONNECTIONS"}))
    SourceAuthType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    SourceCredentialsInfo.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn"))
    SourceCredentialsInfo.add_member(:server_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerType, location_name: "serverType"))
    SourceCredentialsInfo.add_member(:auth_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    SourceCredentialsInfo.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    SourceCredentialsInfo.type = Types::SourceCredentialsInfo
    SourceCredentialsInfos.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCredentialsInfo)
    SourceType.add_member(:codecommit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODECOMMIT", traits: {"smithy.api#enumValue" => "CODECOMMIT"}))
    SourceType.add_member(:codepipeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CODEPIPELINE", traits: {"smithy.api#enumValue" => "CODEPIPELINE"}))
    SourceType.add_member(:github, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB", traits: {"smithy.api#enumValue" => "GITHUB"}))
    SourceType.add_member(:gitlab, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB", traits: {"smithy.api#enumValue" => "GITLAB"}))
    SourceType.add_member(:gitlab_self_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB_SELF_MANAGED", traits: {"smithy.api#enumValue" => "GITLAB_SELF_MANAGED"}))
    SourceType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    SourceType.add_member(:bitbucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BITBUCKET", traits: {"smithy.api#enumValue" => "BITBUCKET"}))
    SourceType.add_member(:github_enterprise, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB_ENTERPRISE", traits: {"smithy.api#enumValue" => "GITHUB_ENTERPRISE"}))
    SourceType.add_member(:no_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NO_SOURCE", traits: {"smithy.api#enumValue" => "NO_SOURCE"}))
    StartBuildBatchInput.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectName", traits: {"smithy.api#required" => {}}))
    StartBuildBatchInput.add_member(:secondary_sources_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSources, location_name: "secondarySourcesOverride"))
    StartBuildBatchInput.add_member(:secondary_sources_version_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSecondarySourceVersions, location_name: "secondarySourcesVersionOverride"))
    StartBuildBatchInput.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceVersion"))
    StartBuildBatchInput.add_member(:artifacts_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArtifacts, location_name: "artifactsOverride"))
    StartBuildBatchInput.add_member(:secondary_artifacts_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArtifactsList, location_name: "secondaryArtifactsOverride"))
    StartBuildBatchInput.add_member(:environment_variables_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environmentVariablesOverride"))
    StartBuildBatchInput.add_member(:source_type_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: "sourceTypeOverride"))
    StartBuildBatchInput.add_member(:source_location_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceLocationOverride"))
    StartBuildBatchInput.add_member(:source_auth_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceAuth, location_name: "sourceAuthOverride"))
    StartBuildBatchInput.add_member(:git_clone_depth_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitCloneDepth, location_name: "gitCloneDepthOverride"))
    StartBuildBatchInput.add_member(:git_submodules_config_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitSubmodulesConfig, location_name: "gitSubmodulesConfigOverride"))
    StartBuildBatchInput.add_member(:buildspec_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "buildspecOverride"))
    StartBuildBatchInput.add_member(:insecure_ssl_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "insecureSslOverride"))
    StartBuildBatchInput.add_member(:report_build_batch_status_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "reportBuildBatchStatusOverride"))
    StartBuildBatchInput.add_member(:environment_type_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentType, location_name: "environmentTypeOverride"))
    StartBuildBatchInput.add_member(:image_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "imageOverride"))
    StartBuildBatchInput.add_member(:compute_type_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: "computeTypeOverride"))
    StartBuildBatchInput.add_member(:certificate_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "certificateOverride"))
    StartBuildBatchInput.add_member(:cache_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectCache, location_name: "cacheOverride"))
    StartBuildBatchInput.add_member(:service_role_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRoleOverride"))
    StartBuildBatchInput.add_member(:privileged_mode_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "privilegedModeOverride"))
    StartBuildBatchInput.add_member(:build_timeout_in_minutes_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildTimeOut, location_name: "buildTimeoutInMinutesOverride"))
    StartBuildBatchInput.add_member(:queued_timeout_in_minutes_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOut, location_name: "queuedTimeoutInMinutesOverride"))
    StartBuildBatchInput.add_member(:encryption_key_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKeyOverride"))
    StartBuildBatchInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "idempotencyToken"))
    StartBuildBatchInput.add_member(:logs_config_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfig, location_name: "logsConfigOverride"))
    StartBuildBatchInput.add_member(:registry_credential_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryCredential, location_name: "registryCredentialOverride"))
    StartBuildBatchInput.add_member(:image_pull_credentials_type_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImagePullCredentialsType, location_name: "imagePullCredentialsTypeOverride"))
    StartBuildBatchInput.add_member(:build_batch_config_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectBuildBatchConfig, location_name: "buildBatchConfigOverride"))
    StartBuildBatchInput.add_member(:debug_session_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "debugSessionEnabled"))
    StartBuildBatchInput.type = Types::StartBuildBatchInput
    StartBuildBatchOutput.add_member(:build_batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatch, location_name: "buildBatch"))
    StartBuildBatchOutput.type = Types::StartBuildBatchOutput
    StartBuildInput.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectName", traits: {"smithy.api#required" => {}}))
    StartBuildInput.add_member(:secondary_sources_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSources, location_name: "secondarySourcesOverride"))
    StartBuildInput.add_member(:secondary_sources_version_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSecondarySourceVersions, location_name: "secondarySourcesVersionOverride"))
    StartBuildInput.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceVersion"))
    StartBuildInput.add_member(:artifacts_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArtifacts, location_name: "artifactsOverride"))
    StartBuildInput.add_member(:secondary_artifacts_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArtifactsList, location_name: "secondaryArtifactsOverride"))
    StartBuildInput.add_member(:environment_variables_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environmentVariablesOverride"))
    StartBuildInput.add_member(:source_type_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceType, location_name: "sourceTypeOverride"))
    StartBuildInput.add_member(:source_location_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceLocationOverride"))
    StartBuildInput.add_member(:source_auth_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceAuth, location_name: "sourceAuthOverride"))
    StartBuildInput.add_member(:git_clone_depth_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitCloneDepth, location_name: "gitCloneDepthOverride"))
    StartBuildInput.add_member(:git_submodules_config_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GitSubmodulesConfig, location_name: "gitSubmodulesConfigOverride"))
    StartBuildInput.add_member(:buildspec_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "buildspecOverride"))
    StartBuildInput.add_member(:insecure_ssl_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "insecureSslOverride"))
    StartBuildInput.add_member(:report_build_status_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "reportBuildStatusOverride"))
    StartBuildInput.add_member(:build_status_config_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildStatusConfig, location_name: "buildStatusConfigOverride"))
    StartBuildInput.add_member(:environment_type_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentType, location_name: "environmentTypeOverride"))
    StartBuildInput.add_member(:image_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "imageOverride"))
    StartBuildInput.add_member(:compute_type_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: "computeTypeOverride"))
    StartBuildInput.add_member(:certificate_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "certificateOverride"))
    StartBuildInput.add_member(:cache_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectCache, location_name: "cacheOverride"))
    StartBuildInput.add_member(:service_role_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRoleOverride"))
    StartBuildInput.add_member(:privileged_mode_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "privilegedModeOverride"))
    StartBuildInput.add_member(:timeout_in_minutes_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildTimeOut, location_name: "timeoutInMinutesOverride"))
    StartBuildInput.add_member(:queued_timeout_in_minutes_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOut, location_name: "queuedTimeoutInMinutesOverride"))
    StartBuildInput.add_member(:encryption_key_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKeyOverride"))
    StartBuildInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "idempotencyToken"))
    StartBuildInput.add_member(:logs_config_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfig, location_name: "logsConfigOverride"))
    StartBuildInput.add_member(:registry_credential_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistryCredential, location_name: "registryCredentialOverride"))
    StartBuildInput.add_member(:image_pull_credentials_type_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImagePullCredentialsType, location_name: "imagePullCredentialsTypeOverride"))
    StartBuildInput.add_member(:debug_session_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "debugSessionEnabled"))
    StartBuildInput.add_member(:fleet_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectFleet, location_name: "fleetOverride"))
    StartBuildInput.add_member(:auto_retry_limit_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "autoRetryLimitOverride"))
    StartBuildInput.type = Types::StartBuildInput
    StartBuildOutput.add_member(:build, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Build, location_name: "build"))
    StartBuildOutput.type = Types::StartBuildOutput
    StartCommandExecutionInput.add_member(:sandbox_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sandboxId", traits: {"smithy.api#required" => {}}))
    StartCommandExecutionInput.add_member(:command, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "command", traits: {"smithy.api#required" => {}}))
    StartCommandExecutionInput.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandType, location_name: "type"))
    StartCommandExecutionInput.type = Types::StartCommandExecutionInput
    StartCommandExecutionOutput.add_member(:command_execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommandExecution, location_name: "commandExecution"))
    StartCommandExecutionOutput.type = Types::StartCommandExecutionOutput
    StartSandboxConnectionInput.add_member(:sandbox_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sandboxId", traits: {"smithy.api#required" => {}}))
    StartSandboxConnectionInput.type = Types::StartSandboxConnectionInput
    StartSandboxConnectionOutput.add_member(:ssm_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSMSession, location_name: "ssmSession"))
    StartSandboxConnectionOutput.type = Types::StartSandboxConnectionOutput
    StartSandboxInput.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectName"))
    StartSandboxInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveString, location_name: "idempotencyToken"))
    StartSandboxInput.type = Types::StartSandboxInput
    StartSandboxOutput.add_member(:sandbox, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sandbox, location_name: "sandbox"))
    StartSandboxOutput.type = Types::StartSandboxOutput
    StatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    StatusType.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StatusType.add_member(:fault, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAULT", traits: {"smithy.api#enumValue" => "FAULT"}))
    StatusType.add_member(:timed_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    StatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    StatusType.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    StopBuildBatchInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id", traits: {"smithy.api#required" => {}}))
    StopBuildBatchInput.type = Types::StopBuildBatchInput
    StopBuildBatchOutput.add_member(:build_batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildBatch, location_name: "buildBatch"))
    StopBuildBatchOutput.type = Types::StopBuildBatchOutput
    StopBuildInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id", traits: {"smithy.api#required" => {}}))
    StopBuildInput.type = Types::StopBuildInput
    StopBuildOutput.add_member(:build, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Build, location_name: "build"))
    StopBuildOutput.type = Types::StopBuildOutput
    StopSandboxInput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "id", traits: {"smithy.api#required" => {}}))
    StopSandboxInput.type = Types::StopSandboxInput
    StopSandboxOutput.add_member(:sandbox, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Sandbox, location_name: "sandbox"))
    StopSandboxOutput.type = Types::StopSandboxOutput
    Subnets.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyInput, location_name: "key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueInput, location_name: "value"))
    Tag.type = Types::Tag
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TargetTrackingScalingConfiguration.add_member(:metric_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetScalingMetricType, location_name: "metricType"))
    TargetTrackingScalingConfiguration.add_member(:target_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperDouble, location_name: "targetValue"))
    TargetTrackingScalingConfiguration.type = Types::TargetTrackingScalingConfiguration
    TargetTrackingScalingConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetTrackingScalingConfiguration)
    TestCase.add_member(:report_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reportArn"))
    TestCase.add_member(:test_raw_data_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "testRawDataPath"))
    TestCase.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "prefix"))
    TestCase.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "name"))
    TestCase.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "status"))
    TestCase.add_member(:duration_in_nano_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperLong, location_name: "durationInNanoSeconds"))
    TestCase.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "message"))
    TestCase.add_member(:expired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "expired"))
    TestCase.add_member(:test_suite_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "testSuiteName"))
    TestCase.type = Types::TestCase
    TestCaseFilter.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "status"))
    TestCaseFilter.add_member(:keyword, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "keyword"))
    TestCaseFilter.type = Types::TestCaseFilter
    TestCases.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCase)
    TestReportSummary.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "total", traits: {"smithy.api#required" => {}}))
    TestReportSummary.add_member(:status_counts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportStatusCounts, location_name: "statusCounts", traits: {"smithy.api#required" => {}}))
    TestReportSummary.add_member(:duration_in_nano_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperLong, location_name: "durationInNanoSeconds", traits: {"smithy.api#required" => {}}))
    TestReportSummary.type = Types::TestReportSummary
    UpdateFleetInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateFleetInput.add_member(:base_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetCapacity, location_name: "baseCapacity"))
    UpdateFleetInput.add_member(:environment_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentType, location_name: "environmentType"))
    UpdateFleetInput.add_member(:compute_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeType, location_name: "computeType"))
    UpdateFleetInput.add_member(:compute_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeConfiguration, location_name: "computeConfiguration"))
    UpdateFleetInput.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingConfigurationInput, location_name: "scalingConfiguration"))
    UpdateFleetInput.add_member(:overflow_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FleetOverflowBehavior, location_name: "overflowBehavior"))
    UpdateFleetInput.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    UpdateFleetInput.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProxyConfiguration, location_name: "proxyConfiguration"))
    UpdateFleetInput.add_member(:image_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "imageId"))
    UpdateFleetInput.add_member(:fleet_service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fleetServiceRole"))
    UpdateFleetInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    UpdateFleetInput.type = Types::UpdateFleetInput
    UpdateFleetOutput.add_member(:fleet, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fleet, location_name: "fleet"))
    UpdateFleetOutput.type = Types::UpdateFleetOutput
    UpdateProjectInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name", traits: {"smithy.api#required" => {}}))
    UpdateProjectInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectDescription, location_name: "description"))
    UpdateProjectInput.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSource, location_name: "source"))
    UpdateProjectInput.add_member(:secondary_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSources, location_name: "secondarySources"))
    UpdateProjectInput.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "sourceVersion"))
    UpdateProjectInput.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectSecondarySourceVersions, location_name: "secondarySourceVersions"))
    UpdateProjectInput.add_member(:artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArtifacts, location_name: "artifacts"))
    UpdateProjectInput.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectArtifactsList, location_name: "secondaryArtifacts"))
    UpdateProjectInput.add_member(:cache, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectCache, location_name: "cache"))
    UpdateProjectInput.add_member(:environment, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectEnvironment, location_name: "environment"))
    UpdateProjectInput.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "serviceRole"))
    UpdateProjectInput.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BuildTimeOut, location_name: "timeoutInMinutes"))
    UpdateProjectInput.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeOut, location_name: "queuedTimeoutInMinutes"))
    UpdateProjectInput.add_member(:encryption_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "encryptionKey"))
    UpdateProjectInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    UpdateProjectInput.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    UpdateProjectInput.add_member(:badge_enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "badgeEnabled"))
    UpdateProjectInput.add_member(:logs_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogsConfig, location_name: "logsConfig"))
    UpdateProjectInput.add_member(:file_system_locations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectFileSystemLocations, location_name: "fileSystemLocations"))
    UpdateProjectInput.add_member(:build_batch_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectBuildBatchConfig, location_name: "buildBatchConfig"))
    UpdateProjectInput.add_member(:concurrent_build_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "concurrentBuildLimit"))
    UpdateProjectInput.add_member(:auto_retry_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperInt, location_name: "autoRetryLimit"))
    UpdateProjectInput.type = Types::UpdateProjectInput
    UpdateProjectOutput.add_member(:project, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Project, location_name: "project"))
    UpdateProjectOutput.type = Types::UpdateProjectOutput
    UpdateProjectVisibilityInput.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectArn", traits: {"smithy.api#required" => {}}))
    UpdateProjectVisibilityInput.add_member(:project_visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVisibilityType, location_name: "projectVisibility", traits: {"smithy.api#required" => {}}))
    UpdateProjectVisibilityInput.add_member(:resource_access_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceAccessRole"))
    UpdateProjectVisibilityInput.type = Types::UpdateProjectVisibilityInput
    UpdateProjectVisibilityOutput.add_member(:project_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "projectArn"))
    UpdateProjectVisibilityOutput.add_member(:public_project_alias, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "publicProjectAlias"))
    UpdateProjectVisibilityOutput.add_member(:project_visibility, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectVisibilityType, location_name: "projectVisibility"))
    UpdateProjectVisibilityOutput.type = Types::UpdateProjectVisibilityOutput
    UpdateReportGroupInput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateReportGroupInput.add_member(:export_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportExportConfig, location_name: "exportConfig"))
    UpdateReportGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    UpdateReportGroupInput.type = Types::UpdateReportGroupInput
    UpdateReportGroupOutput.add_member(:report_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReportGroup, location_name: "reportGroup"))
    UpdateReportGroupOutput.type = Types::UpdateReportGroupOutput
    UpdateWebhookInput.add_member(:project_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: "projectName", traits: {"smithy.api#required" => {}}))
    UpdateWebhookInput.add_member(:branch_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "branchFilter"))
    UpdateWebhookInput.add_member(:rotate_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: "rotateSecret", traits: {"smithy.api#default" => false}))
    UpdateWebhookInput.add_member(:filter_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterGroups, location_name: "filterGroups"))
    UpdateWebhookInput.add_member(:build_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookBuildType, location_name: "buildType"))
    UpdateWebhookInput.add_member(:pull_request_build_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestBuildPolicy, location_name: "pullRequestBuildPolicy"))
    UpdateWebhookInput.type = Types::UpdateWebhookInput
    UpdateWebhookOutput.add_member(:webhook, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Webhook, location_name: "webhook"))
    UpdateWebhookOutput.type = Types::UpdateWebhookOutput
    VpcConfig.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "vpcId"))
    VpcConfig.add_member(:subnets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Subnets, location_name: "subnets"))
    VpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    VpcConfig.type = Types::VpcConfig
    Webhook.add_member(:url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "url"))
    Webhook.add_member(:payload_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "payloadUrl"))
    Webhook.add_member(:secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "secret"))
    Webhook.add_member(:branch_filter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "branchFilter"))
    Webhook.add_member(:filter_groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FilterGroups, location_name: "filterGroups"))
    Webhook.add_member(:build_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookBuildType, location_name: "buildType"))
    Webhook.add_member(:manual_creation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "manualCreation"))
    Webhook.add_member(:last_modified_secret, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedSecret"))
    Webhook.add_member(:scope_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeConfiguration, location_name: "scopeConfiguration"))
    Webhook.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookStatus, location_name: "status"))
    Webhook.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    Webhook.add_member(:pull_request_build_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestBuildPolicy, location_name: "pullRequestBuildPolicy"))
    Webhook.type = Types::Webhook
    WebhookBuildType.add_member(:build, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD", traits: {"smithy.api#enumValue" => "BUILD"}))
    WebhookBuildType.add_member(:build_batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD_BATCH", traits: {"smithy.api#enumValue" => "BUILD_BATCH"}))
    WebhookBuildType.add_member(:runner_buildkite_build, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNER_BUILDKITE_BUILD", traits: {"smithy.api#enumValue" => "RUNNER_BUILDKITE_BUILD"}))
    WebhookFilter.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookFilterType, location_name: "type", traits: {"smithy.api#required" => {}}))
    WebhookFilter.add_member(:pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "pattern", traits: {"smithy.api#required" => {}}))
    WebhookFilter.add_member(:exclude_matched_pattern, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WrapperBoolean, location_name: "excludeMatchedPattern"))
    WebhookFilter.type = Types::WebhookFilter
    WebhookFilterType.add_member(:event, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EVENT", traits: {"smithy.api#enumValue" => "EVENT"}))
    WebhookFilterType.add_member(:base_ref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BASE_REF", traits: {"smithy.api#enumValue" => "BASE_REF"}))
    WebhookFilterType.add_member(:head_ref, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HEAD_REF", traits: {"smithy.api#enumValue" => "HEAD_REF"}))
    WebhookFilterType.add_member(:actor_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTOR_ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACTOR_ACCOUNT_ID"}))
    WebhookFilterType.add_member(:file_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FILE_PATH", traits: {"smithy.api#enumValue" => "FILE_PATH"}))
    WebhookFilterType.add_member(:commit_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMMIT_MESSAGE", traits: {"smithy.api#enumValue" => "COMMIT_MESSAGE"}))
    WebhookFilterType.add_member(:workflow_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WORKFLOW_NAME", traits: {"smithy.api#enumValue" => "WORKFLOW_NAME"}))
    WebhookFilterType.add_member(:tag_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAG_NAME", traits: {"smithy.api#enumValue" => "TAG_NAME"}))
    WebhookFilterType.add_member(:release_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RELEASE_NAME", traits: {"smithy.api#enumValue" => "RELEASE_NAME"}))
    WebhookFilterType.add_member(:repository_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REPOSITORY_NAME", traits: {"smithy.api#enumValue" => "REPOSITORY_NAME"}))
    WebhookFilterType.add_member(:organization_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ORGANIZATION_NAME", traits: {"smithy.api#enumValue" => "ORGANIZATION_NAME"}))
    WebhookScopeType.add_member(:github_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB_ORGANIZATION", traits: {"smithy.api#enumValue" => "GITHUB_ORGANIZATION"}))
    WebhookScopeType.add_member(:github_global, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITHUB_GLOBAL", traits: {"smithy.api#enumValue" => "GITHUB_GLOBAL"}))
    WebhookScopeType.add_member(:gitlab_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GITLAB_GROUP", traits: {"smithy.api#enumValue" => "GITLAB_GROUP"}))
    WebhookStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    WebhookStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    WebhookStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    WebhookStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))

    CodeBuild20161006 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codebuild#CodeBuild_20161006"
      service.name = "CodeBuild20161006"
      service.version = "2016-10-06"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeBuild", "arnNamespace" => "codebuild", "cloudFormationName" => "CodeBuild", "cloudTrailEventSource" => "codebuild.amazonaws.com", "endpointPrefix" => "codebuild"}, "aws.auth#sigv4" => {"name" => "codebuild"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS CodeBuild"}
      service.add_operation(:batch_delete_builds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchDeleteBuilds"
        operation.name = "BatchDeleteBuilds"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBuildsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDeleteBuildsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_build_batches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetBuildBatches"
        operation.name = "BatchGetBuildBatches"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetBuildBatchesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetBuildBatchesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_builds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetBuilds"
        operation.name = "BatchGetBuilds"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetBuildsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetBuildsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_command_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetCommandExecutions"
        operation.name = "BatchGetCommandExecutions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCommandExecutionsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCommandExecutionsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetFleets"
        operation.name = "BatchGetFleets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFleetsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetFleetsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetProjects"
        operation.name = "BatchGetProjects"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetProjectsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetProjectsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_report_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetReportGroups"
        operation.name = "BatchGetReportGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetReportGroupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetReportGroupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetReports"
        operation.name = "BatchGetReports"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetReportsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetReportsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:batch_get_sandboxes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetSandboxes"
        operation.name = "BatchGetSandboxes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetSandboxesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetSandboxesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:create_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#CreateFleet"
        operation.name = "CreateFleet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:create_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#CreateProject"
        operation.name = "CreateProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProjectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:create_report_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#CreateReportGroup"
        operation.name = "CreateReportGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReportGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateReportGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:create_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#CreateWebhook"
        operation.name = "CreateWebhook"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebhookInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebhookOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthProviderException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_build_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteBuildBatch"
        operation.name = "DeleteBuildBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBuildBatchInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBuildBatchOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:delete_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteFleet"
        operation.name = "DeleteFleet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:delete_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProjectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:delete_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteReport"
        operation.name = "DeleteReport"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReportInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReportOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:delete_report_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteReportGroup"
        operation.name = "DeleteReportGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReportGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteReportGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteResourcePolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:delete_source_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteSourceCredentials"
        operation.name = "DeleteSourceCredentials"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceCredentialsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSourceCredentialsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteWebhook"
        operation.name = "DeleteWebhook"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebhookInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebhookOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthProviderException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_code_coverages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DescribeCodeCoverages"
        operation.name = "DescribeCodeCoverages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCodeCoveragesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCodeCoveragesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCodeCoverages.new
      end)
      service.add_operation(:describe_test_cases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DescribeTestCases"
        operation.name = "DescribeTestCases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTestCasesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTestCasesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTestCases.new
      end)
      service.add_operation(:get_report_group_trend, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#GetReportGroupTrend"
        operation.name = "GetReportGroupTrend"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReportGroupTrendInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetReportGroupTrendOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcePolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:import_source_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ImportSourceCredentials"
        operation.name = "ImportSourceCredentials"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSourceCredentialsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ImportSourceCredentialsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:invalidate_project_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#InvalidateProjectCache"
        operation.name = "InvalidateProjectCache"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidateProjectCacheInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidateProjectCacheOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_build_batches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListBuildBatches"
        operation.name = "ListBuildBatches"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBuildBatchesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBuildBatchesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListBuildBatches.new
      end)
      service.add_operation(:list_build_batches_for_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListBuildBatchesForProject"
        operation.name = "ListBuildBatchesForProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBuildBatchesForProjectInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBuildBatchesForProjectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListBuildBatchesForProject.new
      end)
      service.add_operation(:list_builds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListBuilds"
        operation.name = "ListBuilds"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBuildsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBuildsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListBuildsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListBuilds.new
      end)
      service.add_operation(:list_builds_for_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListBuildsForProject"
        operation.name = "ListBuildsForProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBuildsForProjectInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListBuildsForProjectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListBuildsForProject.new
      end)
      service.add_operation(:list_command_executions_for_sandbox, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListCommandExecutionsForSandbox"
        operation.name = "ListCommandExecutionsForSandbox"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCommandExecutionsForSandboxInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCommandExecutionsForSandboxOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCommandExecutionsForSandbox.new
      end)
      service.add_operation(:list_curated_environment_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListCuratedEnvironmentImages"
        operation.name = "ListCuratedEnvironmentImages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCuratedEnvironmentImagesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCuratedEnvironmentImagesOutput)
        operation.traits = {}
      end)
      service.add_operation(:list_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListFleets"
        operation.name = "ListFleets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFleetsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFleets.new
      end)
      service.add_operation(:list_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListProjects"
        operation.name = "ListProjects"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListProjectsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_report_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListReportGroups"
        operation.name = "ListReportGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportGroupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportGroupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListReportGroups.new
      end)
      service.add_operation(:list_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListReports"
        operation.name = "ListReports"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListReports.new
      end)
      service.add_operation(:list_reports_for_report_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListReportsForReportGroup"
        operation.name = "ListReportsForReportGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportsForReportGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListReportsForReportGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListReportsForReportGroup.new
      end)
      service.add_operation(:list_sandboxes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListSandboxes"
        operation.name = "ListSandboxes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSandboxesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSandboxesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSandboxes.new
      end)
      service.add_operation(:list_sandboxes_for_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListSandboxesForProject"
        operation.name = "ListSandboxesForProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSandboxesForProjectInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSandboxesForProjectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSandboxesForProject.new
      end)
      service.add_operation(:list_shared_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListSharedProjects"
        operation.name = "ListSharedProjects"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSharedProjectsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSharedProjectsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSharedProjects.new
      end)
      service.add_operation(:list_shared_report_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListSharedReportGroups"
        operation.name = "ListSharedReportGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSharedReportGroupsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSharedReportGroupsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSharedReportGroups.new
      end)
      service.add_operation(:list_source_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListSourceCredentials"
        operation.name = "ListSourceCredentials"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceCredentialsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceCredentialsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourcePolicyOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:retry_build, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#RetryBuild"
        operation.name = "RetryBuild"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryBuildInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryBuildOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:retry_build_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#RetryBuildBatch"
        operation.name = "RetryBuildBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryBuildBatchInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryBuildBatchOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_build, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StartBuild"
        operation.name = "StartBuild"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBuildInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBuildOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_build_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StartBuildBatch"
        operation.name = "StartBuildBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBuildBatchInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartBuildBatchOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_command_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StartCommandExecution"
        operation.name = "StartCommandExecution"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCommandExecutionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCommandExecutionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_sandbox, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StartSandbox"
        operation.name = "StartSandbox"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSandboxInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSandboxOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSuspendedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_sandbox_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StartSandboxConnection"
        operation.name = "StartSandboxConnection"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSandboxConnectionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSandboxConnectionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_build, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StopBuild"
        operation.name = "StopBuild"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopBuildInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopBuildOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_build_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StopBuildBatch"
        operation.name = "StopBuildBatch"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopBuildBatchInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopBuildBatchOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_sandbox, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StopSandbox"
        operation.name = "StopSandbox"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopSandboxInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopSandboxOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#UpdateFleet"
        operation.name = "UpdateFleet"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFleetInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFleetOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#UpdateProject"
        operation.name = "UpdateProject"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_project_visibility, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#UpdateProjectVisibility"
        operation.name = "UpdateProjectVisibility"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectVisibilityInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateProjectVisibilityOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_report_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#UpdateReportGroup"
        operation.name = "UpdateReportGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReportGroupInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateReportGroupOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#UpdateWebhook"
        operation.name = "UpdateWebhook"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebhookInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebhookOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OAuthProviderException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
