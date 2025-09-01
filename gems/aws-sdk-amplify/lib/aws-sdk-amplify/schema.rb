# frozen_string_literal: true

# This is generated code!

module Aws::Amplify
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#AccessToken', name: 'AccessToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?s).+$", "smithy.api#sensitive" => {}})
    ActiveJobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#ActiveJobId', name: 'ActiveJobId', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    App = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#App', name: 'App')
    AppArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#AppArn', name: 'AppArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    AppId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#AppId', name: 'AppId', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^d[a-z0-9]+$"})
    Apps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#Apps', name: 'Apps')
    Artifact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#Artifact', name: 'Artifact')
    ArtifactFileName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#ArtifactFileName', name: 'ArtifactFileName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ArtifactId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#ArtifactId', name: 'ArtifactId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    ArtifactUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#ArtifactUrl', name: 'ArtifactUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Artifacts = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#Artifacts', name: 'Artifacts')
    ArtifactsUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#ArtifactsUrl', name: 'ArtifactsUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    AssociatedResource = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#AssociatedResource', name: 'AssociatedResource', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    AssociatedResources = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#AssociatedResources', name: 'AssociatedResources')
    AutoBranchCreationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#AutoBranchCreationConfig', name: 'AutoBranchCreationConfig')
    AutoBranchCreationPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#AutoBranchCreationPattern', name: 'AutoBranchCreationPattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?s).+$"})
    AutoBranchCreationPatterns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#AutoBranchCreationPatterns', name: 'AutoBranchCreationPatterns')
    AutoSubDomainCreationPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#AutoSubDomainCreationPattern', name: 'AutoSubDomainCreationPattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?s).+$"})
    AutoSubDomainCreationPatterns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#AutoSubDomainCreationPatterns', name: 'AutoSubDomainCreationPatterns')
    AutoSubDomainIAMRole = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#AutoSubDomainIAMRole', name: 'AutoSubDomainIAMRole', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^$|^arn:aws:iam::\\d{12}:role.+$"})
    Backend = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#Backend', name: 'Backend')
    BackendEnvironment = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#BackendEnvironment', name: 'BackendEnvironment')
    BackendEnvironmentArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#BackendEnvironmentArn', name: 'BackendEnvironmentArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    BackendEnvironments = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#BackendEnvironments', name: 'BackendEnvironments')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BasicAuthCredentials = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#BasicAuthCredentials', name: 'BasicAuthCredentials', traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}, "smithy.api#pattern" => "^(?s)", "smithy.api#sensitive" => {}})
    Branch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#Branch', name: 'Branch')
    BranchArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#BranchArn', name: 'BranchArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    BranchName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#BranchName', name: 'BranchName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?s).+$"})
    Branches = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#Branches', name: 'Branches', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    BuildComputeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#BuildComputeType', name: 'BuildComputeType')
    BuildSpec = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#BuildSpec', name: 'BuildSpec', traits: {"smithy.api#length" => {"min" => 1, "max" => 25000}, "smithy.api#pattern" => "^(?s).+$", "smithy.api#sensitive" => {}})
    CacheConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CacheConfig', name: 'CacheConfig')
    CacheConfigType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#CacheConfigType', name: 'CacheConfigType')
    Certificate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#Certificate', name: 'Certificate')
    CertificateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#CertificateArn', name: 'CertificateArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^arn:aws:acm:[a-z0-9-]+:\\d{12}:certificate\\/.+$"})
    CertificateSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CertificateSettings', name: 'CertificateSettings')
    CertificateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#CertificateType', name: 'CertificateType')
    CertificateVerificationDNSRecord = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#CertificateVerificationDNSRecord', name: 'CertificateVerificationDNSRecord', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Code = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#Code', name: 'Code')
    CommitId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#CommitId', name: 'CommitId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    CommitMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#CommitMessage', name: 'CommitMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    CommitTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.amplify#CommitTime', name: 'CommitTime')
    ComputeRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#ComputeRoleArn', name: 'ComputeRoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    Condition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#Condition', name: 'Condition', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^(?s)"})
    Context = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#Context', name: 'Context')
    CreateAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateAppRequest', name: 'CreateAppRequest')
    CreateAppResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateAppResult', name: 'CreateAppResult')
    CreateBackendEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateBackendEnvironmentRequest', name: 'CreateBackendEnvironmentRequest')
    CreateBackendEnvironmentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateBackendEnvironmentResult', name: 'CreateBackendEnvironmentResult')
    CreateBranchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateBranchRequest', name: 'CreateBranchRequest')
    CreateBranchResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateBranchResult', name: 'CreateBranchResult')
    CreateDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateDeploymentRequest', name: 'CreateDeploymentRequest')
    CreateDeploymentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateDeploymentResult', name: 'CreateDeploymentResult')
    CreateDomainAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateDomainAssociationRequest', name: 'CreateDomainAssociationRequest')
    CreateDomainAssociationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateDomainAssociationResult', name: 'CreateDomainAssociationResult')
    CreateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.amplify#CreateTime', name: 'CreateTime')
    CreateWebhookRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateWebhookRequest', name: 'CreateWebhookRequest')
    CreateWebhookResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CreateWebhookResult', name: 'CreateWebhookResult')
    CustomDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#CustomDomain', name: 'CustomDomain', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    CustomDomains = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#CustomDomains', name: 'CustomDomains', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    CustomHeaders = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#CustomHeaders', name: 'CustomHeaders', traits: {"smithy.api#length" => {"min" => 0, "max" => 25000}, "smithy.api#pattern" => "^(?s)"})
    CustomRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#CustomRule', name: 'CustomRule')
    CustomRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#CustomRules', name: 'CustomRules')
    DNSRecord = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#DNSRecord', name: 'DNSRecord', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    DefaultDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#DefaultDomain', name: 'DefaultDomain', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    DeleteAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteAppRequest', name: 'DeleteAppRequest')
    DeleteAppResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteAppResult', name: 'DeleteAppResult')
    DeleteBackendEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteBackendEnvironmentRequest', name: 'DeleteBackendEnvironmentRequest')
    DeleteBackendEnvironmentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteBackendEnvironmentResult', name: 'DeleteBackendEnvironmentResult')
    DeleteBranchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteBranchRequest', name: 'DeleteBranchRequest')
    DeleteBranchResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteBranchResult', name: 'DeleteBranchResult')
    DeleteDomainAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteDomainAssociationRequest', name: 'DeleteDomainAssociationRequest')
    DeleteDomainAssociationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteDomainAssociationResult', name: 'DeleteDomainAssociationResult')
    DeleteJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteJobRequest', name: 'DeleteJobRequest')
    DeleteJobResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteJobResult', name: 'DeleteJobResult')
    DeleteWebhookRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteWebhookRequest', name: 'DeleteWebhookRequest')
    DeleteWebhookResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DeleteWebhookResult', name: 'DeleteWebhookResult')
    DependentServiceFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DependentServiceFailureException', name: 'DependentServiceFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    DeploymentArtifacts = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#DeploymentArtifacts', name: 'DeploymentArtifacts', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^(?s).+$"})
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    DisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    DomainAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#DomainAssociation', name: 'DomainAssociation')
    DomainAssociationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#DomainAssociationArn', name: 'DomainAssociationArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    DomainAssociations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#DomainAssociations', name: 'DomainAssociations', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    DomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 0, "max" => 64}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])(\\.)?$"})
    DomainPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#DomainPrefix', name: 'DomainPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    DomainStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#DomainStatus', name: 'DomainStatus')
    EnableAutoBranchCreation = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplify#EnableAutoBranchCreation', name: 'EnableAutoBranchCreation')
    EnableAutoBuild = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplify#EnableAutoBuild', name: 'EnableAutoBuild')
    EnableAutoSubDomain = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplify#EnableAutoSubDomain', name: 'EnableAutoSubDomain')
    EnableBasicAuth = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplify#EnableBasicAuth', name: 'EnableBasicAuth')
    EnableBranchAutoBuild = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplify#EnableBranchAutoBuild', name: 'EnableBranchAutoBuild')
    EnableBranchAutoDeletion = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplify#EnableBranchAutoDeletion', name: 'EnableBranchAutoDeletion')
    EnableNotification = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplify#EnableNotification', name: 'EnableNotification')
    EnablePerformanceMode = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplify#EnablePerformanceMode', name: 'EnablePerformanceMode')
    EnablePullRequestPreview = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplify#EnablePullRequestPreview', name: 'EnablePullRequestPreview')
    EnableSkewProtection = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplify#EnableSkewProtection', name: 'EnableSkewProtection')
    EndTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.amplify#EndTime', name: 'EndTime')
    EnvKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#EnvKey', name: 'EnvKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    EnvValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#EnvValue', name: 'EnvValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 5500}, "smithy.api#pattern" => "^(?s)"})
    EnvironmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#EnvironmentName', name: 'EnvironmentName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?s).+$"})
    EnvironmentVariables = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplify#EnvironmentVariables', name: 'EnvironmentVariables')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    FileMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplify#FileMap', name: 'FileMap')
    FileName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#FileName', name: 'FileName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    FileUploadUrls = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplify#FileUploadUrls', name: 'FileUploadUrls')
    Framework = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#Framework', name: 'Framework', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    GenerateAccessLogsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GenerateAccessLogsRequest', name: 'GenerateAccessLogsRequest')
    GenerateAccessLogsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GenerateAccessLogsResult', name: 'GenerateAccessLogsResult')
    GetAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetAppRequest', name: 'GetAppRequest')
    GetAppResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetAppResult', name: 'GetAppResult')
    GetArtifactUrlRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetArtifactUrlRequest', name: 'GetArtifactUrlRequest')
    GetArtifactUrlResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetArtifactUrlResult', name: 'GetArtifactUrlResult')
    GetBackendEnvironmentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetBackendEnvironmentRequest', name: 'GetBackendEnvironmentRequest')
    GetBackendEnvironmentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetBackendEnvironmentResult', name: 'GetBackendEnvironmentResult')
    GetBranchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetBranchRequest', name: 'GetBranchRequest')
    GetBranchResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetBranchResult', name: 'GetBranchResult')
    GetDomainAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetDomainAssociationRequest', name: 'GetDomainAssociationRequest')
    GetDomainAssociationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetDomainAssociationResult', name: 'GetDomainAssociationResult')
    GetJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetJobRequest', name: 'GetJobRequest')
    GetJobResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetJobResult', name: 'GetJobResult')
    GetWebhookRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetWebhookRequest', name: 'GetWebhookRequest')
    GetWebhookResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#GetWebhookResult', name: 'GetWebhookResult')
    InternalFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Job = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#Job', name: 'Job')
    JobArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#JobArn', name: 'JobArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    JobConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#JobConfig', name: 'JobConfig')
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^[0-9]+$"})
    JobReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#JobReason', name: 'JobReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    JobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#JobStatus', name: 'JobStatus')
    JobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#JobSummaries', name: 'JobSummaries')
    JobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#JobSummary', name: 'JobSummary')
    JobType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#JobType', name: 'JobType', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    LastDeployTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.amplify#LastDeployTime', name: 'LastDeployTime')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ListAppsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListAppsRequest', name: 'ListAppsRequest')
    ListAppsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListAppsResult', name: 'ListAppsResult')
    ListArtifactsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListArtifactsRequest', name: 'ListArtifactsRequest')
    ListArtifactsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListArtifactsResult', name: 'ListArtifactsResult')
    ListBackendEnvironmentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListBackendEnvironmentsRequest', name: 'ListBackendEnvironmentsRequest')
    ListBackendEnvironmentsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListBackendEnvironmentsResult', name: 'ListBackendEnvironmentsResult')
    ListBranchesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListBranchesRequest', name: 'ListBranchesRequest')
    ListBranchesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListBranchesResult', name: 'ListBranchesResult')
    ListDomainAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListDomainAssociationsRequest', name: 'ListDomainAssociationsRequest')
    ListDomainAssociationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListDomainAssociationsResult', name: 'ListDomainAssociationsResult')
    ListJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListJobsRequest', name: 'ListJobsRequest')
    ListJobsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListJobsResult', name: 'ListJobsResult')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListWebhooksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListWebhooksRequest', name: 'ListWebhooksRequest')
    ListWebhooksResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ListWebhooksResult', name: 'ListWebhooksResult')
    LogUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#LogUrl', name: 'LogUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    MD5Hash = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#MD5Hash', name: 'MD5Hash', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^(?s)"})
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.amplify#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 50}})
    MaxResultsForListApps = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.amplify#MaxResultsForListApps', name: 'MaxResultsForListApps', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#Name', name: 'Name', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?s).+$"})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}, "smithy.api#pattern" => "^(?s)"})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OauthToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#OauthToken', name: 'OauthToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)", "smithy.api#sensitive" => {}})
    Platform = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#Platform', name: 'Platform')
    ProductionBranch = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ProductionBranch', name: 'ProductionBranch')
    PullRequestEnvironmentName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#PullRequestEnvironmentName', name: 'PullRequestEnvironmentName', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}, "smithy.api#pattern" => "^(?s)"})
    Repository = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#Repository', name: 'Repository', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    RepositoryCloneMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#RepositoryCloneMethod', name: 'RepositoryCloneMethod')
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:amplify:"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Screenshots = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplify#Screenshots', name: 'Screenshots')
    ServiceRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#ServiceRoleArn', name: 'ServiceRoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^(?s)"})
    Source = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#Source', name: 'Source', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?s).+$"})
    SourceUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#SourceUrl', name: 'SourceUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 3000}, "smithy.api#pattern" => "^(s3|https|http)://"})
    SourceUrlType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#SourceUrlType', name: 'SourceUrlType')
    StackArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#StackArn', name: 'StackArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:cloudformation:[a-z0-9-]+:\\d{12}:stack/.+/.+$"})
    StackName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#StackName', name: 'StackName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?s).+$"})
    Stage = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#Stage', name: 'Stage')
    StartDeploymentRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#StartDeploymentRequest', name: 'StartDeploymentRequest')
    StartDeploymentResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#StartDeploymentResult', name: 'StartDeploymentResult')
    StartJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#StartJobRequest', name: 'StartJobRequest')
    StartJobResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#StartJobResult', name: 'StartJobResult')
    StartTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.amplify#StartTime', name: 'StartTime')
    Status = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#Status', name: 'Status', traits: {"smithy.api#length" => {"min" => 3, "max" => 7}, "smithy.api#pattern" => "^.{3,7}$"})
    StatusReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#StatusReason', name: 'StatusReason', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Step = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#Step', name: 'Step')
    StepName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#StepName', name: 'StepName', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}})
    Steps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#Steps', name: 'Steps')
    StopJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#StopJobRequest', name: 'StopJobRequest')
    StopJobResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#StopJobResult', name: 'StopJobResult')
    SubDomain = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#SubDomain', name: 'SubDomain')
    SubDomainSetting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#SubDomainSetting', name: 'SubDomainSetting')
    SubDomainSettings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#SubDomainSettings', name: 'SubDomainSettings', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    SubDomains = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#SubDomains', name: 'SubDomains', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    TTL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#TTL', name: 'TTL', traits: {"smithy.api#length" => {"min" => 0, "max" => 32}, "smithy.api#pattern" => "^\\d*$"})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.amplify#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Target = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#Target', name: 'Target', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?s).+$"})
    TestArtifactsUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#TestArtifactsUrl', name: 'TestArtifactsUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    TestConfigUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#TestConfigUrl', name: 'TestConfigUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ThumbnailName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#ThumbnailName', name: 'ThumbnailName', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThumbnailUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#ThumbnailUrl', name: 'ThumbnailUrl', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}})
    TotalNumberOfJobs = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#TotalNumberOfJobs', name: 'TotalNumberOfJobs', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAppRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#UpdateAppRequest', name: 'UpdateAppRequest')
    UpdateAppResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#UpdateAppResult', name: 'UpdateAppResult')
    UpdateBranchRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#UpdateBranchRequest', name: 'UpdateBranchRequest')
    UpdateBranchResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#UpdateBranchResult', name: 'UpdateBranchResult')
    UpdateDomainAssociationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#UpdateDomainAssociationRequest', name: 'UpdateDomainAssociationRequest')
    UpdateDomainAssociationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#UpdateDomainAssociationResult', name: 'UpdateDomainAssociationResult')
    UpdateStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#UpdateStatus', name: 'UpdateStatus')
    UpdateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.amplify#UpdateTime', name: 'UpdateTime')
    UpdateWebhookRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#UpdateWebhookRequest', name: 'UpdateWebhookRequest')
    UpdateWebhookResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#UpdateWebhookResult', name: 'UpdateWebhookResult')
    UploadUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#UploadUrl', name: 'UploadUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Verified = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.amplify#Verified', name: 'Verified')
    WafConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#WafConfiguration', name: 'WafConfiguration')
    WafStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.amplify#WafStatus', name: 'WafStatus')
    WebAclArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#WebAclArn', name: 'WebAclArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^arn:aws:wafv2:"})
    Webhook = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.amplify#Webhook', name: 'Webhook')
    WebhookArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#WebhookArn', name: 'WebhookArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    WebhookId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#WebhookId', name: 'WebhookId', traits: {"smithy.api#length" => {"min" => 0, "max" => 255}, "smithy.api#pattern" => "^(?s)"})
    WebhookUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.amplify#WebhookUrl', name: 'WebhookUrl', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Webhooks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.amplify#Webhooks', name: 'Webhooks')
    WebhookCreateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.amplify#webhookCreateTime', name: 'WebhookCreateTime')

    App.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of the Amplify app. </p>", "smithy.api#required" => {}}))
    App.add_member(:app_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AppArn, location_name: 'appArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amplify app. </p>", "smithy.api#required" => {}}))
    App.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for the Amplify app. </p>", "smithy.api#required" => {}}))
    App.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tag for the Amplify app. </p>"}))
    App.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the Amplify app. </p>", "smithy.api#required" => {}}))
    App.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The Git repository for the Amplify app. </p>", "smithy.api#required" => {}}))
    App.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Platform, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The platform for the Amplify app. For a static app, set the platform type to\n                <code>WEB</code>. For a dynamic server-side rendered (SSR) app, set the platform\n            type to <code>WEB_COMPUTE</code>. For an app requiring Amplify Hosting's original SSR\n            support only, set the platform type to <code>WEB_DYNAMIC</code>.</p>\n         <p>If you are deploying an SSG only app with Next.js 14 or later, you must use the\n            platform type <code>WEB_COMPUTE</code>.</p>", "smithy.api#required" => {}}))
    App.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTime, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>A timestamp of when Amplify created the application.</p>", "smithy.api#required" => {}}))
    App.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>A timestamp of when Amplify updated the application.</p>", "smithy.api#required" => {}}))
    App.add_member(:compute_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeRoleArn, location_name: 'computeRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role for an SSR app. The\n            Compute role allows the Amplify Hosting compute service to securely\n            access specific Amazon Web Services resources based on the role's permissions. For more\n            information about the SSR Compute role, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html\">Adding an SSR Compute\n                role</a> in the <i>Amplify User Guide</i>.</p>"}))
    App.add_member(:iam_service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceRoleArn, location_name: 'iamServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role for the Amplify app.</p>"}))
    App.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p>The environment variables for the Amplify app. </p>\n         <p>For a list of the environment variables that are accessible to Amplify by default, see\n                <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/amplify-console-environment-variables.html\">Amplify\n                Environment variables</a> in the <i>Amplify Hosting User\n            Guide</i>.</p>", "smithy.api#required" => {}}))
    App.add_member(:default_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultDomain, location_name: 'defaultDomain', traits: {"smithy.api#documentation" => "<p>The default domain for the Amplify app. </p>", "smithy.api#required" => {}}))
    App.add_member(:enable_branch_auto_build, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBranchAutoBuild, location_name: 'enableBranchAutoBuild', traits: {"smithy.api#documentation" => "<p>Enables the auto-building of branches for the Amplify app. </p>", "smithy.api#required" => {}}))
    App.add_member(:enable_branch_auto_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBranchAutoDeletion, location_name: 'enableBranchAutoDeletion', traits: {"smithy.api#documentation" => "<p>Automatically disconnect a branch in the Amplify console when you delete a branch from\n            your Git repository.</p>"}))
    App.add_member(:enable_basic_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: 'enableBasicAuth', traits: {"smithy.api#documentation" => "<p>Enables basic authorization for the Amplify app's branches. </p>", "smithy.api#required" => {}}))
    App.add_member(:basic_auth_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: 'basicAuthCredentials', traits: {"smithy.api#documentation" => "<p>The basic authorization credentials for branches for the Amplify app. You must\n            base64-encode the authorization credentials and provide them in the format\n                <code>user:password</code>.</p>"}))
    App.add_member(:custom_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRules, location_name: 'customRules', traits: {"smithy.api#documentation" => "<p>Describes the custom redirect and rewrite rules for the Amplify app. </p>"}))
    App.add_member(:production_branch, Smithy::Schema::Shapes::ShapeRef.new(shape: ProductionBranch, location_name: 'productionBranch', traits: {"smithy.api#documentation" => "<p>Describes the information about a production branch of the Amplify app. </p>"}))
    App.add_member(:build_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSpec, location_name: 'buildSpec', traits: {"smithy.api#documentation" => "<p>Describes the content of the build specification (build spec) for the Amplify app.\n        </p>"}))
    App.add_member(:custom_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomHeaders, location_name: 'customHeaders', traits: {"smithy.api#documentation" => "<p>Describes the custom HTTP headers for the Amplify app.</p>"}))
    App.add_member(:enable_auto_branch_creation, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAutoBranchCreation, location_name: 'enableAutoBranchCreation', traits: {"smithy.api#documentation" => "<p>Enables automated branch creation for the Amplify app. </p>"}))
    App.add_member(:auto_branch_creation_patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoBranchCreationPatterns, location_name: 'autoBranchCreationPatterns', traits: {"smithy.api#documentation" => "<p>Describes the automated branch creation glob patterns for the Amplify app. </p>"}))
    App.add_member(:auto_branch_creation_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoBranchCreationConfig, location_name: 'autoBranchCreationConfig', traits: {"smithy.api#documentation" => "<p>Describes the automated branch creation configuration for the Amplify app. </p>"}))
    App.add_member(:repository_clone_method, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryCloneMethod, location_name: 'repositoryCloneMethod', traits: {"smithy.api#documentation" => "<note>\n            <p>This is for internal use.</p>\n         </note>\n         <p>The Amplify service uses this parameter to specify the authentication protocol to use\n            to access the Git repository for an Amplify app. Amplify specifies <code>TOKEN</code>\n            for a GitHub repository, <code>SIGV4</code> for an Amazon Web Services CodeCommit\n            repository, and <code>SSH</code> for GitLab and Bitbucket repositories.</p>"}))
    App.add_member(:cache_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheConfig, location_name: 'cacheConfig', traits: {"smithy.api#documentation" => "<p>The cache configuration for the Amplify app. If you don't specify the\n            cache configuration <code>type</code>, Amplify uses the default\n                <code>AMPLIFY_MANAGED</code> setting.</p>"}))
    App.add_member(:webhook_create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookCreateTime, location_name: 'webhookCreateTime', traits: {"smithy.api#documentation" => "<p>A timestamp of when Amplify created the webhook in your Git\n            repository.</p>"}))
    App.add_member(:waf_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: WafConfiguration, location_name: 'wafConfiguration', traits: {"smithy.api#documentation" => "<p>Describes the Firewall configuration for the Amplify app. Firewall\n            support enables you to protect your hosted applications with a direct integration with\n                WAF.</p>"}))
    App.add_member(:job_config, Smithy::Schema::Shapes::ShapeRef.new(shape: JobConfig, location_name: 'jobConfig', traits: {"smithy.api#documentation" => "<p>The configuration details that apply to the jobs for an Amplify app.</p>"}))
    App.type = Types::App
    Apps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: App)
    Artifact.add_member(:artifact_file_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactFileName, location_name: 'artifactFileName', traits: {"smithy.api#documentation" => "<p>The file name for the artifact. </p>", "smithy.api#required" => {}}))
    Artifact.add_member(:artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactId, location_name: 'artifactId', traits: {"smithy.api#documentation" => "<p>The unique ID for the artifact. </p>", "smithy.api#required" => {}}))
    Artifact.type = Types::Artifact
    Artifacts.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Artifact)
    AssociatedResources.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedResource)
    AutoBranchCreationConfig.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: Stage, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>Describes the current stage for the autocreated branch. </p>"}))
    AutoBranchCreationConfig.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'framework', traits: {"smithy.api#documentation" => "<p>The framework for the autocreated branch. </p>"}))
    AutoBranchCreationConfig.add_member(:enable_auto_build, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAutoBuild, location_name: 'enableAutoBuild', traits: {"smithy.api#documentation" => "<p>Enables auto building for the autocreated branch. </p>"}))
    AutoBranchCreationConfig.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p>The environment variables for the autocreated branch. </p>"}))
    AutoBranchCreationConfig.add_member(:basic_auth_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: 'basicAuthCredentials', traits: {"smithy.api#documentation" => "<p>The basic authorization credentials for the autocreated branch. You must base64-encode\n            the authorization credentials and provide them in the format\n            <code>user:password</code>.</p>"}))
    AutoBranchCreationConfig.add_member(:enable_basic_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: 'enableBasicAuth', traits: {"smithy.api#documentation" => "<p>Enables basic authorization for the autocreated branch. </p>"}))
    AutoBranchCreationConfig.add_member(:enable_performance_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePerformanceMode, location_name: 'enablePerformanceMode', traits: {"smithy.api#documentation" => "<p>Enables performance mode for the branch.</p>\n         <p>Performance mode optimizes for faster hosting performance by keeping content cached at\n            the edge for a longer interval. When performance mode is enabled, hosting configuration\n            or code changes can take up to 10 minutes to roll out. </p>"}))
    AutoBranchCreationConfig.add_member(:build_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSpec, location_name: 'buildSpec', traits: {"smithy.api#documentation" => "<p>The build specification (build spec) for the autocreated branch. </p>"}))
    AutoBranchCreationConfig.add_member(:enable_pull_request_preview, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePullRequestPreview, location_name: 'enablePullRequestPreview', traits: {"smithy.api#documentation" => "<p>Enables pull request previews for the autocreated branch. </p>"}))
    AutoBranchCreationConfig.add_member(:pull_request_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestEnvironmentName, location_name: 'pullRequestEnvironmentName', traits: {"smithy.api#documentation" => "<p>The Amplify environment name for the pull request. </p>"}))
    AutoBranchCreationConfig.type = Types::AutoBranchCreationConfig
    AutoBranchCreationPatterns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutoBranchCreationPattern)
    AutoSubDomainCreationPatterns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSubDomainCreationPattern)
    Backend.add_member(:stack_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: StackArn, location_name: 'stackArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the CloudFormation stack.</p>"}))
    Backend.type = Types::Backend
    BackendEnvironment.add_member(:backend_environment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendEnvironmentArn, location_name: 'backendEnvironmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify\n            app. </p>", "smithy.api#required" => {}}))
    BackendEnvironment.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name for a backend environment that is part of an Amplify app. </p>", "smithy.api#required" => {}}))
    BackendEnvironment.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StackName, location_name: 'stackName', traits: {"smithy.api#documentation" => "<p>The AWS CloudFormation stack name of a backend environment. </p>"}))
    BackendEnvironment.add_member(:deployment_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentArtifacts, location_name: 'deploymentArtifacts', traits: {"smithy.api#documentation" => "<p>The name of deployment artifacts. </p>"}))
    BackendEnvironment.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTime, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>The creation date and time for a backend environment that is part of an Amplify app.\n        </p>", "smithy.api#required" => {}}))
    BackendEnvironment.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>The last updated date and time for a backend environment that is part of an Amplify\n            app. </p>", "smithy.api#required" => {}}))
    BackendEnvironment.type = Types::BackendEnvironment
    BackendEnvironments.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BackendEnvironment)
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    BadRequestException.type = Types::BadRequestException
    Branch.add_member(:branch_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchArn, location_name: 'branchArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) for a branch that is part of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p> The name for the branch that is part of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description for the branch that is part of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The tag for the branch of an Amplify app. </p>"}))
    Branch.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: Stage, location_name: 'stage', traits: {"smithy.api#documentation" => "<p> The current stage for the branch that is part of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p> The display name for the branch. This is used as the default domain prefix. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:enable_notification, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableNotification, location_name: 'enableNotification', traits: {"smithy.api#documentation" => "<p> Enables notifications for a branch that is part of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTime, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>A timestamp of when Amplify created the branch.</p>", "smithy.api#required" => {}}))
    Branch.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>A timestamp for the last updated time for a branch.</p>", "smithy.api#required" => {}}))
    Branch.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p> The environment variables specific to a branch of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:enable_auto_build, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAutoBuild, location_name: 'enableAutoBuild', traits: {"smithy.api#documentation" => "<p> Enables auto-building on push for a branch of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:enable_skew_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSkewProtection, location_name: 'enableSkewProtection', traits: {"smithy.api#documentation" => "<p>Specifies whether the skew protection feature is enabled for the branch.</p>\n         <p>Deployment skew protection is available to Amplify applications to\n            eliminate version skew issues between client and servers in web applications. When you\n            apply skew protection to a branch, you can ensure that your clients always interact with\n            the correct version of server-side assets, regardless of when a deployment occurs. For\n            more information about skew protection, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/skew-protection.html\">Skew protection for Amplify deployments</a> in the <i>Amplify User\n                Guide</i>.</p>"}))
    Branch.add_member(:custom_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomains, location_name: 'customDomains', traits: {"smithy.api#documentation" => "<p> The custom domains for a branch of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'framework', traits: {"smithy.api#documentation" => "<p> The framework for a branch of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:active_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ActiveJobId, location_name: 'activeJobId', traits: {"smithy.api#documentation" => "<p> The ID of the active job for a branch of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:total_number_of_jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: TotalNumberOfJobs, location_name: 'totalNumberOfJobs', traits: {"smithy.api#documentation" => "<p> The total number of jobs that are part of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:enable_basic_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: 'enableBasicAuth', traits: {"smithy.api#documentation" => "<p> Enables basic authorization for a branch of an Amplify app. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:enable_performance_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePerformanceMode, location_name: 'enablePerformanceMode', traits: {"smithy.api#documentation" => "<p>Enables performance mode for the branch.</p>\n         <p>Performance mode optimizes for faster hosting performance by keeping content cached at\n            the edge for a longer interval. When performance mode is enabled, hosting configuration\n            or code changes can take up to 10 minutes to roll out. </p>"}))
    Branch.add_member(:thumbnail_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailUrl, location_name: 'thumbnailUrl', traits: {"smithy.api#documentation" => "<p> The thumbnail URL for the branch of an Amplify app. </p>"}))
    Branch.add_member(:basic_auth_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: 'basicAuthCredentials', traits: {"smithy.api#documentation" => "<p> The basic authorization credentials for a branch of an Amplify app. You must\n            base64-encode the authorization credentials and provide them in the format\n                <code>user:password</code>.</p>"}))
    Branch.add_member(:build_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSpec, location_name: 'buildSpec', traits: {"smithy.api#documentation" => "<p> The build specification (build spec) content for the branch of an Amplify app.\n        </p>"}))
    Branch.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: TTL, location_name: 'ttl', traits: {"smithy.api#documentation" => "<p> The content Time to Live (TTL) for the website in seconds. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:associated_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedResources, location_name: 'associatedResources', traits: {"smithy.api#documentation" => "<p> A list of custom resources that are linked to this branch. </p>"}))
    Branch.add_member(:enable_pull_request_preview, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePullRequestPreview, location_name: 'enablePullRequestPreview', traits: {"smithy.api#documentation" => "<p> Enables pull request previews for the branch. </p>", "smithy.api#required" => {}}))
    Branch.add_member(:pull_request_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestEnvironmentName, location_name: 'pullRequestEnvironmentName', traits: {"smithy.api#documentation" => "<p> The Amplify environment name for the pull request. </p>"}))
    Branch.add_member(:destination_branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'destinationBranch', traits: {"smithy.api#documentation" => "<p> The destination branch if the branch is a pull request branch. </p>"}))
    Branch.add_member(:source_branch, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'sourceBranch', traits: {"smithy.api#documentation" => "<p> The source branch if the branch is a pull request branch. </p>"}))
    Branch.add_member(:backend_environment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendEnvironmentArn, location_name: 'backendEnvironmentArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify app. </p>\n         <p>This property is available to Amplify Gen 1 apps only. When you deploy\n            an application with Amplify Gen 2, you provision the app's backend infrastructure using\n            Typescript code.</p>"}))
    Branch.add_member(:backend, Smithy::Schema::Shapes::ShapeRef.new(shape: Backend, location_name: 'backend'))
    Branch.add_member(:compute_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeRoleArn, location_name: 'computeRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role for a branch of an SSR\n            app. The Compute role allows the Amplify Hosting compute service to\n            securely access specific Amazon Web Services resources based on the role's permissions.\n            For more information about the SSR Compute role, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html\">Adding an SSR Compute\n                role</a> in the <i>Amplify User Guide</i>.</p>"}))
    Branch.type = Types::Branch
    Branches.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Branch)
    BuildComputeType.add_member(:standard_8_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD_8GB', traits: {"smithy.api#enumValue" => "STANDARD_8GB"}))
    BuildComputeType.add_member(:large_16_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LARGE_16GB', traits: {"smithy.api#enumValue" => "LARGE_16GB"}))
    BuildComputeType.add_member(:xlarge_72_gb, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'XLARGE_72GB', traits: {"smithy.api#enumValue" => "XLARGE_72GB"}))
    CacheConfig.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheConfigType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of cache configuration to use for an Amplify app.</p>\n         <p>The <code>AMPLIFY_MANAGED</code> cache configuration automatically applies an\n            optimized cache configuration for your app based on its platform, routing rules, and\n            rewrite rules.</p>\n         <p>The <code>AMPLIFY_MANAGED_NO_COOKIES</code> cache configuration type is the same as\n                <code>AMPLIFY_MANAGED</code>, except that it excludes all cookies from the cache\n            key. This is the default setting.</p>", "smithy.api#required" => {}}))
    CacheConfig.type = Types::CacheConfig
    CacheConfigType.add_member(:amplify_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMPLIFY_MANAGED', traits: {"smithy.api#enumValue" => "AMPLIFY_MANAGED"}))
    CacheConfigType.add_member(:amplify_managed_no_cookies, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMPLIFY_MANAGED_NO_COOKIES', traits: {"smithy.api#enumValue" => "AMPLIFY_MANAGED_NO_COOKIES"}))
    Certificate.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of SSL/TLS certificate that you want to use.</p>\n         <p>Specify <code>AMPLIFY_MANAGED</code> to use the default certificate that Amplify\n            provisions for you.</p>\n         <p>Specify <code>CUSTOM</code> to use your own certificate that you have already added to\n                Certificate Manager in your Amazon Web Services account. Make sure you request (or\n            import) the certificate in the US East (N. Virginia) Region (us-east-1). For more\n            information about using ACM, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html\">Importing certificates into\n                    Certificate Manager</a> in the <i>ACM User\n                guide</i>.</p>", "smithy.api#required" => {}}))
    Certificate.add_member(:custom_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'customCertificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) for a custom certificate that you have already added to\n                Certificate Manager in your Amazon Web Services account. </p>\n         <p>This field is required only when the certificate type is <code>CUSTOM</code>.</p>"}))
    Certificate.add_member(:certificate_verification_dns_record, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateVerificationDNSRecord, location_name: 'certificateVerificationDNSRecord', traits: {"smithy.api#documentation" => "<p>The DNS record for certificate verification.</p>"}))
    Certificate.type = Types::Certificate
    CertificateSettings.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The certificate type.</p>\n         <p>Specify <code>AMPLIFY_MANAGED</code> to use the default certificate that Amplify\n            provisions for you.</p>\n         <p>Specify <code>CUSTOM</code> to use your own certificate that you have already added to\n                Certificate Manager in your Amazon Web Services account. Make sure you request (or\n            import) the certificate in the US East (N. Virginia) Region (us-east-1). For more\n            information about using ACM, see <a href=\"https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html\">Importing certificates into\n                    Certificate Manager</a> in the <i>ACM User\n                guide</i>.</p>", "smithy.api#required" => {}}))
    CertificateSettings.add_member(:custom_certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateArn, location_name: 'customCertificateArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) for the custom certificate that you have already added\n            to Certificate Manager in your Amazon Web Services account.</p>\n         <p>This field is required only when the certificate type is <code>CUSTOM</code>.</p>"}))
    CertificateSettings.type = Types::CertificateSettings
    CertificateType.add_member(:amplify_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMPLIFY_MANAGED', traits: {"smithy.api#enumValue" => "AMPLIFY_MANAGED"}))
    CertificateType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    CreateAppRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the Amplify app. </p>", "smithy.api#required" => {}}))
    CreateAppRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the Amplify app. </p>"}))
    CreateAppRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The Git repository for the Amplify app. </p>"}))
    CreateAppRequest.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Platform, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The platform for the Amplify app. For a static app, set the platform type to\n                <code>WEB</code>. For a dynamic server-side rendered (SSR) app, set the platform\n            type to <code>WEB_COMPUTE</code>. For an app requiring Amplify Hosting's original SSR\n            support only, set the platform type to <code>WEB_DYNAMIC</code>.</p>\n         <p>If you are deploying an SSG only app with Next.js version 14 or later, you must set\n            the platform type to <code>WEB_COMPUTE</code> and set the artifacts\n                <code>baseDirectory</code> to <code>.next</code> in the application's build\n            settings. For an example of the build specification settings, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/deploy-nextjs-app.html#build-setting-detection-ssg-14\">Amplify build settings for a Next.js 14 SSG application</a> in the\n                <i>Amplify Hosting User Guide</i>.</p>"}))
    CreateAppRequest.add_member(:compute_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeRoleArn, location_name: 'computeRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to assign to an SSR app.\n            The SSR Compute role allows the Amplify Hosting compute service to\n            securely access specific Amazon Web Services resources based on the role's permissions.\n            For more information about the SSR Compute role, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html\">Adding an SSR Compute\n                role</a> in the <i>Amplify User Guide</i>.</p>"}))
    CreateAppRequest.add_member(:iam_service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceRoleArn, location_name: 'iamServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role for the Amplify app.</p>"}))
    CreateAppRequest.add_member(:oauth_token, Smithy::Schema::Shapes::ShapeRef.new(shape: OauthToken, location_name: 'oauthToken', traits: {"smithy.api#documentation" => "<p>The OAuth token for a third-party source control system for an Amplify app. The OAuth\n            token is used to create a webhook and a read-only deploy key using SSH cloning. The\n            OAuth token is not stored.</p>\n         <p>Use <code>oauthToken</code> for repository providers other than GitHub, such as\n            Bitbucket or CodeCommit. To authorize access to GitHub as your repository provider, use\n                <code>accessToken</code>.</p>\n         <p>You must specify either <code>oauthToken</code> or <code>accessToken</code> when you\n            create a new app.</p>\n         <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work\n            with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub\n            App. For more information, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth\">Migrating an existing OAuth app to the Amplify GitHub App</a> in the\n                <i>Amplify User Guide</i> .</p>"}))
    CreateAppRequest.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToken, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>The personal access token for a GitHub repository for an Amplify app. The personal\n            access token is used to authorize access to a GitHub repository using the Amplify GitHub\n            App. The token is not stored.</p>\n         <p>Use <code>accessToken</code> for GitHub repositories only. To authorize access to a\n            repository provider such as Bitbucket or CodeCommit, use <code>oauthToken</code>.</p>\n         <p>You must specify either <code>accessToken</code> or <code>oauthToken</code> when you\n            create a new app.</p>\n         <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work\n            with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub\n            App. For more information, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth\">Migrating an existing OAuth app to the Amplify GitHub App</a> in the\n                <i>Amplify User Guide</i> .</p>"}))
    CreateAppRequest.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p>The environment variables map for an Amplify app. </p>\n         <p>For a list of the environment variables that are accessible to Amplify by default, see\n                <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/amplify-console-environment-variables.html\">Amplify\n                Environment variables</a> in the <i>Amplify Hosting User\n            Guide</i>.</p>"}))
    CreateAppRequest.add_member(:enable_branch_auto_build, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBranchAutoBuild, location_name: 'enableBranchAutoBuild', traits: {"smithy.api#documentation" => "<p>Enables the auto building of branches for an Amplify app. </p>"}))
    CreateAppRequest.add_member(:enable_branch_auto_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBranchAutoDeletion, location_name: 'enableBranchAutoDeletion', traits: {"smithy.api#documentation" => "<p>Automatically disconnects a branch in the Amplify console when you delete a branch\n            from your Git repository. </p>"}))
    CreateAppRequest.add_member(:enable_basic_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: 'enableBasicAuth', traits: {"smithy.api#documentation" => "<p>Enables basic authorization for an Amplify app. This will apply to all branches that\n            are part of this app. </p>"}))
    CreateAppRequest.add_member(:basic_auth_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: 'basicAuthCredentials', traits: {"smithy.api#documentation" => "<p>The credentials for basic authorization for an Amplify app. You must base64-encode the\n            authorization credentials and provide them in the format\n            <code>user:password</code>.</p>"}))
    CreateAppRequest.add_member(:custom_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRules, location_name: 'customRules', traits: {"smithy.api#documentation" => "<p>The custom rewrite and redirect rules for an Amplify app. </p>"}))
    CreateAppRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tag for an Amplify app. </p>"}))
    CreateAppRequest.add_member(:build_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSpec, location_name: 'buildSpec', traits: {"smithy.api#documentation" => "<p>The build specification (build spec) for an Amplify app. </p>"}))
    CreateAppRequest.add_member(:custom_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomHeaders, location_name: 'customHeaders', traits: {"smithy.api#documentation" => "<p>The custom HTTP headers for an Amplify app.</p>"}))
    CreateAppRequest.add_member(:enable_auto_branch_creation, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAutoBranchCreation, location_name: 'enableAutoBranchCreation', traits: {"smithy.api#documentation" => "<p>Enables automated branch creation for an Amplify app. </p>"}))
    CreateAppRequest.add_member(:auto_branch_creation_patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoBranchCreationPatterns, location_name: 'autoBranchCreationPatterns', traits: {"smithy.api#documentation" => "<p>The automated branch creation glob patterns for an Amplify app. </p>"}))
    CreateAppRequest.add_member(:auto_branch_creation_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoBranchCreationConfig, location_name: 'autoBranchCreationConfig', traits: {"smithy.api#documentation" => "<p>The automated branch creation configuration for an Amplify app. </p>"}))
    CreateAppRequest.add_member(:job_config, Smithy::Schema::Shapes::ShapeRef.new(shape: JobConfig, location_name: 'jobConfig', traits: {"smithy.api#documentation" => "<p>Describes the configuration details that apply to the jobs for an Amplify app.</p>"}))
    CreateAppRequest.add_member(:cache_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheConfig, location_name: 'cacheConfig', traits: {"smithy.api#documentation" => "<p>The cache configuration for the Amplify app.</p>"}))
    CreateAppRequest.type = Types::CreateAppRequest
    CreateAppResult.add_member(:app, Smithy::Schema::Shapes::ShapeRef.new(shape: App, location_name: 'app', traits: {"smithy.api#required" => {}}))
    CreateAppResult.type = Types::CreateAppResult
    CreateBackendEnvironmentRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBackendEnvironmentRequest.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name for the backend environment. </p>", "smithy.api#required" => {}}))
    CreateBackendEnvironmentRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StackName, location_name: 'stackName', traits: {"smithy.api#documentation" => "<p>The AWS CloudFormation stack name of a backend environment. </p>"}))
    CreateBackendEnvironmentRequest.add_member(:deployment_artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentArtifacts, location_name: 'deploymentArtifacts', traits: {"smithy.api#documentation" => "<p>The name of deployment artifacts. </p>"}))
    CreateBackendEnvironmentRequest.type = Types::CreateBackendEnvironmentRequest
    CreateBackendEnvironmentResult.add_member(:backend_environment, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendEnvironment, location_name: 'backendEnvironment', traits: {"smithy.api#documentation" => "<p>Describes the backend environment for an Amplify app. </p>", "smithy.api#required" => {}}))
    CreateBackendEnvironmentResult.type = Types::CreateBackendEnvironmentResult
    CreateBranchRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateBranchRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name for the branch. </p>", "smithy.api#required" => {}}))
    CreateBranchRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for the branch. </p>"}))
    CreateBranchRequest.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: Stage, location_name: 'stage', traits: {"smithy.api#documentation" => "<p>Describes the current stage for the branch. </p>"}))
    CreateBranchRequest.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'framework', traits: {"smithy.api#documentation" => "<p> The framework for the branch. </p>"}))
    CreateBranchRequest.add_member(:enable_notification, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableNotification, location_name: 'enableNotification', traits: {"smithy.api#documentation" => "<p> Enables notifications for the branch. </p>"}))
    CreateBranchRequest.add_member(:enable_auto_build, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAutoBuild, location_name: 'enableAutoBuild', traits: {"smithy.api#documentation" => "<p> Enables auto building for the branch. </p>"}))
    CreateBranchRequest.add_member(:enable_skew_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSkewProtection, location_name: 'enableSkewProtection', traits: {"smithy.api#documentation" => "<p>Specifies whether the skew protection feature is enabled for the branch.</p>\n         <p>Deployment skew protection is available to Amplify applications to\n            eliminate version skew issues between client and servers in web applications. When you\n            apply skew protection to a branch, you can ensure that your clients always interact with\n            the correct version of server-side assets, regardless of when a deployment occurs. For\n            more information about skew protection, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/skew-protection.html\">Skew protection for Amplify deployments</a> in the <i>Amplify User\n                Guide</i>.</p>"}))
    CreateBranchRequest.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p> The environment variables for the branch. </p>"}))
    CreateBranchRequest.add_member(:basic_auth_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: 'basicAuthCredentials', traits: {"smithy.api#documentation" => "<p> The basic authorization credentials for the branch. You must base64-encode the\n            authorization credentials and provide them in the format\n            <code>user:password</code>.</p>"}))
    CreateBranchRequest.add_member(:enable_basic_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: 'enableBasicAuth', traits: {"smithy.api#documentation" => "<p> Enables basic authorization for the branch. </p>"}))
    CreateBranchRequest.add_member(:enable_performance_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePerformanceMode, location_name: 'enablePerformanceMode', traits: {"smithy.api#documentation" => "<p>Enables performance mode for the branch.</p>\n         <p>Performance mode optimizes for faster hosting performance by keeping content cached at\n            the edge for a longer interval. When performance mode is enabled, hosting configuration\n            or code changes can take up to 10 minutes to roll out. </p>"}))
    CreateBranchRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p> The tag for the branch. </p>"}))
    CreateBranchRequest.add_member(:build_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSpec, location_name: 'buildSpec', traits: {"smithy.api#documentation" => "<p> The build specification (build spec) for the branch. </p>"}))
    CreateBranchRequest.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: TTL, location_name: 'ttl', traits: {"smithy.api#documentation" => "<p> The content Time To Live (TTL) for the website in seconds. </p>"}))
    CreateBranchRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p> The display name for a branch. This is used as the default domain prefix. </p>"}))
    CreateBranchRequest.add_member(:enable_pull_request_preview, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePullRequestPreview, location_name: 'enablePullRequestPreview', traits: {"smithy.api#documentation" => "<p> Enables pull request previews for this branch. </p>"}))
    CreateBranchRequest.add_member(:pull_request_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestEnvironmentName, location_name: 'pullRequestEnvironmentName', traits: {"smithy.api#documentation" => "<p> The Amplify environment name for the pull request. </p>"}))
    CreateBranchRequest.add_member(:backend_environment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendEnvironmentArn, location_name: 'backendEnvironmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for a backend environment that is part of a Gen 1\n            Amplify app. </p>\n         <p>This field is available to Amplify Gen 1 apps only where the backend is\n            created using Amplify Studio or the Amplify command line\n            interface (CLI).</p>"}))
    CreateBranchRequest.add_member(:backend, Smithy::Schema::Shapes::ShapeRef.new(shape: Backend, location_name: 'backend', traits: {"smithy.api#documentation" => "<p>The backend for a <code>Branch</code> of an Amplify app. Use for a\n            backend created from an CloudFormation stack.</p>\n         <p>This field is available to Amplify Gen 2 apps only. When you deploy an\n            application with Amplify Gen 2, you provision the app's backend infrastructure using\n            Typescript code.</p>"}))
    CreateBranchRequest.add_member(:compute_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeRoleArn, location_name: 'computeRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to assign to a branch of\n            an SSR app. The SSR Compute role allows the Amplify Hosting compute\n            service to securely access specific Amazon Web Services resources based on the role's\n            permissions. For more information about the SSR Compute role, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html\">Adding an SSR Compute role</a> in the <i>Amplify User\n                Guide</i>.</p>"}))
    CreateBranchRequest.type = Types::CreateBranchRequest
    CreateBranchResult.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: Branch, location_name: 'branch', traits: {"smithy.api#documentation" => "<p> Describes the branch for an Amplify app, which maps to a third-party repository\n            branch. </p>", "smithy.api#required" => {}}))
    CreateBranchResult.type = Types::CreateBranchResult
    CreateDeploymentRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p> The name of the branch to use for the job. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDeploymentRequest.add_member(:file_map, Smithy::Schema::Shapes::ShapeRef.new(shape: FileMap, location_name: 'fileMap', traits: {"smithy.api#documentation" => "<p> An optional file map that contains the file name as the key and the file content md5\n            hash as the value. If this argument is provided, the service will generate a unique\n            upload URL per file. Otherwise, the service will only generate a single upload URL for\n            the zipped files. </p>"}))
    CreateDeploymentRequest.type = Types::CreateDeploymentRequest
    CreateDeploymentResult.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p> The job ID for this deployment. will supply to start deployment api. </p>"}))
    CreateDeploymentResult.add_member(:file_upload_urls, Smithy::Schema::Shapes::ShapeRef.new(shape: FileUploadUrls, location_name: 'fileUploadUrls', traits: {"smithy.api#documentation" => "<p> When the <code>fileMap</code> argument is provided in the request,\n                <code>fileUploadUrls</code> will contain a map of file names to upload URLs. </p>", "smithy.api#required" => {}}))
    CreateDeploymentResult.add_member(:zip_upload_url, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadUrl, location_name: 'zipUploadUrl', traits: {"smithy.api#documentation" => "<p> When the <code>fileMap</code> argument is not provided in the request, this\n                <code>zipUploadUrl</code> is returned. </p>", "smithy.api#required" => {}}))
    CreateDeploymentResult.type = Types::CreateDeploymentResult
    CreateDomainAssociationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateDomainAssociationRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p> The domain name for the domain association. </p>", "smithy.api#required" => {}}))
    CreateDomainAssociationRequest.add_member(:enable_auto_sub_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAutoSubDomain, location_name: 'enableAutoSubDomain', traits: {"smithy.api#documentation" => "<p> Enables the automated creation of subdomains for branches. </p>"}))
    CreateDomainAssociationRequest.add_member(:sub_domain_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SubDomainSettings, location_name: 'subDomainSettings', traits: {"smithy.api#documentation" => "<p> The setting for the subdomain. </p>", "smithy.api#required" => {}}))
    CreateDomainAssociationRequest.add_member(:auto_sub_domain_creation_patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSubDomainCreationPatterns, location_name: 'autoSubDomainCreationPatterns', traits: {"smithy.api#documentation" => "<p> Sets the branch patterns for automatic subdomain creation. </p>"}))
    CreateDomainAssociationRequest.add_member(:auto_sub_domain_iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSubDomainIAMRole, location_name: 'autoSubDomainIAMRole', traits: {"smithy.api#documentation" => "<p> The required AWS Identity and Access Management (IAM) service role for the Amazon\n            Resource Name (ARN) for automatically creating subdomains. </p>"}))
    CreateDomainAssociationRequest.add_member(:certificate_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSettings, location_name: 'certificateSettings', traits: {"smithy.api#documentation" => "<p>The type of SSL/TLS certificate to use for your custom domain. If you don't specify a\n            certificate type, Amplify uses the default certificate that it provisions and manages\n            for you.</p>"}))
    CreateDomainAssociationRequest.type = Types::CreateDomainAssociationRequest
    CreateDomainAssociationResult.add_member(:domain_association, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainAssociation, location_name: 'domainAssociation', traits: {"smithy.api#documentation" => "<p> Describes the structure of a domain association, which associates a custom domain\n            with an Amplify app. </p>", "smithy.api#required" => {}}))
    CreateDomainAssociationResult.type = Types::CreateDomainAssociationResult
    CreateWebhookRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateWebhookRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name for a branch that is part of an Amplify app. </p>", "smithy.api#required" => {}}))
    CreateWebhookRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for a webhook. </p>"}))
    CreateWebhookRequest.type = Types::CreateWebhookRequest
    CreateWebhookResult.add_member(:webhook, Smithy::Schema::Shapes::ShapeRef.new(shape: Webhook, location_name: 'webhook', traits: {"smithy.api#documentation" => "<p>Describes a webhook that connects repository events to an Amplify app. </p>", "smithy.api#required" => {}}))
    CreateWebhookResult.type = Types::CreateWebhookResult
    CustomDomains.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomain)
    CustomRule.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Source, location_name: 'source', traits: {"smithy.api#documentation" => "<p>The source pattern for a URL rewrite or redirect rule. </p>", "smithy.api#required" => {}}))
    CustomRule.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: Target, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The target pattern for a URL rewrite or redirect rule. </p>", "smithy.api#required" => {}}))
    CustomRule.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status code for a URL rewrite or redirect rule. </p>\n         <dl>\n            <dt>200</dt>\n            <dd>\n               <p>Represents a 200 rewrite rule.</p>\n            </dd>\n            <dt>301</dt>\n            <dd>\n               <p>Represents a 301 (moved permanently) redirect rule. This and all future\n                        requests should be directed to the target URL. </p>\n            </dd>\n            <dt>302</dt>\n            <dd>\n               <p>Represents a 302 temporary redirect rule.</p>\n            </dd>\n            <dt>404</dt>\n            <dd>\n               <p>Represents a 404 redirect rule.</p>\n            </dd>\n            <dt>404-200</dt>\n            <dd>\n               <p>Represents a 404 rewrite rule.</p>\n            </dd>\n         </dl>"}))
    CustomRule.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>The condition for a URL rewrite or redirect rule, such as a country code. </p>"}))
    CustomRule.type = Types::CustomRule
    CustomRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRule)
    DeleteAppRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAppRequest.type = Types::DeleteAppRequest
    DeleteAppResult.add_member(:app, Smithy::Schema::Shapes::ShapeRef.new(shape: App, location_name: 'app', traits: {"smithy.api#required" => {}}))
    DeleteAppResult.type = Types::DeleteAppResult
    DeleteBackendEnvironmentRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendEnvironmentRequest.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of a backend environment of an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBackendEnvironmentRequest.type = Types::DeleteBackendEnvironmentRequest
    DeleteBackendEnvironmentResult.add_member(:backend_environment, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendEnvironment, location_name: 'backendEnvironment', traits: {"smithy.api#documentation" => "<p>Describes the backend environment for an Amplify app. </p>", "smithy.api#required" => {}}))
    DeleteBackendEnvironmentResult.type = Types::DeleteBackendEnvironmentResult
    DeleteBranchRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBranchRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteBranchRequest.type = Types::DeleteBranchRequest
    DeleteBranchResult.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: Branch, location_name: 'branch', traits: {"smithy.api#documentation" => "<p>The branch for an Amplify app, which maps to a third-party repository branch. </p>", "smithy.api#required" => {}}))
    DeleteBranchResult.type = Types::DeleteBranchResult
    DeleteDomainAssociationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique id for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainAssociationRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p> The name of the domain. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainAssociationRequest.type = Types::DeleteDomainAssociationRequest
    DeleteDomainAssociationResult.add_member(:domain_association, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainAssociation, location_name: 'domainAssociation', traits: {"smithy.api#required" => {}}))
    DeleteDomainAssociationResult.type = Types::DeleteDomainAssociationResult
    DeleteJobRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch to use for the job. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p> The unique ID for the job. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteJobRequest.type = Types::DeleteJobRequest
    DeleteJobResult.add_member(:job_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary, location_name: 'jobSummary', traits: {"smithy.api#required" => {}}))
    DeleteJobResult.type = Types::DeleteJobResult
    DeleteWebhookRequest.add_member(:webhook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookId, location_name: 'webhookId', traits: {"smithy.api#documentation" => "<p>The unique ID for a webhook. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteWebhookRequest.type = Types::DeleteWebhookRequest
    DeleteWebhookResult.add_member(:webhook, Smithy::Schema::Shapes::ShapeRef.new(shape: Webhook, location_name: 'webhook', traits: {"smithy.api#documentation" => "<p>Describes a webhook that connects repository events to an Amplify app. </p>", "smithy.api#required" => {}}))
    DeleteWebhookResult.type = Types::DeleteWebhookResult
    DependentServiceFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DependentServiceFailureException.type = Types::DependentServiceFailureException
    DomainAssociation.add_member(:domain_association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainAssociationArn, location_name: 'domainAssociationArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) for the domain association. </p>", "smithy.api#required" => {}}))
    DomainAssociation.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p> The name of the domain. </p>", "smithy.api#required" => {}}))
    DomainAssociation.add_member(:enable_auto_sub_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAutoSubDomain, location_name: 'enableAutoSubDomain', traits: {"smithy.api#documentation" => "<p> Enables the automated creation of subdomains for branches. </p>", "smithy.api#required" => {}}))
    DomainAssociation.add_member(:auto_sub_domain_creation_patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSubDomainCreationPatterns, location_name: 'autoSubDomainCreationPatterns', traits: {"smithy.api#documentation" => "<p> Sets branch patterns for automatic subdomain creation. </p>"}))
    DomainAssociation.add_member(:auto_sub_domain_iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSubDomainIAMRole, location_name: 'autoSubDomainIAMRole', traits: {"smithy.api#documentation" => "<p> The required AWS Identity and Access Management (IAM) service role for the Amazon\n            Resource Name (ARN) for automatically creating subdomains. </p>"}))
    DomainAssociation.add_member(:domain_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'domainStatus', traits: {"smithy.api#documentation" => "<p> The current status of the domain association. </p>", "smithy.api#required" => {}}))
    DomainAssociation.add_member(:update_status, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStatus, location_name: 'updateStatus', traits: {"smithy.api#documentation" => "<p>The status of the domain update operation that is currently in progress. The following\n            list describes the valid update states.</p>\n         <dl>\n            <dt>REQUESTING_CERTIFICATE</dt>\n            <dd>\n               <p>The certificate is in the process of being updated.</p>\n            </dd>\n            <dt>PENDING_VERIFICATION</dt>\n            <dd>\n               <p>Indicates that an Amplify managed certificate is in the\n                        process of being verified. This occurs during the creation of a custom\n                        domain or when a custom domain is updated to use a managed\n                        certificate.</p>\n            </dd>\n            <dt>IMPORTING_CUSTOM_CERTIFICATE</dt>\n            <dd>\n               <p>Indicates that an Amplify custom certificate is in the\n                        process of being imported. This occurs during the creation of a custom\n                        domain or when a custom domain is updated to use a custom\n                        certificate.</p>\n            </dd>\n            <dt>PENDING_DEPLOYMENT</dt>\n            <dd>\n               <p>Indicates that the subdomain or certificate changes are being\n                        propagated.</p>\n            </dd>\n            <dt>AWAITING_APP_CNAME</dt>\n            <dd>\n               <p>Amplify is waiting for CNAME records corresponding to\n                        subdomains to be propagated. If your custom domain is on Route 53,\n                            Amplify handles this for you automatically. For more\n                        information about custom domains, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/custom-domains.html\">Setting up custom\n                            domains</a> in the <i>Amplify Hosting User\n                            Guide</i>. </p>\n            </dd>\n            <dt>UPDATE_COMPLETE</dt>\n            <dd>\n               <p>The certificate has been associated with a domain.</p>\n            </dd>\n            <dt>UPDATE_FAILED</dt>\n            <dd>\n               <p>The certificate has failed to be provisioned or associated, and there is\n                        no existing active certificate to roll back to.</p>\n            </dd>\n         </dl>"}))
    DomainAssociation.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p> Additional information that describes why the domain association is in the current\n            state.</p>", "smithy.api#required" => {}}))
    DomainAssociation.add_member(:certificate_verification_dns_record, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateVerificationDNSRecord, location_name: 'certificateVerificationDNSRecord', traits: {"smithy.api#documentation" => "<p> The DNS record for certificate verification. </p>"}))
    DomainAssociation.add_member(:sub_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: SubDomains, location_name: 'subDomains', traits: {"smithy.api#documentation" => "<p> The subdomains for the domain association. </p>", "smithy.api#required" => {}}))
    DomainAssociation.add_member(:certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Certificate, location_name: 'certificate', traits: {"smithy.api#documentation" => "<p>Describes the SSL/TLS certificate for the domain association. This can be your own\n            custom certificate or the default certificate that Amplify provisions for\n            you.</p>\n         <p>If you are updating your domain to use a different certificate,\n                <code>certificate</code> points to the new certificate that is being created instead\n            of the current active certificate. Otherwise, <code>certificate</code> points to the\n            current active certificate.</p>"}))
    DomainAssociation.type = Types::DomainAssociation
    DomainAssociations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainAssociation)
    DomainStatus.add_member(:pending_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_VERIFICATION', traits: {"smithy.api#enumValue" => "PENDING_VERIFICATION"}))
    DomainStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DomainStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    DomainStatus.add_member(:importing_custom_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTING_CUSTOM_CERTIFICATE', traits: {"smithy.api#enumValue" => "IMPORTING_CUSTOM_CERTIFICATE"}))
    DomainStatus.add_member(:pending_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DEPLOYMENT', traits: {"smithy.api#enumValue" => "PENDING_DEPLOYMENT"}))
    DomainStatus.add_member(:awaiting_app_cname, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWAITING_APP_CNAME', traits: {"smithy.api#enumValue" => "AWAITING_APP_CNAME"}))
    DomainStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DomainStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    DomainStatus.add_member(:requesting_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTING_CERTIFICATE', traits: {"smithy.api#enumValue" => "REQUESTING_CERTIFICATE"}))
    DomainStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    EnvironmentVariables.key = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvKey)
    EnvironmentVariables.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvValue)
    FileMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: FileName)
    FileMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: MD5Hash)
    FileUploadUrls.key = Smithy::Schema::Shapes::ShapeRef.new(shape: FileName)
    FileUploadUrls.value = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadUrl)
    GenerateAccessLogsRequest.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>The time at which the logs should start. The time range specified is inclusive of the\n            start time. </p>"}))
    GenerateAccessLogsRequest.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>The time at which the logs should end. The time range specified is inclusive of the\n            end time. </p>"}))
    GenerateAccessLogsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The name of the domain. </p>", "smithy.api#required" => {}}))
    GenerateAccessLogsRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GenerateAccessLogsRequest.type = Types::GenerateAccessLogsRequest
    GenerateAccessLogsResult.add_member(:log_url, Smithy::Schema::Shapes::ShapeRef.new(shape: LogUrl, location_name: 'logUrl', traits: {"smithy.api#documentation" => "<p>The pre-signed URL for the requested access logs. </p>"}))
    GenerateAccessLogsResult.type = Types::GenerateAccessLogsResult
    GetAppRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAppRequest.type = Types::GetAppRequest
    GetAppResult.add_member(:app, Smithy::Schema::Shapes::ShapeRef.new(shape: App, location_name: 'app', traits: {"smithy.api#required" => {}}))
    GetAppResult.type = Types::GetAppResult
    GetArtifactUrlRequest.add_member(:artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactId, location_name: 'artifactId', traits: {"smithy.api#documentation" => "<p>The unique ID for an artifact. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetArtifactUrlRequest.type = Types::GetArtifactUrlRequest
    GetArtifactUrlResult.add_member(:artifact_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactId, location_name: 'artifactId', traits: {"smithy.api#documentation" => "<p>The unique ID for an artifact. </p>", "smithy.api#required" => {}}))
    GetArtifactUrlResult.add_member(:artifact_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactUrl, location_name: 'artifactUrl', traits: {"smithy.api#documentation" => "<p>The presigned URL for the artifact. </p>", "smithy.api#required" => {}}))
    GetArtifactUrlResult.type = Types::GetArtifactUrlResult
    GetBackendEnvironmentRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique id for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendEnvironmentRequest.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name for the backend environment. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBackendEnvironmentRequest.type = Types::GetBackendEnvironmentRequest
    GetBackendEnvironmentResult.add_member(:backend_environment, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendEnvironment, location_name: 'backendEnvironment', traits: {"smithy.api#documentation" => "<p>Describes the backend environment for an Amplify app. </p>", "smithy.api#required" => {}}))
    GetBackendEnvironmentResult.type = Types::GetBackendEnvironmentResult
    GetBranchRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBranchRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBranchRequest.type = Types::GetBranchRequest
    GetBranchResult.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: Branch, location_name: 'branch', traits: {"smithy.api#required" => {}}))
    GetBranchResult.type = Types::GetBranchResult
    GetDomainAssociationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique id for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainAssociationRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p> The name of the domain. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainAssociationRequest.type = Types::GetDomainAssociationRequest
    GetDomainAssociationResult.add_member(:domain_association, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainAssociation, location_name: 'domainAssociation', traits: {"smithy.api#documentation" => "<p> Describes the structure of a domain association, which associates a custom domain\n            with an Amplify app. </p>", "smithy.api#required" => {}}))
    GetDomainAssociationResult.type = Types::GetDomainAssociationResult
    GetJobRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch to use for the job. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique ID for the job. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobRequest.type = Types::GetJobRequest
    GetJobResult.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: Job, location_name: 'job', traits: {"smithy.api#required" => {}}))
    GetJobResult.type = Types::GetJobResult
    GetWebhookRequest.add_member(:webhook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookId, location_name: 'webhookId', traits: {"smithy.api#documentation" => "<p>The unique ID for a webhook. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetWebhookRequest.type = Types::GetWebhookRequest
    GetWebhookResult.add_member(:webhook, Smithy::Schema::Shapes::ShapeRef.new(shape: Webhook, location_name: 'webhook', traits: {"smithy.api#documentation" => "<p>Describes the structure of a webhook. </p>", "smithy.api#required" => {}}))
    GetWebhookResult.type = Types::GetWebhookResult
    InternalFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalFailureException.type = Types::InternalFailureException
    Job.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary, location_name: 'summary', traits: {"smithy.api#documentation" => "<p> Describes the summary for an execution job for an Amplify app. </p>", "smithy.api#required" => {}}))
    Job.add_member(:steps, Smithy::Schema::Shapes::ShapeRef.new(shape: Steps, location_name: 'steps', traits: {"smithy.api#documentation" => "<p> The execution steps for an execution job, for an Amplify app. </p>", "smithy.api#required" => {}}))
    Job.type = Types::Job
    JobConfig.add_member(:build_compute_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BuildComputeType, location_name: 'buildComputeType', traits: {"smithy.api#documentation" => "<p>Specifies the size of the build instance. Amplify supports three\n            instance sizes: <code>STANDARD_8GB</code>, <code>LARGE_16GB</code>, and\n                <code>XLARGE_72GB</code>. If you don't specify a value, Amplify uses\n            the <code>STANDARD_8GB</code> default.</p>\n         <p>The following list describes the CPU, memory, and storage capacity for each build\n            instance type:</p>\n         <dl>\n            <dt>STANDARD_8GB</dt>\n            <dd>\n               <ul>\n                  <li>\n                     <p>vCPUs: 4</p>\n                  </li>\n                  <li>\n                     <p>Memory: 8 GiB</p>\n                  </li>\n                  <li>\n                     <p>Disk space: 128 GB</p>\n                  </li>\n               </ul>\n            </dd>\n            <dt>LARGE_16GB</dt>\n            <dd>\n               <ul>\n                  <li>\n                     <p>vCPUs: 8</p>\n                  </li>\n                  <li>\n                     <p>Memory: 16 GiB</p>\n                  </li>\n                  <li>\n                     <p>Disk space: 128 GB</p>\n                  </li>\n               </ul>\n            </dd>\n            <dt>XLARGE_72GB</dt>\n            <dd>\n               <ul>\n                  <li>\n                     <p>vCPUs: 36</p>\n                  </li>\n                  <li>\n                     <p>Memory: 72 GiB</p>\n                  </li>\n                  <li>\n                     <p>Disk space: 256 GB</p>\n                  </li>\n               </ul>\n            </dd>\n         </dl>", "smithy.api#required" => {}}))
    JobConfig.type = Types::JobConfig
    JobStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATED', traits: {"smithy.api#enumValue" => "CREATED"}))
    JobStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    JobStatus.add_member(:provisioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROVISIONING', traits: {"smithy.api#enumValue" => "PROVISIONING"}))
    JobStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:succeed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCEED', traits: {"smithy.api#enumValue" => "SUCCEED"}))
    JobStatus.add_member(:cancelling, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLING', traits: {"smithy.api#enumValue" => "CANCELLING"}))
    JobStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    JobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary)
    JobSummary.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: JobArn, location_name: 'jobArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) for the job. </p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p> The unique ID for the job. </p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p> The commit ID from a third-party repository provider for the job. </p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessage, location_name: 'commitMessage', traits: {"smithy.api#documentation" => "<p> The commit message from a third-party repository provider for the job. </p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:commit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitTime, location_name: 'commitTime', traits: {"smithy.api#documentation" => "<p>The commit date and time for the job. </p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p> The start date and time for the job. </p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The current status for the job. </p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p> The end date and time for the job. </p>"}))
    JobSummary.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'jobType', traits: {"smithy.api#documentation" => "<p> The type for the job. If the value is <code>RELEASE</code>, the job was manually\n            released from its source by using the <code>StartJob</code> API. This value is available\n            only for apps that are connected to a repository.</p>\n         <p>If the value is <code>RETRY</code>, the job was manually retried using the\n                <code>StartJob</code> API. If the value is <code>WEB_HOOK</code>, the job was\n            automatically triggered by webhooks. If the value is <code>MANUAL</code>, the job is for\n            a manually deployed app. Manually deployed apps are not connected to a Git\n            repository.</p>", "smithy.api#required" => {}}))
    JobSummary.add_member(:source_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceUrl, location_name: 'sourceUrl', traits: {"smithy.api#documentation" => "<p>The source URL for the files to deploy. The source URL can be either an HTTP GET URL\n            that is publicly accessible and downloads a single .zip file, or an Amazon S3\n            bucket and prefix.</p>"}))
    JobSummary.add_member(:source_url_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceUrlType, location_name: 'sourceUrlType', traits: {"smithy.api#documentation" => "<p>The type of source specified by the <code>sourceURL</code>. If the value is\n                <code>ZIP</code>, the source is a .zip file. If the value is\n                <code>BUCKET_PREFIX</code>, the source is an Amazon S3 bucket and prefix. If\n            no value is specified, the default is <code>ZIP</code>.</p>"}))
    JobSummary.type = Types::JobSummary
    JobType.add_member(:release, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RELEASE', traits: {"smithy.api#enumValue" => "RELEASE"}))
    JobType.add_member(:retry, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RETRY', traits: {"smithy.api#enumValue" => "RETRY"}))
    JobType.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    JobType.add_member(:web_hook, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEB_HOOK', traits: {"smithy.api#enumValue" => "WEB_HOOK"}))
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListAppsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. If non-null, the pagination token is returned in a result. Pass\n            its value in another request to retrieve more entries. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAppsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForListApps, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of records to list in a single response. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAppsRequest.type = Types::ListAppsRequest
    ListAppsResult.add_member(:apps, Smithy::Schema::Shapes::ShapeRef.new(shape: Apps, location_name: 'apps', traits: {"smithy.api#documentation" => "<p>A list of Amplify apps. </p>", "smithy.api#required" => {}}))
    ListAppsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. Set to null to start listing apps from start. If non-null, the\n            pagination token is returned in a result. Pass its value in here to list more projects.\n        </p>"}))
    ListAppsResult.type = Types::ListAppsResult
    ListArtifactsRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListArtifactsRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of a branch that is part of an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListArtifactsRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique ID for a job. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListArtifactsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. Set to null to start listing artifacts from start. If a non-null\n            pagination token is returned in a result, pass its value in here to list more artifacts.\n        </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListArtifactsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of records to list in a single response. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListArtifactsRequest.type = Types::ListArtifactsRequest
    ListArtifactsResult.add_member(:artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: Artifacts, location_name: 'artifacts', traits: {"smithy.api#documentation" => "<p>A list of artifacts. </p>", "smithy.api#required" => {}}))
    ListArtifactsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. If a non-null pagination token is returned in a result, pass its\n            value in another request to retrieve more entries. </p>"}))
    ListArtifactsResult.type = Types::ListArtifactsResult
    ListBackendEnvironmentsRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBackendEnvironmentsRequest.add_member(:environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentName, location_name: 'environmentName', traits: {"smithy.api#documentation" => "<p>The name of the backend environment </p>", "smithy.api#httpQuery" => "environmentName"}))
    ListBackendEnvironmentsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. Set to null to start listing backend environments from the start.\n            If a non-null pagination token is returned in a result, pass its value in here to list\n            more backend environments. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListBackendEnvironmentsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of records to list in a single response. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListBackendEnvironmentsRequest.type = Types::ListBackendEnvironmentsRequest
    ListBackendEnvironmentsResult.add_member(:backend_environments, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendEnvironments, location_name: 'backendEnvironments', traits: {"smithy.api#documentation" => "<p>The list of backend environments for an Amplify app. </p>", "smithy.api#required" => {}}))
    ListBackendEnvironmentsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. If a non-null pagination token is returned in a result, pass its\n            value in another request to retrieve more entries. </p>"}))
    ListBackendEnvironmentsResult.type = Types::ListBackendEnvironmentsResult
    ListBranchesRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListBranchesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. Set to null to start listing branches from the start. If a\n            non-null pagination token is returned in a result, pass its value in here to list more\n            branches. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListBranchesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The maximum number of records to list in a single response. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListBranchesRequest.type = Types::ListBranchesRequest
    ListBranchesResult.add_member(:branches, Smithy::Schema::Shapes::ShapeRef.new(shape: Branches, location_name: 'branches', traits: {"smithy.api#documentation" => "<p> A list of branches for an Amplify app. </p>", "smithy.api#required" => {}}))
    ListBranchesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> A pagination token. If a non-null pagination token is returned in a result, pass its\n            value in another request to retrieve more entries. </p>"}))
    ListBranchesResult.type = Types::ListBranchesResult
    ListDomainAssociationsRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> A pagination token. Set to null to start listing apps from the start. If non-null, a\n            pagination token is returned in a result. Pass its value in here to list more projects.\n        </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDomainAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p> The maximum number of records to list in a single response. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDomainAssociationsRequest.type = Types::ListDomainAssociationsRequest
    ListDomainAssociationsResult.add_member(:domain_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainAssociations, location_name: 'domainAssociations', traits: {"smithy.api#documentation" => "<p> A list of domain associations. </p>", "smithy.api#required" => {}}))
    ListDomainAssociationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> A pagination token. If non-null, a pagination token is returned in a result. Pass its\n            value in another request to retrieve more entries. </p>"}))
    ListDomainAssociationsResult.type = Types::ListDomainAssociationsResult
    ListJobsRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch to use for the request. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. Set to null to start listing steps from the start. If a non-null\n            pagination token is returned in a result, pass its value in here to list more steps.\n        </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of records to list in a single response. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListJobsRequest.type = Types::ListJobsRequest
    ListJobsResult.add_member(:job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummaries, location_name: 'jobSummaries', traits: {"smithy.api#documentation" => "<p>The result structure for the list job result request. </p>", "smithy.api#required" => {}}))
    ListJobsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. If non-null the pagination token is returned in a result. Pass its\n            value in another request to retrieve more entries. </p>"}))
    ListJobsResult.type = Types::ListJobsResult
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) to use to list tags. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tags for the specified The Amazon Resource Name (ARN). </p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWebhooksRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListWebhooksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. Set to null to start listing webhooks from the start. If\n            non-null,the pagination token is returned in a result. Pass its value in here to list\n            more webhooks. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListWebhooksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of records to list in a single response. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListWebhooksRequest.type = Types::ListWebhooksRequest
    ListWebhooksResult.add_member(:webhooks, Smithy::Schema::Shapes::ShapeRef.new(shape: Webhooks, location_name: 'webhooks', traits: {"smithy.api#documentation" => "<p>A list of webhooks. </p>", "smithy.api#required" => {}}))
    ListWebhooksResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A pagination token. If non-null, the pagination token is returned in a result. Pass\n            its value in another request to retrieve more entries. </p>"}))
    ListWebhooksResult.type = Types::ListWebhooksResult
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    Platform.add_member(:web, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEB', traits: {"smithy.api#enumValue" => "WEB"}))
    Platform.add_member(:web_dynamic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEB_DYNAMIC', traits: {"smithy.api#enumValue" => "WEB_DYNAMIC"}))
    Platform.add_member(:web_compute, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEB_COMPUTE', traits: {"smithy.api#enumValue" => "WEB_COMPUTE"}))
    ProductionBranch.add_member(:last_deploy_time, Smithy::Schema::Shapes::ShapeRef.new(shape: LastDeployTime, location_name: 'lastDeployTime', traits: {"smithy.api#documentation" => "<p>The last deploy time of the production branch. </p>"}))
    ProductionBranch.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the production branch. </p>"}))
    ProductionBranch.add_member(:thumbnail_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailUrl, location_name: 'thumbnailUrl', traits: {"smithy.api#documentation" => "<p>The thumbnail URL for the production branch. </p>"}))
    ProductionBranch.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The branch name for the production branch. </p>"}))
    ProductionBranch.type = Types::ProductionBranch
    RepositoryCloneMethod.add_member(:ssh, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSH', traits: {"smithy.api#enumValue" => "SSH"}))
    RepositoryCloneMethod.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TOKEN', traits: {"smithy.api#enumValue" => "TOKEN"}))
    RepositoryCloneMethod.add_member(:sigv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIGV4', traits: {"smithy.api#enumValue" => "SIGV4"}))
    ResourceNotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'code', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Screenshots.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailName)
    Screenshots.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ThumbnailUrl)
    SourceUrlType.add_member(:zip, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ZIP', traits: {"smithy.api#enumValue" => "ZIP"}))
    SourceUrlType.add_member(:bucket_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUCKET_PREFIX', traits: {"smithy.api#enumValue" => "BUCKET_PREFIX"}))
    Stage.add_member(:production, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRODUCTION', traits: {"smithy.api#enumValue" => "PRODUCTION"}))
    Stage.add_member(:beta, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BETA', traits: {"smithy.api#enumValue" => "BETA"}))
    Stage.add_member(:development, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEVELOPMENT', traits: {"smithy.api#enumValue" => "DEVELOPMENT"}))
    Stage.add_member(:experimental, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPERIMENTAL', traits: {"smithy.api#enumValue" => "EXPERIMENTAL"}))
    Stage.add_member(:pull_request, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PULL_REQUEST', traits: {"smithy.api#enumValue" => "PULL_REQUEST"}))
    StartDeploymentRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch to use for the deployment job. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartDeploymentRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID for this deployment that is generated by the <code>CreateDeployment</code>\n            request. </p>"}))
    StartDeploymentRequest.add_member(:source_url, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceUrl, location_name: 'sourceUrl', traits: {"smithy.api#documentation" => "<p>The source URL for the deployment that is used when calling\n                <code>StartDeployment</code> without <code>CreateDeployment</code>. The source URL\n            can be either an HTTP GET URL that is publicly accessible and downloads a single .zip\n            file, or an Amazon S3 bucket and prefix.</p>"}))
    StartDeploymentRequest.add_member(:source_url_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceUrlType, location_name: 'sourceUrlType', traits: {"smithy.api#documentation" => "<p>The type of source specified by the <code>sourceURL</code>. If the value is\n                <code>ZIP</code>, the source is a .zip file. If the value is\n                <code>BUCKET_PREFIX</code>, the source is an Amazon S3 bucket and prefix. If\n            no value is specified, the default is <code>ZIP</code>.</p>"}))
    StartDeploymentRequest.type = Types::StartDeploymentRequest
    StartDeploymentResult.add_member(:job_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary, location_name: 'jobSummary', traits: {"smithy.api#documentation" => "<p>The summary for the job. </p>", "smithy.api#required" => {}}))
    StartDeploymentResult.type = Types::StartDeploymentResult
    StartJobRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartJobRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch to use for the job. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique ID for an existing job. This is required if the value of\n                <code>jobType</code> is <code>RETRY</code>. </p>"}))
    StartJobRequest.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'jobType', traits: {"smithy.api#documentation" => "<p>Describes the type for the job. The job type <code>RELEASE</code> starts a new job\n            with the latest change from the specified branch. This value is available only for apps\n            that are connected to a repository. </p>\n         <p>The job type <code>RETRY</code> retries an existing job. If the job type value is\n                <code>RETRY</code>, the <code>jobId</code> is also required. </p>", "smithy.api#required" => {}}))
    StartJobRequest.add_member(:job_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: JobReason, location_name: 'jobReason', traits: {"smithy.api#documentation" => "<p>A descriptive reason for starting the job.</p>"}))
    StartJobRequest.add_member(:commit_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitId, location_name: 'commitId', traits: {"smithy.api#documentation" => "<p> The commit ID from a third-party repository provider for the job. </p>"}))
    StartJobRequest.add_member(:commit_message, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitMessage, location_name: 'commitMessage', traits: {"smithy.api#documentation" => "<p> The commit message from a third-party repository provider for the job. </p>"}))
    StartJobRequest.add_member(:commit_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CommitTime, location_name: 'commitTime', traits: {"smithy.api#documentation" => "<p> The commit date and time for the job. </p>"}))
    StartJobRequest.type = Types::StartJobRequest
    StartJobResult.add_member(:job_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary, location_name: 'jobSummary', traits: {"smithy.api#documentation" => "<p> The summary for the job. </p>", "smithy.api#required" => {}}))
    StartJobResult.type = Types::StartJobResult
    Step.add_member(:step_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StepName, location_name: 'stepName', traits: {"smithy.api#documentation" => "<p> The name of the execution step. </p>", "smithy.api#required" => {}}))
    Step.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: StartTime, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p> The start date and time of the execution step. </p>", "smithy.api#required" => {}}))
    Step.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the execution step. </p>", "smithy.api#required" => {}}))
    Step.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: EndTime, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p> The end date and time of the execution step. </p>", "smithy.api#required" => {}}))
    Step.add_member(:log_url, Smithy::Schema::Shapes::ShapeRef.new(shape: LogUrl, location_name: 'logUrl', traits: {"smithy.api#documentation" => "<p> The URL to the logs for the execution step. </p>"}))
    Step.add_member(:artifacts_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactsUrl, location_name: 'artifactsUrl', traits: {"smithy.api#documentation" => "<p> The URL to the build artifact for the execution step. </p>"}))
    Step.add_member(:test_artifacts_url, Smithy::Schema::Shapes::ShapeRef.new(shape: TestArtifactsUrl, location_name: 'testArtifactsUrl', traits: {"smithy.api#documentation" => "<p> The URL to the test artifact for the execution step. </p>"}))
    Step.add_member(:test_config_url, Smithy::Schema::Shapes::ShapeRef.new(shape: TestConfigUrl, location_name: 'testConfigUrl', traits: {"smithy.api#documentation" => "<p> The URL to the test configuration for the execution step. </p>"}))
    Step.add_member(:screenshots, Smithy::Schema::Shapes::ShapeRef.new(shape: Screenshots, location_name: 'screenshots', traits: {"smithy.api#documentation" => "<p> The list of screenshot URLs for the execution step, if relevant. </p>"}))
    Step.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p> The reason for the current step status. </p>"}))
    Step.add_member(:context, Smithy::Schema::Shapes::ShapeRef.new(shape: Context, location_name: 'context', traits: {"smithy.api#documentation" => "<p> The context for the current step. Includes a build image if the step is build.\n        </p>"}))
    Step.type = Types::Step
    Steps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Step)
    StopJobRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopJobRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch to use for the stop job request. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p> The unique id for the job. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopJobRequest.type = Types::StopJobRequest
    StopJobResult.add_member(:job_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary, location_name: 'jobSummary', traits: {"smithy.api#documentation" => "<p> The summary for the job. </p>", "smithy.api#required" => {}}))
    StopJobResult.type = Types::StopJobResult
    SubDomain.add_member(:sub_domain_setting, Smithy::Schema::Shapes::ShapeRef.new(shape: SubDomainSetting, location_name: 'subDomainSetting', traits: {"smithy.api#documentation" => "<p> Describes the settings for the subdomain. </p>", "smithy.api#required" => {}}))
    SubDomain.add_member(:verified, Smithy::Schema::Shapes::ShapeRef.new(shape: Verified, location_name: 'verified', traits: {"smithy.api#documentation" => "<p> The verified status of the subdomain </p>", "smithy.api#required" => {}}))
    SubDomain.add_member(:dns_record, Smithy::Schema::Shapes::ShapeRef.new(shape: DNSRecord, location_name: 'dnsRecord', traits: {"smithy.api#documentation" => "<p> The DNS record for the subdomain. </p>", "smithy.api#required" => {}}))
    SubDomain.type = Types::SubDomain
    SubDomainSetting.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainPrefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p> The prefix setting for the subdomain. </p>", "smithy.api#required" => {}}))
    SubDomainSetting.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p> The branch name setting for the subdomain. </p>", "smithy.api#required" => {}}))
    SubDomainSetting.type = Types::SubDomainSetting
    SubDomainSettings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubDomainSetting)
    SubDomains.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubDomain)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) to use to tag a resource. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags used to tag the resource. </p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) to use to untag a resource. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag keys to use to untag a resource. </p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAppRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAppRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name for an Amplify app. </p>"}))
    UpdateAppRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for an Amplify app. </p>"}))
    UpdateAppRequest.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: Platform, location_name: 'platform', traits: {"smithy.api#documentation" => "<p>The platform for the Amplify app. For a static app, set the platform type to\n                <code>WEB</code>. For a dynamic server-side rendered (SSR) app, set the platform\n            type to <code>WEB_COMPUTE</code>. For an app requiring Amplify Hosting's original SSR\n            support only, set the platform type to <code>WEB_DYNAMIC</code>.</p>\n         <p>If you are deploying an SSG only app with Next.js version 14 or later, you must set\n            the platform type to <code>WEB_COMPUTE</code>.</p>"}))
    UpdateAppRequest.add_member(:compute_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeRoleArn, location_name: 'computeRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to assign to an SSR app.\n            The SSR Compute role allows the Amplify Hosting compute service to\n            securely access specific Amazon Web Services resources based on the role's permissions.\n            For more information about the SSR Compute role, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html\">Adding an SSR Compute\n                role</a> in the <i>Amplify User Guide</i>.</p>"}))
    UpdateAppRequest.add_member(:iam_service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceRoleArn, location_name: 'iamServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM service role for the Amplify app.</p>"}))
    UpdateAppRequest.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p>The environment variables for an Amplify app. </p>"}))
    UpdateAppRequest.add_member(:enable_branch_auto_build, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAutoBuild, location_name: 'enableBranchAutoBuild', traits: {"smithy.api#documentation" => "<p>Enables branch auto-building for an Amplify app. </p>"}))
    UpdateAppRequest.add_member(:enable_branch_auto_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBranchAutoDeletion, location_name: 'enableBranchAutoDeletion', traits: {"smithy.api#documentation" => "<p>Automatically disconnects a branch in the Amplify console when you delete a branch\n            from your Git repository. </p>"}))
    UpdateAppRequest.add_member(:enable_basic_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: 'enableBasicAuth', traits: {"smithy.api#documentation" => "<p>Enables basic authorization for an Amplify app. </p>"}))
    UpdateAppRequest.add_member(:basic_auth_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: 'basicAuthCredentials', traits: {"smithy.api#documentation" => "<p>The basic authorization credentials for an Amplify app. You must base64-encode the\n            authorization credentials and provide them in the format\n            <code>user:password</code>.</p>"}))
    UpdateAppRequest.add_member(:custom_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRules, location_name: 'customRules', traits: {"smithy.api#documentation" => "<p>The custom redirect and rewrite rules for an Amplify app. </p>"}))
    UpdateAppRequest.add_member(:build_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSpec, location_name: 'buildSpec', traits: {"smithy.api#documentation" => "<p>The build specification (build spec) for an Amplify app. </p>"}))
    UpdateAppRequest.add_member(:custom_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomHeaders, location_name: 'customHeaders', traits: {"smithy.api#documentation" => "<p>The custom HTTP headers for an Amplify app.</p>"}))
    UpdateAppRequest.add_member(:enable_auto_branch_creation, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAutoBranchCreation, location_name: 'enableAutoBranchCreation', traits: {"smithy.api#documentation" => "<p>Enables automated branch creation for an Amplify app. </p>"}))
    UpdateAppRequest.add_member(:auto_branch_creation_patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoBranchCreationPatterns, location_name: 'autoBranchCreationPatterns', traits: {"smithy.api#documentation" => "<p>Describes the automated branch creation glob patterns for an Amplify app. </p>"}))
    UpdateAppRequest.add_member(:auto_branch_creation_config, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoBranchCreationConfig, location_name: 'autoBranchCreationConfig', traits: {"smithy.api#documentation" => "<p>The automated branch creation configuration for an Amplify app. </p>"}))
    UpdateAppRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Repository, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The name of the Git repository for an Amplify app.</p>"}))
    UpdateAppRequest.add_member(:oauth_token, Smithy::Schema::Shapes::ShapeRef.new(shape: OauthToken, location_name: 'oauthToken', traits: {"smithy.api#documentation" => "<p>The OAuth token for a third-party source control system for an Amplify app. The OAuth\n            token is used to create a webhook and a read-only deploy key using SSH cloning. The\n            OAuth token is not stored.</p>\n         <p>Use <code>oauthToken</code> for repository providers other than GitHub, such as\n            Bitbucket or CodeCommit.</p>\n         <p>To authorize access to GitHub as your repository provider, use\n                <code>accessToken</code>.</p>\n         <p>You must specify either <code>oauthToken</code> or <code>accessToken</code> when you\n            update an app.</p>\n         <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work\n            with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub\n            App. For more information, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth\">Migrating an existing OAuth app to the Amplify GitHub App</a> in the\n                <i>Amplify User Guide</i> .</p>"}))
    UpdateAppRequest.add_member(:access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessToken, location_name: 'accessToken', traits: {"smithy.api#documentation" => "<p>The personal access token for a GitHub repository for an Amplify app. The personal\n            access token is used to authorize access to a GitHub repository using the Amplify GitHub\n            App. The token is not stored.</p>\n         <p>Use <code>accessToken</code> for GitHub repositories only. To authorize access to a\n            repository provider such as Bitbucket or CodeCommit, use <code>oauthToken</code>.</p>\n         <p>You must specify either <code>accessToken</code> or <code>oauthToken</code> when you\n            update an app.</p>\n         <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work\n            with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub\n            App. For more information, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth\">Migrating an existing OAuth app to the Amplify GitHub App</a> in the\n                <i>Amplify User Guide</i> .</p>"}))
    UpdateAppRequest.add_member(:job_config, Smithy::Schema::Shapes::ShapeRef.new(shape: JobConfig, location_name: 'jobConfig', traits: {"smithy.api#documentation" => "<p>Describes the configuration details that apply to the jobs for an Amplify app.</p>"}))
    UpdateAppRequest.add_member(:cache_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CacheConfig, location_name: 'cacheConfig', traits: {"smithy.api#documentation" => "<p>The cache configuration for the Amplify app.</p>"}))
    UpdateAppRequest.type = Types::UpdateAppRequest
    UpdateAppResult.add_member(:app, Smithy::Schema::Shapes::ShapeRef.new(shape: App, location_name: 'app', traits: {"smithy.api#documentation" => "<p>Represents the updated Amplify app. </p>", "smithy.api#required" => {}}))
    UpdateAppResult.type = Types::UpdateAppResult
    UpdateBranchRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBranchRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name of the branch. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateBranchRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p> The description for the branch. </p>"}))
    UpdateBranchRequest.add_member(:framework, Smithy::Schema::Shapes::ShapeRef.new(shape: Framework, location_name: 'framework', traits: {"smithy.api#documentation" => "<p> The framework for the branch. </p>"}))
    UpdateBranchRequest.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: Stage, location_name: 'stage', traits: {"smithy.api#documentation" => "<p> Describes the current stage for the branch. </p>"}))
    UpdateBranchRequest.add_member(:enable_notification, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableNotification, location_name: 'enableNotification', traits: {"smithy.api#documentation" => "<p> Enables notifications for the branch. </p>"}))
    UpdateBranchRequest.add_member(:enable_auto_build, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAutoBuild, location_name: 'enableAutoBuild', traits: {"smithy.api#documentation" => "<p> Enables auto building for the branch. </p>"}))
    UpdateBranchRequest.add_member(:enable_skew_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableSkewProtection, location_name: 'enableSkewProtection', traits: {"smithy.api#documentation" => "<p>Specifies whether the skew protection feature is enabled for the branch.</p>\n         <p>Deployment skew protection is available to Amplify applications to\n            eliminate version skew issues between client and servers in web applications. When you\n            apply skew protection to a branch, you can ensure that your clients always interact with\n            the correct version of server-side assets, regardless of when a deployment occurs. For\n            more information about skew protection, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/skew-protection.html\">Skew protection for Amplify deployments</a> in the <i>Amplify User\n                Guide</i>.</p>"}))
    UpdateBranchRequest.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: 'environmentVariables', traits: {"smithy.api#documentation" => "<p> The environment variables for the branch. </p>"}))
    UpdateBranchRequest.add_member(:basic_auth_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: 'basicAuthCredentials', traits: {"smithy.api#documentation" => "<p> The basic authorization credentials for the branch. You must base64-encode the\n            authorization credentials and provide them in the format\n            <code>user:password</code>.</p>"}))
    UpdateBranchRequest.add_member(:enable_basic_auth, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: 'enableBasicAuth', traits: {"smithy.api#documentation" => "<p> Enables basic authorization for the branch. </p>"}))
    UpdateBranchRequest.add_member(:enable_performance_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePerformanceMode, location_name: 'enablePerformanceMode', traits: {"smithy.api#documentation" => "<p>Enables performance mode for the branch.</p>\n         <p>Performance mode optimizes for faster hosting performance by keeping content cached at\n            the edge for a longer interval. When performance mode is enabled, hosting configuration\n            or code changes can take up to 10 minutes to roll out. </p>"}))
    UpdateBranchRequest.add_member(:build_spec, Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSpec, location_name: 'buildSpec', traits: {"smithy.api#documentation" => "<p> The build specification (build spec) for the branch. </p>"}))
    UpdateBranchRequest.add_member(:ttl, Smithy::Schema::Shapes::ShapeRef.new(shape: TTL, location_name: 'ttl', traits: {"smithy.api#documentation" => "<p> The content Time to Live (TTL) for the website in seconds. </p>"}))
    UpdateBranchRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p> The display name for a branch. This is used as the default domain prefix. </p>"}))
    UpdateBranchRequest.add_member(:enable_pull_request_preview, Smithy::Schema::Shapes::ShapeRef.new(shape: EnablePullRequestPreview, location_name: 'enablePullRequestPreview', traits: {"smithy.api#documentation" => "<p> Enables pull request previews for this branch. </p>"}))
    UpdateBranchRequest.add_member(:pull_request_environment_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PullRequestEnvironmentName, location_name: 'pullRequestEnvironmentName', traits: {"smithy.api#documentation" => "<p> The Amplify environment name for the pull request. </p>"}))
    UpdateBranchRequest.add_member(:backend_environment_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: BackendEnvironmentArn, location_name: 'backendEnvironmentArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for a backend environment that is part of a Gen 1\n            Amplify app. </p>\n         <p>This field is available to Amplify Gen 1 apps only where the backend is\n            created using Amplify Studio or the Amplify command line\n            interface (CLI).</p>"}))
    UpdateBranchRequest.add_member(:backend, Smithy::Schema::Shapes::ShapeRef.new(shape: Backend, location_name: 'backend', traits: {"smithy.api#documentation" => "<p>The backend for a <code>Branch</code> of an Amplify app. Use for a\n            backend created from an CloudFormation stack.</p>\n         <p>This field is available to Amplify Gen 2 apps only. When you deploy an\n            application with Amplify Gen 2, you provision the app's backend infrastructure using\n            Typescript code.</p>"}))
    UpdateBranchRequest.add_member(:compute_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeRoleArn, location_name: 'computeRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to assign to a branch of\n            an SSR app. The SSR Compute role allows the Amplify Hosting compute\n            service to securely access specific Amazon Web Services resources based on the role's\n            permissions. For more information about the SSR Compute role, see <a href=\"https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html\">Adding an SSR Compute role</a> in the <i>Amplify User\n                Guide</i>.</p>"}))
    UpdateBranchRequest.type = Types::UpdateBranchRequest
    UpdateBranchResult.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: Branch, location_name: 'branch', traits: {"smithy.api#documentation" => "<p> The branch for an Amplify app, which maps to a third-party repository branch. </p>", "smithy.api#required" => {}}))
    UpdateBranchResult.type = Types::UpdateBranchResult
    UpdateDomainAssociationRequest.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p> The unique ID for an Amplify app. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainAssociationRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p> The name of the domain. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDomainAssociationRequest.add_member(:enable_auto_sub_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: EnableAutoSubDomain, location_name: 'enableAutoSubDomain', traits: {"smithy.api#documentation" => "<p> Enables the automated creation of subdomains for branches. </p>"}))
    UpdateDomainAssociationRequest.add_member(:sub_domain_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: SubDomainSettings, location_name: 'subDomainSettings', traits: {"smithy.api#documentation" => "<p> Describes the settings for the subdomain. </p>"}))
    UpdateDomainAssociationRequest.add_member(:auto_sub_domain_creation_patterns, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSubDomainCreationPatterns, location_name: 'autoSubDomainCreationPatterns', traits: {"smithy.api#documentation" => "<p> Sets the branch patterns for automatic subdomain creation. </p>"}))
    UpdateDomainAssociationRequest.add_member(:auto_sub_domain_iam_role, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoSubDomainIAMRole, location_name: 'autoSubDomainIAMRole', traits: {"smithy.api#documentation" => "<p> The required AWS Identity and Access Management (IAM) service role for the Amazon\n            Resource Name (ARN) for automatically creating subdomains. </p>"}))
    UpdateDomainAssociationRequest.add_member(:certificate_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateSettings, location_name: 'certificateSettings', traits: {"smithy.api#documentation" => "<p>The type of SSL/TLS certificate to use for your custom domain.</p>"}))
    UpdateDomainAssociationRequest.type = Types::UpdateDomainAssociationRequest
    UpdateDomainAssociationResult.add_member(:domain_association, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainAssociation, location_name: 'domainAssociation', traits: {"smithy.api#documentation" => "<p> Describes a domain association, which associates a custom domain with an Amplify app.\n        </p>", "smithy.api#required" => {}}))
    UpdateDomainAssociationResult.type = Types::UpdateDomainAssociationResult
    UpdateStatus.add_member(:requesting_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUESTING_CERTIFICATE', traits: {"smithy.api#enumValue" => "REQUESTING_CERTIFICATE"}))
    UpdateStatus.add_member(:pending_verification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_VERIFICATION', traits: {"smithy.api#enumValue" => "PENDING_VERIFICATION"}))
    UpdateStatus.add_member(:importing_custom_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTING_CUSTOM_CERTIFICATE', traits: {"smithy.api#enumValue" => "IMPORTING_CUSTOM_CERTIFICATE"}))
    UpdateStatus.add_member(:pending_deployment, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_DEPLOYMENT', traits: {"smithy.api#enumValue" => "PENDING_DEPLOYMENT"}))
    UpdateStatus.add_member(:awaiting_app_cname, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWAITING_APP_CNAME', traits: {"smithy.api#enumValue" => "AWAITING_APP_CNAME"}))
    UpdateStatus.add_member(:update_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_COMPLETE', traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    UpdateStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    UpdateWebhookRequest.add_member(:webhook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookId, location_name: 'webhookId', traits: {"smithy.api#documentation" => "<p>The unique ID for a webhook. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateWebhookRequest.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name for a branch that is part of an Amplify app. </p>"}))
    UpdateWebhookRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for a webhook. </p>"}))
    UpdateWebhookRequest.type = Types::UpdateWebhookRequest
    UpdateWebhookResult.add_member(:webhook, Smithy::Schema::Shapes::ShapeRef.new(shape: Webhook, location_name: 'webhook', traits: {"smithy.api#documentation" => "<p>Describes a webhook that connects repository events to an Amplify app. </p>", "smithy.api#required" => {}}))
    UpdateWebhookResult.type = Types::UpdateWebhookResult
    WafConfiguration.add_member(:web_acl_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WebAclArn, location_name: 'webAclArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the web ACL associated with an Amplify app.</p>"}))
    WafConfiguration.add_member(:waf_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WafStatus, location_name: 'wafStatus', traits: {"smithy.api#documentation" => "<p>The status of the process to associate or disassociate a web ACL to an Amplify app.</p>"}))
    WafConfiguration.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusReason, location_name: 'statusReason', traits: {"smithy.api#documentation" => "<p>The reason for the current status of the Firewall configuration.</p>"}))
    WafConfiguration.type = Types::WafConfiguration
    WafStatus.add_member(:associating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATING', traits: {"smithy.api#enumValue" => "ASSOCIATING"}))
    WafStatus.add_member(:association_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATION_FAILED', traits: {"smithy.api#enumValue" => "ASSOCIATION_FAILED"}))
    WafStatus.add_member(:association_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATION_SUCCESS', traits: {"smithy.api#enumValue" => "ASSOCIATION_SUCCESS"}))
    WafStatus.add_member(:disassociating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISASSOCIATING', traits: {"smithy.api#enumValue" => "DISASSOCIATING"}))
    WafStatus.add_member(:disassociation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISASSOCIATION_FAILED', traits: {"smithy.api#enumValue" => "DISASSOCIATION_FAILED"}))
    Webhook.add_member(:webhook_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookArn, location_name: 'webhookArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the webhook. </p>", "smithy.api#required" => {}}))
    Webhook.add_member(:webhook_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookId, location_name: 'webhookId', traits: {"smithy.api#documentation" => "<p>The ID of the webhook. </p>", "smithy.api#required" => {}}))
    Webhook.add_member(:webhook_url, Smithy::Schema::Shapes::ShapeRef.new(shape: WebhookUrl, location_name: 'webhookUrl', traits: {"smithy.api#documentation" => "<p>The URL of the webhook. </p>", "smithy.api#required" => {}}))
    Webhook.add_member(:app_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AppId, location_name: 'appId', traits: {"smithy.api#documentation" => "<p>The unique ID of an Amplify app.</p>"}))
    Webhook.add_member(:branch_name, Smithy::Schema::Shapes::ShapeRef.new(shape: BranchName, location_name: 'branchName', traits: {"smithy.api#documentation" => "<p>The name for a branch that is part of an Amplify app. </p>", "smithy.api#required" => {}}))
    Webhook.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description for a webhook. </p>", "smithy.api#required" => {}}))
    Webhook.add_member(:create_time, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTime, location_name: 'createTime', traits: {"smithy.api#documentation" => "<p>A timestamp of when Amplify created the webhook in your Git\n            repository.</p>", "smithy.api#required" => {}}))
    Webhook.add_member(:update_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#documentation" => "<p>A timestamp of when Amplify updated the webhook in your Git\n            repository.</p>", "smithy.api#required" => {}}))
    Webhook.type = Types::Webhook
    Webhooks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Webhook)

    Amplify = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.amplify#Amplify"
      service.name = "Amplify"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "Amplify", "arnNamespace" => "amplify", "cloudFormationName" => "Amplify", "cloudTrailEventSource" => "amplify.amazonaws.com", "endpointPrefix" => "amplify"}, "aws.auth#sigv4" => {"name" => "amplify"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Amplify", "smithy.api#xmlNamespace" => {"uri" => "http://amplify.amazonaws.com"}}
      service.add_operation(:create_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateApp"
        operation.name = "CreateApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps", "code" => 200}}
      end)
      service.add_operation(:create_backend_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateBackendEnvironment"
        operation.name = "CreateBackendEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackendEnvironmentResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/backendenvironments", "code" => 200}}
      end)
      service.add_operation(:create_branch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateBranch"
        operation.name = "CreateBranch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBranchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBranchResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/branches", "code" => 200}}
      end)
      service.add_operation(:create_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateDeployment"
        operation.name = "CreateDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeploymentResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/branches/{branchName}/deployments", "code" => 200}}
      end)
      service.add_operation(:create_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateDomainAssociation"
        operation.name = "CreateDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainAssociationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/domains", "code" => 200}}
      end)
      service.add_operation(:create_webhook, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#CreateWebhook"
        operation.name = "CreateWebhook"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebhookRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWebhookResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/webhooks", "code" => 200}}
      end)
      service.add_operation(:delete_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteApp"
        operation.name = "DeleteApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}", "code" => 200}}
      end)
      service.add_operation(:delete_backend_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteBackendEnvironment"
        operation.name = "DeleteBackendEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackendEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackendEnvironmentResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}/backendenvironments/{environmentName}", "code" => 200}}
      end)
      service.add_operation(:delete_branch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteBranch"
        operation.name = "DeleteBranch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBranchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBranchResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}/branches/{branchName}", "code" => 200}}
      end)
      service.add_operation(:delete_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteDomainAssociation"
        operation.name = "DeleteDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainAssociationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}/domains/{domainName}", "code" => 200}}
      end)
      service.add_operation(:delete_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteJob"
        operation.name = "DeleteJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteJobResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}/branches/{branchName}/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:delete_webhook, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#DeleteWebhook"
        operation.name = "DeleteWebhook"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebhookRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWebhookResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/webhooks/{webhookId}", "code" => 200}}
      end)
      service.add_operation(:generate_access_logs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GenerateAccessLogs"
        operation.name = "GenerateAccessLogs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateAccessLogsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GenerateAccessLogsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/accesslogs", "code" => 200}}
      end)
      service.add_operation(:get_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetApp"
        operation.name = "GetApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAppResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}", "code" => 200}}
      end)
      service.add_operation(:get_artifact_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetArtifactUrl"
        operation.name = "GetArtifactUrl"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArtifactUrlRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetArtifactUrlResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/artifacts/{artifactId}", "code" => 200}}
      end)
      service.add_operation(:get_backend_environment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetBackendEnvironment"
        operation.name = "GetBackendEnvironment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendEnvironmentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBackendEnvironmentResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/backendenvironments/{environmentName}", "code" => 200}}
      end)
      service.add_operation(:get_branch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetBranch"
        operation.name = "GetBranch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBranchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBranchResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/branches/{branchName}", "code" => 200}}
      end)
      service.add_operation(:get_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetDomainAssociation"
        operation.name = "GetDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainAssociationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/domains/{domainName}", "code" => 200}}
      end)
      service.add_operation(:get_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetJob"
        operation.name = "GetJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/branches/{branchName}/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:get_webhook, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#GetWebhook"
        operation.name = "GetWebhook"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWebhookRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetWebhookResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/webhooks/{webhookId}", "code" => 200}}
      end)
      service.add_operation(:list_apps, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListApps"
        operation.name = "ListApps"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAppsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps", "code" => 200}}
        operation[:paginator] = Paginators::ListApps.new
      end)
      service.add_operation(:list_artifacts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListArtifacts"
        operation.name = "ListArtifacts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArtifactsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListArtifactsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/branches/{branchName}/jobs/{jobId}/artifacts", "code" => 200}}
      end)
      service.add_operation(:list_backend_environments, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListBackendEnvironments"
        operation.name = "ListBackendEnvironments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackendEnvironmentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBackendEnvironmentsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/backendenvironments", "code" => 200}}
      end)
      service.add_operation(:list_branches, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListBranches"
        operation.name = "ListBranches"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBranchesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListBranchesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/branches", "code" => 200}}
        operation[:paginator] = Paginators::ListBranches.new
      end)
      service.add_operation(:list_domain_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListDomainAssociations"
        operation.name = "ListDomainAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainAssociationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/domains", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainAssociations.new
      end)
      service.add_operation(:list_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListJobs"
        operation.name = "ListJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/branches/{branchName}/jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_webhooks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#ListWebhooks"
        operation.name = "ListWebhooks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebhooksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWebhooksResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/apps/{appId}/webhooks", "code" => 200}}
      end)
      service.add_operation(:start_deployment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#StartDeployment"
        operation.name = "StartDeployment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDeploymentRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartDeploymentResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/branches/{branchName}/deployments/start", "code" => 200}}
      end)
      service.add_operation(:start_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#StartJob"
        operation.name = "StartJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartJobResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/branches/{branchName}/jobs", "code" => 200}}
      end)
      service.add_operation(:stop_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#StopJob"
        operation.name = "StopJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopJobResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/apps/{appId}/branches/{branchName}/jobs/{jobId}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_app, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#UpdateApp"
        operation.name = "UpdateApp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}", "code" => 200}}
      end)
      service.add_operation(:update_branch, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#UpdateBranch"
        operation.name = "UpdateBranch"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBranchRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateBranchResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/branches/{branchName}", "code" => 200}}
      end)
      service.add_operation(:update_domain_association, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#UpdateDomainAssociation"
        operation.name = "UpdateDomainAssociation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainAssociationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainAssociationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/apps/{appId}/domains/{domainName}", "code" => 200}}
      end)
      service.add_operation(:update_webhook, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.amplify#UpdateWebhook"
        operation.name = "UpdateWebhook"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebhookRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWebhookResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependentServiceFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/webhooks/{webhookId}", "code" => 200}}
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
