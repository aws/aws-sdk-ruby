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
    HostKernel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codebuild#HostKernel", name: "HostKernel")
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

    AccountLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    AccountLimitExceededException.type = Types::AccountLimitExceededException
    AccountSuspendedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    AccountSuspendedException.type = Types::AccountSuspendedException
    ArtifactNamespace.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ArtifactNamespace.add_member(:build_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_ID", traits: {"smithy.api#enumValue" => "BUILD_ID"}))
    ArtifactPackaging.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ArtifactPackaging.add_member(:zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZIP", traits: {"smithy.api#enumValue" => "ZIP"}))
    ArtifactsType.add_member(:codepipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODEPIPELINE", traits: {"smithy.api#enumValue" => "CODEPIPELINE"}))
    ArtifactsType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ArtifactsType.add_member(:no_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_ARTIFACTS", traits: {"smithy.api#enumValue" => "NO_ARTIFACTS"}))
    AuthType.add_member(:oauth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTH", traits: {"smithy.api#enumValue" => "OAUTH"}))
    AuthType.add_member(:basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASIC_AUTH", traits: {"smithy.api#enumValue" => "BASIC_AUTH"}))
    AuthType.add_member(:personal_access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERSONAL_ACCESS_TOKEN", traits: {"smithy.api#enumValue" => "PERSONAL_ACCESS_TOKEN"}))
    AuthType.add_member(:codeconnections, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODECONNECTIONS", traits: {"smithy.api#enumValue" => "CODECONNECTIONS"}))
    AuthType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    AutoRetryConfig.add_member(:auto_retry_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "autoRetryLimit"))
    AutoRetryConfig.add_member(:auto_retry_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "autoRetryNumber"))
    AutoRetryConfig.add_member(:next_auto_retry, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextAutoRetry"))
    AutoRetryConfig.add_member(:previous_auto_retry, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "previousAutoRetry"))
    AutoRetryConfig.type = Types::AutoRetryConfig
    BatchDeleteBuildsInput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIds, name: "ids", traits: {"smithy.api#required" => {}}))
    BatchDeleteBuildsInput.type = Types::BatchDeleteBuildsInput
    BatchDeleteBuildsOutput.add_member(:builds_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIds, name: "buildsDeleted"))
    BatchDeleteBuildsOutput.add_member(:builds_not_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildsNotDeleted, name: "buildsNotDeleted"))
    BatchDeleteBuildsOutput.type = Types::BatchDeleteBuildsOutput
    BatchGetBuildBatchesInput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatchIds, name: "ids", traits: {"smithy.api#required" => {}}))
    BatchGetBuildBatchesInput.type = Types::BatchGetBuildBatchesInput
    BatchGetBuildBatchesOutput.add_member(:build_batches, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatches, name: "buildBatches"))
    BatchGetBuildBatchesOutput.add_member(:build_batches_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatchIds, name: "buildBatchesNotFound"))
    BatchGetBuildBatchesOutput.type = Types::BatchGetBuildBatchesOutput
    BatchGetBuildsInput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIds, name: "ids", traits: {"smithy.api#required" => {}}))
    BatchGetBuildsInput.type = Types::BatchGetBuildsInput
    BatchGetBuildsOutput.add_member(:builds, ::Smithy::Schema::Shapes::MemberShape.new(target: Builds, name: "builds"))
    BatchGetBuildsOutput.add_member(:builds_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIds, name: "buildsNotFound"))
    BatchGetBuildsOutput.type = Types::BatchGetBuildsOutput
    BatchGetCommandExecutionsInput.add_member(:sandbox_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sandboxId", traits: {"smithy.api#required" => {}}))
    BatchGetCommandExecutionsInput.add_member(:command_execution_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandExecutionIds, name: "commandExecutionIds", traits: {"smithy.api#required" => {}}))
    BatchGetCommandExecutionsInput.type = Types::BatchGetCommandExecutionsInput
    BatchGetCommandExecutionsOutput.add_member(:command_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandExecutions, name: "commandExecutions"))
    BatchGetCommandExecutionsOutput.add_member(:command_executions_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandExecutionIds, name: "commandExecutionsNotFound"))
    BatchGetCommandExecutionsOutput.type = Types::BatchGetCommandExecutionsOutput
    BatchGetFleetsInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetNames, name: "names", traits: {"smithy.api#required" => {}}))
    BatchGetFleetsInput.type = Types::BatchGetFleetsInput
    BatchGetFleetsOutput.add_member(:fleets, ::Smithy::Schema::Shapes::MemberShape.new(target: Fleets, name: "fleets"))
    BatchGetFleetsOutput.add_member(:fleets_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetNames, name: "fleetsNotFound"))
    BatchGetFleetsOutput.type = Types::BatchGetFleetsOutput
    BatchGetProjectsInput.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectNames, name: "names", traits: {"smithy.api#required" => {}}))
    BatchGetProjectsInput.type = Types::BatchGetProjectsInput
    BatchGetProjectsOutput.add_member(:projects, ::Smithy::Schema::Shapes::MemberShape.new(target: Projects, name: "projects"))
    BatchGetProjectsOutput.add_member(:projects_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectNames, name: "projectsNotFound"))
    BatchGetProjectsOutput.type = Types::BatchGetProjectsOutput
    BatchGetReportGroupsInput.add_member(:report_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroupArns, name: "reportGroupArns", traits: {"smithy.api#required" => {}}))
    BatchGetReportGroupsInput.type = Types::BatchGetReportGroupsInput
    BatchGetReportGroupsOutput.add_member(:report_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroups, name: "reportGroups"))
    BatchGetReportGroupsOutput.add_member(:report_groups_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroupArns, name: "reportGroupsNotFound"))
    BatchGetReportGroupsOutput.type = Types::BatchGetReportGroupsOutput
    BatchGetReportsInput.add_member(:report_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportArns, name: "reportArns", traits: {"smithy.api#required" => {}}))
    BatchGetReportsInput.type = Types::BatchGetReportsInput
    BatchGetReportsOutput.add_member(:reports, ::Smithy::Schema::Shapes::MemberShape.new(target: Reports, name: "reports"))
    BatchGetReportsOutput.add_member(:reports_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportArns, name: "reportsNotFound"))
    BatchGetReportsOutput.type = Types::BatchGetReportsOutput
    BatchGetSandboxesInput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SandboxIds, name: "ids", traits: {"smithy.api#required" => {}}))
    BatchGetSandboxesInput.type = Types::BatchGetSandboxesInput
    BatchGetSandboxesOutput.add_member(:sandboxes, ::Smithy::Schema::Shapes::MemberShape.new(target: Sandboxes, name: "sandboxes"))
    BatchGetSandboxesOutput.add_member(:sandboxes_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: SandboxIds, name: "sandboxesNotFound"))
    BatchGetSandboxesOutput.type = Types::BatchGetSandboxesOutput
    BatchReportModeType.add_member(:report_individual_builds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPORT_INDIVIDUAL_BUILDS", traits: {"smithy.api#enumValue" => "REPORT_INDIVIDUAL_BUILDS"}))
    BatchReportModeType.add_member(:report_aggregated_batch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPORT_AGGREGATED_BATCH", traits: {"smithy.api#enumValue" => "REPORT_AGGREGATED_BATCH"}))
    BatchRestrictions.add_member(:maximum_builds_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "maximumBuildsAllowed"))
    BatchRestrictions.add_member(:compute_types_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeTypesAllowed, name: "computeTypesAllowed"))
    BatchRestrictions.add_member(:fleets_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetsAllowed, name: "fleetsAllowed"))
    BatchRestrictions.type = Types::BatchRestrictions
    BucketOwnerAccess.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    BucketOwnerAccess.add_member(:read_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_ONLY", traits: {"smithy.api#enumValue" => "READ_ONLY"}))
    BucketOwnerAccess.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    Build.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    Build.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    Build.add_member(:build_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperLong, name: "buildNumber"))
    Build.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    Build.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    Build.add_member(:current_phase, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "currentPhase"))
    Build.add_member(:build_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "buildStatus"))
    Build.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sourceVersion"))
    Build.add_member(:resolved_source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resolvedSourceVersion"))
    Build.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectName"))
    Build.add_member(:phases, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildPhases, name: "phases"))
    Build.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSource, name: "source"))
    Build.add_member(:secondary_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSources, name: "secondarySources"))
    Build.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSecondarySourceVersions, name: "secondarySourceVersions"))
    Build.add_member(:artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildArtifacts, name: "artifacts"))
    Build.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildArtifactsList, name: "secondaryArtifacts"))
    Build.add_member(:cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectCache, name: "cache"))
    Build.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectEnvironment, name: "environment"))
    Build.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "serviceRole"))
    Build.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsLocation, name: "logs"))
    Build.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "timeoutInMinutes"))
    Build.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "queuedTimeoutInMinutes"))
    Build.add_member(:build_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "buildComplete", traits: {"smithy.api#default" => false}))
    Build.add_member(:initiator, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "initiator"))
    Build.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    Build.add_member(:network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface, name: "networkInterface"))
    Build.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "encryptionKey"))
    Build.add_member(:exported_environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportedEnvironmentVariables, name: "exportedEnvironmentVariables"))
    Build.add_member(:report_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildReportArns, name: "reportArns"))
    Build.add_member(:file_system_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectFileSystemLocations, name: "fileSystemLocations"))
    Build.add_member(:debug_session, ::Smithy::Schema::Shapes::MemberShape.new(target: DebugSession, name: "debugSession"))
    Build.add_member(:build_batch_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "buildBatchArn"))
    Build.add_member(:auto_retry_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoRetryConfig, name: "autoRetryConfig"))
    Build.type = Types::Build
    BuildArtifacts.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location"))
    BuildArtifacts.add_member(:sha256sum, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sha256sum"))
    BuildArtifacts.add_member(:md5sum, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "md5sum"))
    BuildArtifacts.add_member(:override_artifact_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "overrideArtifactName"))
    BuildArtifacts.add_member(:encryption_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "encryptionDisabled"))
    BuildArtifacts.add_member(:artifact_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "artifactIdentifier"))
    BuildArtifacts.add_member(:bucket_owner_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketOwnerAccess, name: "bucketOwnerAccess"))
    BuildArtifacts.type = Types::BuildArtifacts
    BuildArtifactsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildArtifacts, name: "member"))
    BuildBatch.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    BuildBatch.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    BuildBatch.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    BuildBatch.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    BuildBatch.add_member(:current_phase, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "currentPhase"))
    BuildBatch.add_member(:build_batch_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "buildBatchStatus"))
    BuildBatch.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sourceVersion"))
    BuildBatch.add_member(:resolved_source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resolvedSourceVersion"))
    BuildBatch.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectName"))
    BuildBatch.add_member(:phases, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatchPhases, name: "phases"))
    BuildBatch.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSource, name: "source"))
    BuildBatch.add_member(:secondary_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSources, name: "secondarySources"))
    BuildBatch.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSecondarySourceVersions, name: "secondarySourceVersions"))
    BuildBatch.add_member(:artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildArtifacts, name: "artifacts"))
    BuildBatch.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildArtifactsList, name: "secondaryArtifacts"))
    BuildBatch.add_member(:cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectCache, name: "cache"))
    BuildBatch.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectEnvironment, name: "environment"))
    BuildBatch.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "serviceRole"))
    BuildBatch.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsConfig, name: "logConfig"))
    BuildBatch.add_member(:build_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "buildTimeoutInMinutes"))
    BuildBatch.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "queuedTimeoutInMinutes"))
    BuildBatch.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "complete", traits: {"smithy.api#default" => false}))
    BuildBatch.add_member(:initiator, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "initiator"))
    BuildBatch.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    BuildBatch.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "encryptionKey"))
    BuildBatch.add_member(:build_batch_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperLong, name: "buildBatchNumber"))
    BuildBatch.add_member(:file_system_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectFileSystemLocations, name: "fileSystemLocations"))
    BuildBatch.add_member(:build_batch_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectBuildBatchConfig, name: "buildBatchConfig"))
    BuildBatch.add_member(:build_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildGroups, name: "buildGroups"))
    BuildBatch.add_member(:debug_session_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "debugSessionEnabled"))
    BuildBatch.add_member(:report_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildReportArns, name: "reportArns"))
    BuildBatch.type = Types::BuildBatch
    BuildBatchFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "status"))
    BuildBatchFilter.type = Types::BuildBatchFilter
    BuildBatchIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    BuildBatchPhase.add_member(:phase_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatchPhaseType, name: "phaseType"))
    BuildBatchPhase.add_member(:phase_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "phaseStatus"))
    BuildBatchPhase.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    BuildBatchPhase.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    BuildBatchPhase.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperLong, name: "durationInSeconds"))
    BuildBatchPhase.add_member(:contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: PhaseContexts, name: "contexts"))
    BuildBatchPhase.type = Types::BuildBatchPhase
    BuildBatchPhaseType.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    BuildBatchPhaseType.add_member(:download_batchspec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOWNLOAD_BATCHSPEC", traits: {"smithy.api#enumValue" => "DOWNLOAD_BATCHSPEC"}))
    BuildBatchPhaseType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BuildBatchPhaseType.add_member(:combine_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMBINE_ARTIFACTS", traits: {"smithy.api#enumValue" => "COMBINE_ARTIFACTS"}))
    BuildBatchPhaseType.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    BuildBatchPhaseType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    BuildBatchPhaseType.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    BuildBatchPhases.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatchPhase, name: "member"))
    BuildBatches.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatch, name: "member"))
    BuildGroup.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identifier"))
    BuildGroup.add_member(:depends_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Identifiers, name: "dependsOn"))
    BuildGroup.add_member(:ignore_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ignoreFailure", traits: {"smithy.api#default" => false}))
    BuildGroup.add_member(:current_build_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildSummary, name: "currentBuildSummary"))
    BuildGroup.add_member(:prior_build_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildSummaries, name: "priorBuildSummaryList"))
    BuildGroup.type = Types::BuildGroup
    BuildGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildGroup, name: "member"))
    BuildIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    BuildNotDeleted.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    BuildNotDeleted.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusCode"))
    BuildNotDeleted.type = Types::BuildNotDeleted
    BuildPhase.add_member(:phase_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildPhaseType, name: "phaseType"))
    BuildPhase.add_member(:phase_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "phaseStatus"))
    BuildPhase.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    BuildPhase.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    BuildPhase.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperLong, name: "durationInSeconds"))
    BuildPhase.add_member(:contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: PhaseContexts, name: "contexts"))
    BuildPhase.type = Types::BuildPhase
    BuildPhaseType.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    BuildPhaseType.add_member(:queued, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUED", traits: {"smithy.api#enumValue" => "QUEUED"}))
    BuildPhaseType.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    BuildPhaseType.add_member(:download_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOWNLOAD_SOURCE", traits: {"smithy.api#enumValue" => "DOWNLOAD_SOURCE"}))
    BuildPhaseType.add_member(:install, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTALL", traits: {"smithy.api#enumValue" => "INSTALL"}))
    BuildPhaseType.add_member(:pre_build, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_BUILD", traits: {"smithy.api#enumValue" => "PRE_BUILD"}))
    BuildPhaseType.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD", traits: {"smithy.api#enumValue" => "BUILD"}))
    BuildPhaseType.add_member(:post_build, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "POST_BUILD", traits: {"smithy.api#enumValue" => "POST_BUILD"}))
    BuildPhaseType.add_member(:upload_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPLOAD_ARTIFACTS", traits: {"smithy.api#enumValue" => "UPLOAD_ARTIFACTS"}))
    BuildPhaseType.add_member(:finalizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINALIZING", traits: {"smithy.api#enumValue" => "FINALIZING"}))
    BuildPhaseType.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    BuildPhases.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildPhase, name: "member"))
    BuildReportArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    BuildStatusConfig.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "context"))
    BuildStatusConfig.add_member(:target_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "targetUrl"))
    BuildStatusConfig.type = Types::BuildStatusConfig
    BuildSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildSummary, name: "member"))
    BuildSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    BuildSummary.add_member(:requested_on, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "requestedOn"))
    BuildSummary.add_member(:build_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "buildStatus"))
    BuildSummary.add_member(:primary_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedArtifact, name: "primaryArtifact"))
    BuildSummary.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedSecondaryArtifacts, name: "secondaryArtifacts"))
    BuildSummary.type = Types::BuildSummary
    Builds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Build, name: "member"))
    BuildsNotDeleted.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildNotDeleted, name: "member"))
    CacheMode.add_member(:local_docker_layer_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL_DOCKER_LAYER_CACHE", traits: {"smithy.api#enumValue" => "LOCAL_DOCKER_LAYER_CACHE"}))
    CacheMode.add_member(:local_source_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL_SOURCE_CACHE", traits: {"smithy.api#enumValue" => "LOCAL_SOURCE_CACHE"}))
    CacheMode.add_member(:local_custom_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL_CUSTOM_CACHE", traits: {"smithy.api#enumValue" => "LOCAL_CUSTOM_CACHE"}))
    CacheType.add_member(:no_cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_CACHE", traits: {"smithy.api#enumValue" => "NO_CACHE"}))
    CacheType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    CacheType.add_member(:local, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL", traits: {"smithy.api#enumValue" => "LOCAL"}))
    CloudWatchLogsConfig.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsConfigStatusType, name: "status", traits: {"smithy.api#required" => {}}))
    CloudWatchLogsConfig.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "groupName"))
    CloudWatchLogsConfig.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "streamName"))
    CloudWatchLogsConfig.type = Types::CloudWatchLogsConfig
    CodeCoverage.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    CodeCoverage.add_member(:report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reportARN"))
    CodeCoverage.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "filePath"))
    CodeCoverage.add_member(:line_coverage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "lineCoveragePercentage"))
    CodeCoverage.add_member(:lines_covered, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInt, name: "linesCovered"))
    CodeCoverage.add_member(:lines_missed, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInt, name: "linesMissed"))
    CodeCoverage.add_member(:branch_coverage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "branchCoveragePercentage"))
    CodeCoverage.add_member(:branches_covered, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInt, name: "branchesCovered"))
    CodeCoverage.add_member(:branches_missed, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInt, name: "branchesMissed"))
    CodeCoverage.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expired"))
    CodeCoverage.type = Types::CodeCoverage
    CodeCoverageReportSummary.add_member(:line_coverage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "lineCoveragePercentage"))
    CodeCoverageReportSummary.add_member(:lines_covered, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInt, name: "linesCovered"))
    CodeCoverageReportSummary.add_member(:lines_missed, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInt, name: "linesMissed"))
    CodeCoverageReportSummary.add_member(:branch_coverage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "branchCoveragePercentage"))
    CodeCoverageReportSummary.add_member(:branches_covered, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInt, name: "branchesCovered"))
    CodeCoverageReportSummary.add_member(:branches_missed, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeInt, name: "branchesMissed"))
    CodeCoverageReportSummary.type = Types::CodeCoverageReportSummary
    CodeCoverages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeCoverage, name: "member"))
    CommandExecution.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    CommandExecution.add_member(:sandbox_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sandboxId"))
    CommandExecution.add_member(:submit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "submitTime"))
    CommandExecution.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    CommandExecution.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    CommandExecution.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "status"))
    CommandExecution.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "command"))
    CommandExecution.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandType, name: "type"))
    CommandExecution.add_member(:exit_code, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "exitCode"))
    CommandExecution.add_member(:standard_output_content, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "standardOutputContent"))
    CommandExecution.add_member(:standard_err_content, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "standardErrContent"))
    CommandExecution.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsLocation, name: "logs"))
    CommandExecution.add_member(:sandbox_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sandboxArn"))
    CommandExecution.type = Types::CommandExecution
    CommandExecutionIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    CommandExecutions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandExecution, name: "member"))
    CommandType.add_member(:shell, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHELL", traits: {"smithy.api#enumValue" => "SHELL"}))
    ComputeConfiguration.add_member(:v_cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperLong, name: "vCpu"))
    ComputeConfiguration.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperLong, name: "memory"))
    ComputeConfiguration.add_member(:disk, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperLong, name: "disk"))
    ComputeConfiguration.add_member(:machine_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MachineType, name: "machineType"))
    ComputeConfiguration.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "instanceType"))
    ComputeConfiguration.type = Types::ComputeConfiguration
    ComputeType.add_member(:build_general1_small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_GENERAL1_SMALL", traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_SMALL"}))
    ComputeType.add_member(:build_general1_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_GENERAL1_MEDIUM", traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_MEDIUM"}))
    ComputeType.add_member(:build_general1_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_GENERAL1_LARGE", traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_LARGE"}))
    ComputeType.add_member(:build_general1_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_GENERAL1_XLARGE", traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_XLARGE"}))
    ComputeType.add_member(:build_general1_2_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_GENERAL1_2XLARGE", traits: {"smithy.api#enumValue" => "BUILD_GENERAL1_2XLARGE"}))
    ComputeType.add_member(:build_lambda_1_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_LAMBDA_1GB", traits: {"smithy.api#enumValue" => "BUILD_LAMBDA_1GB"}))
    ComputeType.add_member(:build_lambda_2_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_LAMBDA_2GB", traits: {"smithy.api#enumValue" => "BUILD_LAMBDA_2GB"}))
    ComputeType.add_member(:build_lambda_4_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_LAMBDA_4GB", traits: {"smithy.api#enumValue" => "BUILD_LAMBDA_4GB"}))
    ComputeType.add_member(:build_lambda_8_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_LAMBDA_8GB", traits: {"smithy.api#enumValue" => "BUILD_LAMBDA_8GB"}))
    ComputeType.add_member(:build_lambda_10_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_LAMBDA_10GB", traits: {"smithy.api#enumValue" => "BUILD_LAMBDA_10GB"}))
    ComputeType.add_member(:attribute_based_compute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATTRIBUTE_BASED_COMPUTE", traits: {"smithy.api#enumValue" => "ATTRIBUTE_BASED_COMPUTE"}))
    ComputeType.add_member(:custom_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_INSTANCE_TYPE", traits: {"smithy.api#enumValue" => "CUSTOM_INSTANCE_TYPE"}))
    ComputeTypesAllowed.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    CreateFleetInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateFleetInput.add_member(:base_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetCapacity, name: "baseCapacity", traits: {"smithy.api#required" => {}}))
    CreateFleetInput.add_member(:environment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentType, name: "environmentType", traits: {"smithy.api#required" => {}}))
    CreateFleetInput.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, name: "computeType", traits: {"smithy.api#required" => {}}))
    CreateFleetInput.add_member(:compute_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfiguration, name: "computeConfiguration"))
    CreateFleetInput.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfigurationInput, name: "scalingConfiguration"))
    CreateFleetInput.add_member(:overflow_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetOverflowBehavior, name: "overflowBehavior"))
    CreateFleetInput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    CreateFleetInput.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "proxyConfiguration"))
    CreateFleetInput.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "imageId"))
    CreateFleetInput.add_member(:fleet_service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fleetServiceRole"))
    CreateFleetInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateFleetInput.type = Types::CreateFleetInput
    CreateFleetOutput.add_member(:fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: Fleet, name: "fleet"))
    CreateFleetOutput.type = Types::CreateFleetOutput
    CreateProjectInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateProjectInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectDescription, name: "description"))
    CreateProjectInput.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSource, name: "source", traits: {"smithy.api#required" => {}}))
    CreateProjectInput.add_member(:secondary_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSources, name: "secondarySources"))
    CreateProjectInput.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceVersion"))
    CreateProjectInput.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSecondarySourceVersions, name: "secondarySourceVersions"))
    CreateProjectInput.add_member(:artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArtifacts, name: "artifacts", traits: {"smithy.api#required" => {}}))
    CreateProjectInput.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArtifactsList, name: "secondaryArtifacts"))
    CreateProjectInput.add_member(:cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectCache, name: "cache"))
    CreateProjectInput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectEnvironment, name: "environment", traits: {"smithy.api#required" => {}}))
    CreateProjectInput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "serviceRole", traits: {"smithy.api#required" => {}}))
    CreateProjectInput.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildTimeOut, name: "timeoutInMinutes"))
    CreateProjectInput.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOut, name: "queuedTimeoutInMinutes"))
    CreateProjectInput.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "encryptionKey"))
    CreateProjectInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateProjectInput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    CreateProjectInput.add_member(:badge_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "badgeEnabled"))
    CreateProjectInput.add_member(:logs_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsConfig, name: "logsConfig"))
    CreateProjectInput.add_member(:file_system_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectFileSystemLocations, name: "fileSystemLocations"))
    CreateProjectInput.add_member(:build_batch_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectBuildBatchConfig, name: "buildBatchConfig"))
    CreateProjectInput.add_member(:concurrent_build_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "concurrentBuildLimit"))
    CreateProjectInput.add_member(:auto_retry_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "autoRetryLimit"))
    CreateProjectInput.type = Types::CreateProjectInput
    CreateProjectOutput.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: Project, name: "project"))
    CreateProjectOutput.type = Types::CreateProjectOutput
    CreateReportGroupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroupName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateReportGroupInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateReportGroupInput.add_member(:export_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportExportConfig, name: "exportConfig", traits: {"smithy.api#required" => {}}))
    CreateReportGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateReportGroupInput.type = Types::CreateReportGroupInput
    CreateReportGroupOutput.add_member(:report_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroup, name: "reportGroup"))
    CreateReportGroupOutput.type = Types::CreateReportGroupOutput
    CreateWebhookInput.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "projectName", traits: {"smithy.api#required" => {}}))
    CreateWebhookInput.add_member(:branch_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "branchFilter"))
    CreateWebhookInput.add_member(:filter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterGroups, name: "filterGroups"))
    CreateWebhookInput.add_member(:build_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookBuildType, name: "buildType"))
    CreateWebhookInput.add_member(:manual_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "manualCreation"))
    CreateWebhookInput.add_member(:scope_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeConfiguration, name: "scopeConfiguration"))
    CreateWebhookInput.add_member(:pull_request_build_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestBuildPolicy, name: "pullRequestBuildPolicy"))
    CreateWebhookInput.type = Types::CreateWebhookInput
    CreateWebhookOutput.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: Webhook, name: "webhook"))
    CreateWebhookOutput.type = Types::CreateWebhookOutput
    CredentialProviderType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    DebugSession.add_member(:session_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "sessionEnabled"))
    DebugSession.add_member(:session_target, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sessionTarget"))
    DebugSession.type = Types::DebugSession
    DeleteBuildBatchInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id", traits: {"smithy.api#required" => {}}))
    DeleteBuildBatchInput.type = Types::DeleteBuildBatchInput
    DeleteBuildBatchOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusCode"))
    DeleteBuildBatchOutput.add_member(:builds_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIds, name: "buildsDeleted"))
    DeleteBuildBatchOutput.add_member(:builds_not_deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildsNotDeleted, name: "buildsNotDeleted"))
    DeleteBuildBatchOutput.type = Types::DeleteBuildBatchOutput
    DeleteFleetInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteFleetInput.type = Types::DeleteFleetInput
    DeleteFleetOutput.type = Types::DeleteFleetOutput
    DeleteProjectInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    DeleteProjectInput.type = Types::DeleteProjectInput
    DeleteProjectOutput.type = Types::DeleteProjectOutput
    DeleteReportGroupInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteReportGroupInput.add_member(:delete_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "deleteReports", traits: {"smithy.api#default" => false}))
    DeleteReportGroupInput.type = Types::DeleteReportGroupInput
    DeleteReportGroupOutput.type = Types::DeleteReportGroupOutput
    DeleteReportInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteReportInput.type = Types::DeleteReportInput
    DeleteReportOutput.type = Types::DeleteReportOutput
    DeleteResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    DeleteResourcePolicyInput.type = Types::DeleteResourcePolicyInput
    DeleteResourcePolicyOutput.type = Types::DeleteResourcePolicyOutput
    DeleteSourceCredentialsInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteSourceCredentialsInput.type = Types::DeleteSourceCredentialsInput
    DeleteSourceCredentialsOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    DeleteSourceCredentialsOutput.type = Types::DeleteSourceCredentialsOutput
    DeleteWebhookInput.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "projectName", traits: {"smithy.api#required" => {}}))
    DeleteWebhookInput.type = Types::DeleteWebhookInput
    DeleteWebhookOutput.type = Types::DeleteWebhookOutput
    DescribeCodeCoveragesInput.add_member(:report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reportArn", traits: {"smithy.api#required" => {}}))
    DescribeCodeCoveragesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeCodeCoveragesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    DescribeCodeCoveragesInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    DescribeCodeCoveragesInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportCodeCoverageSortByType, name: "sortBy"))
    DescribeCodeCoveragesInput.add_member(:min_line_coverage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "minLineCoveragePercentage"))
    DescribeCodeCoveragesInput.add_member(:max_line_coverage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "maxLineCoveragePercentage"))
    DescribeCodeCoveragesInput.type = Types::DescribeCodeCoveragesInput
    DescribeCodeCoveragesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeCodeCoveragesOutput.add_member(:code_coverages, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeCoverages, name: "codeCoverages"))
    DescribeCodeCoveragesOutput.type = Types::DescribeCodeCoveragesOutput
    DescribeTestCasesInput.add_member(:report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reportArn", traits: {"smithy.api#required" => {}}))
    DescribeTestCasesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeTestCasesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    DescribeTestCasesInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: TestCaseFilter, name: "filter"))
    DescribeTestCasesInput.type = Types::DescribeTestCasesInput
    DescribeTestCasesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    DescribeTestCasesOutput.add_member(:test_cases, ::Smithy::Schema::Shapes::MemberShape.new(target: TestCases, name: "testCases"))
    DescribeTestCasesOutput.type = Types::DescribeTestCasesOutput
    DockerServer.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, name: "computeType", traits: {"smithy.api#required" => {}}))
    DockerServer.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "securityGroupIds"))
    DockerServer.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DockerServerStatus, name: "status"))
    DockerServer.type = Types::DockerServer
    DockerServerStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    DockerServerStatus.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    DockerServerStatus.type = Types::DockerServerStatus
    EnvironmentImage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    EnvironmentImage.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "description"))
    EnvironmentImage.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersions, name: "versions"))
    EnvironmentImage.type = Types::EnvironmentImage
    EnvironmentImages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentImage, name: "member"))
    EnvironmentLanguage.add_member(:language, ::Smithy::Schema::Shapes::MemberShape.new(target: LanguageType, name: "language"))
    EnvironmentLanguage.add_member(:images, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentImages, name: "images"))
    EnvironmentLanguage.type = Types::EnvironmentLanguage
    EnvironmentLanguages.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentLanguage, name: "member"))
    EnvironmentPlatform.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "platform"))
    EnvironmentPlatform.add_member(:languages, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentLanguages, name: "languages"))
    EnvironmentPlatform.type = Types::EnvironmentPlatform
    EnvironmentPlatforms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentPlatform, name: "member"))
    EnvironmentType.add_member(:windows_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_CONTAINER", traits: {"smithy.api#enumValue" => "WINDOWS_CONTAINER"}))
    EnvironmentType.add_member(:linux_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX_CONTAINER", traits: {"smithy.api#enumValue" => "LINUX_CONTAINER"}))
    EnvironmentType.add_member(:linux_gpu_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX_GPU_CONTAINER", traits: {"smithy.api#enumValue" => "LINUX_GPU_CONTAINER"}))
    EnvironmentType.add_member(:arm_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARM_CONTAINER", traits: {"smithy.api#enumValue" => "ARM_CONTAINER"}))
    EnvironmentType.add_member(:windows_server_2019_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2019_CONTAINER", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019_CONTAINER"}))
    EnvironmentType.add_member(:windows_server_2022_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2022_CONTAINER", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2022_CONTAINER"}))
    EnvironmentType.add_member(:linux_lambda_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX_LAMBDA_CONTAINER", traits: {"smithy.api#enumValue" => "LINUX_LAMBDA_CONTAINER"}))
    EnvironmentType.add_member(:arm_lambda_container, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARM_LAMBDA_CONTAINER", traits: {"smithy.api#enumValue" => "ARM_LAMBDA_CONTAINER"}))
    EnvironmentType.add_member(:linux_ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX_EC2", traits: {"smithy.api#enumValue" => "LINUX_EC2"}))
    EnvironmentType.add_member(:arm_ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARM_EC2", traits: {"smithy.api#enumValue" => "ARM_EC2"}))
    EnvironmentType.add_member(:windows_ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_EC2", traits: {"smithy.api#enumValue" => "WINDOWS_EC2"}))
    EnvironmentType.add_member(:mac_arm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAC_ARM", traits: {"smithy.api#enumValue" => "MAC_ARM"}))
    EnvironmentVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value", traits: {"smithy.api#required" => {}}))
    EnvironmentVariable.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariableType, name: "type"))
    EnvironmentVariable.type = Types::EnvironmentVariable
    EnvironmentVariableType.add_member(:plaintext, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLAINTEXT", traits: {"smithy.api#enumValue" => "PLAINTEXT"}))
    EnvironmentVariableType.add_member(:parameter_store, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARAMETER_STORE", traits: {"smithy.api#enumValue" => "PARAMETER_STORE"}))
    EnvironmentVariableType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    EnvironmentVariables.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariable, name: "member"))
    ExportedEnvironmentVariable.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name"))
    ExportedEnvironmentVariable.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    ExportedEnvironmentVariable.type = Types::ExportedEnvironmentVariable
    ExportedEnvironmentVariables.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportedEnvironmentVariable, name: "member"))
    FileSystemType.add_member(:efs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EFS", traits: {"smithy.api#enumValue" => "EFS"}))
    FilterGroup.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookFilter, name: "member"))
    FilterGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterGroup, name: "member"))
    Fleet.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    Fleet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetName, name: "name"))
    Fleet.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    Fleet.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created"))
    Fleet.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastModified"))
    Fleet.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetStatus, name: "status"))
    Fleet.add_member(:base_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetCapacity, name: "baseCapacity"))
    Fleet.add_member(:environment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentType, name: "environmentType"))
    Fleet.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, name: "computeType"))
    Fleet.add_member(:compute_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfiguration, name: "computeConfiguration"))
    Fleet.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfigurationOutput, name: "scalingConfiguration"))
    Fleet.add_member(:overflow_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetOverflowBehavior, name: "overflowBehavior"))
    Fleet.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    Fleet.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "proxyConfiguration"))
    Fleet.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "imageId"))
    Fleet.add_member(:fleet_service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fleetServiceRole"))
    Fleet.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    Fleet.type = Types::Fleet
    FleetArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    FleetContextCode.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    FleetContextCode.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    FleetContextCode.add_member(:action_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_REQUIRED", traits: {"smithy.api#enumValue" => "ACTION_REQUIRED"}))
    FleetContextCode.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    FleetContextCode.add_member(:insufficient_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_CAPACITY", traits: {"smithy.api#enumValue" => "INSUFFICIENT_CAPACITY"}))
    FleetNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    FleetOverflowBehavior.add_member(:queue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUEUE", traits: {"smithy.api#enumValue" => "QUEUE"}))
    FleetOverflowBehavior.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    FleetProxyRule.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetProxyRuleType, name: "type", traits: {"smithy.api#required" => {}}))
    FleetProxyRule.add_member(:effect, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetProxyRuleEffectType, name: "effect", traits: {"smithy.api#required" => {}}))
    FleetProxyRule.add_member(:entities, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetProxyRuleEntities, name: "entities", traits: {"smithy.api#required" => {}}))
    FleetProxyRule.type = Types::FleetProxyRule
    FleetProxyRuleBehavior.add_member(:allow_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW_ALL", traits: {"smithy.api#enumValue" => "ALLOW_ALL"}))
    FleetProxyRuleBehavior.add_member(:deny_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY_ALL", traits: {"smithy.api#enumValue" => "DENY_ALL"}))
    FleetProxyRuleEffectType.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    FleetProxyRuleEffectType.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    FleetProxyRuleEntities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    FleetProxyRuleType.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN", traits: {"smithy.api#enumValue" => "DOMAIN"}))
    FleetProxyRuleType.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IP", traits: {"smithy.api#enumValue" => "IP"}))
    FleetProxyRules.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetProxyRule, name: "member"))
    FleetScalingMetricType.add_member(:fleet_utilization_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLEET_UTILIZATION_RATE", traits: {"smithy.api#enumValue" => "FLEET_UTILIZATION_RATE"}))
    FleetScalingType.add_member(:target_tracking_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_TRACKING_SCALING", traits: {"smithy.api#enumValue" => "TARGET_TRACKING_SCALING"}))
    FleetSortByType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    FleetSortByType.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_TIME", traits: {"smithy.api#enumValue" => "CREATED_TIME"}))
    FleetSortByType.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_MODIFIED_TIME", traits: {"smithy.api#enumValue" => "LAST_MODIFIED_TIME"}))
    FleetStatus.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetStatusCode, name: "statusCode"))
    FleetStatus.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetContextCode, name: "context"))
    FleetStatus.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    FleetStatus.type = Types::FleetStatus
    FleetStatusCode.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    FleetStatusCode.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    FleetStatusCode.add_member(:rotating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROTATING", traits: {"smithy.api#enumValue" => "ROTATING"}))
    FleetStatusCode.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_DELETION", traits: {"smithy.api#enumValue" => "PENDING_DELETION"}))
    FleetStatusCode.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    FleetStatusCode.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    FleetStatusCode.add_member(:update_rollback_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_ROLLBACK_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_ROLLBACK_FAILED"}))
    FleetStatusCode.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    Fleets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Fleet, name: "member"))
    FleetsAllowed.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    GetReportGroupTrendInput.add_member(:report_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reportGroupArn", traits: {"smithy.api#required" => {}}))
    GetReportGroupTrendInput.add_member(:num_of_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "numOfReports"))
    GetReportGroupTrendInput.add_member(:trend_field, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroupTrendFieldType, name: "trendField", traits: {"smithy.api#required" => {}}))
    GetReportGroupTrendInput.type = Types::GetReportGroupTrendInput
    GetReportGroupTrendOutput.add_member(:stats, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroupTrendStats, name: "stats"))
    GetReportGroupTrendOutput.add_member(:raw_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroupTrendRawDataList, name: "rawData"))
    GetReportGroupTrendOutput.type = Types::GetReportGroupTrendOutput
    GetResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetResourcePolicyInput.type = Types::GetResourcePolicyInput
    GetResourcePolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "policy"))
    GetResourcePolicyOutput.type = Types::GetResourcePolicyOutput
    GitSubmodulesConfig.add_member(:fetch_submodules, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "fetchSubmodules", traits: {"smithy.api#required" => {}}))
    GitSubmodulesConfig.type = Types::GitSubmodulesConfig
    HostKernel.add_member(:linux_kernel_4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX_KERNEL_4", traits: {"smithy.api#enumValue" => "LINUX_KERNEL_4"}))
    HostKernel.add_member(:linux_kernel_6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX_KERNEL_6", traits: {"smithy.api#enumValue" => "LINUX_KERNEL_6"}))
    HostKernel.add_member(:linux_kernel_latest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX_KERNEL_LATEST", traits: {"smithy.api#enumValue" => "LINUX_KERNEL_LATEST"}))
    Identifiers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    ImagePullCredentialsType.add_member(:codebuild, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODEBUILD", traits: {"smithy.api#enumValue" => "CODEBUILD"}))
    ImagePullCredentialsType.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_ROLE", traits: {"smithy.api#enumValue" => "SERVICE_ROLE"}))
    ImageVersions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ImportSourceCredentialsInput.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "username"))
    ImportSourceCredentialsInput.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "token", traits: {"smithy.api#required" => {}}))
    ImportSourceCredentialsInput.add_member(:server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerType, name: "serverType", traits: {"smithy.api#required" => {}}))
    ImportSourceCredentialsInput.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType", traits: {"smithy.api#required" => {}}))
    ImportSourceCredentialsInput.add_member(:should_overwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "shouldOverwrite"))
    ImportSourceCredentialsInput.type = Types::ImportSourceCredentialsInput
    ImportSourceCredentialsOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    ImportSourceCredentialsOutput.type = Types::ImportSourceCredentialsOutput
    InvalidInputException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidInputException.type = Types::InvalidInputException
    InvalidateProjectCacheInput.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectName", traits: {"smithy.api#required" => {}}))
    InvalidateProjectCacheInput.type = Types::InvalidateProjectCacheInput
    InvalidateProjectCacheOutput.type = Types::InvalidateProjectCacheOutput
    LanguageType.add_member(:java, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JAVA", traits: {"smithy.api#enumValue" => "JAVA"}))
    LanguageType.add_member(:python, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PYTHON", traits: {"smithy.api#enumValue" => "PYTHON"}))
    LanguageType.add_member(:node_js, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NODE_JS", traits: {"smithy.api#enumValue" => "NODE_JS"}))
    LanguageType.add_member(:ruby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUBY", traits: {"smithy.api#enumValue" => "RUBY"}))
    LanguageType.add_member(:golang, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOLANG", traits: {"smithy.api#enumValue" => "GOLANG"}))
    LanguageType.add_member(:docker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCKER", traits: {"smithy.api#enumValue" => "DOCKER"}))
    LanguageType.add_member(:android, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANDROID", traits: {"smithy.api#enumValue" => "ANDROID"}))
    LanguageType.add_member(:dotnet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOTNET", traits: {"smithy.api#enumValue" => "DOTNET"}))
    LanguageType.add_member(:base, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE", traits: {"smithy.api#enumValue" => "BASE"}))
    LanguageType.add_member(:php, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHP", traits: {"smithy.api#enumValue" => "PHP"}))
    ListBuildBatchesForProjectInput.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectName"))
    ListBuildBatchesForProjectInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatchFilter, name: "filter"))
    ListBuildBatchesForProjectInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    ListBuildBatchesForProjectInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListBuildBatchesForProjectInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListBuildBatchesForProjectInput.type = Types::ListBuildBatchesForProjectInput
    ListBuildBatchesForProjectOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatchIds, name: "ids"))
    ListBuildBatchesForProjectOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListBuildBatchesForProjectOutput.type = Types::ListBuildBatchesForProjectOutput
    ListBuildBatchesInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatchFilter, name: "filter"))
    ListBuildBatchesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    ListBuildBatchesInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListBuildBatchesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListBuildBatchesInput.type = Types::ListBuildBatchesInput
    ListBuildBatchesOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatchIds, name: "ids"))
    ListBuildBatchesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListBuildBatchesOutput.type = Types::ListBuildBatchesOutput
    ListBuildsForProjectInput.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectName", traits: {"smithy.api#required" => {}}))
    ListBuildsForProjectInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListBuildsForProjectInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListBuildsForProjectInput.type = Types::ListBuildsForProjectInput
    ListBuildsForProjectOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIds, name: "ids"))
    ListBuildsForProjectOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListBuildsForProjectOutput.type = Types::ListBuildsForProjectOutput
    ListBuildsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListBuildsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListBuildsInput.type = Types::ListBuildsInput
    ListBuildsOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildIds, name: "ids"))
    ListBuildsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListBuildsOutput.type = Types::ListBuildsOutput
    ListCommandExecutionsForSandboxInput.add_member(:sandbox_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sandboxId", traits: {"smithy.api#required" => {}}))
    ListCommandExecutionsForSandboxInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    ListCommandExecutionsForSandboxInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListCommandExecutionsForSandboxInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "nextToken"))
    ListCommandExecutionsForSandboxInput.type = Types::ListCommandExecutionsForSandboxInput
    ListCommandExecutionsForSandboxOutput.add_member(:command_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandExecutions, name: "commandExecutions"))
    ListCommandExecutionsForSandboxOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListCommandExecutionsForSandboxOutput.type = Types::ListCommandExecutionsForSandboxOutput
    ListCuratedEnvironmentImagesInput.type = Types::ListCuratedEnvironmentImagesInput
    ListCuratedEnvironmentImagesOutput.add_member(:platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentPlatforms, name: "platforms"))
    ListCuratedEnvironmentImagesOutput.type = Types::ListCuratedEnvironmentImagesOutput
    ListFleetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "nextToken"))
    ListFleetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    ListFleetsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListFleetsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetSortByType, name: "sortBy"))
    ListFleetsInput.type = Types::ListFleetsInput
    ListFleetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListFleetsOutput.add_member(:fleets, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetArns, name: "fleets"))
    ListFleetsOutput.type = Types::ListFleetsOutput
    ListProjectsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSortByType, name: "sortBy"))
    ListProjectsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListProjectsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken"))
    ListProjectsInput.type = Types::ListProjectsInput
    ListProjectsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListProjectsOutput.add_member(:projects, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectNames, name: "projects"))
    ListProjectsOutput.type = Types::ListProjectsOutput
    ListReportGroupsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListReportGroupsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroupSortByType, name: "sortBy"))
    ListReportGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListReportGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    ListReportGroupsInput.type = Types::ListReportGroupsInput
    ListReportGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListReportGroupsOutput.add_member(:report_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroupArns, name: "reportGroups"))
    ListReportGroupsOutput.type = Types::ListReportGroupsOutput
    ListReportsForReportGroupInput.add_member(:report_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "reportGroupArn", traits: {"smithy.api#required" => {}}))
    ListReportsForReportGroupInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListReportsForReportGroupInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListReportsForReportGroupInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    ListReportsForReportGroupInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilter, name: "filter"))
    ListReportsForReportGroupInput.type = Types::ListReportsForReportGroupInput
    ListReportsForReportGroupOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListReportsForReportGroupOutput.add_member(:reports, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportArns, name: "reports"))
    ListReportsForReportGroupOutput.type = Types::ListReportsForReportGroupOutput
    ListReportsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListReportsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListReportsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    ListReportsInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilter, name: "filter"))
    ListReportsInput.type = Types::ListReportsInput
    ListReportsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListReportsOutput.add_member(:reports, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportArns, name: "reports"))
    ListReportsOutput.type = Types::ListReportsOutput
    ListSandboxesForProjectInput.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectName", traits: {"smithy.api#required" => {}}))
    ListSandboxesForProjectInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    ListSandboxesForProjectInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListSandboxesForProjectInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "nextToken"))
    ListSandboxesForProjectInput.type = Types::ListSandboxesForProjectInput
    ListSandboxesForProjectOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SandboxIds, name: "ids"))
    ListSandboxesForProjectOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSandboxesForProjectOutput.type = Types::ListSandboxesForProjectOutput
    ListSandboxesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    ListSandboxesInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListSandboxesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSandboxesInput.type = Types::ListSandboxesInput
    ListSandboxesOutput.add_member(:ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SandboxIds, name: "ids"))
    ListSandboxesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSandboxesOutput.type = Types::ListSandboxesOutput
    ListSharedProjectsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedResourceSortByType, name: "sortBy"))
    ListSharedProjectsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListSharedProjectsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    ListSharedProjectsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken"))
    ListSharedProjectsInput.type = Types::ListSharedProjectsInput
    ListSharedProjectsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSharedProjectsOutput.add_member(:projects, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArns, name: "projects"))
    ListSharedProjectsOutput.type = Types::ListSharedProjectsOutput
    ListSharedReportGroupsInput.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrderType, name: "sortOrder"))
    ListSharedReportGroupsInput.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedResourceSortByType, name: "sortBy"))
    ListSharedReportGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSharedReportGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "maxResults"))
    ListSharedReportGroupsInput.type = Types::ListSharedReportGroupsInput
    ListSharedReportGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListSharedReportGroupsOutput.add_member(:report_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroupArns, name: "reportGroups"))
    ListSharedReportGroupsOutput.type = Types::ListSharedReportGroupsOutput
    ListSourceCredentialsInput.type = Types::ListSourceCredentialsInput
    ListSourceCredentialsOutput.add_member(:source_credentials_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCredentialsInfos, name: "sourceCredentialsInfos"))
    ListSourceCredentialsOutput.type = Types::ListSourceCredentialsOutput
    LogsConfig.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsConfig, name: "cloudWatchLogs"))
    LogsConfig.add_member(:s3_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LogsConfig, name: "s3Logs"))
    LogsConfig.type = Types::LogsConfig
    LogsConfigStatusType.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    LogsConfigStatusType.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    LogsLocation.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "groupName"))
    LogsLocation.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "streamName"))
    LogsLocation.add_member(:deep_link, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "deepLink"))
    LogsLocation.add_member(:s3_deep_link, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3DeepLink"))
    LogsLocation.add_member(:cloud_watch_logs_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cloudWatchLogsArn"))
    LogsLocation.add_member(:s3_logs_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3LogsArn"))
    LogsLocation.add_member(:cloud_watch_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLogsConfig, name: "cloudWatchLogs"))
    LogsLocation.add_member(:s3_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: S3LogsConfig, name: "s3Logs"))
    LogsLocation.type = Types::LogsLocation
    MachineType.add_member(:general, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENERAL", traits: {"smithy.api#enumValue" => "GENERAL"}))
    MachineType.add_member(:nvme, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NVME", traits: {"smithy.api#enumValue" => "NVME"}))
    NetworkInterface.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "subnetId"))
    NetworkInterface.add_member(:network_interface_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "networkInterfaceId"))
    NetworkInterface.type = Types::NetworkInterface
    OAuthProviderException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    OAuthProviderException.type = Types::OAuthProviderException
    PhaseContext.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusCode"))
    PhaseContext.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    PhaseContext.type = Types::PhaseContext
    PhaseContexts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PhaseContext, name: "member"))
    PlatformType.add_member(:debian, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEBIAN", traits: {"smithy.api#enumValue" => "DEBIAN"}))
    PlatformType.add_member(:amazon_linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_LINUX", traits: {"smithy.api#enumValue" => "AMAZON_LINUX"}))
    PlatformType.add_member(:ubuntu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UBUNTU", traits: {"smithy.api#enumValue" => "UBUNTU"}))
    PlatformType.add_member(:windows_server, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER"}))
    Project.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "name"))
    Project.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "arn"))
    Project.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectDescription, name: "description"))
    Project.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSource, name: "source"))
    Project.add_member(:secondary_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSources, name: "secondarySources"))
    Project.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceVersion"))
    Project.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSecondarySourceVersions, name: "secondarySourceVersions"))
    Project.add_member(:artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArtifacts, name: "artifacts"))
    Project.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArtifactsList, name: "secondaryArtifacts"))
    Project.add_member(:cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectCache, name: "cache"))
    Project.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectEnvironment, name: "environment"))
    Project.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "serviceRole"))
    Project.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildTimeOut, name: "timeoutInMinutes"))
    Project.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOut, name: "queuedTimeoutInMinutes"))
    Project.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "encryptionKey"))
    Project.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    Project.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created"))
    Project.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastModified"))
    Project.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: Webhook, name: "webhook"))
    Project.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    Project.add_member(:badge, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectBadge, name: "badge"))
    Project.add_member(:logs_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsConfig, name: "logsConfig"))
    Project.add_member(:file_system_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectFileSystemLocations, name: "fileSystemLocations"))
    Project.add_member(:build_batch_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectBuildBatchConfig, name: "buildBatchConfig"))
    Project.add_member(:concurrent_build_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "concurrentBuildLimit"))
    Project.add_member(:project_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectVisibilityType, name: "projectVisibility"))
    Project.add_member(:public_project_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "publicProjectAlias"))
    Project.add_member(:resource_access_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceAccessRole"))
    Project.add_member(:auto_retry_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "autoRetryLimit"))
    Project.type = Types::Project
    ProjectArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    ProjectArtifacts.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsType, name: "type", traits: {"smithy.api#required" => {}}))
    ProjectArtifacts.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location"))
    ProjectArtifacts.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    ProjectArtifacts.add_member(:namespace_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactNamespace, name: "namespaceType"))
    ProjectArtifacts.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    ProjectArtifacts.add_member(:packaging, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactPackaging, name: "packaging"))
    ProjectArtifacts.add_member(:override_artifact_name, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "overrideArtifactName"))
    ProjectArtifacts.add_member(:encryption_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "encryptionDisabled"))
    ProjectArtifacts.add_member(:artifact_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "artifactIdentifier"))
    ProjectArtifacts.add_member(:bucket_owner_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketOwnerAccess, name: "bucketOwnerAccess"))
    ProjectArtifacts.type = Types::ProjectArtifacts
    ProjectArtifactsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArtifacts, name: "member"))
    ProjectBadge.add_member(:badge_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "badgeEnabled", traits: {"smithy.api#default" => false}))
    ProjectBadge.add_member(:badge_request_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "badgeRequestUrl"))
    ProjectBadge.type = Types::ProjectBadge
    ProjectBuildBatchConfig.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "serviceRole"))
    ProjectBuildBatchConfig.add_member(:combine_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "combineArtifacts"))
    ProjectBuildBatchConfig.add_member(:restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchRestrictions, name: "restrictions"))
    ProjectBuildBatchConfig.add_member(:timeout_in_mins, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "timeoutInMins"))
    ProjectBuildBatchConfig.add_member(:batch_report_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchReportModeType, name: "batchReportMode"))
    ProjectBuildBatchConfig.type = Types::ProjectBuildBatchConfig
    ProjectCache.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheType, name: "type", traits: {"smithy.api#required" => {}}))
    ProjectCache.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location"))
    ProjectCache.add_member(:modes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectCacheModes, name: "modes"))
    ProjectCache.add_member(:cache_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cacheNamespace"))
    ProjectCache.type = Types::ProjectCache
    ProjectCacheModes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheMode, name: "member"))
    ProjectEnvironment.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentType, name: "type", traits: {"smithy.api#required" => {}}))
    ProjectEnvironment.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "image", traits: {"smithy.api#required" => {}}))
    ProjectEnvironment.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, name: "computeType", traits: {"smithy.api#required" => {}}))
    ProjectEnvironment.add_member(:compute_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfiguration, name: "computeConfiguration"))
    ProjectEnvironment.add_member(:fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectFleet, name: "fleet"))
    ProjectEnvironment.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environmentVariables"))
    ProjectEnvironment.add_member(:privileged_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "privilegedMode"))
    ProjectEnvironment.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificate"))
    ProjectEnvironment.add_member(:registry_credential, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryCredential, name: "registryCredential"))
    ProjectEnvironment.add_member(:image_pull_credentials_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePullCredentialsType, name: "imagePullCredentialsType"))
    ProjectEnvironment.add_member(:docker_server, ::Smithy::Schema::Shapes::MemberShape.new(target: DockerServer, name: "dockerServer"))
    ProjectEnvironment.add_member(:host_kernel, ::Smithy::Schema::Shapes::MemberShape.new(target: HostKernel, name: "hostKernel"))
    ProjectEnvironment.type = Types::ProjectEnvironment
    ProjectFileSystemLocation.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FileSystemType, name: "type"))
    ProjectFileSystemLocation.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location"))
    ProjectFileSystemLocation.add_member(:mount_point, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mountPoint"))
    ProjectFileSystemLocation.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identifier"))
    ProjectFileSystemLocation.add_member(:mount_options, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "mountOptions"))
    ProjectFileSystemLocation.type = Types::ProjectFileSystemLocation
    ProjectFileSystemLocations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectFileSystemLocation, name: "member"))
    ProjectFleet.add_member(:fleet_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fleetArn"))
    ProjectFleet.type = Types::ProjectFleet
    ProjectNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    ProjectSecondarySourceVersions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSourceVersion, name: "member"))
    ProjectSortByType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    ProjectSortByType.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_TIME", traits: {"smithy.api#enumValue" => "CREATED_TIME"}))
    ProjectSortByType.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_MODIFIED_TIME", traits: {"smithy.api#enumValue" => "LAST_MODIFIED_TIME"}))
    ProjectSource.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "type", traits: {"smithy.api#required" => {}}))
    ProjectSource.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location"))
    ProjectSource.add_member(:git_clone_depth, ::Smithy::Schema::Shapes::MemberShape.new(target: GitCloneDepth, name: "gitCloneDepth"))
    ProjectSource.add_member(:git_submodules_config, ::Smithy::Schema::Shapes::MemberShape.new(target: GitSubmodulesConfig, name: "gitSubmodulesConfig"))
    ProjectSource.add_member(:buildspec, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "buildspec"))
    ProjectSource.add_member(:auth, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAuth, name: "auth"))
    ProjectSource.add_member(:report_build_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "reportBuildStatus"))
    ProjectSource.add_member(:build_status_config, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildStatusConfig, name: "buildStatusConfig"))
    ProjectSource.add_member(:insecure_ssl, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "insecureSsl"))
    ProjectSource.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceIdentifier"))
    ProjectSource.type = Types::ProjectSource
    ProjectSourceVersion.add_member(:source_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceIdentifier", traits: {"smithy.api#required" => {}}))
    ProjectSourceVersion.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceVersion", traits: {"smithy.api#required" => {}}))
    ProjectSourceVersion.type = Types::ProjectSourceVersion
    ProjectSources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSource, name: "member"))
    ProjectVisibilityType.add_member(:public_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC_READ", traits: {"smithy.api#enumValue" => "PUBLIC_READ"}))
    ProjectVisibilityType.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    Projects.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Project, name: "member"))
    ProxyConfiguration.add_member(:default_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetProxyRuleBehavior, name: "defaultBehavior"))
    ProxyConfiguration.add_member(:ordered_proxy_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetProxyRules, name: "orderedProxyRules"))
    ProxyConfiguration.type = Types::ProxyConfiguration
    PullRequestBuildApproverRole.add_member(:github_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB_READ", traits: {"smithy.api#enumValue" => "GITHUB_READ"}))
    PullRequestBuildApproverRole.add_member(:github_triage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB_TRIAGE", traits: {"smithy.api#enumValue" => "GITHUB_TRIAGE"}))
    PullRequestBuildApproverRole.add_member(:github_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB_WRITE", traits: {"smithy.api#enumValue" => "GITHUB_WRITE"}))
    PullRequestBuildApproverRole.add_member(:github_maintain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB_MAINTAIN", traits: {"smithy.api#enumValue" => "GITHUB_MAINTAIN"}))
    PullRequestBuildApproverRole.add_member(:github_admin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB_ADMIN", traits: {"smithy.api#enumValue" => "GITHUB_ADMIN"}))
    PullRequestBuildApproverRole.add_member(:gitlab_guest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB_GUEST", traits: {"smithy.api#enumValue" => "GITLAB_GUEST"}))
    PullRequestBuildApproverRole.add_member(:gitlab_planner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB_PLANNER", traits: {"smithy.api#enumValue" => "GITLAB_PLANNER"}))
    PullRequestBuildApproverRole.add_member(:gitlab_reporter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB_REPORTER", traits: {"smithy.api#enumValue" => "GITLAB_REPORTER"}))
    PullRequestBuildApproverRole.add_member(:gitlab_developer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB_DEVELOPER", traits: {"smithy.api#enumValue" => "GITLAB_DEVELOPER"}))
    PullRequestBuildApproverRole.add_member(:gitlab_maintainer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB_MAINTAINER", traits: {"smithy.api#enumValue" => "GITLAB_MAINTAINER"}))
    PullRequestBuildApproverRole.add_member(:gitlab_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB_OWNER", traits: {"smithy.api#enumValue" => "GITLAB_OWNER"}))
    PullRequestBuildApproverRole.add_member(:bitbucket_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITBUCKET_READ", traits: {"smithy.api#enumValue" => "BITBUCKET_READ"}))
    PullRequestBuildApproverRole.add_member(:bitbucket_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITBUCKET_WRITE", traits: {"smithy.api#enumValue" => "BITBUCKET_WRITE"}))
    PullRequestBuildApproverRole.add_member(:bitbucket_admin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITBUCKET_ADMIN", traits: {"smithy.api#enumValue" => "BITBUCKET_ADMIN"}))
    PullRequestBuildApproverRoles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestBuildApproverRole, name: "member"))
    PullRequestBuildCommentApproval.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PullRequestBuildCommentApproval.add_member(:all_pull_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL_PULL_REQUESTS", traits: {"smithy.api#enumValue" => "ALL_PULL_REQUESTS"}))
    PullRequestBuildCommentApproval.add_member(:fork_pull_requests, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FORK_PULL_REQUESTS", traits: {"smithy.api#enumValue" => "FORK_PULL_REQUESTS"}))
    PullRequestBuildPolicy.add_member(:requires_comment_approval, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestBuildCommentApproval, name: "requiresCommentApproval", traits: {"smithy.api#required" => {}}))
    PullRequestBuildPolicy.add_member(:approver_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestBuildApproverRoles, name: "approverRoles"))
    PullRequestBuildPolicy.type = Types::PullRequestBuildPolicy
    PutResourcePolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "policy", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    PutResourcePolicyInput.type = Types::PutResourcePolicyInput
    PutResourcePolicyOutput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceArn"))
    PutResourcePolicyOutput.type = Types::PutResourcePolicyOutput
    RegistryCredential.add_member(:credential, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "credential", traits: {"smithy.api#required" => {}}))
    RegistryCredential.add_member(:credential_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: CredentialProviderType, name: "credentialProvider", traits: {"smithy.api#required" => {}}))
    RegistryCredential.type = Types::RegistryCredential
    Report.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    Report.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportType, name: "type"))
    Report.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    Report.add_member(:report_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reportGroupArn"))
    Report.add_member(:execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "executionId"))
    Report.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportStatusType, name: "status"))
    Report.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created"))
    Report.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expired"))
    Report.add_member(:export_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportExportConfig, name: "exportConfig"))
    Report.add_member(:truncated, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "truncated"))
    Report.add_member(:test_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: TestReportSummary, name: "testSummary"))
    Report.add_member(:code_coverage_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeCoverageReportSummary, name: "codeCoverageSummary"))
    Report.type = Types::Report
    ReportArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    ReportCodeCoverageSortByType.add_member(:line_coverage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINE_COVERAGE_PERCENTAGE", traits: {"smithy.api#enumValue" => "LINE_COVERAGE_PERCENTAGE"}))
    ReportCodeCoverageSortByType.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_PATH", traits: {"smithy.api#enumValue" => "FILE_PATH"}))
    ReportExportConfig.add_member(:export_config_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportExportConfigType, name: "exportConfigType"))
    ReportExportConfig.add_member(:s3_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ReportExportConfig, name: "s3Destination"))
    ReportExportConfig.type = Types::ReportExportConfig
    ReportExportConfigType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    ReportExportConfigType.add_member(:no_export, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_EXPORT", traits: {"smithy.api#enumValue" => "NO_EXPORT"}))
    ReportFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportStatusType, name: "status"))
    ReportFilter.type = Types::ReportFilter
    ReportGroup.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    ReportGroup.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroupName, name: "name"))
    ReportGroup.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportType, name: "type"))
    ReportGroup.add_member(:export_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportExportConfig, name: "exportConfig"))
    ReportGroup.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "created"))
    ReportGroup.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastModified"))
    ReportGroup.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ReportGroup.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroupStatusType, name: "status"))
    ReportGroup.type = Types::ReportGroup
    ReportGroupArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    ReportGroupSortByType.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "NAME"}))
    ReportGroupSortByType.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_TIME", traits: {"smithy.api#enumValue" => "CREATED_TIME"}))
    ReportGroupSortByType.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_MODIFIED_TIME", traits: {"smithy.api#enumValue" => "LAST_MODIFIED_TIME"}))
    ReportGroupStatusType.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ReportGroupStatusType.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ReportGroupTrendFieldType.add_member(:pass_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS_RATE", traits: {"smithy.api#enumValue" => "PASS_RATE"}))
    ReportGroupTrendFieldType.add_member(:duration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DURATION", traits: {"smithy.api#enumValue" => "DURATION"}))
    ReportGroupTrendFieldType.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOTAL", traits: {"smithy.api#enumValue" => "TOTAL"}))
    ReportGroupTrendFieldType.add_member(:line_coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINE_COVERAGE", traits: {"smithy.api#enumValue" => "LINE_COVERAGE"}))
    ReportGroupTrendFieldType.add_member(:lines_covered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINES_COVERED", traits: {"smithy.api#enumValue" => "LINES_COVERED"}))
    ReportGroupTrendFieldType.add_member(:lines_missed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINES_MISSED", traits: {"smithy.api#enumValue" => "LINES_MISSED"}))
    ReportGroupTrendFieldType.add_member(:branch_coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BRANCH_COVERAGE", traits: {"smithy.api#enumValue" => "BRANCH_COVERAGE"}))
    ReportGroupTrendFieldType.add_member(:branches_covered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BRANCHES_COVERED", traits: {"smithy.api#enumValue" => "BRANCHES_COVERED"}))
    ReportGroupTrendFieldType.add_member(:branches_missed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BRANCHES_MISSED", traits: {"smithy.api#enumValue" => "BRANCHES_MISSED"}))
    ReportGroupTrendRawDataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportWithRawData, name: "member"))
    ReportGroupTrendStats.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "average"))
    ReportGroupTrendStats.add_member(:max, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "max"))
    ReportGroupTrendStats.add_member(:min, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "min"))
    ReportGroupTrendStats.type = Types::ReportGroupTrendStats
    ReportGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroup, name: "member"))
    ReportPackagingType.add_member(:zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZIP", traits: {"smithy.api#enumValue" => "ZIP"}))
    ReportPackagingType.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ReportStatusCounts.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    ReportStatusCounts.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "value"))
    ReportStatusType.add_member(:generating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENERATING", traits: {"smithy.api#enumValue" => "GENERATING"}))
    ReportStatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ReportStatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ReportStatusType.add_member(:incomplete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCOMPLETE", traits: {"smithy.api#enumValue" => "INCOMPLETE"}))
    ReportStatusType.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ReportType.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST", traits: {"smithy.api#enumValue" => "TEST"}))
    ReportType.add_member(:code_coverage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODE_COVERAGE", traits: {"smithy.api#enumValue" => "CODE_COVERAGE"}))
    ReportWithRawData.add_member(:report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reportArn"))
    ReportWithRawData.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "data"))
    ReportWithRawData.type = Types::ReportWithRawData
    Reports.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Report, name: "member"))
    ResolvedArtifact.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsType, name: "type"))
    ResolvedArtifact.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location"))
    ResolvedArtifact.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "identifier"))
    ResolvedArtifact.type = Types::ResolvedArtifact
    ResolvedSecondaryArtifacts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResolvedArtifact, name: "member"))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryBuildBatchInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    RetryBuildBatchInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "idempotencyToken"))
    RetryBuildBatchInput.add_member(:retry_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryBuildBatchType, name: "retryType"))
    RetryBuildBatchInput.type = Types::RetryBuildBatchInput
    RetryBuildBatchOutput.add_member(:build_batch, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatch, name: "buildBatch"))
    RetryBuildBatchOutput.type = Types::RetryBuildBatchOutput
    RetryBuildBatchType.add_member(:retry_all_builds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRY_ALL_BUILDS", traits: {"smithy.api#enumValue" => "RETRY_ALL_BUILDS"}))
    RetryBuildBatchType.add_member(:retry_failed_builds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETRY_FAILED_BUILDS", traits: {"smithy.api#enumValue" => "RETRY_FAILED_BUILDS"}))
    RetryBuildInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    RetryBuildInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "idempotencyToken"))
    RetryBuildInput.type = Types::RetryBuildInput
    RetryBuildOutput.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: Build, name: "build"))
    RetryBuildOutput.type = Types::RetryBuildOutput
    S3LogsConfig.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsConfigStatusType, name: "status", traits: {"smithy.api#required" => {}}))
    S3LogsConfig.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location"))
    S3LogsConfig.add_member(:encryption_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "encryptionDisabled"))
    S3LogsConfig.add_member(:bucket_owner_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketOwnerAccess, name: "bucketOwnerAccess"))
    S3LogsConfig.type = Types::S3LogsConfig
    S3ReportExportConfig.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "bucket"))
    S3ReportExportConfig.add_member(:bucket_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "bucketOwner"))
    S3ReportExportConfig.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "path"))
    S3ReportExportConfig.add_member(:packaging, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportPackagingType, name: "packaging"))
    S3ReportExportConfig.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "encryptionKey"))
    S3ReportExportConfig.add_member(:encryption_disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "encryptionDisabled"))
    S3ReportExportConfig.type = Types::S3ReportExportConfig
    SSMSession.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sessionId"))
    SSMSession.add_member(:token_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "tokenValue"))
    SSMSession.add_member(:stream_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "streamUrl"))
    SSMSession.type = Types::SSMSession
    Sandbox.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    Sandbox.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    Sandbox.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectName"))
    Sandbox.add_member(:request_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "requestTime"))
    Sandbox.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    Sandbox.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    Sandbox.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    Sandbox.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSource, name: "source"))
    Sandbox.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sourceVersion"))
    Sandbox.add_member(:secondary_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSources, name: "secondarySources"))
    Sandbox.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSecondarySourceVersions, name: "secondarySourceVersions"))
    Sandbox.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectEnvironment, name: "environment"))
    Sandbox.add_member(:file_system_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectFileSystemLocations, name: "fileSystemLocations"))
    Sandbox.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "timeoutInMinutes"))
    Sandbox.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "queuedTimeoutInMinutes"))
    Sandbox.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    Sandbox.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsConfig, name: "logConfig"))
    Sandbox.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "encryptionKey"))
    Sandbox.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "serviceRole"))
    Sandbox.add_member(:current_session, ::Smithy::Schema::Shapes::MemberShape.new(target: SandboxSession, name: "currentSession"))
    Sandbox.type = Types::Sandbox
    SandboxIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    SandboxSession.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id"))
    SandboxSession.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    SandboxSession.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    SandboxSession.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    SandboxSession.add_member(:current_phase, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "currentPhase"))
    SandboxSession.add_member(:phases, ::Smithy::Schema::Shapes::MemberShape.new(target: SandboxSessionPhases, name: "phases"))
    SandboxSession.add_member(:resolved_source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resolvedSourceVersion"))
    SandboxSession.add_member(:logs, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsLocation, name: "logs"))
    SandboxSession.add_member(:network_interface, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInterface, name: "networkInterface"))
    SandboxSession.type = Types::SandboxSession
    SandboxSessionPhase.add_member(:phase_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "phaseType"))
    SandboxSessionPhase.add_member(:phase_status, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusType, name: "phaseStatus"))
    SandboxSessionPhase.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    SandboxSessionPhase.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    SandboxSessionPhase.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperLong, name: "durationInSeconds"))
    SandboxSessionPhase.add_member(:contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: PhaseContexts, name: "contexts"))
    SandboxSessionPhase.type = Types::SandboxSessionPhase
    SandboxSessionPhases.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SandboxSessionPhase, name: "member"))
    Sandboxes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Sandbox, name: "member"))
    ScalingConfigurationInput.add_member(:scaling_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetScalingType, name: "scalingType"))
    ScalingConfigurationInput.add_member(:target_tracking_scaling_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingScalingConfigurations, name: "targetTrackingScalingConfigs"))
    ScalingConfigurationInput.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetCapacity, name: "maxCapacity"))
    ScalingConfigurationInput.type = Types::ScalingConfigurationInput
    ScalingConfigurationOutput.add_member(:scaling_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetScalingType, name: "scalingType"))
    ScalingConfigurationOutput.add_member(:target_tracking_scaling_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingScalingConfigurations, name: "targetTrackingScalingConfigs"))
    ScalingConfigurationOutput.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetCapacity, name: "maxCapacity"))
    ScalingConfigurationOutput.add_member(:desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetCapacity, name: "desiredCapacity"))
    ScalingConfigurationOutput.type = Types::ScalingConfigurationOutput
    ScopeConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    ScopeConfiguration.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "domain"))
    ScopeConfiguration.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookScopeType, name: "scope", traits: {"smithy.api#required" => {}}))
    ScopeConfiguration.type = Types::ScopeConfiguration
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    ServerType.add_member(:github, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB", traits: {"smithy.api#enumValue" => "GITHUB"}))
    ServerType.add_member(:bitbucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITBUCKET", traits: {"smithy.api#enumValue" => "BITBUCKET"}))
    ServerType.add_member(:github_enterprise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB_ENTERPRISE", traits: {"smithy.api#enumValue" => "GITHUB_ENTERPRISE"}))
    ServerType.add_member(:gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB", traits: {"smithy.api#enumValue" => "GITLAB"}))
    ServerType.add_member(:gitlab_self_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB_SELF_MANAGED", traits: {"smithy.api#enumValue" => "GITLAB_SELF_MANAGED"}))
    SharedResourceSortByType.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARN", traits: {"smithy.api#enumValue" => "ARN"}))
    SharedResourceSortByType.add_member(:modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFIED_TIME", traits: {"smithy.api#enumValue" => "MODIFIED_TIME"}))
    SortOrderType.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrderType.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    SourceAuth.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAuthType, name: "type", traits: {"smithy.api#required" => {}}))
    SourceAuth.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resource"))
    SourceAuth.type = Types::SourceAuth
    SourceAuthType.add_member(:oauth, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OAUTH", traits: {"smithy.api#enumValue" => "OAUTH"}))
    SourceAuthType.add_member(:codeconnections, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODECONNECTIONS", traits: {"smithy.api#enumValue" => "CODECONNECTIONS"}))
    SourceAuthType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    SourceCredentialsInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn"))
    SourceCredentialsInfo.add_member(:server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerType, name: "serverType"))
    SourceCredentialsInfo.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    SourceCredentialsInfo.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resource"))
    SourceCredentialsInfo.type = Types::SourceCredentialsInfo
    SourceCredentialsInfos.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCredentialsInfo, name: "member"))
    SourceType.add_member(:codecommit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODECOMMIT", traits: {"smithy.api#enumValue" => "CODECOMMIT"}))
    SourceType.add_member(:codepipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODEPIPELINE", traits: {"smithy.api#enumValue" => "CODEPIPELINE"}))
    SourceType.add_member(:github, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB", traits: {"smithy.api#enumValue" => "GITHUB"}))
    SourceType.add_member(:gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB", traits: {"smithy.api#enumValue" => "GITLAB"}))
    SourceType.add_member(:gitlab_self_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB_SELF_MANAGED", traits: {"smithy.api#enumValue" => "GITLAB_SELF_MANAGED"}))
    SourceType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "S3"}))
    SourceType.add_member(:bitbucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITBUCKET", traits: {"smithy.api#enumValue" => "BITBUCKET"}))
    SourceType.add_member(:github_enterprise, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB_ENTERPRISE", traits: {"smithy.api#enumValue" => "GITHUB_ENTERPRISE"}))
    SourceType.add_member(:no_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_SOURCE", traits: {"smithy.api#enumValue" => "NO_SOURCE"}))
    StartBuildBatchInput.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectName", traits: {"smithy.api#required" => {}}))
    StartBuildBatchInput.add_member(:secondary_sources_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSources, name: "secondarySourcesOverride"))
    StartBuildBatchInput.add_member(:secondary_sources_version_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSecondarySourceVersions, name: "secondarySourcesVersionOverride"))
    StartBuildBatchInput.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceVersion"))
    StartBuildBatchInput.add_member(:artifacts_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArtifacts, name: "artifactsOverride"))
    StartBuildBatchInput.add_member(:secondary_artifacts_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArtifactsList, name: "secondaryArtifactsOverride"))
    StartBuildBatchInput.add_member(:environment_variables_override, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environmentVariablesOverride"))
    StartBuildBatchInput.add_member(:source_type_override, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "sourceTypeOverride"))
    StartBuildBatchInput.add_member(:source_location_override, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceLocationOverride"))
    StartBuildBatchInput.add_member(:source_auth_override, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAuth, name: "sourceAuthOverride"))
    StartBuildBatchInput.add_member(:git_clone_depth_override, ::Smithy::Schema::Shapes::MemberShape.new(target: GitCloneDepth, name: "gitCloneDepthOverride"))
    StartBuildBatchInput.add_member(:git_submodules_config_override, ::Smithy::Schema::Shapes::MemberShape.new(target: GitSubmodulesConfig, name: "gitSubmodulesConfigOverride"))
    StartBuildBatchInput.add_member(:buildspec_override, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "buildspecOverride"))
    StartBuildBatchInput.add_member(:insecure_ssl_override, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "insecureSslOverride"))
    StartBuildBatchInput.add_member(:report_build_batch_status_override, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "reportBuildBatchStatusOverride"))
    StartBuildBatchInput.add_member(:environment_type_override, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentType, name: "environmentTypeOverride"))
    StartBuildBatchInput.add_member(:image_override, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "imageOverride"))
    StartBuildBatchInput.add_member(:compute_type_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, name: "computeTypeOverride"))
    StartBuildBatchInput.add_member(:certificate_override, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateOverride"))
    StartBuildBatchInput.add_member(:cache_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectCache, name: "cacheOverride"))
    StartBuildBatchInput.add_member(:service_role_override, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "serviceRoleOverride"))
    StartBuildBatchInput.add_member(:privileged_mode_override, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "privilegedModeOverride"))
    StartBuildBatchInput.add_member(:build_timeout_in_minutes_override, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildTimeOut, name: "buildTimeoutInMinutesOverride"))
    StartBuildBatchInput.add_member(:queued_timeout_in_minutes_override, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOut, name: "queuedTimeoutInMinutesOverride"))
    StartBuildBatchInput.add_member(:encryption_key_override, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "encryptionKeyOverride"))
    StartBuildBatchInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "idempotencyToken"))
    StartBuildBatchInput.add_member(:logs_config_override, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsConfig, name: "logsConfigOverride"))
    StartBuildBatchInput.add_member(:registry_credential_override, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryCredential, name: "registryCredentialOverride"))
    StartBuildBatchInput.add_member(:image_pull_credentials_type_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePullCredentialsType, name: "imagePullCredentialsTypeOverride"))
    StartBuildBatchInput.add_member(:build_batch_config_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectBuildBatchConfig, name: "buildBatchConfigOverride"))
    StartBuildBatchInput.add_member(:debug_session_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "debugSessionEnabled"))
    StartBuildBatchInput.type = Types::StartBuildBatchInput
    StartBuildBatchOutput.add_member(:build_batch, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatch, name: "buildBatch"))
    StartBuildBatchOutput.type = Types::StartBuildBatchOutput
    StartBuildInput.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectName", traits: {"smithy.api#required" => {}}))
    StartBuildInput.add_member(:secondary_sources_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSources, name: "secondarySourcesOverride"))
    StartBuildInput.add_member(:secondary_sources_version_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSecondarySourceVersions, name: "secondarySourcesVersionOverride"))
    StartBuildInput.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceVersion"))
    StartBuildInput.add_member(:artifacts_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArtifacts, name: "artifactsOverride"))
    StartBuildInput.add_member(:secondary_artifacts_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArtifactsList, name: "secondaryArtifactsOverride"))
    StartBuildInput.add_member(:environment_variables_override, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, name: "environmentVariablesOverride"))
    StartBuildInput.add_member(:source_type_override, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceType, name: "sourceTypeOverride"))
    StartBuildInput.add_member(:source_location_override, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceLocationOverride"))
    StartBuildInput.add_member(:source_auth_override, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceAuth, name: "sourceAuthOverride"))
    StartBuildInput.add_member(:git_clone_depth_override, ::Smithy::Schema::Shapes::MemberShape.new(target: GitCloneDepth, name: "gitCloneDepthOverride"))
    StartBuildInput.add_member(:git_submodules_config_override, ::Smithy::Schema::Shapes::MemberShape.new(target: GitSubmodulesConfig, name: "gitSubmodulesConfigOverride"))
    StartBuildInput.add_member(:buildspec_override, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "buildspecOverride"))
    StartBuildInput.add_member(:insecure_ssl_override, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "insecureSslOverride"))
    StartBuildInput.add_member(:report_build_status_override, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "reportBuildStatusOverride"))
    StartBuildInput.add_member(:build_status_config_override, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildStatusConfig, name: "buildStatusConfigOverride"))
    StartBuildInput.add_member(:environment_type_override, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentType, name: "environmentTypeOverride"))
    StartBuildInput.add_member(:image_override, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "imageOverride"))
    StartBuildInput.add_member(:compute_type_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, name: "computeTypeOverride"))
    StartBuildInput.add_member(:certificate_override, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "certificateOverride"))
    StartBuildInput.add_member(:cache_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectCache, name: "cacheOverride"))
    StartBuildInput.add_member(:service_role_override, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "serviceRoleOverride"))
    StartBuildInput.add_member(:privileged_mode_override, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "privilegedModeOverride"))
    StartBuildInput.add_member(:timeout_in_minutes_override, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildTimeOut, name: "timeoutInMinutesOverride"))
    StartBuildInput.add_member(:queued_timeout_in_minutes_override, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOut, name: "queuedTimeoutInMinutesOverride"))
    StartBuildInput.add_member(:encryption_key_override, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "encryptionKeyOverride"))
    StartBuildInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "idempotencyToken"))
    StartBuildInput.add_member(:logs_config_override, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsConfig, name: "logsConfigOverride"))
    StartBuildInput.add_member(:registry_credential_override, ::Smithy::Schema::Shapes::MemberShape.new(target: RegistryCredential, name: "registryCredentialOverride"))
    StartBuildInput.add_member(:image_pull_credentials_type_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePullCredentialsType, name: "imagePullCredentialsTypeOverride"))
    StartBuildInput.add_member(:debug_session_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "debugSessionEnabled"))
    StartBuildInput.add_member(:fleet_override, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectFleet, name: "fleetOverride"))
    StartBuildInput.add_member(:auto_retry_limit_override, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "autoRetryLimitOverride"))
    StartBuildInput.add_member(:host_kernel_override, ::Smithy::Schema::Shapes::MemberShape.new(target: HostKernel, name: "hostKernelOverride"))
    StartBuildInput.type = Types::StartBuildInput
    StartBuildOutput.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: Build, name: "build"))
    StartBuildOutput.type = Types::StartBuildOutput
    StartCommandExecutionInput.add_member(:sandbox_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sandboxId", traits: {"smithy.api#required" => {}}))
    StartCommandExecutionInput.add_member(:command, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "command", traits: {"smithy.api#required" => {}}))
    StartCommandExecutionInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandType, name: "type"))
    StartCommandExecutionInput.type = Types::StartCommandExecutionInput
    StartCommandExecutionOutput.add_member(:command_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: CommandExecution, name: "commandExecution"))
    StartCommandExecutionOutput.type = Types::StartCommandExecutionOutput
    StartSandboxConnectionInput.add_member(:sandbox_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sandboxId", traits: {"smithy.api#required" => {}}))
    StartSandboxConnectionInput.type = Types::StartSandboxConnectionInput
    StartSandboxConnectionOutput.add_member(:ssm_session, ::Smithy::Schema::Shapes::MemberShape.new(target: SSMSession, name: "ssmSession"))
    StartSandboxConnectionOutput.type = Types::StartSandboxConnectionOutput
    StartSandboxInput.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectName"))
    StartSandboxInput.add_member(:idempotency_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveString, name: "idempotencyToken"))
    StartSandboxInput.type = Types::StartSandboxInput
    StartSandboxOutput.add_member(:sandbox, ::Smithy::Schema::Shapes::MemberShape.new(target: Sandbox, name: "sandbox"))
    StartSandboxOutput.type = Types::StartSandboxOutput
    StatusType.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    StatusType.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StatusType.add_member(:fault, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAULT", traits: {"smithy.api#enumValue" => "FAULT"}))
    StatusType.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    StatusType.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    StatusType.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    StopBuildBatchInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id", traits: {"smithy.api#required" => {}}))
    StopBuildBatchInput.type = Types::StopBuildBatchInput
    StopBuildBatchOutput.add_member(:build_batch, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildBatch, name: "buildBatch"))
    StopBuildBatchOutput.type = Types::StopBuildBatchOutput
    StopBuildInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id", traits: {"smithy.api#required" => {}}))
    StopBuildInput.type = Types::StopBuildInput
    StopBuildOutput.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: Build, name: "build"))
    StopBuildOutput.type = Types::StopBuildOutput
    StopSandboxInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "id", traits: {"smithy.api#required" => {}}))
    StopSandboxInput.type = Types::StopSandboxInput
    StopSandboxOutput.add_member(:sandbox, ::Smithy::Schema::Shapes::MemberShape.new(target: Sandbox, name: "sandbox"))
    StopSandboxOutput.type = Types::StopSandboxOutput
    Subnets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyInput, name: "key"))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueInput, name: "value"))
    Tag.type = Types::Tag
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TargetTrackingScalingConfiguration.add_member(:metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetScalingMetricType, name: "metricType"))
    TargetTrackingScalingConfiguration.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperDouble, name: "targetValue"))
    TargetTrackingScalingConfiguration.type = Types::TargetTrackingScalingConfiguration
    TargetTrackingScalingConfigurations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingScalingConfiguration, name: "member"))
    TestCase.add_member(:report_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reportArn"))
    TestCase.add_member(:test_raw_data_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "testRawDataPath"))
    TestCase.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "prefix"))
    TestCase.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    TestCase.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    TestCase.add_member(:duration_in_nano_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperLong, name: "durationInNanoSeconds"))
    TestCase.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    TestCase.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expired"))
    TestCase.add_member(:test_suite_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "testSuiteName"))
    TestCase.type = Types::TestCase
    TestCaseFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "status"))
    TestCaseFilter.add_member(:keyword, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "keyword"))
    TestCaseFilter.type = Types::TestCaseFilter
    TestCases.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestCase, name: "member"))
    TestReportSummary.add_member(:total, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "total", traits: {"smithy.api#required" => {}}))
    TestReportSummary.add_member(:status_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportStatusCounts, name: "statusCounts", traits: {"smithy.api#required" => {}}))
    TestReportSummary.add_member(:duration_in_nano_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperLong, name: "durationInNanoSeconds", traits: {"smithy.api#required" => {}}))
    TestReportSummary.type = Types::TestReportSummary
    UpdateFleetInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateFleetInput.add_member(:base_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetCapacity, name: "baseCapacity"))
    UpdateFleetInput.add_member(:environment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentType, name: "environmentType"))
    UpdateFleetInput.add_member(:compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeType, name: "computeType"))
    UpdateFleetInput.add_member(:compute_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeConfiguration, name: "computeConfiguration"))
    UpdateFleetInput.add_member(:scaling_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingConfigurationInput, name: "scalingConfiguration"))
    UpdateFleetInput.add_member(:overflow_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetOverflowBehavior, name: "overflowBehavior"))
    UpdateFleetInput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    UpdateFleetInput.add_member(:proxy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProxyConfiguration, name: "proxyConfiguration"))
    UpdateFleetInput.add_member(:image_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "imageId"))
    UpdateFleetInput.add_member(:fleet_service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fleetServiceRole"))
    UpdateFleetInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    UpdateFleetInput.type = Types::UpdateFleetInput
    UpdateFleetOutput.add_member(:fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: Fleet, name: "fleet"))
    UpdateFleetOutput.type = Types::UpdateFleetOutput
    UpdateProjectInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateProjectInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectDescription, name: "description"))
    UpdateProjectInput.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSource, name: "source"))
    UpdateProjectInput.add_member(:secondary_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSources, name: "secondarySources"))
    UpdateProjectInput.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceVersion"))
    UpdateProjectInput.add_member(:secondary_source_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSecondarySourceVersions, name: "secondarySourceVersions"))
    UpdateProjectInput.add_member(:artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArtifacts, name: "artifacts"))
    UpdateProjectInput.add_member(:secondary_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectArtifactsList, name: "secondaryArtifacts"))
    UpdateProjectInput.add_member(:cache, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectCache, name: "cache"))
    UpdateProjectInput.add_member(:environment, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectEnvironment, name: "environment"))
    UpdateProjectInput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "serviceRole"))
    UpdateProjectInput.add_member(:timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildTimeOut, name: "timeoutInMinutes"))
    UpdateProjectInput.add_member(:queued_timeout_in_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeOut, name: "queuedTimeoutInMinutes"))
    UpdateProjectInput.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "encryptionKey"))
    UpdateProjectInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    UpdateProjectInput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    UpdateProjectInput.add_member(:badge_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "badgeEnabled"))
    UpdateProjectInput.add_member(:logs_config, ::Smithy::Schema::Shapes::MemberShape.new(target: LogsConfig, name: "logsConfig"))
    UpdateProjectInput.add_member(:file_system_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectFileSystemLocations, name: "fileSystemLocations"))
    UpdateProjectInput.add_member(:build_batch_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectBuildBatchConfig, name: "buildBatchConfig"))
    UpdateProjectInput.add_member(:concurrent_build_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "concurrentBuildLimit"))
    UpdateProjectInput.add_member(:auto_retry_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperInt, name: "autoRetryLimit"))
    UpdateProjectInput.type = Types::UpdateProjectInput
    UpdateProjectOutput.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: Project, name: "project"))
    UpdateProjectOutput.type = Types::UpdateProjectOutput
    UpdateProjectVisibilityInput.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectArn", traits: {"smithy.api#required" => {}}))
    UpdateProjectVisibilityInput.add_member(:project_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectVisibilityType, name: "projectVisibility", traits: {"smithy.api#required" => {}}))
    UpdateProjectVisibilityInput.add_member(:resource_access_role, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceAccessRole"))
    UpdateProjectVisibilityInput.type = Types::UpdateProjectVisibilityInput
    UpdateProjectVisibilityOutput.add_member(:project_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "projectArn"))
    UpdateProjectVisibilityOutput.add_member(:public_project_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "publicProjectAlias"))
    UpdateProjectVisibilityOutput.add_member(:project_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectVisibilityType, name: "projectVisibility"))
    UpdateProjectVisibilityOutput.type = Types::UpdateProjectVisibilityOutput
    UpdateReportGroupInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "arn", traits: {"smithy.api#required" => {}}))
    UpdateReportGroupInput.add_member(:export_config, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportExportConfig, name: "exportConfig"))
    UpdateReportGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    UpdateReportGroupInput.type = Types::UpdateReportGroupInput
    UpdateReportGroupOutput.add_member(:report_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportGroup, name: "reportGroup"))
    UpdateReportGroupOutput.type = Types::UpdateReportGroupOutput
    UpdateWebhookInput.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "projectName", traits: {"smithy.api#required" => {}}))
    UpdateWebhookInput.add_member(:branch_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "branchFilter"))
    UpdateWebhookInput.add_member(:rotate_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "rotateSecret", traits: {"smithy.api#default" => false}))
    UpdateWebhookInput.add_member(:filter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterGroups, name: "filterGroups"))
    UpdateWebhookInput.add_member(:build_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookBuildType, name: "buildType"))
    UpdateWebhookInput.add_member(:pull_request_build_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestBuildPolicy, name: "pullRequestBuildPolicy"))
    UpdateWebhookInput.type = Types::UpdateWebhookInput
    UpdateWebhookOutput.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: Webhook, name: "webhook"))
    UpdateWebhookOutput.type = Types::UpdateWebhookOutput
    VpcConfig.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "vpcId"))
    VpcConfig.add_member(:subnets, ::Smithy::Schema::Shapes::MemberShape.new(target: Subnets, name: "subnets"))
    VpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "securityGroupIds"))
    VpcConfig.type = Types::VpcConfig
    Webhook.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "url"))
    Webhook.add_member(:payload_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "payloadUrl"))
    Webhook.add_member(:secret, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "secret"))
    Webhook.add_member(:branch_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "branchFilter"))
    Webhook.add_member(:filter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterGroups, name: "filterGroups"))
    Webhook.add_member(:build_type, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookBuildType, name: "buildType"))
    Webhook.add_member(:manual_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "manualCreation"))
    Webhook.add_member(:last_modified_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastModifiedSecret"))
    Webhook.add_member(:scope_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeConfiguration, name: "scopeConfiguration"))
    Webhook.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookStatus, name: "status"))
    Webhook.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statusMessage"))
    Webhook.add_member(:pull_request_build_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestBuildPolicy, name: "pullRequestBuildPolicy"))
    Webhook.type = Types::Webhook
    WebhookBuildType.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD", traits: {"smithy.api#enumValue" => "BUILD"}))
    WebhookBuildType.add_member(:build_batch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD_BATCH", traits: {"smithy.api#enumValue" => "BUILD_BATCH"}))
    WebhookBuildType.add_member(:runner_buildkite_build, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNER_BUILDKITE_BUILD", traits: {"smithy.api#enumValue" => "RUNNER_BUILDKITE_BUILD"}))
    WebhookFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookFilterType, name: "type", traits: {"smithy.api#required" => {}}))
    WebhookFilter.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pattern", traits: {"smithy.api#required" => {}}))
    WebhookFilter.add_member(:exclude_matched_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: WrapperBoolean, name: "excludeMatchedPattern"))
    WebhookFilter.type = Types::WebhookFilter
    WebhookFilterType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVENT", traits: {"smithy.api#enumValue" => "EVENT"}))
    WebhookFilterType.add_member(:base_ref, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BASE_REF", traits: {"smithy.api#enumValue" => "BASE_REF"}))
    WebhookFilterType.add_member(:head_ref, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEAD_REF", traits: {"smithy.api#enumValue" => "HEAD_REF"}))
    WebhookFilterType.add_member(:actor_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTOR_ACCOUNT_ID", traits: {"smithy.api#enumValue" => "ACTOR_ACCOUNT_ID"}))
    WebhookFilterType.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_PATH", traits: {"smithy.api#enumValue" => "FILE_PATH"}))
    WebhookFilterType.add_member(:commit_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMIT_MESSAGE", traits: {"smithy.api#enumValue" => "COMMIT_MESSAGE"}))
    WebhookFilterType.add_member(:workflow_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKFLOW_NAME", traits: {"smithy.api#enumValue" => "WORKFLOW_NAME"}))
    WebhookFilterType.add_member(:tag_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAG_NAME", traits: {"smithy.api#enumValue" => "TAG_NAME"}))
    WebhookFilterType.add_member(:release_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RELEASE_NAME", traits: {"smithy.api#enumValue" => "RELEASE_NAME"}))
    WebhookFilterType.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPOSITORY_NAME", traits: {"smithy.api#enumValue" => "REPOSITORY_NAME"}))
    WebhookFilterType.add_member(:organization_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORGANIZATION_NAME", traits: {"smithy.api#enumValue" => "ORGANIZATION_NAME"}))
    WebhookScopeType.add_member(:github_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB_ORGANIZATION", traits: {"smithy.api#enumValue" => "GITHUB_ORGANIZATION"}))
    WebhookScopeType.add_member(:github_global, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB_GLOBAL", traits: {"smithy.api#enumValue" => "GITHUB_GLOBAL"}))
    WebhookScopeType.add_member(:gitlab_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB_GROUP", traits: {"smithy.api#enumValue" => "GITLAB_GROUP"}))
    WebhookStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    WebhookStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    WebhookStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    WebhookStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))

    CodeBuild20161006 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codebuild#CodeBuild_20161006"
      service.name = "CodeBuild20161006"
      service.version = "2016-10-06"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeBuild", "arnNamespace" => "codebuild", "cloudFormationName" => "CodeBuild", "cloudTrailEventSource" => "codebuild.amazonaws.com", "endpointPrefix" => "codebuild"}, "aws.auth#sigv4" => {"name" => "codebuild"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS CodeBuild", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://codebuild-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codebuild-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codebuild.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://codebuild.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:batch_delete_builds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchDeleteBuilds"
        operation.name = "BatchDeleteBuilds"
        operation.input = BatchDeleteBuildsInput
        operation.output = BatchDeleteBuildsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_build_batches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetBuildBatches"
        operation.name = "BatchGetBuildBatches"
        operation.input = BatchGetBuildBatchesInput
        operation.output = BatchGetBuildBatchesOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_builds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetBuilds"
        operation.name = "BatchGetBuilds"
        operation.input = BatchGetBuildsInput
        operation.output = BatchGetBuildsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_command_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetCommandExecutions"
        operation.name = "BatchGetCommandExecutions"
        operation.input = BatchGetCommandExecutionsInput
        operation.output = BatchGetCommandExecutionsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetFleets"
        operation.name = "BatchGetFleets"
        operation.input = BatchGetFleetsInput
        operation.output = BatchGetFleetsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetProjects"
        operation.name = "BatchGetProjects"
        operation.input = BatchGetProjectsInput
        operation.output = BatchGetProjectsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_report_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetReportGroups"
        operation.name = "BatchGetReportGroups"
        operation.input = BatchGetReportGroupsInput
        operation.output = BatchGetReportGroupsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetReports"
        operation.name = "BatchGetReports"
        operation.input = BatchGetReportsInput
        operation.output = BatchGetReportsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:batch_get_sandboxes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#BatchGetSandboxes"
        operation.name = "BatchGetSandboxes"
        operation.input = BatchGetSandboxesInput
        operation.output = BatchGetSandboxesOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:create_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#CreateFleet"
        operation.name = "CreateFleet"
        operation.input = CreateFleetInput
        operation.output = CreateFleetOutput
        operation.errors << AccountLimitExceededException
        operation.errors << InvalidInputException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:create_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#CreateProject"
        operation.name = "CreateProject"
        operation.input = CreateProjectInput
        operation.output = CreateProjectOutput
        operation.errors << AccountLimitExceededException
        operation.errors << InvalidInputException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:create_report_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#CreateReportGroup"
        operation.name = "CreateReportGroup"
        operation.input = CreateReportGroupInput
        operation.output = CreateReportGroupOutput
        operation.errors << AccountLimitExceededException
        operation.errors << InvalidInputException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:create_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#CreateWebhook"
        operation.name = "CreateWebhook"
        operation.input = CreateWebhookInput
        operation.output = CreateWebhookOutput
        operation.errors << InvalidInputException
        operation.errors << OAuthProviderException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_build_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteBuildBatch"
        operation.name = "DeleteBuildBatch"
        operation.input = DeleteBuildBatchInput
        operation.output = DeleteBuildBatchOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:delete_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteFleet"
        operation.name = "DeleteFleet"
        operation.input = DeleteFleetInput
        operation.output = DeleteFleetOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:delete_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteProject"
        operation.name = "DeleteProject"
        operation.input = DeleteProjectInput
        operation.output = DeleteProjectOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:delete_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteReport"
        operation.name = "DeleteReport"
        operation.input = DeleteReportInput
        operation.output = DeleteReportOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:delete_report_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteReportGroup"
        operation.name = "DeleteReportGroup"
        operation.input = DeleteReportGroupInput
        operation.output = DeleteReportGroupOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:delete_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteResourcePolicy"
        operation.name = "DeleteResourcePolicy"
        operation.input = DeleteResourcePolicyInput
        operation.output = DeleteResourcePolicyOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:delete_source_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteSourceCredentials"
        operation.name = "DeleteSourceCredentials"
        operation.input = DeleteSourceCredentialsInput
        operation.output = DeleteSourceCredentialsOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DeleteWebhook"
        operation.name = "DeleteWebhook"
        operation.input = DeleteWebhookInput
        operation.output = DeleteWebhookOutput
        operation.errors << InvalidInputException
        operation.errors << OAuthProviderException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_code_coverages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DescribeCodeCoverages"
        operation.name = "DescribeCodeCoverages"
        operation.input = DescribeCodeCoveragesInput
        operation.output = DescribeCodeCoveragesOutput
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeCodeCoverages.new
      end)
      service.add_operation(:describe_test_cases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#DescribeTestCases"
        operation.name = "DescribeTestCases"
        operation.input = DescribeTestCasesInput
        operation.output = DescribeTestCasesOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeTestCases.new
      end)
      service.add_operation(:get_report_group_trend, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#GetReportGroupTrend"
        operation.name = "GetReportGroupTrend"
        operation.input = GetReportGroupTrendInput
        operation.output = GetReportGroupTrendOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#GetResourcePolicy"
        operation.name = "GetResourcePolicy"
        operation.input = GetResourcePolicyInput
        operation.output = GetResourcePolicyOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:import_source_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ImportSourceCredentials"
        operation.name = "ImportSourceCredentials"
        operation.input = ImportSourceCredentialsInput
        operation.output = ImportSourceCredentialsOutput
        operation.errors << AccountLimitExceededException
        operation.errors << InvalidInputException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:invalidate_project_cache, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#InvalidateProjectCache"
        operation.name = "InvalidateProjectCache"
        operation.input = InvalidateProjectCacheInput
        operation.output = InvalidateProjectCacheOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_build_batches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListBuildBatches"
        operation.name = "ListBuildBatches"
        operation.input = ListBuildBatchesInput
        operation.output = ListBuildBatchesOutput
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::ListBuildBatches.new
      end)
      service.add_operation(:list_build_batches_for_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListBuildBatchesForProject"
        operation.name = "ListBuildBatchesForProject"
        operation.input = ListBuildBatchesForProjectInput
        operation.output = ListBuildBatchesForProjectOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListBuildBatchesForProject.new
      end)
      service.add_operation(:list_builds, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListBuilds"
        operation.name = "ListBuilds"
        operation.input = ListBuildsInput
        operation.output = ListBuildsOutput
        operation.errors << InvalidInputException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "ListBuildsSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::ListBuilds.new
      end)
      service.add_operation(:list_builds_for_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListBuildsForProject"
        operation.name = "ListBuildsForProject"
        operation.input = ListBuildsForProjectInput
        operation.output = ListBuildsForProjectOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListBuildsForProject.new
      end)
      service.add_operation(:list_command_executions_for_sandbox, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListCommandExecutionsForSandbox"
        operation.name = "ListCommandExecutionsForSandbox"
        operation.input = ListCommandExecutionsForSandboxInput
        operation.output = ListCommandExecutionsForSandboxOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListCommandExecutionsForSandbox.new
      end)
      service.add_operation(:list_curated_environment_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListCuratedEnvironmentImages"
        operation.name = "ListCuratedEnvironmentImages"
        operation.input = ListCuratedEnvironmentImagesInput
        operation.output = ListCuratedEnvironmentImagesOutput
        operation.traits = {}
      end)
      service.add_operation(:list_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListFleets"
        operation.name = "ListFleets"
        operation.input = ListFleetsInput
        operation.output = ListFleetsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::ListFleets.new
      end)
      service.add_operation(:list_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListProjects"
        operation.name = "ListProjects"
        operation.input = ListProjectsInput
        operation.output = ListProjectsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::ListProjects.new
      end)
      service.add_operation(:list_report_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListReportGroups"
        operation.name = "ListReportGroups"
        operation.input = ListReportGroupsInput
        operation.output = ListReportGroupsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::ListReportGroups.new
      end)
      service.add_operation(:list_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListReports"
        operation.name = "ListReports"
        operation.input = ListReportsInput
        operation.output = ListReportsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::ListReports.new
      end)
      service.add_operation(:list_reports_for_report_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListReportsForReportGroup"
        operation.name = "ListReportsForReportGroup"
        operation.input = ListReportsForReportGroupInput
        operation.output = ListReportsForReportGroupOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListReportsForReportGroup.new
      end)
      service.add_operation(:list_sandboxes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListSandboxes"
        operation.name = "ListSandboxes"
        operation.input = ListSandboxesInput
        operation.output = ListSandboxesOutput
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSandboxes.new
      end)
      service.add_operation(:list_sandboxes_for_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListSandboxesForProject"
        operation.name = "ListSandboxesForProject"
        operation.input = ListSandboxesForProjectInput
        operation.output = ListSandboxesForProjectOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSandboxesForProject.new
      end)
      service.add_operation(:list_shared_projects, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListSharedProjects"
        operation.name = "ListSharedProjects"
        operation.input = ListSharedProjectsInput
        operation.output = ListSharedProjectsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSharedProjects.new
      end)
      service.add_operation(:list_shared_report_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListSharedReportGroups"
        operation.name = "ListSharedReportGroups"
        operation.input = ListSharedReportGroupsInput
        operation.output = ListSharedReportGroupsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
        operation[:paginator] = Paginators::ListSharedReportGroups.new
      end)
      service.add_operation(:list_source_credentials, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#ListSourceCredentials"
        operation.name = "ListSourceCredentials"
        operation.input = ListSourceCredentialsInput
        operation.output = ListSourceCredentialsOutput
        operation.errors << InvalidInputException
        operation.traits = {}
      end)
      service.add_operation(:put_resource_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#PutResourcePolicy"
        operation.name = "PutResourcePolicy"
        operation.input = PutResourcePolicyInput
        operation.output = PutResourcePolicyOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:retry_build, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#RetryBuild"
        operation.name = "RetryBuild"
        operation.input = RetryBuildInput
        operation.output = RetryBuildOutput
        operation.errors << AccountLimitExceededException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:retry_build_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#RetryBuildBatch"
        operation.name = "RetryBuildBatch"
        operation.input = RetryBuildBatchInput
        operation.output = RetryBuildBatchOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_build, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StartBuild"
        operation.name = "StartBuild"
        operation.input = StartBuildInput
        operation.output = StartBuildOutput
        operation.errors << AccountLimitExceededException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_build_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StartBuildBatch"
        operation.name = "StartBuildBatch"
        operation.input = StartBuildBatchInput
        operation.output = StartBuildBatchOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_command_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StartCommandExecution"
        operation.name = "StartCommandExecution"
        operation.input = StartCommandExecutionInput
        operation.output = StartCommandExecutionOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_sandbox, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StartSandbox"
        operation.name = "StartSandbox"
        operation.input = StartSandboxInput
        operation.output = StartSandboxOutput
        operation.errors << AccountSuspendedException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_sandbox_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StartSandboxConnection"
        operation.name = "StartSandboxConnection"
        operation.input = StartSandboxConnectionInput
        operation.output = StartSandboxConnectionOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_build, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StopBuild"
        operation.name = "StopBuild"
        operation.input = StopBuildInput
        operation.output = StopBuildOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_build_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StopBuildBatch"
        operation.name = "StopBuildBatch"
        operation.input = StopBuildBatchInput
        operation.output = StopBuildBatchOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_sandbox, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#StopSandbox"
        operation.name = "StopSandbox"
        operation.input = StopSandboxInput
        operation.output = StopSandboxOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#UpdateFleet"
        operation.name = "UpdateFleet"
        operation.input = UpdateFleetInput
        operation.output = UpdateFleetOutput
        operation.errors << AccountLimitExceededException
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_project, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#UpdateProject"
        operation.name = "UpdateProject"
        operation.input = UpdateProjectInput
        operation.output = UpdateProjectOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_project_visibility, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#UpdateProjectVisibility"
        operation.name = "UpdateProjectVisibility"
        operation.input = UpdateProjectVisibilityInput
        operation.output = UpdateProjectVisibilityOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_report_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#UpdateReportGroup"
        operation.name = "UpdateReportGroup"
        operation.input = UpdateReportGroupInput
        operation.output = UpdateReportGroupOutput
        operation.errors << InvalidInputException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codebuild#UpdateWebhook"
        operation.name = "UpdateWebhook"
        operation.input = UpdateWebhookInput
        operation.output = UpdateWebhookOutput
        operation.errors << InvalidInputException
        operation.errors << OAuthProviderException
        operation.errors << ResourceNotFoundException
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
