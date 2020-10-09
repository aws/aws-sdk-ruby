# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Amplify
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessToken = Shapes::StringShape.new(name: 'AccessToken')
    ActiveJobId = Shapes::StringShape.new(name: 'ActiveJobId')
    App = Shapes::StructureShape.new(name: 'App')
    AppArn = Shapes::StringShape.new(name: 'AppArn')
    AppId = Shapes::StringShape.new(name: 'AppId')
    Apps = Shapes::ListShape.new(name: 'Apps')
    Artifact = Shapes::StructureShape.new(name: 'Artifact')
    ArtifactFileName = Shapes::StringShape.new(name: 'ArtifactFileName')
    ArtifactId = Shapes::StringShape.new(name: 'ArtifactId')
    ArtifactUrl = Shapes::StringShape.new(name: 'ArtifactUrl')
    Artifacts = Shapes::ListShape.new(name: 'Artifacts')
    ArtifactsUrl = Shapes::StringShape.new(name: 'ArtifactsUrl')
    AssociatedResource = Shapes::StringShape.new(name: 'AssociatedResource')
    AssociatedResources = Shapes::ListShape.new(name: 'AssociatedResources')
    AutoBranchCreationConfig = Shapes::StructureShape.new(name: 'AutoBranchCreationConfig')
    AutoBranchCreationPattern = Shapes::StringShape.new(name: 'AutoBranchCreationPattern')
    AutoBranchCreationPatterns = Shapes::ListShape.new(name: 'AutoBranchCreationPatterns')
    AutoSubDomainCreationPattern = Shapes::StringShape.new(name: 'AutoSubDomainCreationPattern')
    AutoSubDomainCreationPatterns = Shapes::ListShape.new(name: 'AutoSubDomainCreationPatterns')
    AutoSubDomainIAMRole = Shapes::StringShape.new(name: 'AutoSubDomainIAMRole')
    BackendEnvironment = Shapes::StructureShape.new(name: 'BackendEnvironment')
    BackendEnvironmentArn = Shapes::StringShape.new(name: 'BackendEnvironmentArn')
    BackendEnvironments = Shapes::ListShape.new(name: 'BackendEnvironments')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BasicAuthCredentials = Shapes::StringShape.new(name: 'BasicAuthCredentials')
    Branch = Shapes::StructureShape.new(name: 'Branch')
    BranchArn = Shapes::StringShape.new(name: 'BranchArn')
    BranchName = Shapes::StringShape.new(name: 'BranchName')
    Branches = Shapes::ListShape.new(name: 'Branches')
    BuildSpec = Shapes::StringShape.new(name: 'BuildSpec')
    CertificateVerificationDNSRecord = Shapes::StringShape.new(name: 'CertificateVerificationDNSRecord')
    Code = Shapes::StringShape.new(name: 'Code')
    CommitId = Shapes::StringShape.new(name: 'CommitId')
    CommitMessage = Shapes::StringShape.new(name: 'CommitMessage')
    CommitTime = Shapes::TimestampShape.new(name: 'CommitTime')
    Condition = Shapes::StringShape.new(name: 'Condition')
    Context = Shapes::StringShape.new(name: 'Context')
    CreateAppRequest = Shapes::StructureShape.new(name: 'CreateAppRequest')
    CreateAppResult = Shapes::StructureShape.new(name: 'CreateAppResult')
    CreateBackendEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateBackendEnvironmentRequest')
    CreateBackendEnvironmentResult = Shapes::StructureShape.new(name: 'CreateBackendEnvironmentResult')
    CreateBranchRequest = Shapes::StructureShape.new(name: 'CreateBranchRequest')
    CreateBranchResult = Shapes::StructureShape.new(name: 'CreateBranchResult')
    CreateDeploymentRequest = Shapes::StructureShape.new(name: 'CreateDeploymentRequest')
    CreateDeploymentResult = Shapes::StructureShape.new(name: 'CreateDeploymentResult')
    CreateDomainAssociationRequest = Shapes::StructureShape.new(name: 'CreateDomainAssociationRequest')
    CreateDomainAssociationResult = Shapes::StructureShape.new(name: 'CreateDomainAssociationResult')
    CreateTime = Shapes::TimestampShape.new(name: 'CreateTime')
    CreateWebhookRequest = Shapes::StructureShape.new(name: 'CreateWebhookRequest')
    CreateWebhookResult = Shapes::StructureShape.new(name: 'CreateWebhookResult')
    CustomDomain = Shapes::StringShape.new(name: 'CustomDomain')
    CustomDomains = Shapes::ListShape.new(name: 'CustomDomains')
    CustomRule = Shapes::StructureShape.new(name: 'CustomRule')
    CustomRules = Shapes::ListShape.new(name: 'CustomRules')
    DNSRecord = Shapes::StringShape.new(name: 'DNSRecord')
    DefaultDomain = Shapes::StringShape.new(name: 'DefaultDomain')
    DeleteAppRequest = Shapes::StructureShape.new(name: 'DeleteAppRequest')
    DeleteAppResult = Shapes::StructureShape.new(name: 'DeleteAppResult')
    DeleteBackendEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteBackendEnvironmentRequest')
    DeleteBackendEnvironmentResult = Shapes::StructureShape.new(name: 'DeleteBackendEnvironmentResult')
    DeleteBranchRequest = Shapes::StructureShape.new(name: 'DeleteBranchRequest')
    DeleteBranchResult = Shapes::StructureShape.new(name: 'DeleteBranchResult')
    DeleteDomainAssociationRequest = Shapes::StructureShape.new(name: 'DeleteDomainAssociationRequest')
    DeleteDomainAssociationResult = Shapes::StructureShape.new(name: 'DeleteDomainAssociationResult')
    DeleteJobRequest = Shapes::StructureShape.new(name: 'DeleteJobRequest')
    DeleteJobResult = Shapes::StructureShape.new(name: 'DeleteJobResult')
    DeleteWebhookRequest = Shapes::StructureShape.new(name: 'DeleteWebhookRequest')
    DeleteWebhookResult = Shapes::StructureShape.new(name: 'DeleteWebhookResult')
    DependentServiceFailureException = Shapes::StructureShape.new(name: 'DependentServiceFailureException')
    DeploymentArtifacts = Shapes::StringShape.new(name: 'DeploymentArtifacts')
    Description = Shapes::StringShape.new(name: 'Description')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    DomainAssociation = Shapes::StructureShape.new(name: 'DomainAssociation')
    DomainAssociationArn = Shapes::StringShape.new(name: 'DomainAssociationArn')
    DomainAssociations = Shapes::ListShape.new(name: 'DomainAssociations')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainPrefix = Shapes::StringShape.new(name: 'DomainPrefix')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    EnableAutoBranchCreation = Shapes::BooleanShape.new(name: 'EnableAutoBranchCreation')
    EnableAutoBuild = Shapes::BooleanShape.new(name: 'EnableAutoBuild')
    EnableAutoSubDomain = Shapes::BooleanShape.new(name: 'EnableAutoSubDomain')
    EnableBasicAuth = Shapes::BooleanShape.new(name: 'EnableBasicAuth')
    EnableBranchAutoBuild = Shapes::BooleanShape.new(name: 'EnableBranchAutoBuild')
    EnableBranchAutoDeletion = Shapes::BooleanShape.new(name: 'EnableBranchAutoDeletion')
    EnableNotification = Shapes::BooleanShape.new(name: 'EnableNotification')
    EnablePerformanceMode = Shapes::BooleanShape.new(name: 'EnablePerformanceMode')
    EnablePullRequestPreview = Shapes::BooleanShape.new(name: 'EnablePullRequestPreview')
    EndTime = Shapes::TimestampShape.new(name: 'EndTime')
    EnvKey = Shapes::StringShape.new(name: 'EnvKey')
    EnvValue = Shapes::StringShape.new(name: 'EnvValue')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentVariables = Shapes::MapShape.new(name: 'EnvironmentVariables')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FileMap = Shapes::MapShape.new(name: 'FileMap')
    FileName = Shapes::StringShape.new(name: 'FileName')
    FileUploadUrls = Shapes::MapShape.new(name: 'FileUploadUrls')
    Framework = Shapes::StringShape.new(name: 'Framework')
    GenerateAccessLogsRequest = Shapes::StructureShape.new(name: 'GenerateAccessLogsRequest')
    GenerateAccessLogsResult = Shapes::StructureShape.new(name: 'GenerateAccessLogsResult')
    GetAppRequest = Shapes::StructureShape.new(name: 'GetAppRequest')
    GetAppResult = Shapes::StructureShape.new(name: 'GetAppResult')
    GetArtifactUrlRequest = Shapes::StructureShape.new(name: 'GetArtifactUrlRequest')
    GetArtifactUrlResult = Shapes::StructureShape.new(name: 'GetArtifactUrlResult')
    GetBackendEnvironmentRequest = Shapes::StructureShape.new(name: 'GetBackendEnvironmentRequest')
    GetBackendEnvironmentResult = Shapes::StructureShape.new(name: 'GetBackendEnvironmentResult')
    GetBranchRequest = Shapes::StructureShape.new(name: 'GetBranchRequest')
    GetBranchResult = Shapes::StructureShape.new(name: 'GetBranchResult')
    GetDomainAssociationRequest = Shapes::StructureShape.new(name: 'GetDomainAssociationRequest')
    GetDomainAssociationResult = Shapes::StructureShape.new(name: 'GetDomainAssociationResult')
    GetJobRequest = Shapes::StructureShape.new(name: 'GetJobRequest')
    GetJobResult = Shapes::StructureShape.new(name: 'GetJobResult')
    GetWebhookRequest = Shapes::StructureShape.new(name: 'GetWebhookRequest')
    GetWebhookResult = Shapes::StructureShape.new(name: 'GetWebhookResult')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    Job = Shapes::StructureShape.new(name: 'Job')
    JobArn = Shapes::StringShape.new(name: 'JobArn')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobReason = Shapes::StringShape.new(name: 'JobReason')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobSummaries = Shapes::ListShape.new(name: 'JobSummaries')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    JobType = Shapes::StringShape.new(name: 'JobType')
    LastDeployTime = Shapes::TimestampShape.new(name: 'LastDeployTime')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAppsRequest = Shapes::StructureShape.new(name: 'ListAppsRequest')
    ListAppsResult = Shapes::StructureShape.new(name: 'ListAppsResult')
    ListArtifactsRequest = Shapes::StructureShape.new(name: 'ListArtifactsRequest')
    ListArtifactsResult = Shapes::StructureShape.new(name: 'ListArtifactsResult')
    ListBackendEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListBackendEnvironmentsRequest')
    ListBackendEnvironmentsResult = Shapes::StructureShape.new(name: 'ListBackendEnvironmentsResult')
    ListBranchesRequest = Shapes::StructureShape.new(name: 'ListBranchesRequest')
    ListBranchesResult = Shapes::StructureShape.new(name: 'ListBranchesResult')
    ListDomainAssociationsRequest = Shapes::StructureShape.new(name: 'ListDomainAssociationsRequest')
    ListDomainAssociationsResult = Shapes::StructureShape.new(name: 'ListDomainAssociationsResult')
    ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
    ListJobsResult = Shapes::StructureShape.new(name: 'ListJobsResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWebhooksRequest = Shapes::StructureShape.new(name: 'ListWebhooksRequest')
    ListWebhooksResult = Shapes::StructureShape.new(name: 'ListWebhooksResult')
    LogUrl = Shapes::StringShape.new(name: 'LogUrl')
    MD5Hash = Shapes::StringShape.new(name: 'MD5Hash')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    OauthToken = Shapes::StringShape.new(name: 'OauthToken')
    Platform = Shapes::StringShape.new(name: 'Platform')
    ProductionBranch = Shapes::StructureShape.new(name: 'ProductionBranch')
    PullRequestEnvironmentName = Shapes::StringShape.new(name: 'PullRequestEnvironmentName')
    Repository = Shapes::StringShape.new(name: 'Repository')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Screenshots = Shapes::MapShape.new(name: 'Screenshots')
    ServiceRoleArn = Shapes::StringShape.new(name: 'ServiceRoleArn')
    Source = Shapes::StringShape.new(name: 'Source')
    SourceUrl = Shapes::StringShape.new(name: 'SourceUrl')
    StackName = Shapes::StringShape.new(name: 'StackName')
    Stage = Shapes::StringShape.new(name: 'Stage')
    StartDeploymentRequest = Shapes::StructureShape.new(name: 'StartDeploymentRequest')
    StartDeploymentResult = Shapes::StructureShape.new(name: 'StartDeploymentResult')
    StartJobRequest = Shapes::StructureShape.new(name: 'StartJobRequest')
    StartJobResult = Shapes::StructureShape.new(name: 'StartJobResult')
    StartTime = Shapes::TimestampShape.new(name: 'StartTime')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    Step = Shapes::StructureShape.new(name: 'Step')
    StepName = Shapes::StringShape.new(name: 'StepName')
    Steps = Shapes::ListShape.new(name: 'Steps')
    StopJobRequest = Shapes::StructureShape.new(name: 'StopJobRequest')
    StopJobResult = Shapes::StructureShape.new(name: 'StopJobResult')
    SubDomain = Shapes::StructureShape.new(name: 'SubDomain')
    SubDomainSetting = Shapes::StructureShape.new(name: 'SubDomainSetting')
    SubDomainSettings = Shapes::ListShape.new(name: 'SubDomainSettings')
    SubDomains = Shapes::ListShape.new(name: 'SubDomains')
    TTL = Shapes::StringShape.new(name: 'TTL')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Target = Shapes::StringShape.new(name: 'Target')
    TestArtifactsUrl = Shapes::StringShape.new(name: 'TestArtifactsUrl')
    TestConfigUrl = Shapes::StringShape.new(name: 'TestConfigUrl')
    ThumbnailName = Shapes::StringShape.new(name: 'ThumbnailName')
    ThumbnailUrl = Shapes::StringShape.new(name: 'ThumbnailUrl')
    TotalNumberOfJobs = Shapes::StringShape.new(name: 'TotalNumberOfJobs')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAppRequest = Shapes::StructureShape.new(name: 'UpdateAppRequest')
    UpdateAppResult = Shapes::StructureShape.new(name: 'UpdateAppResult')
    UpdateBranchRequest = Shapes::StructureShape.new(name: 'UpdateBranchRequest')
    UpdateBranchResult = Shapes::StructureShape.new(name: 'UpdateBranchResult')
    UpdateDomainAssociationRequest = Shapes::StructureShape.new(name: 'UpdateDomainAssociationRequest')
    UpdateDomainAssociationResult = Shapes::StructureShape.new(name: 'UpdateDomainAssociationResult')
    UpdateTime = Shapes::TimestampShape.new(name: 'UpdateTime')
    UpdateWebhookRequest = Shapes::StructureShape.new(name: 'UpdateWebhookRequest')
    UpdateWebhookResult = Shapes::StructureShape.new(name: 'UpdateWebhookResult')
    UploadUrl = Shapes::StringShape.new(name: 'UploadUrl')
    Verified = Shapes::BooleanShape.new(name: 'Verified')
    Webhook = Shapes::StructureShape.new(name: 'Webhook')
    WebhookArn = Shapes::StringShape.new(name: 'WebhookArn')
    WebhookId = Shapes::StringShape.new(name: 'WebhookId')
    WebhookUrl = Shapes::StringShape.new(name: 'WebhookUrl')
    Webhooks = Shapes::ListShape.new(name: 'Webhooks')

    App.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location_name: "appId"))
    App.add_member(:app_arn, Shapes::ShapeRef.new(shape: AppArn, required: true, location_name: "appArn"))
    App.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    App.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    App.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    App.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, required: true, location_name: "repository"))
    App.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "platform"))
    App.add_member(:create_time, Shapes::ShapeRef.new(shape: CreateTime, required: true, location_name: "createTime"))
    App.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    App.add_member(:iam_service_role_arn, Shapes::ShapeRef.new(shape: ServiceRoleArn, location_name: "iamServiceRoleArn"))
    App.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, required: true, location_name: "environmentVariables"))
    App.add_member(:default_domain, Shapes::ShapeRef.new(shape: DefaultDomain, required: true, location_name: "defaultDomain"))
    App.add_member(:enable_branch_auto_build, Shapes::ShapeRef.new(shape: EnableBranchAutoBuild, required: true, location_name: "enableBranchAutoBuild"))
    App.add_member(:enable_branch_auto_deletion, Shapes::ShapeRef.new(shape: EnableBranchAutoDeletion, location_name: "enableBranchAutoDeletion"))
    App.add_member(:enable_basic_auth, Shapes::ShapeRef.new(shape: EnableBasicAuth, required: true, location_name: "enableBasicAuth"))
    App.add_member(:basic_auth_credentials, Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    App.add_member(:custom_rules, Shapes::ShapeRef.new(shape: CustomRules, location_name: "customRules"))
    App.add_member(:production_branch, Shapes::ShapeRef.new(shape: ProductionBranch, location_name: "productionBranch"))
    App.add_member(:build_spec, Shapes::ShapeRef.new(shape: BuildSpec, location_name: "buildSpec"))
    App.add_member(:enable_auto_branch_creation, Shapes::ShapeRef.new(shape: EnableAutoBranchCreation, location_name: "enableAutoBranchCreation"))
    App.add_member(:auto_branch_creation_patterns, Shapes::ShapeRef.new(shape: AutoBranchCreationPatterns, location_name: "autoBranchCreationPatterns"))
    App.add_member(:auto_branch_creation_config, Shapes::ShapeRef.new(shape: AutoBranchCreationConfig, location_name: "autoBranchCreationConfig"))
    App.struct_class = Types::App

    Apps.member = Shapes::ShapeRef.new(shape: App)

    Artifact.add_member(:artifact_file_name, Shapes::ShapeRef.new(shape: ArtifactFileName, required: true, location_name: "artifactFileName"))
    Artifact.add_member(:artifact_id, Shapes::ShapeRef.new(shape: ArtifactId, required: true, location_name: "artifactId"))
    Artifact.struct_class = Types::Artifact

    Artifacts.member = Shapes::ShapeRef.new(shape: Artifact)

    AssociatedResources.member = Shapes::ShapeRef.new(shape: AssociatedResource)

    AutoBranchCreationConfig.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "stage"))
    AutoBranchCreationConfig.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, location_name: "framework"))
    AutoBranchCreationConfig.add_member(:enable_auto_build, Shapes::ShapeRef.new(shape: EnableAutoBuild, location_name: "enableAutoBuild"))
    AutoBranchCreationConfig.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environmentVariables"))
    AutoBranchCreationConfig.add_member(:basic_auth_credentials, Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    AutoBranchCreationConfig.add_member(:enable_basic_auth, Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: "enableBasicAuth"))
    AutoBranchCreationConfig.add_member(:enable_performance_mode, Shapes::ShapeRef.new(shape: EnablePerformanceMode, location_name: "enablePerformanceMode"))
    AutoBranchCreationConfig.add_member(:build_spec, Shapes::ShapeRef.new(shape: BuildSpec, location_name: "buildSpec"))
    AutoBranchCreationConfig.add_member(:enable_pull_request_preview, Shapes::ShapeRef.new(shape: EnablePullRequestPreview, location_name: "enablePullRequestPreview"))
    AutoBranchCreationConfig.add_member(:pull_request_environment_name, Shapes::ShapeRef.new(shape: PullRequestEnvironmentName, location_name: "pullRequestEnvironmentName"))
    AutoBranchCreationConfig.struct_class = Types::AutoBranchCreationConfig

    AutoBranchCreationPatterns.member = Shapes::ShapeRef.new(shape: AutoBranchCreationPattern)

    AutoSubDomainCreationPatterns.member = Shapes::ShapeRef.new(shape: AutoSubDomainCreationPattern)

    BackendEnvironment.add_member(:backend_environment_arn, Shapes::ShapeRef.new(shape: BackendEnvironmentArn, required: true, location_name: "backendEnvironmentArn"))
    BackendEnvironment.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "environmentName"))
    BackendEnvironment.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "stackName"))
    BackendEnvironment.add_member(:deployment_artifacts, Shapes::ShapeRef.new(shape: DeploymentArtifacts, location_name: "deploymentArtifacts"))
    BackendEnvironment.add_member(:create_time, Shapes::ShapeRef.new(shape: CreateTime, required: true, location_name: "createTime"))
    BackendEnvironment.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    BackendEnvironment.struct_class = Types::BackendEnvironment

    BackendEnvironments.member = Shapes::ShapeRef.new(shape: BackendEnvironment)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    Branch.add_member(:branch_arn, Shapes::ShapeRef.new(shape: BranchArn, required: true, location_name: "branchArn"))
    Branch.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "branchName"))
    Branch.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    Branch.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Branch.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, required: true, location_name: "stage"))
    Branch.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, required: true, location_name: "displayName"))
    Branch.add_member(:enable_notification, Shapes::ShapeRef.new(shape: EnableNotification, required: true, location_name: "enableNotification"))
    Branch.add_member(:create_time, Shapes::ShapeRef.new(shape: CreateTime, required: true, location_name: "createTime"))
    Branch.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    Branch.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, required: true, location_name: "environmentVariables"))
    Branch.add_member(:enable_auto_build, Shapes::ShapeRef.new(shape: EnableAutoBuild, required: true, location_name: "enableAutoBuild"))
    Branch.add_member(:custom_domains, Shapes::ShapeRef.new(shape: CustomDomains, required: true, location_name: "customDomains"))
    Branch.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, required: true, location_name: "framework"))
    Branch.add_member(:active_job_id, Shapes::ShapeRef.new(shape: ActiveJobId, required: true, location_name: "activeJobId"))
    Branch.add_member(:total_number_of_jobs, Shapes::ShapeRef.new(shape: TotalNumberOfJobs, required: true, location_name: "totalNumberOfJobs"))
    Branch.add_member(:enable_basic_auth, Shapes::ShapeRef.new(shape: EnableBasicAuth, required: true, location_name: "enableBasicAuth"))
    Branch.add_member(:enable_performance_mode, Shapes::ShapeRef.new(shape: EnablePerformanceMode, location_name: "enablePerformanceMode"))
    Branch.add_member(:thumbnail_url, Shapes::ShapeRef.new(shape: ThumbnailUrl, location_name: "thumbnailUrl"))
    Branch.add_member(:basic_auth_credentials, Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    Branch.add_member(:build_spec, Shapes::ShapeRef.new(shape: BuildSpec, location_name: "buildSpec"))
    Branch.add_member(:ttl, Shapes::ShapeRef.new(shape: TTL, required: true, location_name: "ttl"))
    Branch.add_member(:associated_resources, Shapes::ShapeRef.new(shape: AssociatedResources, location_name: "associatedResources"))
    Branch.add_member(:enable_pull_request_preview, Shapes::ShapeRef.new(shape: EnablePullRequestPreview, required: true, location_name: "enablePullRequestPreview"))
    Branch.add_member(:pull_request_environment_name, Shapes::ShapeRef.new(shape: PullRequestEnvironmentName, location_name: "pullRequestEnvironmentName"))
    Branch.add_member(:destination_branch, Shapes::ShapeRef.new(shape: BranchName, location_name: "destinationBranch"))
    Branch.add_member(:source_branch, Shapes::ShapeRef.new(shape: BranchName, location_name: "sourceBranch"))
    Branch.add_member(:backend_environment_arn, Shapes::ShapeRef.new(shape: BackendEnvironmentArn, location_name: "backendEnvironmentArn"))
    Branch.struct_class = Types::Branch

    Branches.member = Shapes::ShapeRef.new(shape: Branch)

    CreateAppRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
    CreateAppRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateAppRequest.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    CreateAppRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    CreateAppRequest.add_member(:iam_service_role_arn, Shapes::ShapeRef.new(shape: ServiceRoleArn, location_name: "iamServiceRoleArn"))
    CreateAppRequest.add_member(:oauth_token, Shapes::ShapeRef.new(shape: OauthToken, location_name: "oauthToken"))
    CreateAppRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    CreateAppRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environmentVariables"))
    CreateAppRequest.add_member(:enable_branch_auto_build, Shapes::ShapeRef.new(shape: EnableBranchAutoBuild, location_name: "enableBranchAutoBuild"))
    CreateAppRequest.add_member(:enable_branch_auto_deletion, Shapes::ShapeRef.new(shape: EnableBranchAutoDeletion, location_name: "enableBranchAutoDeletion"))
    CreateAppRequest.add_member(:enable_basic_auth, Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: "enableBasicAuth"))
    CreateAppRequest.add_member(:basic_auth_credentials, Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    CreateAppRequest.add_member(:custom_rules, Shapes::ShapeRef.new(shape: CustomRules, location_name: "customRules"))
    CreateAppRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAppRequest.add_member(:build_spec, Shapes::ShapeRef.new(shape: BuildSpec, location_name: "buildSpec"))
    CreateAppRequest.add_member(:enable_auto_branch_creation, Shapes::ShapeRef.new(shape: EnableAutoBranchCreation, location_name: "enableAutoBranchCreation"))
    CreateAppRequest.add_member(:auto_branch_creation_patterns, Shapes::ShapeRef.new(shape: AutoBranchCreationPatterns, location_name: "autoBranchCreationPatterns"))
    CreateAppRequest.add_member(:auto_branch_creation_config, Shapes::ShapeRef.new(shape: AutoBranchCreationConfig, location_name: "autoBranchCreationConfig"))
    CreateAppRequest.struct_class = Types::CreateAppRequest

    CreateAppResult.add_member(:app, Shapes::ShapeRef.new(shape: App, required: true, location_name: "app"))
    CreateAppResult.struct_class = Types::CreateAppResult

    CreateBackendEnvironmentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    CreateBackendEnvironmentRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "environmentName"))
    CreateBackendEnvironmentRequest.add_member(:stack_name, Shapes::ShapeRef.new(shape: StackName, location_name: "stackName"))
    CreateBackendEnvironmentRequest.add_member(:deployment_artifacts, Shapes::ShapeRef.new(shape: DeploymentArtifacts, location_name: "deploymentArtifacts"))
    CreateBackendEnvironmentRequest.struct_class = Types::CreateBackendEnvironmentRequest

    CreateBackendEnvironmentResult.add_member(:backend_environment, Shapes::ShapeRef.new(shape: BackendEnvironment, required: true, location_name: "backendEnvironment"))
    CreateBackendEnvironmentResult.struct_class = Types::CreateBackendEnvironmentResult

    CreateBranchRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    CreateBranchRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "branchName"))
    CreateBranchRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateBranchRequest.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "stage"))
    CreateBranchRequest.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, location_name: "framework"))
    CreateBranchRequest.add_member(:enable_notification, Shapes::ShapeRef.new(shape: EnableNotification, location_name: "enableNotification"))
    CreateBranchRequest.add_member(:enable_auto_build, Shapes::ShapeRef.new(shape: EnableAutoBuild, location_name: "enableAutoBuild"))
    CreateBranchRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environmentVariables"))
    CreateBranchRequest.add_member(:basic_auth_credentials, Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    CreateBranchRequest.add_member(:enable_basic_auth, Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: "enableBasicAuth"))
    CreateBranchRequest.add_member(:enable_performance_mode, Shapes::ShapeRef.new(shape: EnablePerformanceMode, location_name: "enablePerformanceMode"))
    CreateBranchRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateBranchRequest.add_member(:build_spec, Shapes::ShapeRef.new(shape: BuildSpec, location_name: "buildSpec"))
    CreateBranchRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: TTL, location_name: "ttl"))
    CreateBranchRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    CreateBranchRequest.add_member(:enable_pull_request_preview, Shapes::ShapeRef.new(shape: EnablePullRequestPreview, location_name: "enablePullRequestPreview"))
    CreateBranchRequest.add_member(:pull_request_environment_name, Shapes::ShapeRef.new(shape: PullRequestEnvironmentName, location_name: "pullRequestEnvironmentName"))
    CreateBranchRequest.add_member(:backend_environment_arn, Shapes::ShapeRef.new(shape: BackendEnvironmentArn, location_name: "backendEnvironmentArn"))
    CreateBranchRequest.struct_class = Types::CreateBranchRequest

    CreateBranchResult.add_member(:branch, Shapes::ShapeRef.new(shape: Branch, required: true, location_name: "branch"))
    CreateBranchResult.struct_class = Types::CreateBranchResult

    CreateDeploymentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    CreateDeploymentRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location: "uri", location_name: "branchName"))
    CreateDeploymentRequest.add_member(:file_map, Shapes::ShapeRef.new(shape: FileMap, location_name: "fileMap"))
    CreateDeploymentRequest.struct_class = Types::CreateDeploymentRequest

    CreateDeploymentResult.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    CreateDeploymentResult.add_member(:file_upload_urls, Shapes::ShapeRef.new(shape: FileUploadUrls, required: true, location_name: "fileUploadUrls"))
    CreateDeploymentResult.add_member(:zip_upload_url, Shapes::ShapeRef.new(shape: UploadUrl, required: true, location_name: "zipUploadUrl"))
    CreateDeploymentResult.struct_class = Types::CreateDeploymentResult

    CreateDomainAssociationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    CreateDomainAssociationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    CreateDomainAssociationRequest.add_member(:enable_auto_sub_domain, Shapes::ShapeRef.new(shape: EnableAutoSubDomain, location_name: "enableAutoSubDomain"))
    CreateDomainAssociationRequest.add_member(:sub_domain_settings, Shapes::ShapeRef.new(shape: SubDomainSettings, required: true, location_name: "subDomainSettings"))
    CreateDomainAssociationRequest.add_member(:auto_sub_domain_creation_patterns, Shapes::ShapeRef.new(shape: AutoSubDomainCreationPatterns, location_name: "autoSubDomainCreationPatterns"))
    CreateDomainAssociationRequest.add_member(:auto_sub_domain_iam_role, Shapes::ShapeRef.new(shape: AutoSubDomainIAMRole, location_name: "autoSubDomainIAMRole"))
    CreateDomainAssociationRequest.struct_class = Types::CreateDomainAssociationRequest

    CreateDomainAssociationResult.add_member(:domain_association, Shapes::ShapeRef.new(shape: DomainAssociation, required: true, location_name: "domainAssociation"))
    CreateDomainAssociationResult.struct_class = Types::CreateDomainAssociationResult

    CreateWebhookRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    CreateWebhookRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "branchName"))
    CreateWebhookRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateWebhookRequest.struct_class = Types::CreateWebhookRequest

    CreateWebhookResult.add_member(:webhook, Shapes::ShapeRef.new(shape: Webhook, required: true, location_name: "webhook"))
    CreateWebhookResult.struct_class = Types::CreateWebhookResult

    CustomDomains.member = Shapes::ShapeRef.new(shape: CustomDomain)

    CustomRule.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    CustomRule.add_member(:target, Shapes::ShapeRef.new(shape: Target, required: true, location_name: "target"))
    CustomRule.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    CustomRule.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, location_name: "condition"))
    CustomRule.struct_class = Types::CustomRule

    CustomRules.member = Shapes::ShapeRef.new(shape: CustomRule)

    DeleteAppRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    DeleteAppRequest.struct_class = Types::DeleteAppRequest

    DeleteAppResult.add_member(:app, Shapes::ShapeRef.new(shape: App, required: true, location_name: "app"))
    DeleteAppResult.struct_class = Types::DeleteAppResult

    DeleteBackendEnvironmentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    DeleteBackendEnvironmentRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location: "uri", location_name: "environmentName"))
    DeleteBackendEnvironmentRequest.struct_class = Types::DeleteBackendEnvironmentRequest

    DeleteBackendEnvironmentResult.add_member(:backend_environment, Shapes::ShapeRef.new(shape: BackendEnvironment, required: true, location_name: "backendEnvironment"))
    DeleteBackendEnvironmentResult.struct_class = Types::DeleteBackendEnvironmentResult

    DeleteBranchRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    DeleteBranchRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location: "uri", location_name: "branchName"))
    DeleteBranchRequest.struct_class = Types::DeleteBranchRequest

    DeleteBranchResult.add_member(:branch, Shapes::ShapeRef.new(shape: Branch, required: true, location_name: "branch"))
    DeleteBranchResult.struct_class = Types::DeleteBranchResult

    DeleteDomainAssociationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    DeleteDomainAssociationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "domainName"))
    DeleteDomainAssociationRequest.struct_class = Types::DeleteDomainAssociationRequest

    DeleteDomainAssociationResult.add_member(:domain_association, Shapes::ShapeRef.new(shape: DomainAssociation, required: true, location_name: "domainAssociation"))
    DeleteDomainAssociationResult.struct_class = Types::DeleteDomainAssociationResult

    DeleteJobRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    DeleteJobRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location: "uri", location_name: "branchName"))
    DeleteJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    DeleteJobRequest.struct_class = Types::DeleteJobRequest

    DeleteJobResult.add_member(:job_summary, Shapes::ShapeRef.new(shape: JobSummary, required: true, location_name: "jobSummary"))
    DeleteJobResult.struct_class = Types::DeleteJobResult

    DeleteWebhookRequest.add_member(:webhook_id, Shapes::ShapeRef.new(shape: WebhookId, required: true, location: "uri", location_name: "webhookId"))
    DeleteWebhookRequest.struct_class = Types::DeleteWebhookRequest

    DeleteWebhookResult.add_member(:webhook, Shapes::ShapeRef.new(shape: Webhook, required: true, location_name: "webhook"))
    DeleteWebhookResult.struct_class = Types::DeleteWebhookResult

    DependentServiceFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    DependentServiceFailureException.struct_class = Types::DependentServiceFailureException

    DomainAssociation.add_member(:domain_association_arn, Shapes::ShapeRef.new(shape: DomainAssociationArn, required: true, location_name: "domainAssociationArn"))
    DomainAssociation.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    DomainAssociation.add_member(:enable_auto_sub_domain, Shapes::ShapeRef.new(shape: EnableAutoSubDomain, required: true, location_name: "enableAutoSubDomain"))
    DomainAssociation.add_member(:auto_sub_domain_creation_patterns, Shapes::ShapeRef.new(shape: AutoSubDomainCreationPatterns, location_name: "autoSubDomainCreationPatterns"))
    DomainAssociation.add_member(:auto_sub_domain_iam_role, Shapes::ShapeRef.new(shape: AutoSubDomainIAMRole, location_name: "autoSubDomainIAMRole"))
    DomainAssociation.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "domainStatus"))
    DomainAssociation.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, required: true, location_name: "statusReason"))
    DomainAssociation.add_member(:certificate_verification_dns_record, Shapes::ShapeRef.new(shape: CertificateVerificationDNSRecord, location_name: "certificateVerificationDNSRecord"))
    DomainAssociation.add_member(:sub_domains, Shapes::ShapeRef.new(shape: SubDomains, required: true, location_name: "subDomains"))
    DomainAssociation.struct_class = Types::DomainAssociation

    DomainAssociations.member = Shapes::ShapeRef.new(shape: DomainAssociation)

    EnvironmentVariables.key = Shapes::ShapeRef.new(shape: EnvKey)
    EnvironmentVariables.value = Shapes::ShapeRef.new(shape: EnvValue)

    FileMap.key = Shapes::ShapeRef.new(shape: FileName)
    FileMap.value = Shapes::ShapeRef.new(shape: MD5Hash)

    FileUploadUrls.key = Shapes::ShapeRef.new(shape: FileName)
    FileUploadUrls.value = Shapes::ShapeRef.new(shape: UploadUrl)

    GenerateAccessLogsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "startTime"))
    GenerateAccessLogsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "endTime"))
    GenerateAccessLogsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domainName"))
    GenerateAccessLogsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    GenerateAccessLogsRequest.struct_class = Types::GenerateAccessLogsRequest

    GenerateAccessLogsResult.add_member(:log_url, Shapes::ShapeRef.new(shape: LogUrl, location_name: "logUrl"))
    GenerateAccessLogsResult.struct_class = Types::GenerateAccessLogsResult

    GetAppRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    GetAppRequest.struct_class = Types::GetAppRequest

    GetAppResult.add_member(:app, Shapes::ShapeRef.new(shape: App, required: true, location_name: "app"))
    GetAppResult.struct_class = Types::GetAppResult

    GetArtifactUrlRequest.add_member(:artifact_id, Shapes::ShapeRef.new(shape: ArtifactId, required: true, location: "uri", location_name: "artifactId"))
    GetArtifactUrlRequest.struct_class = Types::GetArtifactUrlRequest

    GetArtifactUrlResult.add_member(:artifact_id, Shapes::ShapeRef.new(shape: ArtifactId, required: true, location_name: "artifactId"))
    GetArtifactUrlResult.add_member(:artifact_url, Shapes::ShapeRef.new(shape: ArtifactUrl, required: true, location_name: "artifactUrl"))
    GetArtifactUrlResult.struct_class = Types::GetArtifactUrlResult

    GetBackendEnvironmentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    GetBackendEnvironmentRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location: "uri", location_name: "environmentName"))
    GetBackendEnvironmentRequest.struct_class = Types::GetBackendEnvironmentRequest

    GetBackendEnvironmentResult.add_member(:backend_environment, Shapes::ShapeRef.new(shape: BackendEnvironment, required: true, location_name: "backendEnvironment"))
    GetBackendEnvironmentResult.struct_class = Types::GetBackendEnvironmentResult

    GetBranchRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    GetBranchRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location: "uri", location_name: "branchName"))
    GetBranchRequest.struct_class = Types::GetBranchRequest

    GetBranchResult.add_member(:branch, Shapes::ShapeRef.new(shape: Branch, required: true, location_name: "branch"))
    GetBranchResult.struct_class = Types::GetBranchResult

    GetDomainAssociationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    GetDomainAssociationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "domainName"))
    GetDomainAssociationRequest.struct_class = Types::GetDomainAssociationRequest

    GetDomainAssociationResult.add_member(:domain_association, Shapes::ShapeRef.new(shape: DomainAssociation, required: true, location_name: "domainAssociation"))
    GetDomainAssociationResult.struct_class = Types::GetDomainAssociationResult

    GetJobRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    GetJobRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location: "uri", location_name: "branchName"))
    GetJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetJobRequest.struct_class = Types::GetJobRequest

    GetJobResult.add_member(:job, Shapes::ShapeRef.new(shape: Job, required: true, location_name: "job"))
    GetJobResult.struct_class = Types::GetJobResult

    GetWebhookRequest.add_member(:webhook_id, Shapes::ShapeRef.new(shape: WebhookId, required: true, location: "uri", location_name: "webhookId"))
    GetWebhookRequest.struct_class = Types::GetWebhookRequest

    GetWebhookResult.add_member(:webhook, Shapes::ShapeRef.new(shape: Webhook, required: true, location_name: "webhook"))
    GetWebhookResult.struct_class = Types::GetWebhookResult

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    Job.add_member(:summary, Shapes::ShapeRef.new(shape: JobSummary, required: true, location_name: "summary"))
    Job.add_member(:steps, Shapes::ShapeRef.new(shape: Steps, required: true, location_name: "steps"))
    Job.struct_class = Types::Job

    JobSummaries.member = Shapes::ShapeRef.new(shape: JobSummary)

    JobSummary.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location_name: "jobArn"))
    JobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    JobSummary.add_member(:commit_id, Shapes::ShapeRef.new(shape: CommitId, required: true, location_name: "commitId"))
    JobSummary.add_member(:commit_message, Shapes::ShapeRef.new(shape: CommitMessage, required: true, location_name: "commitMessage"))
    JobSummary.add_member(:commit_time, Shapes::ShapeRef.new(shape: CommitTime, required: true, location_name: "commitTime"))
    JobSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, required: true, location_name: "startTime"))
    JobSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    JobSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "endTime"))
    JobSummary.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, required: true, location_name: "jobType"))
    JobSummary.struct_class = Types::JobSummary

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAppsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAppsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAppsRequest.struct_class = Types::ListAppsRequest

    ListAppsResult.add_member(:apps, Shapes::ShapeRef.new(shape: Apps, required: true, location_name: "apps"))
    ListAppsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAppsResult.struct_class = Types::ListAppsResult

    ListArtifactsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    ListArtifactsRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location: "uri", location_name: "branchName"))
    ListArtifactsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    ListArtifactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListArtifactsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListArtifactsRequest.struct_class = Types::ListArtifactsRequest

    ListArtifactsResult.add_member(:artifacts, Shapes::ShapeRef.new(shape: Artifacts, required: true, location_name: "artifacts"))
    ListArtifactsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListArtifactsResult.struct_class = Types::ListArtifactsResult

    ListBackendEnvironmentsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    ListBackendEnvironmentsRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location: "querystring", location_name: "environmentName"))
    ListBackendEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBackendEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBackendEnvironmentsRequest.struct_class = Types::ListBackendEnvironmentsRequest

    ListBackendEnvironmentsResult.add_member(:backend_environments, Shapes::ShapeRef.new(shape: BackendEnvironments, required: true, location_name: "backendEnvironments"))
    ListBackendEnvironmentsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBackendEnvironmentsResult.struct_class = Types::ListBackendEnvironmentsResult

    ListBranchesRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    ListBranchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListBranchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListBranchesRequest.struct_class = Types::ListBranchesRequest

    ListBranchesResult.add_member(:branches, Shapes::ShapeRef.new(shape: Branches, required: true, location_name: "branches"))
    ListBranchesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListBranchesResult.struct_class = Types::ListBranchesResult

    ListDomainAssociationsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    ListDomainAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDomainAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDomainAssociationsRequest.struct_class = Types::ListDomainAssociationsRequest

    ListDomainAssociationsResult.add_member(:domain_associations, Shapes::ShapeRef.new(shape: DomainAssociations, required: true, location_name: "domainAssociations"))
    ListDomainAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDomainAssociationsResult.struct_class = Types::ListDomainAssociationsResult

    ListJobsRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    ListJobsRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location: "uri", location_name: "branchName"))
    ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListJobsRequest.struct_class = Types::ListJobsRequest

    ListJobsResult.add_member(:job_summaries, Shapes::ShapeRef.new(shape: JobSummaries, required: true, location_name: "jobSummaries"))
    ListJobsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListJobsResult.struct_class = Types::ListJobsResult

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWebhooksRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    ListWebhooksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListWebhooksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListWebhooksRequest.struct_class = Types::ListWebhooksRequest

    ListWebhooksResult.add_member(:webhooks, Shapes::ShapeRef.new(shape: Webhooks, required: true, location_name: "webhooks"))
    ListWebhooksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWebhooksResult.struct_class = Types::ListWebhooksResult

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    ProductionBranch.add_member(:last_deploy_time, Shapes::ShapeRef.new(shape: LastDeployTime, location_name: "lastDeployTime"))
    ProductionBranch.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    ProductionBranch.add_member(:thumbnail_url, Shapes::ShapeRef.new(shape: ThumbnailUrl, location_name: "thumbnailUrl"))
    ProductionBranch.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, location_name: "branchName"))
    ProductionBranch.struct_class = Types::ProductionBranch

    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: Code, required: true, location_name: "code"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Screenshots.key = Shapes::ShapeRef.new(shape: ThumbnailName)
    Screenshots.value = Shapes::ShapeRef.new(shape: ThumbnailUrl)

    StartDeploymentRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    StartDeploymentRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location: "uri", location_name: "branchName"))
    StartDeploymentRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    StartDeploymentRequest.add_member(:source_url, Shapes::ShapeRef.new(shape: SourceUrl, location_name: "sourceUrl"))
    StartDeploymentRequest.struct_class = Types::StartDeploymentRequest

    StartDeploymentResult.add_member(:job_summary, Shapes::ShapeRef.new(shape: JobSummary, required: true, location_name: "jobSummary"))
    StartDeploymentResult.struct_class = Types::StartDeploymentResult

    StartJobRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    StartJobRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location: "uri", location_name: "branchName"))
    StartJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "jobId"))
    StartJobRequest.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, required: true, location_name: "jobType"))
    StartJobRequest.add_member(:job_reason, Shapes::ShapeRef.new(shape: JobReason, location_name: "jobReason"))
    StartJobRequest.add_member(:commit_id, Shapes::ShapeRef.new(shape: CommitId, location_name: "commitId"))
    StartJobRequest.add_member(:commit_message, Shapes::ShapeRef.new(shape: CommitMessage, location_name: "commitMessage"))
    StartJobRequest.add_member(:commit_time, Shapes::ShapeRef.new(shape: CommitTime, location_name: "commitTime"))
    StartJobRequest.struct_class = Types::StartJobRequest

    StartJobResult.add_member(:job_summary, Shapes::ShapeRef.new(shape: JobSummary, required: true, location_name: "jobSummary"))
    StartJobResult.struct_class = Types::StartJobResult

    Step.add_member(:step_name, Shapes::ShapeRef.new(shape: StepName, required: true, location_name: "stepName"))
    Step.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, required: true, location_name: "startTime"))
    Step.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "status"))
    Step.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, required: true, location_name: "endTime"))
    Step.add_member(:log_url, Shapes::ShapeRef.new(shape: LogUrl, location_name: "logUrl"))
    Step.add_member(:artifacts_url, Shapes::ShapeRef.new(shape: ArtifactsUrl, location_name: "artifactsUrl"))
    Step.add_member(:test_artifacts_url, Shapes::ShapeRef.new(shape: TestArtifactsUrl, location_name: "testArtifactsUrl"))
    Step.add_member(:test_config_url, Shapes::ShapeRef.new(shape: TestConfigUrl, location_name: "testConfigUrl"))
    Step.add_member(:screenshots, Shapes::ShapeRef.new(shape: Screenshots, location_name: "screenshots"))
    Step.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    Step.add_member(:context, Shapes::ShapeRef.new(shape: Context, location_name: "context"))
    Step.struct_class = Types::Step

    Steps.member = Shapes::ShapeRef.new(shape: Step)

    StopJobRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    StopJobRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location: "uri", location_name: "branchName"))
    StopJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    StopJobRequest.struct_class = Types::StopJobRequest

    StopJobResult.add_member(:job_summary, Shapes::ShapeRef.new(shape: JobSummary, required: true, location_name: "jobSummary"))
    StopJobResult.struct_class = Types::StopJobResult

    SubDomain.add_member(:sub_domain_setting, Shapes::ShapeRef.new(shape: SubDomainSetting, required: true, location_name: "subDomainSetting"))
    SubDomain.add_member(:verified, Shapes::ShapeRef.new(shape: Verified, required: true, location_name: "verified"))
    SubDomain.add_member(:dns_record, Shapes::ShapeRef.new(shape: DNSRecord, required: true, location_name: "dnsRecord"))
    SubDomain.struct_class = Types::SubDomain

    SubDomainSetting.add_member(:prefix, Shapes::ShapeRef.new(shape: DomainPrefix, required: true, location_name: "prefix"))
    SubDomainSetting.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "branchName"))
    SubDomainSetting.struct_class = Types::SubDomainSetting

    SubDomainSettings.member = Shapes::ShapeRef.new(shape: SubDomainSetting)

    SubDomains.member = Shapes::ShapeRef.new(shape: SubDomain)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAppRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    UpdateAppRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
    UpdateAppRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateAppRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    UpdateAppRequest.add_member(:iam_service_role_arn, Shapes::ShapeRef.new(shape: ServiceRoleArn, location_name: "iamServiceRoleArn"))
    UpdateAppRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environmentVariables"))
    UpdateAppRequest.add_member(:enable_branch_auto_build, Shapes::ShapeRef.new(shape: EnableAutoBuild, location_name: "enableBranchAutoBuild"))
    UpdateAppRequest.add_member(:enable_branch_auto_deletion, Shapes::ShapeRef.new(shape: EnableBranchAutoDeletion, location_name: "enableBranchAutoDeletion"))
    UpdateAppRequest.add_member(:enable_basic_auth, Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: "enableBasicAuth"))
    UpdateAppRequest.add_member(:basic_auth_credentials, Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    UpdateAppRequest.add_member(:custom_rules, Shapes::ShapeRef.new(shape: CustomRules, location_name: "customRules"))
    UpdateAppRequest.add_member(:build_spec, Shapes::ShapeRef.new(shape: BuildSpec, location_name: "buildSpec"))
    UpdateAppRequest.add_member(:enable_auto_branch_creation, Shapes::ShapeRef.new(shape: EnableAutoBranchCreation, location_name: "enableAutoBranchCreation"))
    UpdateAppRequest.add_member(:auto_branch_creation_patterns, Shapes::ShapeRef.new(shape: AutoBranchCreationPatterns, location_name: "autoBranchCreationPatterns"))
    UpdateAppRequest.add_member(:auto_branch_creation_config, Shapes::ShapeRef.new(shape: AutoBranchCreationConfig, location_name: "autoBranchCreationConfig"))
    UpdateAppRequest.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, location_name: "repository"))
    UpdateAppRequest.add_member(:oauth_token, Shapes::ShapeRef.new(shape: OauthToken, location_name: "oauthToken"))
    UpdateAppRequest.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, location_name: "accessToken"))
    UpdateAppRequest.struct_class = Types::UpdateAppRequest

    UpdateAppResult.add_member(:app, Shapes::ShapeRef.new(shape: App, required: true, location_name: "app"))
    UpdateAppResult.struct_class = Types::UpdateAppResult

    UpdateBranchRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    UpdateBranchRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location: "uri", location_name: "branchName"))
    UpdateBranchRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateBranchRequest.add_member(:framework, Shapes::ShapeRef.new(shape: Framework, location_name: "framework"))
    UpdateBranchRequest.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "stage"))
    UpdateBranchRequest.add_member(:enable_notification, Shapes::ShapeRef.new(shape: EnableNotification, location_name: "enableNotification"))
    UpdateBranchRequest.add_member(:enable_auto_build, Shapes::ShapeRef.new(shape: EnableAutoBuild, location_name: "enableAutoBuild"))
    UpdateBranchRequest.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariables, location_name: "environmentVariables"))
    UpdateBranchRequest.add_member(:basic_auth_credentials, Shapes::ShapeRef.new(shape: BasicAuthCredentials, location_name: "basicAuthCredentials"))
    UpdateBranchRequest.add_member(:enable_basic_auth, Shapes::ShapeRef.new(shape: EnableBasicAuth, location_name: "enableBasicAuth"))
    UpdateBranchRequest.add_member(:enable_performance_mode, Shapes::ShapeRef.new(shape: EnablePerformanceMode, location_name: "enablePerformanceMode"))
    UpdateBranchRequest.add_member(:build_spec, Shapes::ShapeRef.new(shape: BuildSpec, location_name: "buildSpec"))
    UpdateBranchRequest.add_member(:ttl, Shapes::ShapeRef.new(shape: TTL, location_name: "ttl"))
    UpdateBranchRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "displayName"))
    UpdateBranchRequest.add_member(:enable_pull_request_preview, Shapes::ShapeRef.new(shape: EnablePullRequestPreview, location_name: "enablePullRequestPreview"))
    UpdateBranchRequest.add_member(:pull_request_environment_name, Shapes::ShapeRef.new(shape: PullRequestEnvironmentName, location_name: "pullRequestEnvironmentName"))
    UpdateBranchRequest.add_member(:backend_environment_arn, Shapes::ShapeRef.new(shape: BackendEnvironmentArn, location_name: "backendEnvironmentArn"))
    UpdateBranchRequest.struct_class = Types::UpdateBranchRequest

    UpdateBranchResult.add_member(:branch, Shapes::ShapeRef.new(shape: Branch, required: true, location_name: "branch"))
    UpdateBranchResult.struct_class = Types::UpdateBranchResult

    UpdateDomainAssociationRequest.add_member(:app_id, Shapes::ShapeRef.new(shape: AppId, required: true, location: "uri", location_name: "appId"))
    UpdateDomainAssociationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "uri", location_name: "domainName"))
    UpdateDomainAssociationRequest.add_member(:enable_auto_sub_domain, Shapes::ShapeRef.new(shape: EnableAutoSubDomain, location_name: "enableAutoSubDomain"))
    UpdateDomainAssociationRequest.add_member(:sub_domain_settings, Shapes::ShapeRef.new(shape: SubDomainSettings, required: true, location_name: "subDomainSettings"))
    UpdateDomainAssociationRequest.add_member(:auto_sub_domain_creation_patterns, Shapes::ShapeRef.new(shape: AutoSubDomainCreationPatterns, location_name: "autoSubDomainCreationPatterns"))
    UpdateDomainAssociationRequest.add_member(:auto_sub_domain_iam_role, Shapes::ShapeRef.new(shape: AutoSubDomainIAMRole, location_name: "autoSubDomainIAMRole"))
    UpdateDomainAssociationRequest.struct_class = Types::UpdateDomainAssociationRequest

    UpdateDomainAssociationResult.add_member(:domain_association, Shapes::ShapeRef.new(shape: DomainAssociation, required: true, location_name: "domainAssociation"))
    UpdateDomainAssociationResult.struct_class = Types::UpdateDomainAssociationResult

    UpdateWebhookRequest.add_member(:webhook_id, Shapes::ShapeRef.new(shape: WebhookId, required: true, location: "uri", location_name: "webhookId"))
    UpdateWebhookRequest.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, location_name: "branchName"))
    UpdateWebhookRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateWebhookRequest.struct_class = Types::UpdateWebhookRequest

    UpdateWebhookResult.add_member(:webhook, Shapes::ShapeRef.new(shape: Webhook, required: true, location_name: "webhook"))
    UpdateWebhookResult.struct_class = Types::UpdateWebhookResult

    Webhook.add_member(:webhook_arn, Shapes::ShapeRef.new(shape: WebhookArn, required: true, location_name: "webhookArn"))
    Webhook.add_member(:webhook_id, Shapes::ShapeRef.new(shape: WebhookId, required: true, location_name: "webhookId"))
    Webhook.add_member(:webhook_url, Shapes::ShapeRef.new(shape: WebhookUrl, required: true, location_name: "webhookUrl"))
    Webhook.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, required: true, location_name: "branchName"))
    Webhook.add_member(:description, Shapes::ShapeRef.new(shape: Description, required: true, location_name: "description"))
    Webhook.add_member(:create_time, Shapes::ShapeRef.new(shape: CreateTime, required: true, location_name: "createTime"))
    Webhook.add_member(:update_time, Shapes::ShapeRef.new(shape: UpdateTime, required: true, location_name: "updateTime"))
    Webhook.struct_class = Types::Webhook

    Webhooks.member = Shapes::ShapeRef.new(shape: Webhook)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-07-25"

      api.metadata = {
        "apiVersion" => "2017-07-25",
        "endpointPrefix" => "amplify",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Amplify",
        "serviceFullName" => "AWS Amplify",
        "serviceId" => "Amplify",
        "signatureVersion" => "v4",
        "signingName" => "amplify",
        "uid" => "amplify-2017-07-25",
      }

      api.add_operation(:create_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApp"
        o.http_method = "POST"
        o.http_request_uri = "/apps"
        o.input = Shapes::ShapeRef.new(shape: CreateAppRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAppResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceFailureException)
      end)

      api.add_operation(:create_backend_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackendEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/apps/{appId}/backendenvironments"
        o.input = Shapes::ShapeRef.new(shape: CreateBackendEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBackendEnvironmentResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_branch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBranch"
        o.http_method = "POST"
        o.http_request_uri = "/apps/{appId}/branches"
        o.input = Shapes::ShapeRef.new(shape: CreateBranchRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBranchResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceFailureException)
      end)

      api.add_operation(:create_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/apps/{appId}/branches/{branchName}/deployments"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:create_domain_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomainAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/apps/{appId}/domains"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceFailureException)
      end)

      api.add_operation(:create_webhook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWebhook"
        o.http_method = "POST"
        o.http_request_uri = "/apps/{appId}/webhooks"
        o.input = Shapes::ShapeRef.new(shape: CreateWebhookRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWebhookResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceFailureException)
      end)

      api.add_operation(:delete_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApp"
        o.http_method = "DELETE"
        o.http_request_uri = "/apps/{appId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAppRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAppResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceFailureException)
      end)

      api.add_operation(:delete_backend_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackendEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/apps/{appId}/backendenvironments/{environmentName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackendEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBackendEnvironmentResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceFailureException)
      end)

      api.add_operation(:delete_branch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBranch"
        o.http_method = "DELETE"
        o.http_request_uri = "/apps/{appId}/branches/{branchName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteBranchRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBranchResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceFailureException)
      end)

      api.add_operation(:delete_domain_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomainAssociation"
        o.http_method = "DELETE"
        o.http_request_uri = "/apps/{appId}/domains/{domainName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceFailureException)
      end)

      api.add_operation(:delete_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/apps/{appId}/branches/{branchName}/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteJobResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_webhook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWebhook"
        o.http_method = "DELETE"
        o.http_request_uri = "/webhooks/{webhookId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWebhookRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWebhookResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:generate_access_logs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateAccessLogs"
        o.http_method = "POST"
        o.http_request_uri = "/apps/{appId}/accesslogs"
        o.input = Shapes::ShapeRef.new(shape: GenerateAccessLogsRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateAccessLogsResult)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApp"
        o.http_method = "GET"
        o.http_request_uri = "/apps/{appId}"
        o.input = Shapes::ShapeRef.new(shape: GetAppRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAppResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_artifact_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetArtifactUrl"
        o.http_method = "GET"
        o.http_request_uri = "/artifacts/{artifactId}"
        o.input = Shapes::ShapeRef.new(shape: GetArtifactUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetArtifactUrlResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_backend_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBackendEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/apps/{appId}/backendenvironments/{environmentName}"
        o.input = Shapes::ShapeRef.new(shape: GetBackendEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBackendEnvironmentResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_branch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBranch"
        o.http_method = "GET"
        o.http_request_uri = "/apps/{appId}/branches/{branchName}"
        o.input = Shapes::ShapeRef.new(shape: GetBranchRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBranchResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_domain_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/apps/{appId}/domains/{domainName}"
        o.input = Shapes::ShapeRef.new(shape: GetDomainAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetJob"
        o.http_method = "GET"
        o.http_request_uri = "/apps/{appId}/branches/{branchName}/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: GetJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetJobResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_webhook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWebhook"
        o.http_method = "GET"
        o.http_request_uri = "/webhooks/{webhookId}"
        o.input = Shapes::ShapeRef.new(shape: GetWebhookRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWebhookResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:list_apps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApps"
        o.http_method = "GET"
        o.http_request_uri = "/apps"
        o.input = Shapes::ShapeRef.new(shape: ListAppsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAppsResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_artifacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListArtifacts"
        o.http_method = "GET"
        o.http_request_uri = "/apps/{appId}/branches/{branchName}/jobs/{jobId}/artifacts"
        o.input = Shapes::ShapeRef.new(shape: ListArtifactsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListArtifactsResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:list_backend_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBackendEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/apps/{appId}/backendenvironments"
        o.input = Shapes::ShapeRef.new(shape: ListBackendEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBackendEnvironmentsResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_branches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListBranches"
        o.http_method = "GET"
        o.http_request_uri = "/apps/{appId}/branches"
        o.input = Shapes::ShapeRef.new(shape: ListBranchesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListBranchesResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_domain_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/apps/{appId}/domains"
        o.input = Shapes::ShapeRef.new(shape: ListDomainAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainAssociationsResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListJobs"
        o.http_method = "GET"
        o.http_request_uri = "/apps/{appId}/branches/{branchName}/jobs"
        o.input = Shapes::ShapeRef.new(shape: ListJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListJobsResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_webhooks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWebhooks"
        o.http_method = "GET"
        o.http_request_uri = "/apps/{appId}/webhooks"
        o.input = Shapes::ShapeRef.new(shape: ListWebhooksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWebhooksResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:start_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/apps/{appId}/branches/{branchName}/deployments/start"
        o.input = Shapes::ShapeRef.new(shape: StartDeploymentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDeploymentResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:start_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartJob"
        o.http_method = "POST"
        o.http_request_uri = "/apps/{appId}/branches/{branchName}/jobs"
        o.input = Shapes::ShapeRef.new(shape: StartJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartJobResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:stop_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopJob"
        o.http_method = "DELETE"
        o.http_request_uri = "/apps/{appId}/branches/{branchName}/jobs/{jobId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StopJobResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_app, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApp"
        o.http_method = "POST"
        o.http_request_uri = "/apps/{appId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAppRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAppResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_branch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateBranch"
        o.http_method = "POST"
        o.http_request_uri = "/apps/{appId}/branches/{branchName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateBranchRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateBranchResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceFailureException)
      end)

      api.add_operation(:update_domain_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomainAssociation"
        o.http_method = "POST"
        o.http_request_uri = "/apps/{appId}/domains/{domainName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainAssociationResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceFailureException)
      end)

      api.add_operation(:update_webhook, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWebhook"
        o.http_method = "POST"
        o.http_request_uri = "/webhooks/{webhookId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWebhookRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateWebhookResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: DependentServiceFailureException)
      end)
    end

  end
end
