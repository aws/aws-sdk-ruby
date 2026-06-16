# frozen_string_literal: true

# This is generated code!

module Aws::Amplify
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#AccessToken", name: "AccessToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?s).+$", "smithy.api#sensitive" => {}})
    ActiveJobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#ActiveJobId", name: "ActiveJobId", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    App = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#App", name: "App")
    AppArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#AppArn", name: "AppArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    AppId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#AppId", name: "AppId", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^d[a-z0-9]+$"})
    Apps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#Apps", name: "Apps")
    Artifact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#Artifact", name: "Artifact")
    ArtifactFileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#ArtifactFileName", name: "ArtifactFileName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ArtifactId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#ArtifactId", name: "ArtifactId", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    ArtifactUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#ArtifactUrl", name: "ArtifactUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Artifacts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#Artifacts", name: "Artifacts")
    ArtifactsUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#ArtifactsUrl", name: "ArtifactsUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    AssociatedResource = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#AssociatedResource", name: "AssociatedResource", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AssociatedResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#AssociatedResources", name: "AssociatedResources")
    AutoBranchCreationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#AutoBranchCreationConfig", name: "AutoBranchCreationConfig")
    AutoBranchCreationPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#AutoBranchCreationPattern", name: "AutoBranchCreationPattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?s).+$"})
    AutoBranchCreationPatterns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#AutoBranchCreationPatterns", name: "AutoBranchCreationPatterns")
    AutoSubDomainCreationPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#AutoSubDomainCreationPattern", name: "AutoSubDomainCreationPattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?s).+$"})
    AutoSubDomainCreationPatterns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#AutoSubDomainCreationPatterns", name: "AutoSubDomainCreationPatterns")
    AutoSubDomainIAMRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#AutoSubDomainIAMRole", name: "AutoSubDomainIAMRole", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^$|^arn:aws:iam::\\d{12}:role.+$"})
    Backend = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#Backend", name: "Backend")
    BackendEnvironment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#BackendEnvironment", name: "BackendEnvironment")
    BackendEnvironmentArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#BackendEnvironmentArn", name: "BackendEnvironmentArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    BackendEnvironments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#BackendEnvironments", name: "BackendEnvironments")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BasicAuthCredentials = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#BasicAuthCredentials", name: "BasicAuthCredentials", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}, "smithy.api#pattern" => "^(?s)", "smithy.api#sensitive" => {}})
    Branch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#Branch", name: "Branch")
    BranchArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#BranchArn", name: "BranchArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    BranchName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#BranchName", name: "BranchName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?s).+$"})
    Branches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#Branches", name: "Branches", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    BuildComputeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#BuildComputeType", name: "BuildComputeType")
    BuildSpec = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#BuildSpec", name: "BuildSpec", traits: {"smithy.api#length" => {"min" => 1, "max" => 25000}, "smithy.api#pattern" => "^(?s).+$", "smithy.api#sensitive" => {}})
    CacheConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CacheConfig", name: "CacheConfig")
    CacheConfigType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#CacheConfigType", name: "CacheConfigType")
    Certificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#Certificate", name: "Certificate")
    CertificateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#CertificateArn", name: "CertificateArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^arn:aws:acm:[a-z0-9-]+:\\d{12}:certificate\\/.+$"})
    CertificateSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CertificateSettings", name: "CertificateSettings")
    CertificateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#CertificateType", name: "CertificateType")
    CertificateVerificationDNSRecord = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#CertificateVerificationDNSRecord", name: "CertificateVerificationDNSRecord", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Code = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#Code", name: "Code")
    CommitId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#CommitId", name: "CommitId", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    CommitMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#CommitMessage", name: "CommitMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    CommitTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.amplify#CommitTime", name: "CommitTime")
    ComputeRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#ComputeRoleArn", name: "ComputeRoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    Condition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#Condition", name: "Condition", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(?s)"})
    Context = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#Context", name: "Context")
    CreateAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateAppRequest", name: "CreateAppRequest")
    CreateAppResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateAppResult", name: "CreateAppResult")
    CreateBackendEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateBackendEnvironmentRequest", name: "CreateBackendEnvironmentRequest")
    CreateBackendEnvironmentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateBackendEnvironmentResult", name: "CreateBackendEnvironmentResult")
    CreateBranchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateBranchRequest", name: "CreateBranchRequest")
    CreateBranchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateBranchResult", name: "CreateBranchResult")
    CreateDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateDeploymentRequest", name: "CreateDeploymentRequest")
    CreateDeploymentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateDeploymentResult", name: "CreateDeploymentResult")
    CreateDomainAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateDomainAssociationRequest", name: "CreateDomainAssociationRequest")
    CreateDomainAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateDomainAssociationResult", name: "CreateDomainAssociationResult")
    CreateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.amplify#CreateTime", name: "CreateTime")
    CreateWebhookRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateWebhookRequest", name: "CreateWebhookRequest")
    CreateWebhookResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CreateWebhookResult", name: "CreateWebhookResult")
    CustomDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#CustomDomain", name: "CustomDomain", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    CustomDomains = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#CustomDomains", name: "CustomDomains", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    CustomHeaders = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#CustomHeaders", name: "CustomHeaders", traits: {"smithy.api#length" => {"min" => 0, "max" => 25000}, "smithy.api#pattern" => "^(?s)"})
    CustomRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#CustomRule", name: "CustomRule")
    CustomRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#CustomRules", name: "CustomRules")
    DNSRecord = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#DNSRecord", name: "DNSRecord", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    DefaultDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#DefaultDomain", name: "DefaultDomain", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    DeleteAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteAppRequest", name: "DeleteAppRequest")
    DeleteAppResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteAppResult", name: "DeleteAppResult")
    DeleteBackendEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteBackendEnvironmentRequest", name: "DeleteBackendEnvironmentRequest")
    DeleteBackendEnvironmentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteBackendEnvironmentResult", name: "DeleteBackendEnvironmentResult")
    DeleteBranchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteBranchRequest", name: "DeleteBranchRequest")
    DeleteBranchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteBranchResult", name: "DeleteBranchResult")
    DeleteDomainAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteDomainAssociationRequest", name: "DeleteDomainAssociationRequest")
    DeleteDomainAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteDomainAssociationResult", name: "DeleteDomainAssociationResult")
    DeleteJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteJobRequest", name: "DeleteJobRequest")
    DeleteJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteJobResult", name: "DeleteJobResult")
    DeleteWebhookRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteWebhookRequest", name: "DeleteWebhookRequest")
    DeleteWebhookResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DeleteWebhookResult", name: "DeleteWebhookResult")
    DependentServiceFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DependentServiceFailureException", name: "DependentServiceFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    DeploymentArtifacts = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#DeploymentArtifacts", name: "DeploymentArtifacts", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(?s).+$"})
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    DomainAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#DomainAssociation", name: "DomainAssociation")
    DomainAssociationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#DomainAssociationArn", name: "DomainAssociationArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    DomainAssociations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#DomainAssociations", name: "DomainAssociations", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])(\\.)?$"})
    DomainPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#DomainPrefix", name: "DomainPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    DomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#DomainStatus", name: "DomainStatus")
    EnableAutoBranchCreation = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.amplify#EnableAutoBranchCreation", name: "EnableAutoBranchCreation")
    EnableAutoBuild = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.amplify#EnableAutoBuild", name: "EnableAutoBuild")
    EnableAutoSubDomain = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.amplify#EnableAutoSubDomain", name: "EnableAutoSubDomain")
    EnableBasicAuth = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.amplify#EnableBasicAuth", name: "EnableBasicAuth")
    EnableBranchAutoBuild = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.amplify#EnableBranchAutoBuild", name: "EnableBranchAutoBuild")
    EnableBranchAutoDeletion = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.amplify#EnableBranchAutoDeletion", name: "EnableBranchAutoDeletion")
    EnableNotification = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.amplify#EnableNotification", name: "EnableNotification")
    EnablePerformanceMode = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.amplify#EnablePerformanceMode", name: "EnablePerformanceMode")
    EnablePullRequestPreview = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.amplify#EnablePullRequestPreview", name: "EnablePullRequestPreview")
    EnableSkewProtection = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.amplify#EnableSkewProtection", name: "EnableSkewProtection")
    EndTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.amplify#EndTime", name: "EndTime")
    EnvKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#EnvKey", name: "EnvKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    EnvValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#EnvValue", name: "EnvValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 5500}, "smithy.api#pattern" => "^(?s)"})
    EnvironmentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#EnvironmentName", name: "EnvironmentName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?s).+$"})
    EnvironmentVariables = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplify#EnvironmentVariables", name: "EnvironmentVariables")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    FileMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplify#FileMap", name: "FileMap")
    FileName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#FileName", name: "FileName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    FileUploadUrls = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplify#FileUploadUrls", name: "FileUploadUrls")
    Framework = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#Framework", name: "Framework", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    GenerateAccessLogsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GenerateAccessLogsRequest", name: "GenerateAccessLogsRequest")
    GenerateAccessLogsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GenerateAccessLogsResult", name: "GenerateAccessLogsResult")
    GetAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetAppRequest", name: "GetAppRequest")
    GetAppResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetAppResult", name: "GetAppResult")
    GetArtifactUrlRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetArtifactUrlRequest", name: "GetArtifactUrlRequest")
    GetArtifactUrlResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetArtifactUrlResult", name: "GetArtifactUrlResult")
    GetBackendEnvironmentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetBackendEnvironmentRequest", name: "GetBackendEnvironmentRequest")
    GetBackendEnvironmentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetBackendEnvironmentResult", name: "GetBackendEnvironmentResult")
    GetBranchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetBranchRequest", name: "GetBranchRequest")
    GetBranchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetBranchResult", name: "GetBranchResult")
    GetDomainAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetDomainAssociationRequest", name: "GetDomainAssociationRequest")
    GetDomainAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetDomainAssociationResult", name: "GetDomainAssociationResult")
    GetJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetJobRequest", name: "GetJobRequest")
    GetJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetJobResult", name: "GetJobResult")
    GetWebhookRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetWebhookRequest", name: "GetWebhookRequest")
    GetWebhookResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#GetWebhookResult", name: "GetWebhookResult")
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Job = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#Job", name: "Job")
    JobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#JobArn", name: "JobArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    JobConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#JobConfig", name: "JobConfig")
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[0-9]+$"})
    JobReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#JobReason", name: "JobReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#JobStatus", name: "JobStatus")
    JobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#JobSummaries", name: "JobSummaries")
    JobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#JobSummary", name: "JobSummary")
    JobType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#JobType", name: "JobType", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    LastDeployTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.amplify#LastDeployTime", name: "LastDeployTime")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListAppsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListAppsRequest", name: "ListAppsRequest")
    ListAppsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListAppsResult", name: "ListAppsResult")
    ListArtifactsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListArtifactsRequest", name: "ListArtifactsRequest")
    ListArtifactsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListArtifactsResult", name: "ListArtifactsResult")
    ListBackendEnvironmentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListBackendEnvironmentsRequest", name: "ListBackendEnvironmentsRequest")
    ListBackendEnvironmentsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListBackendEnvironmentsResult", name: "ListBackendEnvironmentsResult")
    ListBranchesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListBranchesRequest", name: "ListBranchesRequest")
    ListBranchesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListBranchesResult", name: "ListBranchesResult")
    ListDomainAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListDomainAssociationsRequest", name: "ListDomainAssociationsRequest")
    ListDomainAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListDomainAssociationsResult", name: "ListDomainAssociationsResult")
    ListJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListJobsRequest", name: "ListJobsRequest")
    ListJobsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListJobsResult", name: "ListJobsResult")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListWebhooksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListWebhooksRequest", name: "ListWebhooksRequest")
    ListWebhooksResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ListWebhooksResult", name: "ListWebhooksResult")
    LogUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#LogUrl", name: "LogUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    MD5Hash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#MD5Hash", name: "MD5Hash", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^(?s)"})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.amplify#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 50}})
    MaxResultsForListApps = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.amplify#MaxResultsForListApps", name: "MaxResultsForListApps", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?s).+$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}, "smithy.api#pattern" => "^(?s)"})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OauthToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#OauthToken", name: "OauthToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)", "smithy.api#sensitive" => {}})
    Platform = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#Platform", name: "Platform")
    ProductionBranch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ProductionBranch", name: "ProductionBranch")
    PullRequestEnvironmentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#PullRequestEnvironmentName", name: "PullRequestEnvironmentName", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}, "smithy.api#pattern" => "^(?s)"})
    Repository = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#Repository", name: "Repository", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    RepositoryCloneMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#RepositoryCloneMethod", name: "RepositoryCloneMethod")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:amplify:"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Screenshots = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplify#Screenshots", name: "Screenshots")
    ServiceRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#ServiceRoleArn", name: "ServiceRoleArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    Source = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#Source", name: "Source", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?s).+$"})
    SourceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#SourceUrl", name: "SourceUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 3000}, "smithy.api#pattern" => "^(s3|https|http)://"})
    SourceUrlType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#SourceUrlType", name: "SourceUrlType")
    StackArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#StackArn", name: "StackArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:cloudformation:[a-z0-9-]+:\\d{12}:stack/.+/.+$"})
    StackName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#StackName", name: "StackName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?s).+$"})
    Stage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#Stage", name: "Stage")
    StartDeploymentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#StartDeploymentRequest", name: "StartDeploymentRequest")
    StartDeploymentResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#StartDeploymentResult", name: "StartDeploymentResult")
    StartJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#StartJobRequest", name: "StartJobRequest")
    StartJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#StartJobResult", name: "StartJobResult")
    StartTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.amplify#StartTime", name: "StartTime")
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#Status", name: "Status", traits: {"smithy.api#length" => {"min" => 3, "max" => 7}, "smithy.api#pattern" => "^.{3,7}$"})
    StatusReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#StatusReason", name: "StatusReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Step = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#Step", name: "Step")
    StepName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#StepName", name: "StepName", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Steps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#Steps", name: "Steps")
    StopJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#StopJobRequest", name: "StopJobRequest")
    StopJobResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#StopJobResult", name: "StopJobResult")
    SubDomain = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#SubDomain", name: "SubDomain")
    SubDomainSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#SubDomainSetting", name: "SubDomainSetting")
    SubDomainSettings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#SubDomainSettings", name: "SubDomainSettings", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    SubDomains = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#SubDomains", name: "SubDomains", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    TTL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#TTL", name: "TTL", traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^\\d*$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.amplify#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Target = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#Target", name: "Target", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?s).+$"})
    TestArtifactsUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#TestArtifactsUrl", name: "TestArtifactsUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    TestConfigUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#TestConfigUrl", name: "TestConfigUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ThumbnailName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#ThumbnailName", name: "ThumbnailName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThumbnailUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#ThumbnailUrl", name: "ThumbnailUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    TotalNumberOfJobs = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#TotalNumberOfJobs", name: "TotalNumberOfJobs", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAppRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#UpdateAppRequest", name: "UpdateAppRequest")
    UpdateAppResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#UpdateAppResult", name: "UpdateAppResult")
    UpdateBranchRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#UpdateBranchRequest", name: "UpdateBranchRequest")
    UpdateBranchResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#UpdateBranchResult", name: "UpdateBranchResult")
    UpdateDomainAssociationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#UpdateDomainAssociationRequest", name: "UpdateDomainAssociationRequest")
    UpdateDomainAssociationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#UpdateDomainAssociationResult", name: "UpdateDomainAssociationResult")
    UpdateStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#UpdateStatus", name: "UpdateStatus")
    UpdateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.amplify#UpdateTime", name: "UpdateTime")
    UpdateWebhookRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#UpdateWebhookRequest", name: "UpdateWebhookRequest")
    UpdateWebhookResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#UpdateWebhookResult", name: "UpdateWebhookResult")
    UploadUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#UploadUrl", name: "UploadUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Verified = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.amplify#Verified", name: "Verified")
    WafConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#WafConfiguration", name: "WafConfiguration")
    WafStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.amplify#WafStatus", name: "WafStatus")
    WebAclArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#WebAclArn", name: "WebAclArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^arn:aws:wafv2:"})
    Webhook = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.amplify#Webhook", name: "Webhook")
    WebhookArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#WebhookArn", name: "WebhookArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    WebhookId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#WebhookId", name: "WebhookId", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    WebhookUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.amplify#WebhookUrl", name: "WebhookUrl", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Webhooks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.amplify#Webhooks", name: "Webhooks")
    WebhookCreateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.amplify#webhookCreateTime", name: "WebhookCreateTime")

    App.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#required" => {}}))
    App.add_member(:app_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AppArn, location_name: "appArn", traits: {"smithy.api#required" => {}}))
    App.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    App.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    App.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    App.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: Repository, location_name: "repository", traits: {"smithy.api#required" => {}}))
    App.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform", traits: {"smithy.api#required" => {}}))
    App.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateTime, location_name: "createTime", traits: {"smithy.api#required" => {}}))
    App.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    App.add_member(:compute_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeRoleArn, location_name: "computeRoleArn"))
    App.add_member(:iam_service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRoleArn, location_name: "iamServiceRoleArn"))
    App.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, location_name: "environmentVariables", traits: {"smithy.api#required" => {}}))
    App.add_member(:default_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultDomain, location_name: "defaultDomain", traits: {"smithy.api#required" => {}}))
    App.add_member(:enable_branch_auto_build, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBranchAutoBuild, location_name: "enableBranchAutoBuild", traits: {"smithy.api#required" => {}}))
    App.add_member(:enable_branch_auto_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBranchAutoDeletion, location_name: "enableBranchAutoDeletion"))
    App.add_member(:enable_basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBasicAuth, location_name: "enableBasicAuth", traits: {"smithy.api#required" => {}}))
    App.add_member(:basic_auth_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    App.add_member(:custom_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRules, location_name: "customRules"))
    App.add_member(:production_branch, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductionBranch, location_name: "productionBranch"))
    App.add_member(:build_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildSpec, location_name: "buildSpec"))
    App.add_member(:custom_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaders, location_name: "customHeaders"))
    App.add_member(:enable_auto_branch_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAutoBranchCreation, location_name: "enableAutoBranchCreation"))
    App.add_member(:auto_branch_creation_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoBranchCreationPatterns, location_name: "autoBranchCreationPatterns"))
    App.add_member(:auto_branch_creation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoBranchCreationConfig, location_name: "autoBranchCreationConfig"))
    App.add_member(:repository_clone_method, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryCloneMethod, location_name: "repositoryCloneMethod"))
    App.add_member(:cache_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheConfig, location_name: "cacheConfig"))
    App.add_member(:webhook_create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookCreateTime, location_name: "webhookCreateTime"))
    App.add_member(:waf_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WafConfiguration, location_name: "wafConfiguration"))
    App.add_member(:job_config, ::Smithy::Schema::Shapes::MemberShape.new(target: JobConfig, location_name: "jobConfig"))
    App.type = Types::App
    Apps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: App)
    Artifact.add_member(:artifact_file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactFileName, location_name: "artifactFileName", traits: {"smithy.api#required" => {}}))
    Artifact.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, location_name: "artifactId", traits: {"smithy.api#required" => {}}))
    Artifact.type = Types::Artifact
    Artifacts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Artifact)
    AssociatedResources.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResource)
    AutoBranchCreationConfig.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, location_name: "stage"))
    AutoBranchCreationConfig.add_member(:framework, ::Smithy::Schema::Shapes::MemberShape.new(target: Framework, location_name: "framework"))
    AutoBranchCreationConfig.add_member(:enable_auto_build, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAutoBuild, location_name: "enableAutoBuild"))
    AutoBranchCreationConfig.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, location_name: "environmentVariables"))
    AutoBranchCreationConfig.add_member(:basic_auth_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    AutoBranchCreationConfig.add_member(:enable_basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBasicAuth, location_name: "enableBasicAuth"))
    AutoBranchCreationConfig.add_member(:enable_performance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePerformanceMode, location_name: "enablePerformanceMode"))
    AutoBranchCreationConfig.add_member(:build_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildSpec, location_name: "buildSpec"))
    AutoBranchCreationConfig.add_member(:enable_pull_request_preview, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePullRequestPreview, location_name: "enablePullRequestPreview"))
    AutoBranchCreationConfig.add_member(:pull_request_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestEnvironmentName, location_name: "pullRequestEnvironmentName"))
    AutoBranchCreationConfig.type = Types::AutoBranchCreationConfig
    AutoBranchCreationPatterns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutoBranchCreationPattern)
    AutoSubDomainCreationPatterns.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSubDomainCreationPattern)
    Backend.add_member(:stack_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: StackArn, location_name: "stackArn"))
    Backend.type = Types::Backend
    BackendEnvironment.add_member(:backend_environment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackendEnvironmentArn, location_name: "backendEnvironmentArn", traits: {"smithy.api#required" => {}}))
    BackendEnvironment.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, location_name: "environmentName", traits: {"smithy.api#required" => {}}))
    BackendEnvironment.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, location_name: "stackName"))
    BackendEnvironment.add_member(:deployment_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentArtifacts, location_name: "deploymentArtifacts"))
    BackendEnvironment.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateTime, location_name: "createTime", traits: {"smithy.api#required" => {}}))
    BackendEnvironment.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    BackendEnvironment.type = Types::BackendEnvironment
    BackendEnvironments.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BackendEnvironment)
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    BadRequestException.type = Types::BadRequestException
    Branch.add_member(:branch_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchArn, location_name: "branchArn", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    Branch.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, location_name: "stage", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "displayName", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:enable_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableNotification, location_name: "enableNotification", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateTime, location_name: "createTime", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, location_name: "environmentVariables", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:enable_auto_build, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAutoBuild, location_name: "enableAutoBuild", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:enable_skew_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableSkewProtection, location_name: "enableSkewProtection"))
    Branch.add_member(:custom_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomains, location_name: "customDomains", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:framework, ::Smithy::Schema::Shapes::MemberShape.new(target: Framework, location_name: "framework", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:active_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ActiveJobId, location_name: "activeJobId", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:total_number_of_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalNumberOfJobs, location_name: "totalNumberOfJobs", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:enable_basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBasicAuth, location_name: "enableBasicAuth", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:enable_performance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePerformanceMode, location_name: "enablePerformanceMode"))
    Branch.add_member(:thumbnail_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailUrl, location_name: "thumbnailUrl"))
    Branch.add_member(:basic_auth_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    Branch.add_member(:build_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildSpec, location_name: "buildSpec"))
    Branch.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: TTL, location_name: "ttl", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:associated_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedResources, location_name: "associatedResources"))
    Branch.add_member(:enable_pull_request_preview, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePullRequestPreview, location_name: "enablePullRequestPreview", traits: {"smithy.api#required" => {}}))
    Branch.add_member(:pull_request_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestEnvironmentName, location_name: "pullRequestEnvironmentName"))
    Branch.add_member(:destination_branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "destinationBranch"))
    Branch.add_member(:source_branch, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "sourceBranch"))
    Branch.add_member(:backend_environment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackendEnvironmentArn, location_name: "backendEnvironmentArn"))
    Branch.add_member(:backend, ::Smithy::Schema::Shapes::MemberShape.new(target: Backend, location_name: "backend"))
    Branch.add_member(:compute_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeRoleArn, location_name: "computeRoleArn"))
    Branch.type = Types::Branch
    Branches.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Branch)
    BuildComputeType.add_member(:standard_8_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD_8GB", traits: {"smithy.api#enumValue" => "STANDARD_8GB"}))
    BuildComputeType.add_member(:large_16_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LARGE_16GB", traits: {"smithy.api#enumValue" => "LARGE_16GB"}))
    BuildComputeType.add_member(:xlarge_72_gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "XLARGE_72GB", traits: {"smithy.api#enumValue" => "XLARGE_72GB"}))
    CacheConfig.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheConfigType, location_name: "type", traits: {"smithy.api#required" => {}}))
    CacheConfig.type = Types::CacheConfig
    CacheConfigType.add_member(:amplify_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMPLIFY_MANAGED", traits: {"smithy.api#enumValue" => "AMPLIFY_MANAGED"}))
    CacheConfigType.add_member(:amplify_managed_no_cookies, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMPLIFY_MANAGED_NO_COOKIES", traits: {"smithy.api#enumValue" => "AMPLIFY_MANAGED_NO_COOKIES"}))
    Certificate.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, location_name: "type", traits: {"smithy.api#required" => {}}))
    Certificate.add_member(:custom_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, location_name: "customCertificateArn"))
    Certificate.add_member(:certificate_verification_dns_record, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateVerificationDNSRecord, location_name: "certificateVerificationDNSRecord"))
    Certificate.type = Types::Certificate
    CertificateSettings.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateType, location_name: "type", traits: {"smithy.api#required" => {}}))
    CertificateSettings.add_member(:custom_certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateArn, location_name: "customCertificateArn"))
    CertificateSettings.type = Types::CertificateSettings
    CertificateType.add_member(:amplify_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMPLIFY_MANAGED", traits: {"smithy.api#enumValue" => "AMPLIFY_MANAGED"}))
    CertificateType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    CreateAppRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateAppRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    CreateAppRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: Repository, location_name: "repository"))
    CreateAppRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    CreateAppRequest.add_member(:compute_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeRoleArn, location_name: "computeRoleArn"))
    CreateAppRequest.add_member(:iam_service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRoleArn, location_name: "iamServiceRoleArn"))
    CreateAppRequest.add_member(:oauth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: OauthToken, location_name: "oauthToken"))
    CreateAppRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, location_name: "accessToken"))
    CreateAppRequest.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, location_name: "environmentVariables"))
    CreateAppRequest.add_member(:enable_branch_auto_build, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBranchAutoBuild, location_name: "enableBranchAutoBuild"))
    CreateAppRequest.add_member(:enable_branch_auto_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBranchAutoDeletion, location_name: "enableBranchAutoDeletion"))
    CreateAppRequest.add_member(:enable_basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBasicAuth, location_name: "enableBasicAuth"))
    CreateAppRequest.add_member(:basic_auth_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    CreateAppRequest.add_member(:custom_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRules, location_name: "customRules"))
    CreateAppRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateAppRequest.add_member(:build_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildSpec, location_name: "buildSpec"))
    CreateAppRequest.add_member(:custom_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaders, location_name: "customHeaders"))
    CreateAppRequest.add_member(:enable_auto_branch_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAutoBranchCreation, location_name: "enableAutoBranchCreation"))
    CreateAppRequest.add_member(:auto_branch_creation_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoBranchCreationPatterns, location_name: "autoBranchCreationPatterns"))
    CreateAppRequest.add_member(:auto_branch_creation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoBranchCreationConfig, location_name: "autoBranchCreationConfig"))
    CreateAppRequest.add_member(:job_config, ::Smithy::Schema::Shapes::MemberShape.new(target: JobConfig, location_name: "jobConfig"))
    CreateAppRequest.add_member(:cache_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheConfig, location_name: "cacheConfig"))
    CreateAppRequest.type = Types::CreateAppRequest
    CreateAppResult.add_member(:app, ::Smithy::Schema::Shapes::MemberShape.new(target: App, location_name: "app", traits: {"smithy.api#required" => {}}))
    CreateAppResult.type = Types::CreateAppResult
    CreateBackendEnvironmentRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBackendEnvironmentRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, location_name: "environmentName", traits: {"smithy.api#required" => {}}))
    CreateBackendEnvironmentRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StackName, location_name: "stackName"))
    CreateBackendEnvironmentRequest.add_member(:deployment_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: DeploymentArtifacts, location_name: "deploymentArtifacts"))
    CreateBackendEnvironmentRequest.type = Types::CreateBackendEnvironmentRequest
    CreateBackendEnvironmentResult.add_member(:backend_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: BackendEnvironment, location_name: "backendEnvironment", traits: {"smithy.api#required" => {}}))
    CreateBackendEnvironmentResult.type = Types::CreateBackendEnvironmentResult
    CreateBranchRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBranchRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#required" => {}}))
    CreateBranchRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    CreateBranchRequest.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, location_name: "stage"))
    CreateBranchRequest.add_member(:framework, ::Smithy::Schema::Shapes::MemberShape.new(target: Framework, location_name: "framework"))
    CreateBranchRequest.add_member(:enable_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableNotification, location_name: "enableNotification"))
    CreateBranchRequest.add_member(:enable_auto_build, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAutoBuild, location_name: "enableAutoBuild"))
    CreateBranchRequest.add_member(:enable_skew_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableSkewProtection, location_name: "enableSkewProtection"))
    CreateBranchRequest.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, location_name: "environmentVariables"))
    CreateBranchRequest.add_member(:basic_auth_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    CreateBranchRequest.add_member(:enable_basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBasicAuth, location_name: "enableBasicAuth"))
    CreateBranchRequest.add_member(:enable_performance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePerformanceMode, location_name: "enablePerformanceMode"))
    CreateBranchRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateBranchRequest.add_member(:build_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildSpec, location_name: "buildSpec"))
    CreateBranchRequest.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: TTL, location_name: "ttl"))
    CreateBranchRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "displayName"))
    CreateBranchRequest.add_member(:enable_pull_request_preview, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePullRequestPreview, location_name: "enablePullRequestPreview"))
    CreateBranchRequest.add_member(:pull_request_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestEnvironmentName, location_name: "pullRequestEnvironmentName"))
    CreateBranchRequest.add_member(:backend_environment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackendEnvironmentArn, location_name: "backendEnvironmentArn"))
    CreateBranchRequest.add_member(:backend, ::Smithy::Schema::Shapes::MemberShape.new(target: Backend, location_name: "backend"))
    CreateBranchRequest.add_member(:compute_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeRoleArn, location_name: "computeRoleArn"))
    CreateBranchRequest.type = Types::CreateBranchRequest
    CreateBranchResult.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: Branch, location_name: "branch", traits: {"smithy.api#required" => {}}))
    CreateBranchResult.type = Types::CreateBranchResult
    CreateDeploymentRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:file_map, ::Smithy::Schema::Shapes::MemberShape.new(target: FileMap, location_name: "fileMap"))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDeploymentResult.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "jobId"))
    CreateDeploymentResult.add_member(:file_upload_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: FileUploadUrls, location_name: "fileUploadUrls", traits: {"smithy.api#required" => {}}))
    CreateDeploymentResult.add_member(:zip_upload_url, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadUrl, location_name: "zipUploadUrl", traits: {"smithy.api#required" => {}}))
    CreateDeploymentResult.type = Types::CreateDeploymentResult
    CreateDomainAssociationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDomainAssociationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateDomainAssociationRequest.add_member(:enable_auto_sub_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAutoSubDomain, location_name: "enableAutoSubDomain"))
    CreateDomainAssociationRequest.add_member(:sub_domain_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SubDomainSettings, location_name: "subDomainSettings", traits: {"smithy.api#required" => {}}))
    CreateDomainAssociationRequest.add_member(:auto_sub_domain_creation_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSubDomainCreationPatterns, location_name: "autoSubDomainCreationPatterns"))
    CreateDomainAssociationRequest.add_member(:auto_sub_domain_iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSubDomainIAMRole, location_name: "autoSubDomainIAMRole"))
    CreateDomainAssociationRequest.add_member(:certificate_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSettings, location_name: "certificateSettings"))
    CreateDomainAssociationRequest.type = Types::CreateDomainAssociationRequest
    CreateDomainAssociationResult.add_member(:domain_association, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainAssociation, location_name: "domainAssociation", traits: {"smithy.api#required" => {}}))
    CreateDomainAssociationResult.type = Types::CreateDomainAssociationResult
    CreateWebhookRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWebhookRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#required" => {}}))
    CreateWebhookRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    CreateWebhookRequest.type = Types::CreateWebhookRequest
    CreateWebhookResult.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: Webhook, location_name: "webhook", traits: {"smithy.api#required" => {}}))
    CreateWebhookResult.type = Types::CreateWebhookResult
    CustomDomains.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomDomain)
    CustomRule.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: Source, location_name: "source", traits: {"smithy.api#required" => {}}))
    CustomRule.add_member(:target, ::Smithy::Schema::Shapes::MemberShape.new(target: Target, location_name: "target", traits: {"smithy.api#required" => {}}))
    CustomRule.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    CustomRule.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, location_name: "condition"))
    CustomRule.type = Types::CustomRule
    CustomRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRule)
    DeleteAppRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppRequest.type = Types::DeleteAppRequest
    DeleteAppResult.add_member(:app, ::Smithy::Schema::Shapes::MemberShape.new(target: App, location_name: "app", traits: {"smithy.api#required" => {}}))
    DeleteAppResult.type = Types::DeleteAppResult
    DeleteBackendEnvironmentRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendEnvironmentRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, location_name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendEnvironmentRequest.type = Types::DeleteBackendEnvironmentRequest
    DeleteBackendEnvironmentResult.add_member(:backend_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: BackendEnvironment, location_name: "backendEnvironment", traits: {"smithy.api#required" => {}}))
    DeleteBackendEnvironmentResult.type = Types::DeleteBackendEnvironmentResult
    DeleteBranchRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBranchRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBranchRequest.type = Types::DeleteBranchRequest
    DeleteBranchResult.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: Branch, location_name: "branch", traits: {"smithy.api#required" => {}}))
    DeleteBranchResult.type = Types::DeleteBranchResult
    DeleteDomainAssociationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainAssociationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainAssociationRequest.type = Types::DeleteDomainAssociationRequest
    DeleteDomainAssociationResult.add_member(:domain_association, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainAssociation, location_name: "domainAssociation", traits: {"smithy.api#required" => {}}))
    DeleteDomainAssociationResult.type = Types::DeleteDomainAssociationResult
    DeleteJobRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobRequest.type = Types::DeleteJobRequest
    DeleteJobResult.add_member(:job_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummary, location_name: "jobSummary", traits: {"smithy.api#required" => {}}))
    DeleteJobResult.type = Types::DeleteJobResult
    DeleteWebhookRequest.add_member(:webhook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookId, location_name: "webhookId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWebhookRequest.type = Types::DeleteWebhookRequest
    DeleteWebhookResult.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: Webhook, location_name: "webhook", traits: {"smithy.api#required" => {}}))
    DeleteWebhookResult.type = Types::DeleteWebhookResult
    DependentServiceFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    DependentServiceFailureException.type = Types::DependentServiceFailureException
    DomainAssociation.add_member(:domain_association_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainAssociationArn, location_name: "domainAssociationArn", traits: {"smithy.api#required" => {}}))
    DomainAssociation.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "domainName", traits: {"smithy.api#required" => {}}))
    DomainAssociation.add_member(:enable_auto_sub_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAutoSubDomain, location_name: "enableAutoSubDomain", traits: {"smithy.api#required" => {}}))
    DomainAssociation.add_member(:auto_sub_domain_creation_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSubDomainCreationPatterns, location_name: "autoSubDomainCreationPatterns"))
    DomainAssociation.add_member(:auto_sub_domain_iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSubDomainIAMRole, location_name: "autoSubDomainIAMRole"))
    DomainAssociation.add_member(:domain_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, location_name: "domainStatus", traits: {"smithy.api#required" => {}}))
    DomainAssociation.add_member(:update_status, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateStatus, location_name: "updateStatus"))
    DomainAssociation.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, location_name: "statusReason", traits: {"smithy.api#required" => {}}))
    DomainAssociation.add_member(:certificate_verification_dns_record, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateVerificationDNSRecord, location_name: "certificateVerificationDNSRecord"))
    DomainAssociation.add_member(:sub_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: SubDomains, location_name: "subDomains", traits: {"smithy.api#required" => {}}))
    DomainAssociation.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: Certificate, location_name: "certificate"))
    DomainAssociation.type = Types::DomainAssociation
    DomainAssociations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainAssociation)
    DomainStatus.add_member(:pending_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_VERIFICATION", traits: {"smithy.api#enumValue" => "PENDING_VERIFICATION"}))
    DomainStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DomainStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DomainStatus.add_member(:importing_custom_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORTING_CUSTOM_CERTIFICATE", traits: {"smithy.api#enumValue" => "IMPORTING_CUSTOM_CERTIFICATE"}))
    DomainStatus.add_member(:pending_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_DEPLOYMENT", traits: {"smithy.api#enumValue" => "PENDING_DEPLOYMENT"}))
    DomainStatus.add_member(:awaiting_app_cname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWAITING_APP_CNAME", traits: {"smithy.api#enumValue" => "AWAITING_APP_CNAME"}))
    DomainStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DomainStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DomainStatus.add_member(:requesting_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUESTING_CERTIFICATE", traits: {"smithy.api#enumValue" => "REQUESTING_CERTIFICATE"}))
    DomainStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    EnvironmentVariables.key = ::Smithy::Schema::Shapes::MemberShape.new(target: EnvKey)
    EnvironmentVariables.value = ::Smithy::Schema::Shapes::MemberShape.new(target: EnvValue)
    FileMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: FileName)
    FileMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: MD5Hash)
    FileUploadUrls.key = ::Smithy::Schema::Shapes::MemberShape.new(target: FileName)
    FileUploadUrls.value = ::Smithy::Schema::Shapes::MemberShape.new(target: UploadUrl)
    GenerateAccessLogsRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, location_name: "startTime"))
    GenerateAccessLogsRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTime, location_name: "endTime"))
    GenerateAccessLogsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "domainName", traits: {"smithy.api#required" => {}}))
    GenerateAccessLogsRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GenerateAccessLogsRequest.type = Types::GenerateAccessLogsRequest
    GenerateAccessLogsResult.add_member(:log_url, ::Smithy::Schema::Shapes::MemberShape.new(target: LogUrl, location_name: "logUrl"))
    GenerateAccessLogsResult.type = Types::GenerateAccessLogsResult
    GetAppRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppRequest.type = Types::GetAppRequest
    GetAppResult.add_member(:app, ::Smithy::Schema::Shapes::MemberShape.new(target: App, location_name: "app", traits: {"smithy.api#required" => {}}))
    GetAppResult.type = Types::GetAppResult
    GetArtifactUrlRequest.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, location_name: "artifactId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetArtifactUrlRequest.type = Types::GetArtifactUrlRequest
    GetArtifactUrlResult.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, location_name: "artifactId", traits: {"smithy.api#required" => {}}))
    GetArtifactUrlResult.add_member(:artifact_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactUrl, location_name: "artifactUrl", traits: {"smithy.api#required" => {}}))
    GetArtifactUrlResult.type = Types::GetArtifactUrlResult
    GetBackendEnvironmentRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendEnvironmentRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, location_name: "environmentName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendEnvironmentRequest.type = Types::GetBackendEnvironmentRequest
    GetBackendEnvironmentResult.add_member(:backend_environment, ::Smithy::Schema::Shapes::MemberShape.new(target: BackendEnvironment, location_name: "backendEnvironment", traits: {"smithy.api#required" => {}}))
    GetBackendEnvironmentResult.type = Types::GetBackendEnvironmentResult
    GetBranchRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBranchRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBranchRequest.type = Types::GetBranchRequest
    GetBranchResult.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: Branch, location_name: "branch", traits: {"smithy.api#required" => {}}))
    GetBranchResult.type = Types::GetBranchResult
    GetDomainAssociationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainAssociationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainAssociationRequest.type = Types::GetDomainAssociationRequest
    GetDomainAssociationResult.add_member(:domain_association, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainAssociation, location_name: "domainAssociation", traits: {"smithy.api#required" => {}}))
    GetDomainAssociationResult.type = Types::GetDomainAssociationResult
    GetJobRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.type = Types::GetJobRequest
    GetJobResult.add_member(:job, ::Smithy::Schema::Shapes::MemberShape.new(target: Job, location_name: "job", traits: {"smithy.api#required" => {}}))
    GetJobResult.type = Types::GetJobResult
    GetWebhookRequest.add_member(:webhook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookId, location_name: "webhookId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWebhookRequest.type = Types::GetWebhookRequest
    GetWebhookResult.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: Webhook, location_name: "webhook", traits: {"smithy.api#required" => {}}))
    GetWebhookResult.type = Types::GetWebhookResult
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    Job.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummary, location_name: "summary", traits: {"smithy.api#required" => {}}))
    Job.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: Steps, location_name: "steps", traits: {"smithy.api#required" => {}}))
    Job.type = Types::Job
    JobConfig.add_member(:build_compute_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildComputeType, location_name: "buildComputeType", traits: {"smithy.api#required" => {}}))
    JobConfig.type = Types::JobConfig
    JobStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    JobStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    JobStatus.add_member(:provisioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROVISIONING", traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    JobStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:succeed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCEED", traits: {"smithy.api#enumValue" => "SUCCEED"}))
    JobStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    JobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    JobSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummary)
    JobSummary.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, location_name: "jobArn", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "jobId", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, location_name: "commitId", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:commit_message, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitMessage, location_name: "commitMessage", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:commit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitTime, location_name: "commitTime", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, location_name: "startTime", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTime, location_name: "endTime"))
    JobSummary.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, location_name: "jobType", traits: {"smithy.api#required" => {}}))
    JobSummary.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceUrl, location_name: "sourceUrl"))
    JobSummary.add_member(:source_url_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceUrlType, location_name: "sourceUrlType"))
    JobSummary.type = Types::JobSummary
    JobType.add_member(:release, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RELEASE", traits: {"smithy.api#enumValue" => "RELEASE"}))
    JobType.add_member(:retry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RETRY", traits: {"smithy.api#enumValue" => "RETRY"}))
    JobType.add_member(:manual, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MANUAL", traits: {"smithy.api#enumValue" => "MANUAL"}))
    JobType.add_member(:web_hook, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEB_HOOK", traits: {"smithy.api#enumValue" => "WEB_HOOK"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAppsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAppsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsForListApps, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListAppsRequest.type = Types::ListAppsRequest
    ListAppsResult.add_member(:apps, ::Smithy::Schema::Shapes::MemberShape.new(target: Apps, location_name: "apps", traits: {"smithy.api#required" => {}}))
    ListAppsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListAppsResult.type = Types::ListAppsResult
    ListArtifactsRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListArtifactsRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListArtifactsRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListArtifactsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListArtifactsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListArtifactsRequest.type = Types::ListArtifactsRequest
    ListArtifactsResult.add_member(:artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: Artifacts, location_name: "artifacts", traits: {"smithy.api#required" => {}}))
    ListArtifactsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListArtifactsResult.type = Types::ListArtifactsResult
    ListBackendEnvironmentsRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBackendEnvironmentsRequest.add_member(:environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentName, location_name: "environmentName", traits: {"smithy.api#httpQuery" => "environmentName"}))
    ListBackendEnvironmentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBackendEnvironmentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListBackendEnvironmentsRequest.type = Types::ListBackendEnvironmentsRequest
    ListBackendEnvironmentsResult.add_member(:backend_environments, ::Smithy::Schema::Shapes::MemberShape.new(target: BackendEnvironments, location_name: "backendEnvironments", traits: {"smithy.api#required" => {}}))
    ListBackendEnvironmentsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListBackendEnvironmentsResult.type = Types::ListBackendEnvironmentsResult
    ListBranchesRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBranchesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListBranchesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListBranchesRequest.type = Types::ListBranchesRequest
    ListBranchesResult.add_member(:branches, ::Smithy::Schema::Shapes::MemberShape.new(target: Branches, location_name: "branches", traits: {"smithy.api#required" => {}}))
    ListBranchesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListBranchesResult.type = Types::ListBranchesResult
    ListDomainAssociationsRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDomainAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDomainAssociationsRequest.type = Types::ListDomainAssociationsRequest
    ListDomainAssociationsResult.add_member(:domain_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainAssociations, location_name: "domainAssociations", traits: {"smithy.api#required" => {}}))
    ListDomainAssociationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListDomainAssociationsResult.type = Types::ListDomainAssociationsResult
    ListJobsRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResult.add_member(:job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummaries, location_name: "jobSummaries", traits: {"smithy.api#required" => {}}))
    ListJobsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListJobsResult.type = Types::ListJobsResult
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWebhooksRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWebhooksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListWebhooksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "maxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListWebhooksRequest.type = Types::ListWebhooksRequest
    ListWebhooksResult.add_member(:webhooks, ::Smithy::Schema::Shapes::MemberShape.new(target: Webhooks, location_name: "webhooks", traits: {"smithy.api#required" => {}}))
    ListWebhooksResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "nextToken"))
    ListWebhooksResult.type = Types::ListWebhooksResult
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    NotFoundException.type = Types::NotFoundException
    Platform.add_member(:web, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEB", traits: {"smithy.api#enumValue" => "WEB"}))
    Platform.add_member(:web_dynamic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEB_DYNAMIC", traits: {"smithy.api#enumValue" => "WEB_DYNAMIC"}))
    Platform.add_member(:web_compute, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEB_COMPUTE", traits: {"smithy.api#enumValue" => "WEB_COMPUTE"}))
    ProductionBranch.add_member(:last_deploy_time, ::Smithy::Schema::Shapes::MemberShape.new(target: LastDeployTime, location_name: "lastDeployTime"))
    ProductionBranch.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "status"))
    ProductionBranch.add_member(:thumbnail_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailUrl, location_name: "thumbnailUrl"))
    ProductionBranch.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName"))
    ProductionBranch.type = Types::ProductionBranch
    RepositoryCloneMethod.add_member(:ssh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SSH", traits: {"smithy.api#enumValue" => "SSH"}))
    RepositoryCloneMethod.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TOKEN", traits: {"smithy.api#enumValue" => "TOKEN"}))
    RepositoryCloneMethod.add_member(:sigv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SIGV4", traits: {"smithy.api#enumValue" => "SIGV4"}))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, location_name: "code", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Screenshots.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailName)
    Screenshots.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ThumbnailUrl)
    SourceUrlType.add_member(:zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ZIP", traits: {"smithy.api#enumValue" => "ZIP"}))
    SourceUrlType.add_member(:bucket_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUCKET_PREFIX", traits: {"smithy.api#enumValue" => "BUCKET_PREFIX"}))
    Stage.add_member(:production, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRODUCTION", traits: {"smithy.api#enumValue" => "PRODUCTION"}))
    Stage.add_member(:beta, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BETA", traits: {"smithy.api#enumValue" => "BETA"}))
    Stage.add_member(:development, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEVELOPMENT", traits: {"smithy.api#enumValue" => "DEVELOPMENT"}))
    Stage.add_member(:experimental, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPERIMENTAL", traits: {"smithy.api#enumValue" => "EXPERIMENTAL"}))
    Stage.add_member(:pull_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PULL_REQUEST", traits: {"smithy.api#enumValue" => "PULL_REQUEST"}))
    StartDeploymentRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "jobId"))
    StartDeploymentRequest.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceUrl, location_name: "sourceUrl"))
    StartDeploymentRequest.add_member(:source_url_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceUrlType, location_name: "sourceUrlType"))
    StartDeploymentRequest.type = Types::StartDeploymentRequest
    StartDeploymentResult.add_member(:job_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummary, location_name: "jobSummary", traits: {"smithy.api#required" => {}}))
    StartDeploymentResult.type = Types::StartDeploymentResult
    StartJobRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartJobRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "jobId"))
    StartJobRequest.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, location_name: "jobType", traits: {"smithy.api#required" => {}}))
    StartJobRequest.add_member(:job_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: JobReason, location_name: "jobReason"))
    StartJobRequest.add_member(:commit_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitId, location_name: "commitId"))
    StartJobRequest.add_member(:commit_message, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitMessage, location_name: "commitMessage"))
    StartJobRequest.add_member(:commit_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CommitTime, location_name: "commitTime"))
    StartJobRequest.type = Types::StartJobRequest
    StartJobResult.add_member(:job_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummary, location_name: "jobSummary", traits: {"smithy.api#required" => {}}))
    StartJobResult.type = Types::StartJobResult
    Step.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StepName, location_name: "stepName", traits: {"smithy.api#required" => {}}))
    Step.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: StartTime, location_name: "startTime", traits: {"smithy.api#required" => {}}))
    Step.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    Step.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: EndTime, location_name: "endTime", traits: {"smithy.api#required" => {}}))
    Step.add_member(:log_url, ::Smithy::Schema::Shapes::MemberShape.new(target: LogUrl, location_name: "logUrl"))
    Step.add_member(:artifacts_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactsUrl, location_name: "artifactsUrl"))
    Step.add_member(:test_artifacts_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TestArtifactsUrl, location_name: "testArtifactsUrl"))
    Step.add_member(:test_config_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TestConfigUrl, location_name: "testConfigUrl"))
    Step.add_member(:screenshots, ::Smithy::Schema::Shapes::MemberShape.new(target: Screenshots, location_name: "screenshots"))
    Step.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, location_name: "statusReason"))
    Step.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: Context, location_name: "context"))
    Step.type = Types::Step
    Steps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Step)
    StopJobRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopJobRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, location_name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopJobRequest.type = Types::StopJobRequest
    StopJobResult.add_member(:job_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: JobSummary, location_name: "jobSummary", traits: {"smithy.api#required" => {}}))
    StopJobResult.type = Types::StopJobResult
    SubDomain.add_member(:sub_domain_setting, ::Smithy::Schema::Shapes::MemberShape.new(target: SubDomainSetting, location_name: "subDomainSetting", traits: {"smithy.api#required" => {}}))
    SubDomain.add_member(:verified, ::Smithy::Schema::Shapes::MemberShape.new(target: Verified, location_name: "verified", traits: {"smithy.api#required" => {}}))
    SubDomain.add_member(:dns_record, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSRecord, location_name: "dnsRecord", traits: {"smithy.api#required" => {}}))
    SubDomain.type = Types::SubDomain
    SubDomainSetting.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainPrefix, location_name: "prefix", traits: {"smithy.api#required" => {}}))
    SubDomainSetting.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#required" => {}}))
    SubDomainSetting.type = Types::SubDomainSetting
    SubDomainSettings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubDomainSetting)
    SubDomains.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SubDomain)
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAppRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, location_name: "name"))
    UpdateAppRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    UpdateAppRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    UpdateAppRequest.add_member(:compute_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeRoleArn, location_name: "computeRoleArn"))
    UpdateAppRequest.add_member(:iam_service_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRoleArn, location_name: "iamServiceRoleArn"))
    UpdateAppRequest.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, location_name: "environmentVariables"))
    UpdateAppRequest.add_member(:enable_branch_auto_build, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAutoBuild, location_name: "enableBranchAutoBuild"))
    UpdateAppRequest.add_member(:enable_branch_auto_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBranchAutoDeletion, location_name: "enableBranchAutoDeletion"))
    UpdateAppRequest.add_member(:enable_basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBasicAuth, location_name: "enableBasicAuth"))
    UpdateAppRequest.add_member(:basic_auth_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    UpdateAppRequest.add_member(:custom_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRules, location_name: "customRules"))
    UpdateAppRequest.add_member(:build_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildSpec, location_name: "buildSpec"))
    UpdateAppRequest.add_member(:custom_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaders, location_name: "customHeaders"))
    UpdateAppRequest.add_member(:enable_auto_branch_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAutoBranchCreation, location_name: "enableAutoBranchCreation"))
    UpdateAppRequest.add_member(:auto_branch_creation_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoBranchCreationPatterns, location_name: "autoBranchCreationPatterns"))
    UpdateAppRequest.add_member(:auto_branch_creation_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoBranchCreationConfig, location_name: "autoBranchCreationConfig"))
    UpdateAppRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: Repository, location_name: "repository"))
    UpdateAppRequest.add_member(:oauth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: OauthToken, location_name: "oauthToken"))
    UpdateAppRequest.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, location_name: "accessToken"))
    UpdateAppRequest.add_member(:job_config, ::Smithy::Schema::Shapes::MemberShape.new(target: JobConfig, location_name: "jobConfig"))
    UpdateAppRequest.add_member(:cache_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CacheConfig, location_name: "cacheConfig"))
    UpdateAppRequest.type = Types::UpdateAppRequest
    UpdateAppResult.add_member(:app, ::Smithy::Schema::Shapes::MemberShape.new(target: App, location_name: "app", traits: {"smithy.api#required" => {}}))
    UpdateAppResult.type = Types::UpdateAppResult
    UpdateBranchRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBranchRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBranchRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    UpdateBranchRequest.add_member(:framework, ::Smithy::Schema::Shapes::MemberShape.new(target: Framework, location_name: "framework"))
    UpdateBranchRequest.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, location_name: "stage"))
    UpdateBranchRequest.add_member(:enable_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableNotification, location_name: "enableNotification"))
    UpdateBranchRequest.add_member(:enable_auto_build, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAutoBuild, location_name: "enableAutoBuild"))
    UpdateBranchRequest.add_member(:enable_skew_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableSkewProtection, location_name: "enableSkewProtection"))
    UpdateBranchRequest.add_member(:environment_variables, ::Smithy::Schema::Shapes::MemberShape.new(target: EnvironmentVariables, location_name: "environmentVariables"))
    UpdateBranchRequest.add_member(:basic_auth_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    UpdateBranchRequest.add_member(:enable_basic_auth, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableBasicAuth, location_name: "enableBasicAuth"))
    UpdateBranchRequest.add_member(:enable_performance_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePerformanceMode, location_name: "enablePerformanceMode"))
    UpdateBranchRequest.add_member(:build_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildSpec, location_name: "buildSpec"))
    UpdateBranchRequest.add_member(:ttl, ::Smithy::Schema::Shapes::MemberShape.new(target: TTL, location_name: "ttl"))
    UpdateBranchRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "displayName"))
    UpdateBranchRequest.add_member(:enable_pull_request_preview, ::Smithy::Schema::Shapes::MemberShape.new(target: EnablePullRequestPreview, location_name: "enablePullRequestPreview"))
    UpdateBranchRequest.add_member(:pull_request_environment_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PullRequestEnvironmentName, location_name: "pullRequestEnvironmentName"))
    UpdateBranchRequest.add_member(:backend_environment_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BackendEnvironmentArn, location_name: "backendEnvironmentArn"))
    UpdateBranchRequest.add_member(:backend, ::Smithy::Schema::Shapes::MemberShape.new(target: Backend, location_name: "backend"))
    UpdateBranchRequest.add_member(:compute_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeRoleArn, location_name: "computeRoleArn"))
    UpdateBranchRequest.type = Types::UpdateBranchRequest
    UpdateBranchResult.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: Branch, location_name: "branch", traits: {"smithy.api#required" => {}}))
    UpdateBranchResult.type = Types::UpdateBranchResult
    UpdateDomainAssociationRequest.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainAssociationRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "domainName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainAssociationRequest.add_member(:enable_auto_sub_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: EnableAutoSubDomain, location_name: "enableAutoSubDomain"))
    UpdateDomainAssociationRequest.add_member(:sub_domain_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: SubDomainSettings, location_name: "subDomainSettings"))
    UpdateDomainAssociationRequest.add_member(:auto_sub_domain_creation_patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSubDomainCreationPatterns, location_name: "autoSubDomainCreationPatterns"))
    UpdateDomainAssociationRequest.add_member(:auto_sub_domain_iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoSubDomainIAMRole, location_name: "autoSubDomainIAMRole"))
    UpdateDomainAssociationRequest.add_member(:certificate_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateSettings, location_name: "certificateSettings"))
    UpdateDomainAssociationRequest.type = Types::UpdateDomainAssociationRequest
    UpdateDomainAssociationResult.add_member(:domain_association, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainAssociation, location_name: "domainAssociation", traits: {"smithy.api#required" => {}}))
    UpdateDomainAssociationResult.type = Types::UpdateDomainAssociationResult
    UpdateStatus.add_member(:requesting_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REQUESTING_CERTIFICATE", traits: {"smithy.api#enumValue" => "REQUESTING_CERTIFICATE"}))
    UpdateStatus.add_member(:pending_verification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_VERIFICATION", traits: {"smithy.api#enumValue" => "PENDING_VERIFICATION"}))
    UpdateStatus.add_member(:importing_custom_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORTING_CUSTOM_CERTIFICATE", traits: {"smithy.api#enumValue" => "IMPORTING_CUSTOM_CERTIFICATE"}))
    UpdateStatus.add_member(:pending_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING_DEPLOYMENT", traits: {"smithy.api#enumValue" => "PENDING_DEPLOYMENT"}))
    UpdateStatus.add_member(:awaiting_app_cname, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWAITING_APP_CNAME", traits: {"smithy.api#enumValue" => "AWAITING_APP_CNAME"}))
    UpdateStatus.add_member(:update_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    UpdateStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    UpdateWebhookRequest.add_member(:webhook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookId, location_name: "webhookId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWebhookRequest.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName"))
    UpdateWebhookRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description"))
    UpdateWebhookRequest.type = Types::UpdateWebhookRequest
    UpdateWebhookResult.add_member(:webhook, ::Smithy::Schema::Shapes::MemberShape.new(target: Webhook, location_name: "webhook", traits: {"smithy.api#required" => {}}))
    UpdateWebhookResult.type = Types::UpdateWebhookResult
    WafConfiguration.add_member(:web_acl_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAclArn, location_name: "webAclArn"))
    WafConfiguration.add_member(:waf_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WafStatus, location_name: "wafStatus"))
    WafConfiguration.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusReason, location_name: "statusReason"))
    WafConfiguration.type = Types::WafConfiguration
    WafStatus.add_member(:associating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATING", traits: {"smithy.api#enumValue" => "ASSOCIATING"}))
    WafStatus.add_member(:association_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATION_FAILED", traits: {"smithy.api#enumValue" => "ASSOCIATION_FAILED"}))
    WafStatus.add_member(:association_success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASSOCIATION_SUCCESS", traits: {"smithy.api#enumValue" => "ASSOCIATION_SUCCESS"}))
    WafStatus.add_member(:disassociating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISASSOCIATING", traits: {"smithy.api#enumValue" => "DISASSOCIATING"}))
    WafStatus.add_member(:disassociation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISASSOCIATION_FAILED", traits: {"smithy.api#enumValue" => "DISASSOCIATION_FAILED"}))
    Webhook.add_member(:webhook_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookArn, location_name: "webhookArn", traits: {"smithy.api#required" => {}}))
    Webhook.add_member(:webhook_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookId, location_name: "webhookId", traits: {"smithy.api#required" => {}}))
    Webhook.add_member(:webhook_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookUrl, location_name: "webhookUrl", traits: {"smithy.api#required" => {}}))
    Webhook.add_member(:app_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AppId, location_name: "appId"))
    Webhook.add_member(:branch_name, ::Smithy::Schema::Shapes::MemberShape.new(target: BranchName, location_name: "branchName", traits: {"smithy.api#required" => {}}))
    Webhook.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "description", traits: {"smithy.api#required" => {}}))
    Webhook.add_member(:create_time, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateTime, location_name: "createTime", traits: {"smithy.api#required" => {}}))
    Webhook.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTime, location_name: "updateTime", traits: {"smithy.api#required" => {}}))
    Webhook.type = Types::Webhook
    Webhooks.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Webhook)

    Amplify = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.amplify#Amplify"
      service.name = "Amplify"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "Amplify", "arnNamespace" => "amplify", "cloudFormationName" => "Amplify", "cloudTrailEventSource" => "amplify.amazonaws.com", "endpointPrefix" => "amplify"}, "aws.auth#sigv4" => {"name" => "amplify"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Amplify", "smithy.api#xmlNamespace" => {"uri" => "http://amplify.amazonaws.com"}}
      service.add_operation(:create_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateApp"
        operation.name = "CreateApp"
        operation.input = CreateAppRequest
        operation.output = CreateAppResult
        operation.errors << BadRequestException
        operation.errors << DependentServiceFailureException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps", "code" => 200}}
      end)
      service.add_operation(:create_backend_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateBackendEnvironment"
        operation.name = "CreateBackendEnvironment"
        operation.input = CreateBackendEnvironmentRequest
        operation.output = CreateBackendEnvironmentResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/backendenvironments", "code" => 200}}
      end)
      service.add_operation(:create_branch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateBranch"
        operation.name = "CreateBranch"
        operation.input = CreateBranchRequest
        operation.output = CreateBranchResult
        operation.errors << BadRequestException
        operation.errors << DependentServiceFailureException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/branches", "code" => 200}}
      end)
      service.add_operation(:create_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = CreateDeploymentRequest
        operation.output = CreateDeploymentResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/branches/{branchName}/deployments", "code" => 200}}
      end)
      service.add_operation(:create_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateDomainAssociation"
        operation.name = "CreateDomainAssociation"
        operation.input = CreateDomainAssociationRequest
        operation.output = CreateDomainAssociationResult
        operation.errors << BadRequestException
        operation.errors << DependentServiceFailureException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/domains", "code" => 200}}
      end)
      service.add_operation(:create_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateWebhook"
        operation.name = "CreateWebhook"
        operation.input = CreateWebhookRequest
        operation.output = CreateWebhookResult
        operation.errors << BadRequestException
        operation.errors << DependentServiceFailureException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/webhooks", "code" => 200}}
      end)
      service.add_operation(:delete_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteApp"
        operation.name = "DeleteApp"
        operation.input = DeleteAppRequest
        operation.output = DeleteAppResult
        operation.errors << BadRequestException
        operation.errors << DependentServiceFailureException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}", "code" => 200}}
      end)
      service.add_operation(:delete_backend_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteBackendEnvironment"
        operation.name = "DeleteBackendEnvironment"
        operation.input = DeleteBackendEnvironmentRequest
        operation.output = DeleteBackendEnvironmentResult
        operation.errors << BadRequestException
        operation.errors << DependentServiceFailureException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}/backendenvironments/{environmentName}", "code" => 200}}
      end)
      service.add_operation(:delete_branch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteBranch"
        operation.name = "DeleteBranch"
        operation.input = DeleteBranchRequest
        operation.output = DeleteBranchResult
        operation.errors << BadRequestException
        operation.errors << DependentServiceFailureException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}/branches/{branchName}", "code" => 200}}
      end)
      service.add_operation(:delete_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteDomainAssociation"
        operation.name = "DeleteDomainAssociation"
        operation.input = DeleteDomainAssociationRequest
        operation.output = DeleteDomainAssociationResult
        operation.errors << BadRequestException
        operation.errors << DependentServiceFailureException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}/domains/{domainName}", "code" => 200}}
      end)
      service.add_operation(:delete_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteJob"
        operation.name = "DeleteJob"
        operation.input = DeleteJobRequest
        operation.output = DeleteJobResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}/branches/{branchName}/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:delete_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteWebhook"
        operation.name = "DeleteWebhook"
        operation.input = DeleteWebhookRequest
        operation.output = DeleteWebhookResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/webhooks/{webhookId}", "code" => 200}}
      end)
      service.add_operation(:generate_access_logs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GenerateAccessLogs"
        operation.name = "GenerateAccessLogs"
        operation.input = GenerateAccessLogsRequest
        operation.output = GenerateAccessLogsResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/accesslogs", "code" => 200}}
      end)
      service.add_operation(:get_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetApp"
        operation.name = "GetApp"
        operation.input = GetAppRequest
        operation.output = GetAppResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}", "code" => 200}}
      end)
      service.add_operation(:get_artifact_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetArtifactUrl"
        operation.name = "GetArtifactUrl"
        operation.input = GetArtifactUrlRequest
        operation.output = GetArtifactUrlResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/artifacts/{artifactId}", "code" => 200}}
      end)
      service.add_operation(:get_backend_environment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetBackendEnvironment"
        operation.name = "GetBackendEnvironment"
        operation.input = GetBackendEnvironmentRequest
        operation.output = GetBackendEnvironmentResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/backendenvironments/{environmentName}", "code" => 200}}
      end)
      service.add_operation(:get_branch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetBranch"
        operation.name = "GetBranch"
        operation.input = GetBranchRequest
        operation.output = GetBranchResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/branches/{branchName}", "code" => 200}}
      end)
      service.add_operation(:get_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetDomainAssociation"
        operation.name = "GetDomainAssociation"
        operation.input = GetDomainAssociationRequest
        operation.output = GetDomainAssociationResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/domains/{domainName}", "code" => 200}}
      end)
      service.add_operation(:get_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetJob"
        operation.name = "GetJob"
        operation.input = GetJobRequest
        operation.output = GetJobResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/branches/{branchName}/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:get_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetWebhook"
        operation.name = "GetWebhook"
        operation.input = GetWebhookRequest
        operation.output = GetWebhookResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/webhooks/{webhookId}", "code" => 200}}
      end)
      service.add_operation(:list_apps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListApps"
        operation.name = "ListApps"
        operation.input = ListAppsRequest
        operation.output = ListAppsResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps", "code" => 200}}
        operation[:paginator] = Paginators::ListApps.new
      end)
      service.add_operation(:list_artifacts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListArtifacts"
        operation.name = "ListArtifacts"
        operation.input = ListArtifactsRequest
        operation.output = ListArtifactsResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/branches/{branchName}/jobs/{jobId}/artifacts", "code" => 200}}
      end)
      service.add_operation(:list_backend_environments, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListBackendEnvironments"
        operation.name = "ListBackendEnvironments"
        operation.input = ListBackendEnvironmentsRequest
        operation.output = ListBackendEnvironmentsResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/backendenvironments", "code" => 200}}
      end)
      service.add_operation(:list_branches, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListBranches"
        operation.name = "ListBranches"
        operation.input = ListBranchesRequest
        operation.output = ListBranchesResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/branches", "code" => 200}}
        operation[:paginator] = Paginators::ListBranches.new
      end)
      service.add_operation(:list_domain_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListDomainAssociations"
        operation.name = "ListDomainAssociations"
        operation.input = ListDomainAssociationsRequest
        operation.output = ListDomainAssociationsResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/domains", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainAssociations.new
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListJobs"
        operation.name = "ListJobs"
        operation.input = ListJobsRequest
        operation.output = ListJobsResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/branches/{branchName}/jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_webhooks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListWebhooks"
        operation.name = "ListWebhooks"
        operation.input = ListWebhooksRequest
        operation.output = ListWebhooksResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/webhooks", "code" => 200}}
      end)
      service.add_operation(:start_deployment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#StartDeployment"
        operation.name = "StartDeployment"
        operation.input = StartDeploymentRequest
        operation.output = StartDeploymentResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/branches/{branchName}/deployments/start", "code" => 200}}
      end)
      service.add_operation(:start_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#StartJob"
        operation.name = "StartJob"
        operation.input = StartJobRequest
        operation.output = StartJobResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/branches/{branchName}/jobs", "code" => 200}}
      end)
      service.add_operation(:stop_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#StopJob"
        operation.name = "StopJob"
        operation.input = StopJobRequest
        operation.output = StopJobResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}/branches/{branchName}/jobs/{jobId}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_app, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#UpdateApp"
        operation.name = "UpdateApp"
        operation.input = UpdateAppRequest
        operation.output = UpdateAppResult
        operation.errors << BadRequestException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}", "code" => 200}}
      end)
      service.add_operation(:update_branch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#UpdateBranch"
        operation.name = "UpdateBranch"
        operation.input = UpdateBranchRequest
        operation.output = UpdateBranchResult
        operation.errors << BadRequestException
        operation.errors << DependentServiceFailureException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/branches/{branchName}", "code" => 200}}
      end)
      service.add_operation(:update_domain_association, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#UpdateDomainAssociation"
        operation.name = "UpdateDomainAssociation"
        operation.input = UpdateDomainAssociationRequest
        operation.output = UpdateDomainAssociationResult
        operation.errors << BadRequestException
        operation.errors << DependentServiceFailureException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/domains/{domainName}", "code" => 200}}
      end)
      service.add_operation(:update_webhook, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#UpdateWebhook"
        operation.name = "UpdateWebhook"
        operation.input = UpdateWebhookRequest
        operation.output = UpdateWebhookResult
        operation.errors << BadRequestException
        operation.errors << DependentServiceFailureException
        operation.errors << InternalFailureException
        operation.errors << NotFoundException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/webhooks/{webhookId}", "code" => 200}}
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
