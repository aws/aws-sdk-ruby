# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::SecurityAgent
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSResources = Shapes::StructureShape.new(name: 'AWSResources')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessToken = Shapes::StringShape.new(name: 'AccessToken')
    AccessType = Shapes::StringShape.new(name: 'AccessType')
    Actor = Shapes::StructureShape.new(name: 'Actor')
    ActorList = Shapes::ListShape.new(name: 'ActorList')
    AddArtifactInput = Shapes::StructureShape.new(name: 'AddArtifactInput')
    AddArtifactOutput = Shapes::StructureShape.new(name: 'AddArtifactOutput')
    AgentName = Shapes::StringShape.new(name: 'AgentName')
    AgentSpace = Shapes::StructureShape.new(name: 'AgentSpace')
    AgentSpaceId = Shapes::StringShape.new(name: 'AgentSpaceId')
    AgentSpaceIdList = Shapes::ListShape.new(name: 'AgentSpaceIdList')
    AgentSpaceList = Shapes::ListShape.new(name: 'AgentSpaceList')
    AgentSpaceSummary = Shapes::StructureShape.new(name: 'AgentSpaceSummary')
    AgentSpaceSummaryList = Shapes::ListShape.new(name: 'AgentSpaceSummaryList')
    ApplicationDomain = Shapes::StringShape.new(name: 'ApplicationDomain')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    ApplicationSummaryList = Shapes::ListShape.new(name: 'ApplicationSummaryList')
    Artifact = Shapes::StructureShape.new(name: 'Artifact')
    ArtifactId = Shapes::StringShape.new(name: 'ArtifactId')
    ArtifactIds = Shapes::ListShape.new(name: 'ArtifactIds')
    ArtifactMetadataItem = Shapes::StructureShape.new(name: 'ArtifactMetadataItem')
    ArtifactMetadataList = Shapes::ListShape.new(name: 'ArtifactMetadataList')
    ArtifactSummary = Shapes::StructureShape.new(name: 'ArtifactSummary')
    ArtifactSummaryList = Shapes::ListShape.new(name: 'ArtifactSummaryList')
    ArtifactType = Shapes::StringShape.new(name: 'ArtifactType')
    Assets = Shapes::StructureShape.new(name: 'Assets')
    AuthCode = Shapes::StringShape.new(name: 'AuthCode')
    Authentication = Shapes::StructureShape.new(name: 'Authentication')
    AuthenticationProviderType = Shapes::StringShape.new(name: 'AuthenticationProviderType')
    BatchCreateSecurityRequirementResult = Shapes::StructureShape.new(name: 'BatchCreateSecurityRequirementResult')
    BatchCreateSecurityRequirementResultList = Shapes::ListShape.new(name: 'BatchCreateSecurityRequirementResultList')
    BatchCreateSecurityRequirementsInput = Shapes::StructureShape.new(name: 'BatchCreateSecurityRequirementsInput')
    BatchCreateSecurityRequirementsOutput = Shapes::StructureShape.new(name: 'BatchCreateSecurityRequirementsOutput')
    BatchDeleteCodeReviewsInput = Shapes::StructureShape.new(name: 'BatchDeleteCodeReviewsInput')
    BatchDeleteCodeReviewsOutput = Shapes::StructureShape.new(name: 'BatchDeleteCodeReviewsOutput')
    BatchDeletePentestsInput = Shapes::StructureShape.new(name: 'BatchDeletePentestsInput')
    BatchDeletePentestsOutput = Shapes::StructureShape.new(name: 'BatchDeletePentestsOutput')
    BatchDeleteSecurityRequirementsInput = Shapes::StructureShape.new(name: 'BatchDeleteSecurityRequirementsInput')
    BatchDeleteSecurityRequirementsOutput = Shapes::StructureShape.new(name: 'BatchDeleteSecurityRequirementsOutput')
    BatchDeleteThreatModelsInput = Shapes::StructureShape.new(name: 'BatchDeleteThreatModelsInput')
    BatchDeleteThreatModelsOutput = Shapes::StructureShape.new(name: 'BatchDeleteThreatModelsOutput')
    BatchGetAgentSpacesInput = Shapes::StructureShape.new(name: 'BatchGetAgentSpacesInput')
    BatchGetAgentSpacesOutput = Shapes::StructureShape.new(name: 'BatchGetAgentSpacesOutput')
    BatchGetArtifactMetadataInput = Shapes::StructureShape.new(name: 'BatchGetArtifactMetadataInput')
    BatchGetArtifactMetadataOutput = Shapes::StructureShape.new(name: 'BatchGetArtifactMetadataOutput')
    BatchGetCodeReviewJobTasksInput = Shapes::StructureShape.new(name: 'BatchGetCodeReviewJobTasksInput')
    BatchGetCodeReviewJobTasksOutput = Shapes::StructureShape.new(name: 'BatchGetCodeReviewJobTasksOutput')
    BatchGetCodeReviewJobsInput = Shapes::StructureShape.new(name: 'BatchGetCodeReviewJobsInput')
    BatchGetCodeReviewJobsOutput = Shapes::StructureShape.new(name: 'BatchGetCodeReviewJobsOutput')
    BatchGetCodeReviewsInput = Shapes::StructureShape.new(name: 'BatchGetCodeReviewsInput')
    BatchGetCodeReviewsOutput = Shapes::StructureShape.new(name: 'BatchGetCodeReviewsOutput')
    BatchGetFindingsInput = Shapes::StructureShape.new(name: 'BatchGetFindingsInput')
    BatchGetFindingsOutput = Shapes::StructureShape.new(name: 'BatchGetFindingsOutput')
    BatchGetPentestJobTasksInput = Shapes::StructureShape.new(name: 'BatchGetPentestJobTasksInput')
    BatchGetPentestJobTasksOutput = Shapes::StructureShape.new(name: 'BatchGetPentestJobTasksOutput')
    BatchGetPentestJobsInput = Shapes::StructureShape.new(name: 'BatchGetPentestJobsInput')
    BatchGetPentestJobsOutput = Shapes::StructureShape.new(name: 'BatchGetPentestJobsOutput')
    BatchGetPentestsInput = Shapes::StructureShape.new(name: 'BatchGetPentestsInput')
    BatchGetPentestsOutput = Shapes::StructureShape.new(name: 'BatchGetPentestsOutput')
    BatchGetSecurityRequirementResult = Shapes::StructureShape.new(name: 'BatchGetSecurityRequirementResult')
    BatchGetSecurityRequirementResultList = Shapes::ListShape.new(name: 'BatchGetSecurityRequirementResultList')
    BatchGetSecurityRequirementsInput = Shapes::StructureShape.new(name: 'BatchGetSecurityRequirementsInput')
    BatchGetSecurityRequirementsOutput = Shapes::StructureShape.new(name: 'BatchGetSecurityRequirementsOutput')
    BatchGetTargetDomainsInput = Shapes::StructureShape.new(name: 'BatchGetTargetDomainsInput')
    BatchGetTargetDomainsOutput = Shapes::StructureShape.new(name: 'BatchGetTargetDomainsOutput')
    BatchGetThreatModelJobTasksInput = Shapes::StructureShape.new(name: 'BatchGetThreatModelJobTasksInput')
    BatchGetThreatModelJobTasksOutput = Shapes::StructureShape.new(name: 'BatchGetThreatModelJobTasksOutput')
    BatchGetThreatModelJobsInput = Shapes::StructureShape.new(name: 'BatchGetThreatModelJobsInput')
    BatchGetThreatModelJobsOutput = Shapes::StructureShape.new(name: 'BatchGetThreatModelJobsOutput')
    BatchGetThreatModelsInput = Shapes::StructureShape.new(name: 'BatchGetThreatModelsInput')
    BatchGetThreatModelsOutput = Shapes::StructureShape.new(name: 'BatchGetThreatModelsOutput')
    BatchGetThreatsInput = Shapes::StructureShape.new(name: 'BatchGetThreatsInput')
    BatchGetThreatsOutput = Shapes::StructureShape.new(name: 'BatchGetThreatsOutput')
    BatchSecurityRequirementError = Shapes::StructureShape.new(name: 'BatchSecurityRequirementError')
    BatchSecurityRequirementErrors = Shapes::ListShape.new(name: 'BatchSecurityRequirementErrors')
    BatchUpdateSecurityRequirementsInput = Shapes::StructureShape.new(name: 'BatchUpdateSecurityRequirementsInput')
    BatchUpdateSecurityRequirementsOutput = Shapes::StructureShape.new(name: 'BatchUpdateSecurityRequirementsOutput')
    BitbucketInstallationId = Shapes::StringShape.new(name: 'BitbucketInstallationId')
    BitbucketIntegrationInput = Shapes::StructureShape.new(name: 'BitbucketIntegrationInput')
    BitbucketRepositoryMetadata = Shapes::StructureShape.new(name: 'BitbucketRepositoryMetadata')
    BitbucketRepositoryResource = Shapes::StructureShape.new(name: 'BitbucketRepositoryResource')
    BitbucketResourceCapabilities = Shapes::StructureShape.new(name: 'BitbucketResourceCapabilities')
    BitbucketWorkspace = Shapes::StringShape.new(name: 'BitbucketWorkspace')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Category = Shapes::StructureShape.new(name: 'Category')
    CategoryList = Shapes::ListShape.new(name: 'CategoryList')
    CertificateChain = Shapes::StringShape.new(name: 'CertificateChain')
    CleanUpStrategy = Shapes::StringShape.new(name: 'CleanUpStrategy')
    CloudWatchLog = Shapes::StructureShape.new(name: 'CloudWatchLog')
    CodeLocation = Shapes::StructureShape.new(name: 'CodeLocation')
    CodeLocationList = Shapes::ListShape.new(name: 'CodeLocationList')
    CodeRemediationStrategy = Shapes::StringShape.new(name: 'CodeRemediationStrategy')
    CodeRemediationTask = Shapes::StructureShape.new(name: 'CodeRemediationTask')
    CodeRemediationTaskDetails = Shapes::StructureShape.new(name: 'CodeRemediationTaskDetails')
    CodeRemediationTaskDetailsList = Shapes::ListShape.new(name: 'CodeRemediationTaskDetailsList')
    CodeRemediationTaskStatus = Shapes::StringShape.new(name: 'CodeRemediationTaskStatus')
    CodeReview = Shapes::StructureShape.new(name: 'CodeReview')
    CodeReviewIdList = Shapes::ListShape.new(name: 'CodeReviewIdList')
    CodeReviewJob = Shapes::StructureShape.new(name: 'CodeReviewJob')
    CodeReviewJobIdList = Shapes::ListShape.new(name: 'CodeReviewJobIdList')
    CodeReviewJobList = Shapes::ListShape.new(name: 'CodeReviewJobList')
    CodeReviewJobSummary = Shapes::StructureShape.new(name: 'CodeReviewJobSummary')
    CodeReviewJobSummaryList = Shapes::ListShape.new(name: 'CodeReviewJobSummaryList')
    CodeReviewJobTask = Shapes::StructureShape.new(name: 'CodeReviewJobTask')
    CodeReviewJobTaskList = Shapes::ListShape.new(name: 'CodeReviewJobTaskList')
    CodeReviewJobTaskSummary = Shapes::StructureShape.new(name: 'CodeReviewJobTaskSummary')
    CodeReviewJobTaskSummaryList = Shapes::ListShape.new(name: 'CodeReviewJobTaskSummaryList')
    CodeReviewList = Shapes::ListShape.new(name: 'CodeReviewList')
    CodeReviewSettings = Shapes::StructureShape.new(name: 'CodeReviewSettings')
    CodeReviewSummary = Shapes::StructureShape.new(name: 'CodeReviewSummary')
    CodeReviewSummaryList = Shapes::ListShape.new(name: 'CodeReviewSummaryList')
    ConfidenceLevel = Shapes::StringShape.new(name: 'ConfidenceLevel')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConfluenceDocumentMetadata = Shapes::StructureShape.new(name: 'ConfluenceDocumentMetadata')
    ConfluenceDocumentResource = Shapes::StructureShape.new(name: 'ConfluenceDocumentResource')
    ConfluenceInstallationId = Shapes::StringShape.new(name: 'ConfluenceInstallationId')
    ConfluenceIntegrationInput = Shapes::StructureShape.new(name: 'ConfluenceIntegrationInput')
    ConfluenceResourceCapabilities = Shapes::StructureShape.new(name: 'ConfluenceResourceCapabilities')
    ConfluenceSiteUrl = Shapes::StringShape.new(name: 'ConfluenceSiteUrl')
    ContextType = Shapes::StringShape.new(name: 'ContextType')
    CreateAgentSpaceInput = Shapes::StructureShape.new(name: 'CreateAgentSpaceInput')
    CreateAgentSpaceOutput = Shapes::StructureShape.new(name: 'CreateAgentSpaceOutput')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateCodeReviewInput = Shapes::StructureShape.new(name: 'CreateCodeReviewInput')
    CreateCodeReviewOutput = Shapes::StructureShape.new(name: 'CreateCodeReviewOutput')
    CreateIntegrationInput = Shapes::StructureShape.new(name: 'CreateIntegrationInput')
    CreateIntegrationOutput = Shapes::StructureShape.new(name: 'CreateIntegrationOutput')
    CreateMembershipRequest = Shapes::StructureShape.new(name: 'CreateMembershipRequest')
    CreateMembershipResponse = Shapes::StructureShape.new(name: 'CreateMembershipResponse')
    CreatePentestInput = Shapes::StructureShape.new(name: 'CreatePentestInput')
    CreatePentestOutput = Shapes::StructureShape.new(name: 'CreatePentestOutput')
    CreatePrivateConnectionInput = Shapes::StructureShape.new(name: 'CreatePrivateConnectionInput')
    CreatePrivateConnectionOutput = Shapes::StructureShape.new(name: 'CreatePrivateConnectionOutput')
    CreateSecurityRequirementEntry = Shapes::StructureShape.new(name: 'CreateSecurityRequirementEntry')
    CreateSecurityRequirementEntryList = Shapes::ListShape.new(name: 'CreateSecurityRequirementEntryList')
    CreateSecurityRequirementPackInput = Shapes::StructureShape.new(name: 'CreateSecurityRequirementPackInput')
    CreateSecurityRequirementPackOutput = Shapes::StructureShape.new(name: 'CreateSecurityRequirementPackOutput')
    CreateTargetDomainInput = Shapes::StructureShape.new(name: 'CreateTargetDomainInput')
    CreateTargetDomainOutput = Shapes::StructureShape.new(name: 'CreateTargetDomainOutput')
    CreateThreatInput = Shapes::StructureShape.new(name: 'CreateThreatInput')
    CreateThreatModelInput = Shapes::StructureShape.new(name: 'CreateThreatModelInput')
    CreateThreatModelOutput = Shapes::StructureShape.new(name: 'CreateThreatModelOutput')
    CreateThreatOutput = Shapes::StructureShape.new(name: 'CreateThreatOutput')
    CsrfState = Shapes::StringShape.new(name: 'CsrfState')
    CustomHeader = Shapes::StructureShape.new(name: 'CustomHeader')
    CustomHeaderList = Shapes::ListShape.new(name: 'CustomHeaderList')
    DNSRecordType = Shapes::StringShape.new(name: 'DNSRecordType')
    DefaultKmsKeyId = Shapes::StringShape.new(name: 'DefaultKmsKeyId')
    DeleteAgentSpaceInput = Shapes::StructureShape.new(name: 'DeleteAgentSpaceInput')
    DeleteAgentSpaceOutput = Shapes::StructureShape.new(name: 'DeleteAgentSpaceOutput')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteArtifactInput = Shapes::StructureShape.new(name: 'DeleteArtifactInput')
    DeleteArtifactOutput = Shapes::StructureShape.new(name: 'DeleteArtifactOutput')
    DeleteCodeReviewFailure = Shapes::StructureShape.new(name: 'DeleteCodeReviewFailure')
    DeleteCodeReviewFailureList = Shapes::ListShape.new(name: 'DeleteCodeReviewFailureList')
    DeleteIntegrationInput = Shapes::StructureShape.new(name: 'DeleteIntegrationInput')
    DeleteIntegrationOutput = Shapes::StructureShape.new(name: 'DeleteIntegrationOutput')
    DeleteMembershipRequest = Shapes::StructureShape.new(name: 'DeleteMembershipRequest')
    DeleteMembershipResponse = Shapes::StructureShape.new(name: 'DeleteMembershipResponse')
    DeletePentestFailure = Shapes::StructureShape.new(name: 'DeletePentestFailure')
    DeletePentestFailureList = Shapes::ListShape.new(name: 'DeletePentestFailureList')
    DeletePrivateConnectionInput = Shapes::StructureShape.new(name: 'DeletePrivateConnectionInput')
    DeletePrivateConnectionOutput = Shapes::StructureShape.new(name: 'DeletePrivateConnectionOutput')
    DeleteSecurityRequirementPackInput = Shapes::StructureShape.new(name: 'DeleteSecurityRequirementPackInput')
    DeleteSecurityRequirementPackOutput = Shapes::StructureShape.new(name: 'DeleteSecurityRequirementPackOutput')
    DeleteTargetDomainInput = Shapes::StructureShape.new(name: 'DeleteTargetDomainInput')
    DeleteTargetDomainOutput = Shapes::StructureShape.new(name: 'DeleteTargetDomainOutput')
    DeleteThreatModelFailure = Shapes::StructureShape.new(name: 'DeleteThreatModelFailure')
    DeleteThreatModelFailureList = Shapes::ListShape.new(name: 'DeleteThreatModelFailureList')
    DescribePrivateConnectionInput = Shapes::StructureShape.new(name: 'DescribePrivateConnectionInput')
    DescribePrivateConnectionOutput = Shapes::StructureShape.new(name: 'DescribePrivateConnectionOutput')
    DiffSource = Shapes::UnionShape.new(name: 'DiffSource')
    DiscoveredEndpoint = Shapes::StructureShape.new(name: 'DiscoveredEndpoint')
    DiscoveredEndpointList = Shapes::ListShape.new(name: 'DiscoveredEndpointList')
    DnsVerification = Shapes::StructureShape.new(name: 'DnsVerification')
    DocumentInfo = Shapes::StructureShape.new(name: 'DocumentInfo')
    DocumentList = Shapes::ListShape.new(name: 'DocumentList')
    DomainVerificationMethod = Shapes::StringShape.new(name: 'DomainVerificationMethod')
    Double = Shapes::FloatShape.new(name: 'Double')
    Endpoint = Shapes::StructureShape.new(name: 'Endpoint')
    EndpointList = Shapes::ListShape.new(name: 'EndpointList')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorInformation = Shapes::StructureShape.new(name: 'ErrorInformation')
    ExecutionContext = Shapes::StructureShape.new(name: 'ExecutionContext')
    ExecutionContextList = Shapes::ListShape.new(name: 'ExecutionContextList')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingIdList = Shapes::ListShape.new(name: 'FindingIdList')
    FindingList = Shapes::ListShape.new(name: 'FindingList')
    FindingStatus = Shapes::StringShape.new(name: 'FindingStatus')
    FindingSummary = Shapes::StructureShape.new(name: 'FindingSummary')
    FindingSummaryList = Shapes::ListShape.new(name: 'FindingSummaryList')
    GetApplicationRequest = Shapes::StructureShape.new(name: 'GetApplicationRequest')
    GetApplicationResponse = Shapes::StructureShape.new(name: 'GetApplicationResponse')
    GetArtifactInput = Shapes::StructureShape.new(name: 'GetArtifactInput')
    GetArtifactOutput = Shapes::StructureShape.new(name: 'GetArtifactOutput')
    GetIntegrationInput = Shapes::StructureShape.new(name: 'GetIntegrationInput')
    GetIntegrationOutput = Shapes::StructureShape.new(name: 'GetIntegrationOutput')
    GetSecurityRequirementPackInput = Shapes::StructureShape.new(name: 'GetSecurityRequirementPackInput')
    GetSecurityRequirementPackOutput = Shapes::StructureShape.new(name: 'GetSecurityRequirementPackOutput')
    GitHubIntegrationInput = Shapes::StructureShape.new(name: 'GitHubIntegrationInput')
    GitHubOwner = Shapes::StringShape.new(name: 'GitHubOwner')
    GitHubRepositoryMetadata = Shapes::StructureShape.new(name: 'GitHubRepositoryMetadata')
    GitHubRepositoryResource = Shapes::StructureShape.new(name: 'GitHubRepositoryResource')
    GitHubResourceCapabilities = Shapes::StructureShape.new(name: 'GitHubResourceCapabilities')
    GitLabIntegrationInput = Shapes::StructureShape.new(name: 'GitLabIntegrationInput')
    GitLabNamespace = Shapes::StringShape.new(name: 'GitLabNamespace')
    GitLabRepositoryMetadata = Shapes::StructureShape.new(name: 'GitLabRepositoryMetadata')
    GitLabRepositoryResource = Shapes::StructureShape.new(name: 'GitLabRepositoryResource')
    GitLabResourceCapabilities = Shapes::StructureShape.new(name: 'GitLabResourceCapabilities')
    GitLabTokenType = Shapes::StringShape.new(name: 'GitLabTokenType')
    HostAddress = Shapes::StringShape.new(name: 'HostAddress')
    HttpVerification = Shapes::StructureShape.new(name: 'HttpVerification')
    IamRoles = Shapes::ListShape.new(name: 'IamRoles')
    IdCApplicationArn = Shapes::StringShape.new(name: 'IdCApplicationArn')
    IdCConfiguration = Shapes::StructureShape.new(name: 'IdCConfiguration')
    IdCInstanceArn = Shapes::StringShape.new(name: 'IdCInstanceArn')
    ImportSecurityRequirementsInput = Shapes::StructureShape.new(name: 'ImportSecurityRequirementsInput')
    ImportSecurityRequirementsOutput = Shapes::StructureShape.new(name: 'ImportSecurityRequirementsOutput')
    ImportSource = Shapes::UnionShape.new(name: 'ImportSource')
    InitiateProviderRegistrationInput = Shapes::StructureShape.new(name: 'InitiateProviderRegistrationInput')
    InitiateProviderRegistrationOutput = Shapes::StructureShape.new(name: 'InitiateProviderRegistrationOutput')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegratedDocument = Shapes::StructureShape.new(name: 'IntegratedDocument')
    IntegratedRepository = Shapes::StructureShape.new(name: 'IntegratedRepository')
    IntegratedRepositoryList = Shapes::ListShape.new(name: 'IntegratedRepositoryList')
    IntegratedResource = Shapes::UnionShape.new(name: 'IntegratedResource')
    IntegratedResourceInputItem = Shapes::StructureShape.new(name: 'IntegratedResourceInputItem')
    IntegratedResourceInputItemList = Shapes::ListShape.new(name: 'IntegratedResourceInputItemList')
    IntegratedResourceMetadata = Shapes::UnionShape.new(name: 'IntegratedResourceMetadata')
    IntegratedResourceSummary = Shapes::StructureShape.new(name: 'IntegratedResourceSummary')
    IntegratedResourceSummaryList = Shapes::ListShape.new(name: 'IntegratedResourceSummaryList')
    IntegrationFilter = Shapes::UnionShape.new(name: 'IntegrationFilter')
    IntegrationId = Shapes::StringShape.new(name: 'IntegrationId')
    IntegrationSummary = Shapes::StructureShape.new(name: 'IntegrationSummary')
    IntegrationSummaryList = Shapes::ListShape.new(name: 'IntegrationSummaryList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IpAddressType = Shapes::StringShape.new(name: 'IpAddressType')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobType = Shapes::StringShape.new(name: 'JobType')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LambdaFunctionArn = Shapes::StringShape.new(name: 'LambdaFunctionArn')
    LambdaFunctionArns = Shapes::ListShape.new(name: 'LambdaFunctionArns')
    ListAgentSpacesInput = Shapes::StructureShape.new(name: 'ListAgentSpacesInput')
    ListAgentSpacesOutput = Shapes::StructureShape.new(name: 'ListAgentSpacesOutput')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListArtifactsInput = Shapes::StructureShape.new(name: 'ListArtifactsInput')
    ListArtifactsOutput = Shapes::StructureShape.new(name: 'ListArtifactsOutput')
    ListCodeReviewJobTasksInput = Shapes::StructureShape.new(name: 'ListCodeReviewJobTasksInput')
    ListCodeReviewJobTasksOutput = Shapes::StructureShape.new(name: 'ListCodeReviewJobTasksOutput')
    ListCodeReviewJobsForCodeReviewInput = Shapes::StructureShape.new(name: 'ListCodeReviewJobsForCodeReviewInput')
    ListCodeReviewJobsForCodeReviewOutput = Shapes::StructureShape.new(name: 'ListCodeReviewJobsForCodeReviewOutput')
    ListCodeReviewsInput = Shapes::StructureShape.new(name: 'ListCodeReviewsInput')
    ListCodeReviewsOutput = Shapes::StructureShape.new(name: 'ListCodeReviewsOutput')
    ListDiscoveredEndpointsInput = Shapes::StructureShape.new(name: 'ListDiscoveredEndpointsInput')
    ListDiscoveredEndpointsOutput = Shapes::StructureShape.new(name: 'ListDiscoveredEndpointsOutput')
    ListFindingsInput = Shapes::StructureShape.new(name: 'ListFindingsInput')
    ListFindingsOutput = Shapes::StructureShape.new(name: 'ListFindingsOutput')
    ListIntegratedResourcesInput = Shapes::StructureShape.new(name: 'ListIntegratedResourcesInput')
    ListIntegratedResourcesOutput = Shapes::StructureShape.new(name: 'ListIntegratedResourcesOutput')
    ListIntegrationsInput = Shapes::StructureShape.new(name: 'ListIntegrationsInput')
    ListIntegrationsOutput = Shapes::StructureShape.new(name: 'ListIntegrationsOutput')
    ListMembershipsRequest = Shapes::StructureShape.new(name: 'ListMembershipsRequest')
    ListMembershipsResponse = Shapes::StructureShape.new(name: 'ListMembershipsResponse')
    ListPentestJobTasksInput = Shapes::StructureShape.new(name: 'ListPentestJobTasksInput')
    ListPentestJobTasksOutput = Shapes::StructureShape.new(name: 'ListPentestJobTasksOutput')
    ListPentestJobsForPentestInput = Shapes::StructureShape.new(name: 'ListPentestJobsForPentestInput')
    ListPentestJobsForPentestOutput = Shapes::StructureShape.new(name: 'ListPentestJobsForPentestOutput')
    ListPentestsInput = Shapes::StructureShape.new(name: 'ListPentestsInput')
    ListPentestsOutput = Shapes::StructureShape.new(name: 'ListPentestsOutput')
    ListPrivateConnectionsInput = Shapes::StructureShape.new(name: 'ListPrivateConnectionsInput')
    ListPrivateConnectionsOutput = Shapes::StructureShape.new(name: 'ListPrivateConnectionsOutput')
    ListSecurityRequirementPackFilter = Shapes::StructureShape.new(name: 'ListSecurityRequirementPackFilter')
    ListSecurityRequirementPacksInput = Shapes::StructureShape.new(name: 'ListSecurityRequirementPacksInput')
    ListSecurityRequirementPacksOutput = Shapes::StructureShape.new(name: 'ListSecurityRequirementPacksOutput')
    ListSecurityRequirementsInput = Shapes::StructureShape.new(name: 'ListSecurityRequirementsInput')
    ListSecurityRequirementsOutput = Shapes::StructureShape.new(name: 'ListSecurityRequirementsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListTargetDomainsInput = Shapes::StructureShape.new(name: 'ListTargetDomainsInput')
    ListTargetDomainsOutput = Shapes::StructureShape.new(name: 'ListTargetDomainsOutput')
    ListThreatModelJobTasksInput = Shapes::StructureShape.new(name: 'ListThreatModelJobTasksInput')
    ListThreatModelJobTasksOutput = Shapes::StructureShape.new(name: 'ListThreatModelJobTasksOutput')
    ListThreatModelJobsInput = Shapes::StructureShape.new(name: 'ListThreatModelJobsInput')
    ListThreatModelJobsOutput = Shapes::StructureShape.new(name: 'ListThreatModelJobsOutput')
    ListThreatModelsInput = Shapes::StructureShape.new(name: 'ListThreatModelsInput')
    ListThreatModelsOutput = Shapes::StructureShape.new(name: 'ListThreatModelsOutput')
    ListThreatsInput = Shapes::StructureShape.new(name: 'ListThreatsInput')
    ListThreatsOutput = Shapes::StructureShape.new(name: 'ListThreatsOutput')
    Location = Shapes::StringShape.new(name: 'Location')
    LogGroupArn = Shapes::StringShape.new(name: 'LogGroupArn')
    LogGroupArns = Shapes::ListShape.new(name: 'LogGroupArns')
    LogLocation = Shapes::StructureShape.new(name: 'LogLocation')
    LogType = Shapes::StringShape.new(name: 'LogType')
    ManagementType = Shapes::StringShape.new(name: 'ManagementType')
    MaxIpv4AddressesPerEni = Shapes::IntegerShape.new(name: 'MaxIpv4AddressesPerEni')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberMetadata = Shapes::UnionShape.new(name: 'MemberMetadata')
    MembershipConfig = Shapes::UnionShape.new(name: 'MembershipConfig')
    MembershipId = Shapes::StringShape.new(name: 'MembershipId')
    MembershipSummary = Shapes::StructureShape.new(name: 'MembershipSummary')
    MembershipSummaryList = Shapes::ListShape.new(name: 'MembershipSummaryList')
    MembershipType = Shapes::StringShape.new(name: 'MembershipType')
    MembershipTypeFilter = Shapes::StringShape.new(name: 'MembershipTypeFilter')
    NetworkTrafficConfig = Shapes::StructureShape.new(name: 'NetworkTrafficConfig')
    NetworkTrafficRule = Shapes::StructureShape.new(name: 'NetworkTrafficRule')
    NetworkTrafficRuleEffect = Shapes::StringShape.new(name: 'NetworkTrafficRuleEffect')
    NetworkTrafficRuleList = Shapes::ListShape.new(name: 'NetworkTrafficRuleList')
    NetworkTrafficRuleType = Shapes::StringShape.new(name: 'NetworkTrafficRuleType')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Pentest = Shapes::StructureShape.new(name: 'Pentest')
    PentestIdList = Shapes::ListShape.new(name: 'PentestIdList')
    PentestJob = Shapes::StructureShape.new(name: 'PentestJob')
    PentestJobIdList = Shapes::ListShape.new(name: 'PentestJobIdList')
    PentestJobList = Shapes::ListShape.new(name: 'PentestJobList')
    PentestJobSummary = Shapes::StructureShape.new(name: 'PentestJobSummary')
    PentestJobSummaryList = Shapes::ListShape.new(name: 'PentestJobSummaryList')
    PentestList = Shapes::ListShape.new(name: 'PentestList')
    PentestSummary = Shapes::StructureShape.new(name: 'PentestSummary')
    PentestSummaryList = Shapes::ListShape.new(name: 'PentestSummaryList')
    PortRange = Shapes::StringShape.new(name: 'PortRange')
    PortRanges = Shapes::ListShape.new(name: 'PortRanges')
    PrivateConnectionList = Shapes::ListShape.new(name: 'PrivateConnectionList')
    PrivateConnectionMode = Shapes::UnionShape.new(name: 'PrivateConnectionMode')
    PrivateConnectionName = Shapes::StringShape.new(name: 'PrivateConnectionName')
    PrivateConnectionSecurityGroupId = Shapes::StringShape.new(name: 'PrivateConnectionSecurityGroupId')
    PrivateConnectionSecurityGroupIds = Shapes::ListShape.new(name: 'PrivateConnectionSecurityGroupIds')
    PrivateConnectionStatus = Shapes::StringShape.new(name: 'PrivateConnectionStatus')
    PrivateConnectionSubnetId = Shapes::StringShape.new(name: 'PrivateConnectionSubnetId')
    PrivateConnectionSubnetIds = Shapes::ListShape.new(name: 'PrivateConnectionSubnetIds')
    PrivateConnectionSummary = Shapes::StructureShape.new(name: 'PrivateConnectionSummary')
    PrivateConnectionType = Shapes::StringShape.new(name: 'PrivateConnectionType')
    PrivateConnectionVpcId = Shapes::StringShape.new(name: 'PrivateConnectionVpcId')
    Provider = Shapes::StringShape.new(name: 'Provider')
    ProviderInput = Shapes::UnionShape.new(name: 'ProviderInput')
    ProviderResourceCapabilities = Shapes::UnionShape.new(name: 'ProviderResourceCapabilities')
    ProviderResourceId = Shapes::StringShape.new(name: 'ProviderResourceId')
    ProviderResourceName = Shapes::StringShape.new(name: 'ProviderResourceName')
    ProviderType = Shapes::StringShape.new(name: 'ProviderType')
    ReportDestination = Shapes::StructureShape.new(name: 'ReportDestination')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConfigDnsResolution = Shapes::StringShape.new(name: 'ResourceConfigDnsResolution')
    ResourceConfigurationId = Shapes::StringShape.new(name: 'ResourceConfigurationId')
    ResourceGatewayId = Shapes::StringShape.new(name: 'ResourceGatewayId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RiskLevel = Shapes::StringShape.new(name: 'RiskLevel')
    RiskType = Shapes::StringShape.new(name: 'RiskType')
    RiskTypeList = Shapes::ListShape.new(name: 'RiskTypeList')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketArn = Shapes::StringShape.new(name: 'S3BucketArn')
    S3BucketArns = Shapes::ListShape.new(name: 'S3BucketArns')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SecretArns = Shapes::ListShape.new(name: 'SecretArns')
    SecurityGroupArn = Shapes::StringShape.new(name: 'SecurityGroupArn')
    SecurityGroupArns = Shapes::ListShape.new(name: 'SecurityGroupArns')
    SecurityRequirementArtifact = Shapes::StructureShape.new(name: 'SecurityRequirementArtifact')
    SecurityRequirementArtifactFormat = Shapes::StringShape.new(name: 'SecurityRequirementArtifactFormat')
    SecurityRequirementArtifactList = Shapes::ListShape.new(name: 'SecurityRequirementArtifactList')
    SecurityRequirementArtifactName = Shapes::StringShape.new(name: 'SecurityRequirementArtifactName')
    SecurityRequirementDocumentContent = Shapes::BlobShape.new(name: 'SecurityRequirementDocumentContent')
    SecurityRequirementName = Shapes::StringShape.new(name: 'SecurityRequirementName')
    SecurityRequirementNameList = Shapes::ListShape.new(name: 'SecurityRequirementNameList')
    SecurityRequirementPackId = Shapes::StringShape.new(name: 'SecurityRequirementPackId')
    SecurityRequirementPackImportStatus = Shapes::StringShape.new(name: 'SecurityRequirementPackImportStatus')
    SecurityRequirementPackName = Shapes::StringShape.new(name: 'SecurityRequirementPackName')
    SecurityRequirementPackStatus = Shapes::StringShape.new(name: 'SecurityRequirementPackStatus')
    SecurityRequirementPackSummary = Shapes::StructureShape.new(name: 'SecurityRequirementPackSummary')
    SecurityRequirementPackSummaryList = Shapes::ListShape.new(name: 'SecurityRequirementPackSummaryList')
    SecurityRequirementSummary = Shapes::StructureShape.new(name: 'SecurityRequirementSummary')
    SecurityRequirementSummaryList = Shapes::ListShape.new(name: 'SecurityRequirementSummaryList')
    SelfManagedInput = Shapes::StructureShape.new(name: 'SelfManagedInput')
    SensitiveEmail = Shapes::StringShape.new(name: 'SensitiveEmail')
    SensitiveEmailAddress = Shapes::StringShape.new(name: 'SensitiveEmailAddress')
    ServiceManagedInput = Shapes::StructureShape.new(name: 'ServiceManagedInput')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceRole = Shapes::StringShape.new(name: 'ServiceRole')
    SkillType = Shapes::StringShape.new(name: 'SkillType')
    SkillTypeList = Shapes::ListShape.new(name: 'SkillTypeList')
    SourceCodeRepository = Shapes::StructureShape.new(name: 'SourceCodeRepository')
    SourceCodeRepositoryList = Shapes::ListShape.new(name: 'SourceCodeRepositoryList')
    StartCodeRemediationInput = Shapes::StructureShape.new(name: 'StartCodeRemediationInput')
    StartCodeRemediationOutput = Shapes::StructureShape.new(name: 'StartCodeRemediationOutput')
    StartCodeReviewJobInput = Shapes::StructureShape.new(name: 'StartCodeReviewJobInput')
    StartCodeReviewJobOutput = Shapes::StructureShape.new(name: 'StartCodeReviewJobOutput')
    StartPentestJobInput = Shapes::StructureShape.new(name: 'StartPentestJobInput')
    StartPentestJobOutput = Shapes::StructureShape.new(name: 'StartPentestJobOutput')
    StartThreatModelJobInput = Shapes::StructureShape.new(name: 'StartThreatModelJobInput')
    StartThreatModelJobOutput = Shapes::StructureShape.new(name: 'StartThreatModelJobOutput')
    Step = Shapes::StructureShape.new(name: 'Step')
    StepList = Shapes::ListShape.new(name: 'StepList')
    StepName = Shapes::StringShape.new(name: 'StepName')
    StepStatus = Shapes::StringShape.new(name: 'StepStatus')
    StopCodeReviewJobInput = Shapes::StructureShape.new(name: 'StopCodeReviewJobInput')
    StopCodeReviewJobOutput = Shapes::StructureShape.new(name: 'StopCodeReviewJobOutput')
    StopPentestJobInput = Shapes::StructureShape.new(name: 'StopPentestJobInput')
    StopPentestJobOutput = Shapes::StructureShape.new(name: 'StopPentestJobOutput')
    StopThreatModelJobInput = Shapes::StructureShape.new(name: 'StopThreatModelJobInput')
    StopThreatModelJobOutput = Shapes::StructureShape.new(name: 'StopThreatModelJobOutput')
    StrideCategory = Shapes::StringShape.new(name: 'StrideCategory')
    StrideCategoryList = Shapes::ListShape.new(name: 'StrideCategoryList')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SubnetArn = Shapes::StringShape.new(name: 'SubnetArn')
    SubnetArns = Shapes::ListShape.new(name: 'SubnetArns')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetDomain = Shapes::StructureShape.new(name: 'TargetDomain')
    TargetDomainId = Shapes::StringShape.new(name: 'TargetDomainId')
    TargetDomainIdList = Shapes::ListShape.new(name: 'TargetDomainIdList')
    TargetDomainList = Shapes::ListShape.new(name: 'TargetDomainList')
    TargetDomainStatus = Shapes::StringShape.new(name: 'TargetDomainStatus')
    TargetDomainSummary = Shapes::StructureShape.new(name: 'TargetDomainSummary')
    TargetDomainSummaryList = Shapes::ListShape.new(name: 'TargetDomainSummaryList')
    TargetUrl = Shapes::StringShape.new(name: 'TargetUrl')
    Task = Shapes::StructureShape.new(name: 'Task')
    TaskExecutionStatus = Shapes::StringShape.new(name: 'TaskExecutionStatus')
    TaskIdList = Shapes::ListShape.new(name: 'TaskIdList')
    TaskList = Shapes::ListShape.new(name: 'TaskList')
    TaskSummary = Shapes::StructureShape.new(name: 'TaskSummary')
    TaskSummaryList = Shapes::ListShape.new(name: 'TaskSummaryList')
    Threat = Shapes::StructureShape.new(name: 'Threat')
    ThreatActor = Shapes::StringShape.new(name: 'ThreatActor')
    ThreatAnchorShape = Shapes::StructureShape.new(name: 'ThreatAnchorShape')
    ThreatEvidenceList = Shapes::ListShape.new(name: 'ThreatEvidenceList')
    ThreatEvidenceShape = Shapes::StructureShape.new(name: 'ThreatEvidenceShape')
    ThreatIdList = Shapes::ListShape.new(name: 'ThreatIdList')
    ThreatList = Shapes::ListShape.new(name: 'ThreatList')
    ThreatModel = Shapes::StructureShape.new(name: 'ThreatModel')
    ThreatModelIdList = Shapes::ListShape.new(name: 'ThreatModelIdList')
    ThreatModelJob = Shapes::StructureShape.new(name: 'ThreatModelJob')
    ThreatModelJobIdList = Shapes::ListShape.new(name: 'ThreatModelJobIdList')
    ThreatModelJobList = Shapes::ListShape.new(name: 'ThreatModelJobList')
    ThreatModelJobSummary = Shapes::StructureShape.new(name: 'ThreatModelJobSummary')
    ThreatModelJobSummaryList = Shapes::ListShape.new(name: 'ThreatModelJobSummaryList')
    ThreatModelJobTask = Shapes::StructureShape.new(name: 'ThreatModelJobTask')
    ThreatModelJobTaskList = Shapes::ListShape.new(name: 'ThreatModelJobTaskList')
    ThreatModelJobTaskSummary = Shapes::StructureShape.new(name: 'ThreatModelJobTaskSummary')
    ThreatModelJobTaskSummaryList = Shapes::ListShape.new(name: 'ThreatModelJobTaskSummaryList')
    ThreatModelList = Shapes::ListShape.new(name: 'ThreatModelList')
    ThreatModelSummary = Shapes::StructureShape.new(name: 'ThreatModelSummary')
    ThreatModelSummaryList = Shapes::ListShape.new(name: 'ThreatModelSummaryList')
    ThreatSeverity = Shapes::StringShape.new(name: 'ThreatSeverity')
    ThreatStatus = Shapes::StringShape.new(name: 'ThreatStatus')
    ThreatSummary = Shapes::StructureShape.new(name: 'ThreatSummary')
    ThreatSummaryList = Shapes::ListShape.new(name: 'ThreatSummaryList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateAgentSpaceInput = Shapes::StructureShape.new(name: 'UpdateAgentSpaceInput')
    UpdateAgentSpaceOutput = Shapes::StructureShape.new(name: 'UpdateAgentSpaceOutput')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    UpdateCodeReviewInput = Shapes::StructureShape.new(name: 'UpdateCodeReviewInput')
    UpdateCodeReviewOutput = Shapes::StructureShape.new(name: 'UpdateCodeReviewOutput')
    UpdateFindingInput = Shapes::StructureShape.new(name: 'UpdateFindingInput')
    UpdateFindingOutput = Shapes::StructureShape.new(name: 'UpdateFindingOutput')
    UpdateIntegratedResourcesInput = Shapes::StructureShape.new(name: 'UpdateIntegratedResourcesInput')
    UpdateIntegratedResourcesOutput = Shapes::StructureShape.new(name: 'UpdateIntegratedResourcesOutput')
    UpdatePentestInput = Shapes::StructureShape.new(name: 'UpdatePentestInput')
    UpdatePentestOutput = Shapes::StructureShape.new(name: 'UpdatePentestOutput')
    UpdatePrivateConnectionCertificateInput = Shapes::StructureShape.new(name: 'UpdatePrivateConnectionCertificateInput')
    UpdatePrivateConnectionCertificateOutput = Shapes::StructureShape.new(name: 'UpdatePrivateConnectionCertificateOutput')
    UpdateSecurityRequirementEntry = Shapes::StructureShape.new(name: 'UpdateSecurityRequirementEntry')
    UpdateSecurityRequirementEntryList = Shapes::ListShape.new(name: 'UpdateSecurityRequirementEntryList')
    UpdateSecurityRequirementPackInput = Shapes::StructureShape.new(name: 'UpdateSecurityRequirementPackInput')
    UpdateSecurityRequirementPackOutput = Shapes::StructureShape.new(name: 'UpdateSecurityRequirementPackOutput')
    UpdateTargetDomainInput = Shapes::StructureShape.new(name: 'UpdateTargetDomainInput')
    UpdateTargetDomainOutput = Shapes::StructureShape.new(name: 'UpdateTargetDomainOutput')
    UpdateThreatInput = Shapes::StructureShape.new(name: 'UpdateThreatInput')
    UpdateThreatModelInput = Shapes::StructureShape.new(name: 'UpdateThreatModelInput')
    UpdateThreatModelOutput = Shapes::StructureShape.new(name: 'UpdateThreatModelOutput')
    UpdateThreatOutput = Shapes::StructureShape.new(name: 'UpdateThreatOutput')
    UriList = Shapes::ListShape.new(name: 'UriList')
    UserConfig = Shapes::StructureShape.new(name: 'UserConfig')
    UserMetadata = Shapes::StructureShape.new(name: 'UserMetadata')
    UserRole = Shapes::StringShape.new(name: 'UserRole')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationMode = Shapes::StringShape.new(name: 'ValidationMode')
    ValidationStatus = Shapes::StringShape.new(name: 'ValidationStatus')
    VerificationDetails = Shapes::StructureShape.new(name: 'VerificationDetails')
    VerificationScript = Shapes::StructureShape.new(name: 'VerificationScript')
    VerificationScriptEnvVar = Shapes::StructureShape.new(name: 'VerificationScriptEnvVar')
    VerificationScriptEnvVarList = Shapes::ListShape.new(name: 'VerificationScriptEnvVarList')
    VerifyTargetDomainInput = Shapes::StructureShape.new(name: 'VerifyTargetDomainInput')
    VerifyTargetDomainOutput = Shapes::StructureShape.new(name: 'VerifyTargetDomainOutput')
    VpcArn = Shapes::StringShape.new(name: 'VpcArn')
    VpcConfig = Shapes::StructureShape.new(name: 'VpcConfig')
    VpcConfigs = Shapes::ListShape.new(name: 'VpcConfigs')

    AWSResources.add_member(:vpcs, Shapes::ShapeRef.new(shape: VpcConfigs, location_name: "vpcs"))
    AWSResources.add_member(:log_groups, Shapes::ShapeRef.new(shape: LogGroupArns, location_name: "logGroups"))
    AWSResources.add_member(:s3_buckets, Shapes::ShapeRef.new(shape: S3BucketArns, location_name: "s3Buckets"))
    AWSResources.add_member(:secret_arns, Shapes::ShapeRef.new(shape: SecretArns, location_name: "secretArns"))
    AWSResources.add_member(:lambda_function_arns, Shapes::ShapeRef.new(shape: LambdaFunctionArns, location_name: "lambdaFunctionArns"))
    AWSResources.add_member(:iam_roles, Shapes::ShapeRef.new(shape: IamRoles, location_name: "iamRoles"))
    AWSResources.struct_class = Types::AWSResources

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Actor.add_member(:identifier, Shapes::ShapeRef.new(shape: String, location_name: "identifier"))
    Actor.add_member(:uris, Shapes::ShapeRef.new(shape: UriList, location_name: "uris"))
    Actor.add_member(:authentication, Shapes::ShapeRef.new(shape: Authentication, location_name: "authentication"))
    Actor.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Actor.add_member(:enable_email_mfa, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableEmailMfa"))
    Actor.add_member(:mfa_forwarding_address, Shapes::ShapeRef.new(shape: SensitiveEmailAddress, location_name: "mfaForwardingAddress"))
    Actor.struct_class = Types::Actor

    ActorList.member = Shapes::ShapeRef.new(shape: Actor)

    AddArtifactInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    AddArtifactInput.add_member(:artifact_content, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "artifactContent"))
    AddArtifactInput.add_member(:artifact_type, Shapes::ShapeRef.new(shape: ArtifactType, required: true, location_name: "artifactType"))
    AddArtifactInput.add_member(:file_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fileName"))
    AddArtifactInput.struct_class = Types::AddArtifactInput

    AddArtifactOutput.add_member(:artifact_id, Shapes::ShapeRef.new(shape: ArtifactId, required: true, location_name: "artifactId"))
    AddArtifactOutput.struct_class = Types::AddArtifactOutput

    AgentSpace.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    AgentSpace.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AgentSpace.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    AgentSpace.add_member(:aws_resources, Shapes::ShapeRef.new(shape: AWSResources, location_name: "awsResources"))
    AgentSpace.add_member(:target_domain_ids, Shapes::ShapeRef.new(shape: TargetDomainIdList, location_name: "targetDomainIds"))
    AgentSpace.add_member(:code_review_settings, Shapes::ShapeRef.new(shape: CodeReviewSettings, location_name: "codeReviewSettings"))
    AgentSpace.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    AgentSpace.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    AgentSpace.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    AgentSpace.struct_class = Types::AgentSpace

    AgentSpaceIdList.member = Shapes::ShapeRef.new(shape: AgentSpaceId)

    AgentSpaceList.member = Shapes::ShapeRef.new(shape: AgentSpace)

    AgentSpaceSummary.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    AgentSpaceSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AgentSpaceSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    AgentSpaceSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    AgentSpaceSummary.struct_class = Types::AgentSpaceSummary

    AgentSpaceSummaryList.member = Shapes::ShapeRef.new(shape: AgentSpaceSummary)

    ApplicationSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    ApplicationSummary.add_member(:application_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "applicationName"))
    ApplicationSummary.add_member(:domain, Shapes::ShapeRef.new(shape: ApplicationDomain, required: true, location_name: "domain"))
    ApplicationSummary.add_member(:default_kms_key_id, Shapes::ShapeRef.new(shape: DefaultKmsKeyId, location_name: "defaultKmsKeyId"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    ApplicationSummaryList.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    Artifact.add_member(:contents, Shapes::ShapeRef.new(shape: String, required: true, location_name: "contents"))
    Artifact.add_member(:type, Shapes::ShapeRef.new(shape: ArtifactType, required: true, location_name: "type"))
    Artifact.struct_class = Types::Artifact

    ArtifactIds.member = Shapes::ShapeRef.new(shape: ArtifactId)

    ArtifactMetadataItem.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    ArtifactMetadataItem.add_member(:artifact_id, Shapes::ShapeRef.new(shape: ArtifactId, required: true, location_name: "artifactId"))
    ArtifactMetadataItem.add_member(:file_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fileName"))
    ArtifactMetadataItem.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    ArtifactMetadataItem.struct_class = Types::ArtifactMetadataItem

    ArtifactMetadataList.member = Shapes::ShapeRef.new(shape: ArtifactMetadataItem)

    ArtifactSummary.add_member(:artifact_id, Shapes::ShapeRef.new(shape: ArtifactId, required: true, location_name: "artifactId"))
    ArtifactSummary.add_member(:file_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fileName"))
    ArtifactSummary.add_member(:artifact_type, Shapes::ShapeRef.new(shape: ArtifactType, required: true, location_name: "artifactType"))
    ArtifactSummary.struct_class = Types::ArtifactSummary

    ArtifactSummaryList.member = Shapes::ShapeRef.new(shape: ArtifactSummary)

    Assets.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointList, location_name: "endpoints"))
    Assets.add_member(:actors, Shapes::ShapeRef.new(shape: ActorList, location_name: "actors"))
    Assets.add_member(:documents, Shapes::ShapeRef.new(shape: DocumentList, location_name: "documents"))
    Assets.add_member(:source_code, Shapes::ShapeRef.new(shape: SourceCodeRepositoryList, location_name: "sourceCode"))
    Assets.add_member(:integrated_repositories, Shapes::ShapeRef.new(shape: IntegratedRepositoryList, location_name: "integratedRepositories"))
    Assets.struct_class = Types::Assets

    Authentication.add_member(:provider_type, Shapes::ShapeRef.new(shape: AuthenticationProviderType, location_name: "providerType"))
    Authentication.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    Authentication.struct_class = Types::Authentication

    BatchCreateSecurityRequirementResult.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    BatchCreateSecurityRequirementResult.add_member(:name, Shapes::ShapeRef.new(shape: SecurityRequirementName, required: true, location_name: "name"))
    BatchCreateSecurityRequirementResult.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    BatchCreateSecurityRequirementResult.add_member(:domain, Shapes::ShapeRef.new(shape: String, required: true, location_name: "domain"))
    BatchCreateSecurityRequirementResult.add_member(:evaluation, Shapes::ShapeRef.new(shape: String, required: true, location_name: "evaluation"))
    BatchCreateSecurityRequirementResult.add_member(:remediation, Shapes::ShapeRef.new(shape: String, location_name: "remediation"))
    BatchCreateSecurityRequirementResult.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    BatchCreateSecurityRequirementResult.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    BatchCreateSecurityRequirementResult.struct_class = Types::BatchCreateSecurityRequirementResult

    BatchCreateSecurityRequirementResultList.member = Shapes::ShapeRef.new(shape: BatchCreateSecurityRequirementResult)

    BatchCreateSecurityRequirementsInput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    BatchCreateSecurityRequirementsInput.add_member(:security_requirements, Shapes::ShapeRef.new(shape: CreateSecurityRequirementEntryList, required: true, location_name: "securityRequirements"))
    BatchCreateSecurityRequirementsInput.struct_class = Types::BatchCreateSecurityRequirementsInput

    BatchCreateSecurityRequirementsOutput.add_member(:security_requirements, Shapes::ShapeRef.new(shape: BatchCreateSecurityRequirementResultList, required: true, location_name: "securityRequirements"))
    BatchCreateSecurityRequirementsOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchSecurityRequirementErrors, required: true, location_name: "errors"))
    BatchCreateSecurityRequirementsOutput.struct_class = Types::BatchCreateSecurityRequirementsOutput

    BatchDeleteCodeReviewsInput.add_member(:code_review_ids, Shapes::ShapeRef.new(shape: CodeReviewIdList, required: true, location_name: "codeReviewIds"))
    BatchDeleteCodeReviewsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchDeleteCodeReviewsInput.struct_class = Types::BatchDeleteCodeReviewsInput

    BatchDeleteCodeReviewsOutput.add_member(:deleted, Shapes::ShapeRef.new(shape: CodeReviewIdList, location_name: "deleted"))
    BatchDeleteCodeReviewsOutput.add_member(:failed, Shapes::ShapeRef.new(shape: DeleteCodeReviewFailureList, location_name: "failed"))
    BatchDeleteCodeReviewsOutput.struct_class = Types::BatchDeleteCodeReviewsOutput

    BatchDeletePentestsInput.add_member(:pentest_ids, Shapes::ShapeRef.new(shape: PentestIdList, required: true, location_name: "pentestIds"))
    BatchDeletePentestsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchDeletePentestsInput.struct_class = Types::BatchDeletePentestsInput

    BatchDeletePentestsOutput.add_member(:deleted, Shapes::ShapeRef.new(shape: PentestList, location_name: "deleted"))
    BatchDeletePentestsOutput.add_member(:failed, Shapes::ShapeRef.new(shape: DeletePentestFailureList, location_name: "failed"))
    BatchDeletePentestsOutput.struct_class = Types::BatchDeletePentestsOutput

    BatchDeleteSecurityRequirementsInput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    BatchDeleteSecurityRequirementsInput.add_member(:security_requirement_names, Shapes::ShapeRef.new(shape: SecurityRequirementNameList, required: true, location_name: "securityRequirementNames"))
    BatchDeleteSecurityRequirementsInput.struct_class = Types::BatchDeleteSecurityRequirementsInput

    BatchDeleteSecurityRequirementsOutput.add_member(:deleted_security_requirement_names, Shapes::ShapeRef.new(shape: SecurityRequirementNameList, required: true, location_name: "deletedSecurityRequirementNames"))
    BatchDeleteSecurityRequirementsOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchSecurityRequirementErrors, required: true, location_name: "errors"))
    BatchDeleteSecurityRequirementsOutput.struct_class = Types::BatchDeleteSecurityRequirementsOutput

    BatchDeleteThreatModelsInput.add_member(:threat_model_ids, Shapes::ShapeRef.new(shape: ThreatModelIdList, required: true, location_name: "threatModelIds"))
    BatchDeleteThreatModelsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchDeleteThreatModelsInput.struct_class = Types::BatchDeleteThreatModelsInput

    BatchDeleteThreatModelsOutput.add_member(:deleted, Shapes::ShapeRef.new(shape: ThreatModelIdList, location_name: "deleted"))
    BatchDeleteThreatModelsOutput.add_member(:failed, Shapes::ShapeRef.new(shape: DeleteThreatModelFailureList, location_name: "failed"))
    BatchDeleteThreatModelsOutput.struct_class = Types::BatchDeleteThreatModelsOutput

    BatchGetAgentSpacesInput.add_member(:agent_space_ids, Shapes::ShapeRef.new(shape: AgentSpaceIdList, required: true, location_name: "agentSpaceIds"))
    BatchGetAgentSpacesInput.struct_class = Types::BatchGetAgentSpacesInput

    BatchGetAgentSpacesOutput.add_member(:agent_spaces, Shapes::ShapeRef.new(shape: AgentSpaceList, location_name: "agentSpaces"))
    BatchGetAgentSpacesOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: AgentSpaceIdList, location_name: "notFound"))
    BatchGetAgentSpacesOutput.struct_class = Types::BatchGetAgentSpacesOutput

    BatchGetArtifactMetadataInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    BatchGetArtifactMetadataInput.add_member(:artifact_ids, Shapes::ShapeRef.new(shape: ArtifactIds, required: true, location_name: "artifactIds"))
    BatchGetArtifactMetadataInput.struct_class = Types::BatchGetArtifactMetadataInput

    BatchGetArtifactMetadataOutput.add_member(:artifact_metadata_list, Shapes::ShapeRef.new(shape: ArtifactMetadataList, required: true, location_name: "artifactMetadataList"))
    BatchGetArtifactMetadataOutput.struct_class = Types::BatchGetArtifactMetadataOutput

    BatchGetCodeReviewJobTasksInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchGetCodeReviewJobTasksInput.add_member(:code_review_job_task_ids, Shapes::ShapeRef.new(shape: TaskIdList, required: true, location_name: "codeReviewJobTaskIds"))
    BatchGetCodeReviewJobTasksInput.struct_class = Types::BatchGetCodeReviewJobTasksInput

    BatchGetCodeReviewJobTasksOutput.add_member(:code_review_job_tasks, Shapes::ShapeRef.new(shape: CodeReviewJobTaskList, location_name: "codeReviewJobTasks"))
    BatchGetCodeReviewJobTasksOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: TaskIdList, location_name: "notFound"))
    BatchGetCodeReviewJobTasksOutput.struct_class = Types::BatchGetCodeReviewJobTasksOutput

    BatchGetCodeReviewJobsInput.add_member(:code_review_job_ids, Shapes::ShapeRef.new(shape: CodeReviewJobIdList, required: true, location_name: "codeReviewJobIds"))
    BatchGetCodeReviewJobsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchGetCodeReviewJobsInput.struct_class = Types::BatchGetCodeReviewJobsInput

    BatchGetCodeReviewJobsOutput.add_member(:code_review_jobs, Shapes::ShapeRef.new(shape: CodeReviewJobList, location_name: "codeReviewJobs"))
    BatchGetCodeReviewJobsOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: CodeReviewJobIdList, location_name: "notFound"))
    BatchGetCodeReviewJobsOutput.struct_class = Types::BatchGetCodeReviewJobsOutput

    BatchGetCodeReviewsInput.add_member(:code_review_ids, Shapes::ShapeRef.new(shape: CodeReviewIdList, required: true, location_name: "codeReviewIds"))
    BatchGetCodeReviewsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchGetCodeReviewsInput.struct_class = Types::BatchGetCodeReviewsInput

    BatchGetCodeReviewsOutput.add_member(:code_reviews, Shapes::ShapeRef.new(shape: CodeReviewList, location_name: "codeReviews"))
    BatchGetCodeReviewsOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: CodeReviewIdList, location_name: "notFound"))
    BatchGetCodeReviewsOutput.struct_class = Types::BatchGetCodeReviewsOutput

    BatchGetFindingsInput.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIdList, required: true, location_name: "findingIds"))
    BatchGetFindingsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchGetFindingsInput.struct_class = Types::BatchGetFindingsInput

    BatchGetFindingsOutput.add_member(:findings, Shapes::ShapeRef.new(shape: FindingList, location_name: "findings"))
    BatchGetFindingsOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: FindingIdList, location_name: "notFound"))
    BatchGetFindingsOutput.struct_class = Types::BatchGetFindingsOutput

    BatchGetPentestJobTasksInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchGetPentestJobTasksInput.add_member(:task_ids, Shapes::ShapeRef.new(shape: TaskIdList, required: true, location_name: "taskIds"))
    BatchGetPentestJobTasksInput.struct_class = Types::BatchGetPentestJobTasksInput

    BatchGetPentestJobTasksOutput.add_member(:tasks, Shapes::ShapeRef.new(shape: TaskList, location_name: "tasks"))
    BatchGetPentestJobTasksOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: TaskIdList, location_name: "notFound"))
    BatchGetPentestJobTasksOutput.struct_class = Types::BatchGetPentestJobTasksOutput

    BatchGetPentestJobsInput.add_member(:pentest_job_ids, Shapes::ShapeRef.new(shape: PentestJobIdList, required: true, location_name: "pentestJobIds"))
    BatchGetPentestJobsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchGetPentestJobsInput.struct_class = Types::BatchGetPentestJobsInput

    BatchGetPentestJobsOutput.add_member(:pentest_jobs, Shapes::ShapeRef.new(shape: PentestJobList, location_name: "pentestJobs"))
    BatchGetPentestJobsOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: PentestJobIdList, location_name: "notFound"))
    BatchGetPentestJobsOutput.struct_class = Types::BatchGetPentestJobsOutput

    BatchGetPentestsInput.add_member(:pentest_ids, Shapes::ShapeRef.new(shape: PentestIdList, required: true, location_name: "pentestIds"))
    BatchGetPentestsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchGetPentestsInput.struct_class = Types::BatchGetPentestsInput

    BatchGetPentestsOutput.add_member(:pentests, Shapes::ShapeRef.new(shape: PentestList, location_name: "pentests"))
    BatchGetPentestsOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: PentestIdList, location_name: "notFound"))
    BatchGetPentestsOutput.struct_class = Types::BatchGetPentestsOutput

    BatchGetSecurityRequirementResult.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    BatchGetSecurityRequirementResult.add_member(:name, Shapes::ShapeRef.new(shape: SecurityRequirementName, required: true, location_name: "name"))
    BatchGetSecurityRequirementResult.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    BatchGetSecurityRequirementResult.add_member(:domain, Shapes::ShapeRef.new(shape: String, required: true, location_name: "domain"))
    BatchGetSecurityRequirementResult.add_member(:evaluation, Shapes::ShapeRef.new(shape: String, required: true, location_name: "evaluation"))
    BatchGetSecurityRequirementResult.add_member(:remediation, Shapes::ShapeRef.new(shape: String, location_name: "remediation"))
    BatchGetSecurityRequirementResult.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    BatchGetSecurityRequirementResult.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    BatchGetSecurityRequirementResult.struct_class = Types::BatchGetSecurityRequirementResult

    BatchGetSecurityRequirementResultList.member = Shapes::ShapeRef.new(shape: BatchGetSecurityRequirementResult)

    BatchGetSecurityRequirementsInput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    BatchGetSecurityRequirementsInput.add_member(:security_requirement_names, Shapes::ShapeRef.new(shape: SecurityRequirementNameList, required: true, location_name: "securityRequirementNames"))
    BatchGetSecurityRequirementsInput.struct_class = Types::BatchGetSecurityRequirementsInput

    BatchGetSecurityRequirementsOutput.add_member(:security_requirements, Shapes::ShapeRef.new(shape: BatchGetSecurityRequirementResultList, required: true, location_name: "securityRequirements"))
    BatchGetSecurityRequirementsOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchSecurityRequirementErrors, required: true, location_name: "errors"))
    BatchGetSecurityRequirementsOutput.struct_class = Types::BatchGetSecurityRequirementsOutput

    BatchGetTargetDomainsInput.add_member(:target_domain_ids, Shapes::ShapeRef.new(shape: TargetDomainIdList, required: true, location_name: "targetDomainIds"))
    BatchGetTargetDomainsInput.struct_class = Types::BatchGetTargetDomainsInput

    BatchGetTargetDomainsOutput.add_member(:target_domains, Shapes::ShapeRef.new(shape: TargetDomainList, location_name: "targetDomains"))
    BatchGetTargetDomainsOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: TargetDomainIdList, location_name: "notFound"))
    BatchGetTargetDomainsOutput.struct_class = Types::BatchGetTargetDomainsOutput

    BatchGetThreatModelJobTasksInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchGetThreatModelJobTasksInput.add_member(:threat_model_job_task_ids, Shapes::ShapeRef.new(shape: TaskIdList, required: true, location_name: "threatModelJobTaskIds"))
    BatchGetThreatModelJobTasksInput.struct_class = Types::BatchGetThreatModelJobTasksInput

    BatchGetThreatModelJobTasksOutput.add_member(:threat_model_job_tasks, Shapes::ShapeRef.new(shape: ThreatModelJobTaskList, location_name: "threatModelJobTasks"))
    BatchGetThreatModelJobTasksOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: TaskIdList, location_name: "notFound"))
    BatchGetThreatModelJobTasksOutput.struct_class = Types::BatchGetThreatModelJobTasksOutput

    BatchGetThreatModelJobsInput.add_member(:threat_model_job_ids, Shapes::ShapeRef.new(shape: ThreatModelJobIdList, required: true, location_name: "threatModelJobIds"))
    BatchGetThreatModelJobsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchGetThreatModelJobsInput.struct_class = Types::BatchGetThreatModelJobsInput

    BatchGetThreatModelJobsOutput.add_member(:threat_model_jobs, Shapes::ShapeRef.new(shape: ThreatModelJobList, location_name: "threatModelJobs"))
    BatchGetThreatModelJobsOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: ThreatModelJobIdList, location_name: "notFound"))
    BatchGetThreatModelJobsOutput.struct_class = Types::BatchGetThreatModelJobsOutput

    BatchGetThreatModelsInput.add_member(:threat_model_ids, Shapes::ShapeRef.new(shape: ThreatModelIdList, required: true, location_name: "threatModelIds"))
    BatchGetThreatModelsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchGetThreatModelsInput.struct_class = Types::BatchGetThreatModelsInput

    BatchGetThreatModelsOutput.add_member(:threat_models, Shapes::ShapeRef.new(shape: ThreatModelList, location_name: "threatModels"))
    BatchGetThreatModelsOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: ThreatModelIdList, location_name: "notFound"))
    BatchGetThreatModelsOutput.struct_class = Types::BatchGetThreatModelsOutput

    BatchGetThreatsInput.add_member(:threat_ids, Shapes::ShapeRef.new(shape: ThreatIdList, required: true, location_name: "threatIds"))
    BatchGetThreatsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    BatchGetThreatsInput.struct_class = Types::BatchGetThreatsInput

    BatchGetThreatsOutput.add_member(:threats, Shapes::ShapeRef.new(shape: ThreatList, location_name: "threats"))
    BatchGetThreatsOutput.add_member(:not_found, Shapes::ShapeRef.new(shape: ThreatIdList, location_name: "notFound"))
    BatchGetThreatsOutput.struct_class = Types::BatchGetThreatsOutput

    BatchSecurityRequirementError.add_member(:security_requirement_name, Shapes::ShapeRef.new(shape: SecurityRequirementName, required: true, location_name: "securityRequirementName"))
    BatchSecurityRequirementError.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "code"))
    BatchSecurityRequirementError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BatchSecurityRequirementError.struct_class = Types::BatchSecurityRequirementError

    BatchSecurityRequirementErrors.member = Shapes::ShapeRef.new(shape: BatchSecurityRequirementError)

    BatchUpdateSecurityRequirementsInput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    BatchUpdateSecurityRequirementsInput.add_member(:security_requirements, Shapes::ShapeRef.new(shape: UpdateSecurityRequirementEntryList, required: true, location_name: "securityRequirements"))
    BatchUpdateSecurityRequirementsInput.struct_class = Types::BatchUpdateSecurityRequirementsInput

    BatchUpdateSecurityRequirementsOutput.add_member(:updated_security_requirement_names, Shapes::ShapeRef.new(shape: SecurityRequirementNameList, required: true, location_name: "updatedSecurityRequirementNames"))
    BatchUpdateSecurityRequirementsOutput.add_member(:errors, Shapes::ShapeRef.new(shape: BatchSecurityRequirementErrors, required: true, location_name: "errors"))
    BatchUpdateSecurityRequirementsOutput.struct_class = Types::BatchUpdateSecurityRequirementsOutput

    BitbucketIntegrationInput.add_member(:installation_id, Shapes::ShapeRef.new(shape: BitbucketInstallationId, required: true, location_name: "installationId"))
    BitbucketIntegrationInput.add_member(:workspace, Shapes::ShapeRef.new(shape: BitbucketWorkspace, required: true, location_name: "workspace"))
    BitbucketIntegrationInput.add_member(:code, Shapes::ShapeRef.new(shape: AuthCode, required: true, location_name: "code"))
    BitbucketIntegrationInput.add_member(:state, Shapes::ShapeRef.new(shape: CsrfState, required: true, location_name: "state"))
    BitbucketIntegrationInput.struct_class = Types::BitbucketIntegrationInput

    BitbucketRepositoryMetadata.add_member(:name, Shapes::ShapeRef.new(shape: ProviderResourceName, required: true, location_name: "name"))
    BitbucketRepositoryMetadata.add_member(:provider_resource_id, Shapes::ShapeRef.new(shape: ProviderResourceId, required: true, location_name: "providerResourceId"))
    BitbucketRepositoryMetadata.add_member(:workspace, Shapes::ShapeRef.new(shape: BitbucketWorkspace, required: true, location_name: "workspace"))
    BitbucketRepositoryMetadata.add_member(:access_type, Shapes::ShapeRef.new(shape: AccessType, location_name: "accessType"))
    BitbucketRepositoryMetadata.struct_class = Types::BitbucketRepositoryMetadata

    BitbucketRepositoryResource.add_member(:name, Shapes::ShapeRef.new(shape: ProviderResourceName, required: true, location_name: "name"))
    BitbucketRepositoryResource.add_member(:workspace, Shapes::ShapeRef.new(shape: BitbucketWorkspace, required: true, location_name: "workspace"))
    BitbucketRepositoryResource.struct_class = Types::BitbucketRepositoryResource

    BitbucketResourceCapabilities.add_member(:leave_comments, Shapes::ShapeRef.new(shape: Boolean, location_name: "leaveComments"))
    BitbucketResourceCapabilities.add_member(:remediate_code, Shapes::ShapeRef.new(shape: Boolean, location_name: "remediateCode"))
    BitbucketResourceCapabilities.struct_class = Types::BitbucketResourceCapabilities

    Category.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Category.add_member(:is_primary, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPrimary"))
    Category.struct_class = Types::Category

    CategoryList.member = Shapes::ShapeRef.new(shape: Category)

    CloudWatchLog.add_member(:log_group, Shapes::ShapeRef.new(shape: String, location_name: "logGroup"))
    CloudWatchLog.add_member(:log_stream, Shapes::ShapeRef.new(shape: String, location_name: "logStream"))
    CloudWatchLog.struct_class = Types::CloudWatchLog

    CodeLocation.add_member(:file_path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "filePath"))
    CodeLocation.add_member(:line_start, Shapes::ShapeRef.new(shape: Integer, location_name: "lineStart"))
    CodeLocation.add_member(:line_end, Shapes::ShapeRef.new(shape: Integer, location_name: "lineEnd"))
    CodeLocation.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "label"))
    CodeLocation.struct_class = Types::CodeLocation

    CodeLocationList.member = Shapes::ShapeRef.new(shape: CodeLocation)

    CodeRemediationTask.add_member(:status, Shapes::ShapeRef.new(shape: CodeRemediationTaskStatus, required: true, location_name: "status"))
    CodeRemediationTask.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    CodeRemediationTask.add_member(:task_details, Shapes::ShapeRef.new(shape: CodeRemediationTaskDetailsList, location_name: "taskDetails"))
    CodeRemediationTask.struct_class = Types::CodeRemediationTask

    CodeRemediationTaskDetails.add_member(:repo_name, Shapes::ShapeRef.new(shape: String, location_name: "repoName"))
    CodeRemediationTaskDetails.add_member(:code_diff_link, Shapes::ShapeRef.new(shape: String, location_name: "codeDiffLink"))
    CodeRemediationTaskDetails.add_member(:pull_request_link, Shapes::ShapeRef.new(shape: String, location_name: "pullRequestLink"))
    CodeRemediationTaskDetails.struct_class = Types::CodeRemediationTaskDetails

    CodeRemediationTaskDetailsList.member = Shapes::ShapeRef.new(shape: CodeRemediationTaskDetails)

    CodeReview.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewId"))
    CodeReview.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    CodeReview.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    CodeReview.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, required: true, location_name: "assets"))
    CodeReview.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    CodeReview.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    CodeReview.add_member(:code_remediation_strategy, Shapes::ShapeRef.new(shape: CodeRemediationStrategy, location_name: "codeRemediationStrategy"))
    CodeReview.add_member(:validation_mode, Shapes::ShapeRef.new(shape: ValidationMode, location_name: "validationMode"))
    CodeReview.add_member(:max_task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "maxTaskHours"))
    CodeReview.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CodeReview.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CodeReview.struct_class = Types::CodeReview

    CodeReviewIdList.member = Shapes::ShapeRef.new(shape: String)

    CodeReviewJob.add_member(:code_review_job_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewJobId"))
    CodeReviewJob.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewId"))
    CodeReviewJob.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CodeReviewJob.add_member(:overview, Shapes::ShapeRef.new(shape: String, location_name: "overview"))
    CodeReviewJob.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    CodeReviewJob.add_member(:documents, Shapes::ShapeRef.new(shape: DocumentList, location_name: "documents"))
    CodeReviewJob.add_member(:source_code, Shapes::ShapeRef.new(shape: SourceCodeRepositoryList, location_name: "sourceCode"))
    CodeReviewJob.add_member(:steps, Shapes::ShapeRef.new(shape: StepList, location_name: "steps"))
    CodeReviewJob.add_member(:execution_context, Shapes::ShapeRef.new(shape: ExecutionContextList, location_name: "executionContext"))
    CodeReviewJob.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    CodeReviewJob.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    CodeReviewJob.add_member(:error_information, Shapes::ShapeRef.new(shape: ErrorInformation, location_name: "errorInformation"))
    CodeReviewJob.add_member(:integrated_repositories, Shapes::ShapeRef.new(shape: IntegratedRepositoryList, location_name: "integratedRepositories"))
    CodeReviewJob.add_member(:code_remediation_strategy, Shapes::ShapeRef.new(shape: CodeRemediationStrategy, location_name: "codeRemediationStrategy"))
    CodeReviewJob.add_member(:max_task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "maxTaskHours"))
    CodeReviewJob.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CodeReviewJob.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CodeReviewJob.struct_class = Types::CodeReviewJob

    CodeReviewJobIdList.member = Shapes::ShapeRef.new(shape: String)

    CodeReviewJobList.member = Shapes::ShapeRef.new(shape: CodeReviewJob)

    CodeReviewJobSummary.add_member(:code_review_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewJobId"))
    CodeReviewJobSummary.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewId"))
    CodeReviewJobSummary.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CodeReviewJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    CodeReviewJobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CodeReviewJobSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CodeReviewJobSummary.struct_class = Types::CodeReviewJobSummary

    CodeReviewJobSummaryList.member = Shapes::ShapeRef.new(shape: CodeReviewJobSummary)

    CodeReviewJobTask.add_member(:task_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskId"))
    CodeReviewJobTask.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewId"))
    CodeReviewJobTask.add_member(:code_review_job_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewJobId"))
    CodeReviewJobTask.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    CodeReviewJobTask.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CodeReviewJobTask.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CodeReviewJobTask.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "categories"))
    CodeReviewJobTask.add_member(:risk_type, Shapes::ShapeRef.new(shape: RiskType, location_name: "riskType"))
    CodeReviewJobTask.add_member(:execution_status, Shapes::ShapeRef.new(shape: TaskExecutionStatus, location_name: "executionStatus"))
    CodeReviewJobTask.add_member(:logs_location, Shapes::ShapeRef.new(shape: LogLocation, location_name: "logsLocation"))
    CodeReviewJobTask.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CodeReviewJobTask.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CodeReviewJobTask.struct_class = Types::CodeReviewJobTask

    CodeReviewJobTaskList.member = Shapes::ShapeRef.new(shape: CodeReviewJobTask)

    CodeReviewJobTaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskId"))
    CodeReviewJobTaskSummary.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewId"))
    CodeReviewJobTaskSummary.add_member(:code_review_job_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewJobId"))
    CodeReviewJobTaskSummary.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    CodeReviewJobTaskSummary.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CodeReviewJobTaskSummary.add_member(:risk_type, Shapes::ShapeRef.new(shape: RiskType, location_name: "riskType"))
    CodeReviewJobTaskSummary.add_member(:execution_status, Shapes::ShapeRef.new(shape: TaskExecutionStatus, location_name: "executionStatus"))
    CodeReviewJobTaskSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CodeReviewJobTaskSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CodeReviewJobTaskSummary.struct_class = Types::CodeReviewJobTaskSummary

    CodeReviewJobTaskSummaryList.member = Shapes::ShapeRef.new(shape: CodeReviewJobTaskSummary)

    CodeReviewList.member = Shapes::ShapeRef.new(shape: CodeReview)

    CodeReviewSettings.add_member(:controls_scanning, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "controlsScanning"))
    CodeReviewSettings.add_member(:general_purpose_scanning, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "generalPurposeScanning"))
    CodeReviewSettings.struct_class = Types::CodeReviewSettings

    CodeReviewSummary.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewId"))
    CodeReviewSummary.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    CodeReviewSummary.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    CodeReviewSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CodeReviewSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CodeReviewSummary.struct_class = Types::CodeReviewSummary

    CodeReviewSummaryList.member = Shapes::ShapeRef.new(shape: CodeReviewSummary)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    ConfluenceDocumentMetadata.add_member(:name, Shapes::ShapeRef.new(shape: ProviderResourceName, required: true, location_name: "name"))
    ConfluenceDocumentMetadata.add_member(:provider_resource_id, Shapes::ShapeRef.new(shape: ProviderResourceId, required: true, location_name: "providerResourceId"))
    ConfluenceDocumentMetadata.add_member(:space_key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "spaceKey"))
    ConfluenceDocumentMetadata.add_member(:page_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pageId"))
    ConfluenceDocumentMetadata.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    ConfluenceDocumentMetadata.add_member(:space_title, Shapes::ShapeRef.new(shape: String, location_name: "spaceTitle"))
    ConfluenceDocumentMetadata.struct_class = Types::ConfluenceDocumentMetadata

    ConfluenceDocumentResource.add_member(:name, Shapes::ShapeRef.new(shape: ProviderResourceName, required: true, location_name: "name"))
    ConfluenceDocumentResource.add_member(:space_key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "spaceKey"))
    ConfluenceDocumentResource.add_member(:page_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pageId"))
    ConfluenceDocumentResource.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    ConfluenceDocumentResource.add_member(:space_title, Shapes::ShapeRef.new(shape: String, location_name: "spaceTitle"))
    ConfluenceDocumentResource.struct_class = Types::ConfluenceDocumentResource

    ConfluenceIntegrationInput.add_member(:installation_id, Shapes::ShapeRef.new(shape: ConfluenceInstallationId, required: true, location_name: "installationId"))
    ConfluenceIntegrationInput.add_member(:code, Shapes::ShapeRef.new(shape: AuthCode, required: true, location_name: "code"))
    ConfluenceIntegrationInput.add_member(:state, Shapes::ShapeRef.new(shape: CsrfState, required: true, location_name: "state"))
    ConfluenceIntegrationInput.add_member(:site_url, Shapes::ShapeRef.new(shape: ConfluenceSiteUrl, required: true, location_name: "siteUrl"))
    ConfluenceIntegrationInput.struct_class = Types::ConfluenceIntegrationInput

    ConfluenceResourceCapabilities.add_member(:fetch_document, Shapes::ShapeRef.new(shape: Boolean, location_name: "fetchDocument"))
    ConfluenceResourceCapabilities.add_member(:create_document, Shapes::ShapeRef.new(shape: Boolean, location_name: "createDocument"))
    ConfluenceResourceCapabilities.add_member(:update_document, Shapes::ShapeRef.new(shape: Boolean, location_name: "updateDocument"))
    ConfluenceResourceCapabilities.struct_class = Types::ConfluenceResourceCapabilities

    CreateAgentSpaceInput.add_member(:name, Shapes::ShapeRef.new(shape: AgentName, required: true, location_name: "name"))
    CreateAgentSpaceInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateAgentSpaceInput.add_member(:aws_resources, Shapes::ShapeRef.new(shape: AWSResources, location_name: "awsResources"))
    CreateAgentSpaceInput.add_member(:target_domain_ids, Shapes::ShapeRef.new(shape: TargetDomainIdList, location_name: "targetDomainIds"))
    CreateAgentSpaceInput.add_member(:code_review_settings, Shapes::ShapeRef.new(shape: CodeReviewSettings, location_name: "codeReviewSettings"))
    CreateAgentSpaceInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateAgentSpaceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAgentSpaceInput.struct_class = Types::CreateAgentSpaceInput

    CreateAgentSpaceOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    CreateAgentSpaceOutput.add_member(:name, Shapes::ShapeRef.new(shape: AgentName, required: true, location_name: "name"))
    CreateAgentSpaceOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateAgentSpaceOutput.add_member(:aws_resources, Shapes::ShapeRef.new(shape: AWSResources, location_name: "awsResources"))
    CreateAgentSpaceOutput.add_member(:target_domain_ids, Shapes::ShapeRef.new(shape: TargetDomainIdList, location_name: "targetDomainIds"))
    CreateAgentSpaceOutput.add_member(:code_review_settings, Shapes::ShapeRef.new(shape: CodeReviewSettings, location_name: "codeReviewSettings"))
    CreateAgentSpaceOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateAgentSpaceOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CreateAgentSpaceOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CreateAgentSpaceOutput.struct_class = Types::CreateAgentSpaceOutput

    CreateApplicationRequest.add_member(:idc_instance_arn, Shapes::ShapeRef.new(shape: IdCInstanceArn, location_name: "idcInstanceArn"))
    CreateApplicationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateApplicationRequest.add_member(:default_kms_key_id, Shapes::ShapeRef.new(shape: DefaultKmsKeyId, location_name: "defaultKmsKeyId"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateCodeReviewInput.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    CreateCodeReviewInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    CreateCodeReviewInput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, required: true, location_name: "assets"))
    CreateCodeReviewInput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    CreateCodeReviewInput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    CreateCodeReviewInput.add_member(:code_remediation_strategy, Shapes::ShapeRef.new(shape: CodeRemediationStrategy, location_name: "codeRemediationStrategy"))
    CreateCodeReviewInput.add_member(:validation_mode, Shapes::ShapeRef.new(shape: ValidationMode, location_name: "validationMode"))
    CreateCodeReviewInput.add_member(:max_task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "maxTaskHours"))
    CreateCodeReviewInput.struct_class = Types::CreateCodeReviewInput

    CreateCodeReviewOutput.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewId"))
    CreateCodeReviewOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CreateCodeReviewOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CreateCodeReviewOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CreateCodeReviewOutput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "assets"))
    CreateCodeReviewOutput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    CreateCodeReviewOutput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    CreateCodeReviewOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    CreateCodeReviewOutput.add_member(:code_remediation_strategy, Shapes::ShapeRef.new(shape: CodeRemediationStrategy, location_name: "codeRemediationStrategy"))
    CreateCodeReviewOutput.add_member(:validation_mode, Shapes::ShapeRef.new(shape: ValidationMode, location_name: "validationMode"))
    CreateCodeReviewOutput.add_member(:max_task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "maxTaskHours"))
    CreateCodeReviewOutput.struct_class = Types::CreateCodeReviewOutput

    CreateIntegrationInput.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, required: true, location_name: "provider"))
    CreateIntegrationInput.add_member(:input, Shapes::ShapeRef.new(shape: ProviderInput, required: true, location_name: "input"))
    CreateIntegrationInput.add_member(:integration_display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "integrationDisplayName"))
    CreateIntegrationInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateIntegrationInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateIntegrationInput.add_member(:private_connection_name, Shapes::ShapeRef.new(shape: PrivateConnectionName, location_name: "privateConnectionName"))
    CreateIntegrationInput.struct_class = Types::CreateIntegrationInput

    CreateIntegrationOutput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    CreateIntegrationOutput.struct_class = Types::CreateIntegrationOutput

    CreateMembershipRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    CreateMembershipRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    CreateMembershipRequest.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipId, required: true, location_name: "membershipId"))
    CreateMembershipRequest.add_member(:member_type, Shapes::ShapeRef.new(shape: MembershipType, required: true, location_name: "memberType"))
    CreateMembershipRequest.add_member(:config, Shapes::ShapeRef.new(shape: MembershipConfig, location_name: "config"))
    CreateMembershipRequest.struct_class = Types::CreateMembershipRequest

    CreateMembershipResponse.struct_class = Types::CreateMembershipResponse

    CreatePentestInput.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    CreatePentestInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    CreatePentestInput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "assets"))
    CreatePentestInput.add_member(:exclude_risk_types, Shapes::ShapeRef.new(shape: RiskTypeList, location_name: "excludeRiskTypes"))
    CreatePentestInput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    CreatePentestInput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    CreatePentestInput.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    CreatePentestInput.add_member(:network_traffic_config, Shapes::ShapeRef.new(shape: NetworkTrafficConfig, location_name: "networkTrafficConfig"))
    CreatePentestInput.add_member(:code_remediation_strategy, Shapes::ShapeRef.new(shape: CodeRemediationStrategy, location_name: "codeRemediationStrategy"))
    CreatePentestInput.add_member(:disable_managed_skills, Shapes::ShapeRef.new(shape: SkillTypeList, location_name: "disableManagedSkills"))
    CreatePentestInput.add_member(:max_task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "maxTaskHours"))
    CreatePentestInput.struct_class = Types::CreatePentestInput

    CreatePentestOutput.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestId"))
    CreatePentestOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CreatePentestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CreatePentestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CreatePentestOutput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "assets"))
    CreatePentestOutput.add_member(:exclude_risk_types, Shapes::ShapeRef.new(shape: RiskTypeList, location_name: "excludeRiskTypes"))
    CreatePentestOutput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    CreatePentestOutput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    CreatePentestOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    CreatePentestOutput.struct_class = Types::CreatePentestOutput

    CreatePrivateConnectionInput.add_member(:private_connection_name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "privateConnectionName"))
    CreatePrivateConnectionInput.add_member(:mode, Shapes::ShapeRef.new(shape: PrivateConnectionMode, required: true, location_name: "mode"))
    CreatePrivateConnectionInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePrivateConnectionInput.struct_class = Types::CreatePrivateConnectionInput

    CreatePrivateConnectionOutput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "name"))
    CreatePrivateConnectionOutput.add_member(:type, Shapes::ShapeRef.new(shape: PrivateConnectionType, required: true, location_name: "type"))
    CreatePrivateConnectionOutput.add_member(:status, Shapes::ShapeRef.new(shape: PrivateConnectionStatus, required: true, location_name: "status"))
    CreatePrivateConnectionOutput.add_member(:resource_gateway_id, Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: "resourceGatewayId"))
    CreatePrivateConnectionOutput.add_member(:host_address, Shapes::ShapeRef.new(shape: HostAddress, location_name: "hostAddress"))
    CreatePrivateConnectionOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: PrivateConnectionVpcId, location_name: "vpcId"))
    CreatePrivateConnectionOutput.add_member(:resource_configuration_id, Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: "resourceConfigurationId"))
    CreatePrivateConnectionOutput.add_member(:certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "certificateExpiryTime"))
    CreatePrivateConnectionOutput.add_member(:dns_resolution, Shapes::ShapeRef.new(shape: ResourceConfigDnsResolution, location_name: "dnsResolution"))
    CreatePrivateConnectionOutput.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    CreatePrivateConnectionOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePrivateConnectionOutput.struct_class = Types::CreatePrivateConnectionOutput

    CreateSecurityRequirementEntry.add_member(:name, Shapes::ShapeRef.new(shape: SecurityRequirementName, required: true, location_name: "name"))
    CreateSecurityRequirementEntry.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    CreateSecurityRequirementEntry.add_member(:domain, Shapes::ShapeRef.new(shape: String, required: true, location_name: "domain"))
    CreateSecurityRequirementEntry.add_member(:evaluation, Shapes::ShapeRef.new(shape: String, required: true, location_name: "evaluation"))
    CreateSecurityRequirementEntry.add_member(:remediation, Shapes::ShapeRef.new(shape: String, location_name: "remediation"))
    CreateSecurityRequirementEntry.struct_class = Types::CreateSecurityRequirementEntry

    CreateSecurityRequirementEntryList.member = Shapes::ShapeRef.new(shape: CreateSecurityRequirementEntry)

    CreateSecurityRequirementPackInput.add_member(:name, Shapes::ShapeRef.new(shape: SecurityRequirementPackName, required: true, location_name: "name"))
    CreateSecurityRequirementPackInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateSecurityRequirementPackInput.add_member(:status, Shapes::ShapeRef.new(shape: SecurityRequirementPackStatus, location_name: "status"))
    CreateSecurityRequirementPackInput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateSecurityRequirementPackInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSecurityRequirementPackInput.struct_class = Types::CreateSecurityRequirementPackInput

    CreateSecurityRequirementPackOutput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    CreateSecurityRequirementPackOutput.add_member(:status, Shapes::ShapeRef.new(shape: SecurityRequirementPackStatus, required: true, location_name: "status"))
    CreateSecurityRequirementPackOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateSecurityRequirementPackOutput.struct_class = Types::CreateSecurityRequirementPackOutput

    CreateTargetDomainInput.add_member(:target_domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "targetDomainName"))
    CreateTargetDomainInput.add_member(:verification_method, Shapes::ShapeRef.new(shape: DomainVerificationMethod, required: true, location_name: "verificationMethod"))
    CreateTargetDomainInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTargetDomainInput.struct_class = Types::CreateTargetDomainInput

    CreateTargetDomainOutput.add_member(:target_domain_id, Shapes::ShapeRef.new(shape: TargetDomainId, required: true, location_name: "targetDomainId"))
    CreateTargetDomainOutput.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "domainName"))
    CreateTargetDomainOutput.add_member(:verification_status, Shapes::ShapeRef.new(shape: TargetDomainStatus, required: true, location_name: "verificationStatus"))
    CreateTargetDomainOutput.add_member(:verification_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "verificationStatusReason"))
    CreateTargetDomainOutput.add_member(:verification_details, Shapes::ShapeRef.new(shape: VerificationDetails, location_name: "verificationDetails"))
    CreateTargetDomainOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CreateTargetDomainOutput.add_member(:verified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "verifiedAt"))
    CreateTargetDomainOutput.struct_class = Types::CreateTargetDomainOutput

    CreateThreatInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    CreateThreatInput.add_member(:threat_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatJobId"))
    CreateThreatInput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CreateThreatInput.add_member(:statement, Shapes::ShapeRef.new(shape: String, location_name: "statement"))
    CreateThreatInput.add_member(:severity, Shapes::ShapeRef.new(shape: ThreatSeverity, location_name: "severity"))
    CreateThreatInput.add_member(:comments, Shapes::ShapeRef.new(shape: String, location_name: "comments"))
    CreateThreatInput.add_member(:stride, Shapes::ShapeRef.new(shape: StrideCategoryList, location_name: "stride"))
    CreateThreatInput.add_member(:threat_source, Shapes::ShapeRef.new(shape: String, location_name: "threatSource"))
    CreateThreatInput.add_member(:prerequisites, Shapes::ShapeRef.new(shape: String, location_name: "prerequisites"))
    CreateThreatInput.add_member(:threat_action, Shapes::ShapeRef.new(shape: String, location_name: "threatAction"))
    CreateThreatInput.add_member(:threat_impact, Shapes::ShapeRef.new(shape: String, location_name: "threatImpact"))
    CreateThreatInput.add_member(:impacted_goal, Shapes::ShapeRef.new(shape: StringList, location_name: "impactedGoal"))
    CreateThreatInput.add_member(:impacted_assets, Shapes::ShapeRef.new(shape: StringList, location_name: "impactedAssets"))
    CreateThreatInput.add_member(:anchor, Shapes::ShapeRef.new(shape: ThreatAnchorShape, location_name: "anchor"))
    CreateThreatInput.add_member(:evidence, Shapes::ShapeRef.new(shape: ThreatEvidenceList, location_name: "evidence"))
    CreateThreatInput.add_member(:recommendation, Shapes::ShapeRef.new(shape: String, location_name: "recommendation"))
    CreateThreatInput.struct_class = Types::CreateThreatInput

    CreateThreatModelInput.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    CreateThreatModelInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    CreateThreatModelInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateThreatModelInput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "assets"))
    CreateThreatModelInput.add_member(:scope_docs, Shapes::ShapeRef.new(shape: DocumentList, location_name: "scopeDocs"))
    CreateThreatModelInput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, required: true, location_name: "serviceRole"))
    CreateThreatModelInput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    CreateThreatModelInput.add_member(:report_destination, Shapes::ShapeRef.new(shape: ReportDestination, location_name: "reportDestination"))
    CreateThreatModelInput.struct_class = Types::CreateThreatModelInput

    CreateThreatModelOutput.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelId"))
    CreateThreatModelOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CreateThreatModelOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    CreateThreatModelOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    CreateThreatModelOutput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "assets"))
    CreateThreatModelOutput.add_member(:scope_docs, Shapes::ShapeRef.new(shape: DocumentList, location_name: "scopeDocs"))
    CreateThreatModelOutput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    CreateThreatModelOutput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    CreateThreatModelOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CreateThreatModelOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CreateThreatModelOutput.struct_class = Types::CreateThreatModelOutput

    CreateThreatOutput.add_member(:threat_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatId"))
    CreateThreatOutput.add_member(:threat_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatJobId"))
    CreateThreatOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    CreateThreatOutput.add_member(:statement, Shapes::ShapeRef.new(shape: String, location_name: "statement"))
    CreateThreatOutput.add_member(:severity, Shapes::ShapeRef.new(shape: ThreatSeverity, location_name: "severity"))
    CreateThreatOutput.add_member(:status, Shapes::ShapeRef.new(shape: ThreatStatus, location_name: "status"))
    CreateThreatOutput.add_member(:comments, Shapes::ShapeRef.new(shape: String, location_name: "comments"))
    CreateThreatOutput.add_member(:stride, Shapes::ShapeRef.new(shape: StrideCategoryList, location_name: "stride"))
    CreateThreatOutput.add_member(:threat_source, Shapes::ShapeRef.new(shape: String, location_name: "threatSource"))
    CreateThreatOutput.add_member(:prerequisites, Shapes::ShapeRef.new(shape: String, location_name: "prerequisites"))
    CreateThreatOutput.add_member(:threat_action, Shapes::ShapeRef.new(shape: String, location_name: "threatAction"))
    CreateThreatOutput.add_member(:threat_impact, Shapes::ShapeRef.new(shape: String, location_name: "threatImpact"))
    CreateThreatOutput.add_member(:impacted_goal, Shapes::ShapeRef.new(shape: StringList, location_name: "impactedGoal"))
    CreateThreatOutput.add_member(:impacted_assets, Shapes::ShapeRef.new(shape: StringList, location_name: "impactedAssets"))
    CreateThreatOutput.add_member(:anchor, Shapes::ShapeRef.new(shape: ThreatAnchorShape, location_name: "anchor"))
    CreateThreatOutput.add_member(:evidence, Shapes::ShapeRef.new(shape: ThreatEvidenceList, location_name: "evidence"))
    CreateThreatOutput.add_member(:recommendation, Shapes::ShapeRef.new(shape: String, location_name: "recommendation"))
    CreateThreatOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: ThreatActor, location_name: "createdBy"))
    CreateThreatOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: ThreatActor, location_name: "updatedBy"))
    CreateThreatOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    CreateThreatOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    CreateThreatOutput.struct_class = Types::CreateThreatOutput

    CustomHeader.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    CustomHeader.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    CustomHeader.struct_class = Types::CustomHeader

    CustomHeaderList.member = Shapes::ShapeRef.new(shape: CustomHeader)

    DeleteAgentSpaceInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    DeleteAgentSpaceInput.struct_class = Types::DeleteAgentSpaceInput

    DeleteAgentSpaceOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, location_name: "agentSpaceId"))
    DeleteAgentSpaceOutput.struct_class = Types::DeleteAgentSpaceOutput

    DeleteApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteArtifactInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    DeleteArtifactInput.add_member(:artifact_id, Shapes::ShapeRef.new(shape: ArtifactId, required: true, location_name: "artifactId"))
    DeleteArtifactInput.struct_class = Types::DeleteArtifactInput

    DeleteArtifactOutput.struct_class = Types::DeleteArtifactOutput

    DeleteCodeReviewFailure.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewId"))
    DeleteCodeReviewFailure.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    DeleteCodeReviewFailure.struct_class = Types::DeleteCodeReviewFailure

    DeleteCodeReviewFailureList.member = Shapes::ShapeRef.new(shape: DeleteCodeReviewFailure)

    DeleteIntegrationInput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    DeleteIntegrationInput.struct_class = Types::DeleteIntegrationInput

    DeleteIntegrationOutput.struct_class = Types::DeleteIntegrationOutput

    DeleteMembershipRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    DeleteMembershipRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    DeleteMembershipRequest.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipId, required: true, location_name: "membershipId"))
    DeleteMembershipRequest.add_member(:member_type, Shapes::ShapeRef.new(shape: MembershipType, location_name: "memberType"))
    DeleteMembershipRequest.struct_class = Types::DeleteMembershipRequest

    DeleteMembershipResponse.struct_class = Types::DeleteMembershipResponse

    DeletePentestFailure.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestId"))
    DeletePentestFailure.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    DeletePentestFailure.struct_class = Types::DeletePentestFailure

    DeletePentestFailureList.member = Shapes::ShapeRef.new(shape: DeletePentestFailure)

    DeletePrivateConnectionInput.add_member(:private_connection_name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "privateConnectionName"))
    DeletePrivateConnectionInput.struct_class = Types::DeletePrivateConnectionInput

    DeletePrivateConnectionOutput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "name"))
    DeletePrivateConnectionOutput.add_member(:type, Shapes::ShapeRef.new(shape: PrivateConnectionType, required: true, location_name: "type"))
    DeletePrivateConnectionOutput.add_member(:status, Shapes::ShapeRef.new(shape: PrivateConnectionStatus, required: true, location_name: "status"))
    DeletePrivateConnectionOutput.add_member(:resource_gateway_id, Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: "resourceGatewayId"))
    DeletePrivateConnectionOutput.add_member(:host_address, Shapes::ShapeRef.new(shape: HostAddress, location_name: "hostAddress"))
    DeletePrivateConnectionOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: PrivateConnectionVpcId, location_name: "vpcId"))
    DeletePrivateConnectionOutput.add_member(:resource_configuration_id, Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: "resourceConfigurationId"))
    DeletePrivateConnectionOutput.add_member(:certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "certificateExpiryTime"))
    DeletePrivateConnectionOutput.add_member(:dns_resolution, Shapes::ShapeRef.new(shape: ResourceConfigDnsResolution, location_name: "dnsResolution"))
    DeletePrivateConnectionOutput.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    DeletePrivateConnectionOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DeletePrivateConnectionOutput.struct_class = Types::DeletePrivateConnectionOutput

    DeleteSecurityRequirementPackInput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    DeleteSecurityRequirementPackInput.struct_class = Types::DeleteSecurityRequirementPackInput

    DeleteSecurityRequirementPackOutput.struct_class = Types::DeleteSecurityRequirementPackOutput

    DeleteTargetDomainInput.add_member(:target_domain_id, Shapes::ShapeRef.new(shape: TargetDomainId, required: true, location_name: "targetDomainId"))
    DeleteTargetDomainInput.struct_class = Types::DeleteTargetDomainInput

    DeleteTargetDomainOutput.add_member(:target_domain_id, Shapes::ShapeRef.new(shape: TargetDomainId, location_name: "targetDomainId"))
    DeleteTargetDomainOutput.struct_class = Types::DeleteTargetDomainOutput

    DeleteThreatModelFailure.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, location_name: "threatModelId"))
    DeleteThreatModelFailure.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    DeleteThreatModelFailure.struct_class = Types::DeleteThreatModelFailure

    DeleteThreatModelFailureList.member = Shapes::ShapeRef.new(shape: DeleteThreatModelFailure)

    DescribePrivateConnectionInput.add_member(:private_connection_name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "privateConnectionName"))
    DescribePrivateConnectionInput.struct_class = Types::DescribePrivateConnectionInput

    DescribePrivateConnectionOutput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "name"))
    DescribePrivateConnectionOutput.add_member(:type, Shapes::ShapeRef.new(shape: PrivateConnectionType, required: true, location_name: "type"))
    DescribePrivateConnectionOutput.add_member(:status, Shapes::ShapeRef.new(shape: PrivateConnectionStatus, required: true, location_name: "status"))
    DescribePrivateConnectionOutput.add_member(:resource_gateway_id, Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: "resourceGatewayId"))
    DescribePrivateConnectionOutput.add_member(:host_address, Shapes::ShapeRef.new(shape: HostAddress, location_name: "hostAddress"))
    DescribePrivateConnectionOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: PrivateConnectionVpcId, location_name: "vpcId"))
    DescribePrivateConnectionOutput.add_member(:resource_configuration_id, Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: "resourceConfigurationId"))
    DescribePrivateConnectionOutput.add_member(:certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "certificateExpiryTime"))
    DescribePrivateConnectionOutput.add_member(:dns_resolution, Shapes::ShapeRef.new(shape: ResourceConfigDnsResolution, location_name: "dnsResolution"))
    DescribePrivateConnectionOutput.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    DescribePrivateConnectionOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribePrivateConnectionOutput.struct_class = Types::DescribePrivateConnectionOutput

    DiffSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: String, location_name: "s3Uri"))
    DiffSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DiffSource.add_member_subclass(:s3_uri, Types::DiffSource::S3Uri)
    DiffSource.add_member_subclass(:unknown, Types::DiffSource::Unknown)
    DiffSource.struct_class = Types::DiffSource

    DiscoveredEndpoint.add_member(:uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "uri"))
    DiscoveredEndpoint.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pentestJobId"))
    DiscoveredEndpoint.add_member(:task_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskId"))
    DiscoveredEndpoint.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    DiscoveredEndpoint.add_member(:evidence, Shapes::ShapeRef.new(shape: String, location_name: "evidence"))
    DiscoveredEndpoint.add_member(:operation, Shapes::ShapeRef.new(shape: String, location_name: "operation"))
    DiscoveredEndpoint.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    DiscoveredEndpoint.struct_class = Types::DiscoveredEndpoint

    DiscoveredEndpointList.member = Shapes::ShapeRef.new(shape: DiscoveredEndpoint)

    DnsVerification.add_member(:token, Shapes::ShapeRef.new(shape: String, location_name: "token"))
    DnsVerification.add_member(:dns_record_name, Shapes::ShapeRef.new(shape: String, location_name: "dnsRecordName"))
    DnsVerification.add_member(:dns_record_type, Shapes::ShapeRef.new(shape: DNSRecordType, location_name: "dnsRecordType"))
    DnsVerification.struct_class = Types::DnsVerification

    DocumentInfo.add_member(:s3_location, Shapes::ShapeRef.new(shape: String, location_name: "s3Location"))
    DocumentInfo.add_member(:artifact_id, Shapes::ShapeRef.new(shape: String, location_name: "artifactId"))
    DocumentInfo.add_member(:integrated_document, Shapes::ShapeRef.new(shape: IntegratedDocument, location_name: "integratedDocument"))
    DocumentInfo.struct_class = Types::DocumentInfo

    DocumentList.member = Shapes::ShapeRef.new(shape: DocumentInfo)

    Endpoint.add_member(:uri, Shapes::ShapeRef.new(shape: String, location_name: "uri"))
    Endpoint.struct_class = Types::Endpoint

    EndpointList.member = Shapes::ShapeRef.new(shape: Endpoint)

    ErrorInformation.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "code"))
    ErrorInformation.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ErrorInformation.struct_class = Types::ErrorInformation

    ExecutionContext.add_member(:context_type, Shapes::ShapeRef.new(shape: ContextType, location_name: "contextType"))
    ExecutionContext.add_member(:context, Shapes::ShapeRef.new(shape: String, location_name: "context"))
    ExecutionContext.add_member(:timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timestamp"))
    ExecutionContext.struct_class = Types::ExecutionContext

    ExecutionContextList.member = Shapes::ShapeRef.new(shape: ExecutionContext)

    Finding.add_member(:finding_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "findingId"))
    Finding.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    Finding.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestId"))
    Finding.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestJobId"))
    Finding.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewId"))
    Finding.add_member(:code_review_job_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewJobId"))
    Finding.add_member(:task_id, Shapes::ShapeRef.new(shape: String, location_name: "taskId"))
    Finding.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Finding.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Finding.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, location_name: "status"))
    Finding.add_member(:risk_type, Shapes::ShapeRef.new(shape: String, location_name: "riskType"))
    Finding.add_member(:risk_level, Shapes::ShapeRef.new(shape: RiskLevel, location_name: "riskLevel"))
    Finding.add_member(:risk_score, Shapes::ShapeRef.new(shape: String, location_name: "riskScore"))
    Finding.add_member(:reasoning, Shapes::ShapeRef.new(shape: String, location_name: "reasoning"))
    Finding.add_member(:confidence, Shapes::ShapeRef.new(shape: ConfidenceLevel, location_name: "confidence"))
    Finding.add_member(:validation_status, Shapes::ShapeRef.new(shape: ValidationStatus, location_name: "validationStatus"))
    Finding.add_member(:attack_script, Shapes::ShapeRef.new(shape: String, location_name: "attackScript"))
    Finding.add_member(:code_remediation_task, Shapes::ShapeRef.new(shape: CodeRemediationTask, location_name: "codeRemediationTask"))
    Finding.add_member(:last_updated_by, Shapes::ShapeRef.new(shape: String, location_name: "lastUpdatedBy"))
    Finding.add_member(:customer_note, Shapes::ShapeRef.new(shape: String, location_name: "customerNote"))
    Finding.add_member(:code_locations, Shapes::ShapeRef.new(shape: CodeLocationList, location_name: "codeLocations"))
    Finding.add_member(:verification_script, Shapes::ShapeRef.new(shape: VerificationScript, location_name: "verificationScript"))
    Finding.add_member(:alignment_rationale, Shapes::ShapeRef.new(shape: String, location_name: "alignmentRationale"))
    Finding.add_member(:revalidation_job_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "revalidationJobIds"))
    Finding.add_member(:original_finding_id, Shapes::ShapeRef.new(shape: String, location_name: "originalFindingId"))
    Finding.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    Finding.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    Finding.struct_class = Types::Finding

    FindingIdList.member = Shapes::ShapeRef.new(shape: String)

    FindingList.member = Shapes::ShapeRef.new(shape: Finding)

    FindingSummary.add_member(:finding_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "findingId"))
    FindingSummary.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    FindingSummary.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestId"))
    FindingSummary.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestJobId"))
    FindingSummary.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewId"))
    FindingSummary.add_member(:code_review_job_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewJobId"))
    FindingSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    FindingSummary.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, location_name: "status"))
    FindingSummary.add_member(:risk_type, Shapes::ShapeRef.new(shape: String, location_name: "riskType"))
    FindingSummary.add_member(:risk_level, Shapes::ShapeRef.new(shape: RiskLevel, location_name: "riskLevel"))
    FindingSummary.add_member(:confidence, Shapes::ShapeRef.new(shape: ConfidenceLevel, location_name: "confidence"))
    FindingSummary.add_member(:validation_status, Shapes::ShapeRef.new(shape: ValidationStatus, location_name: "validationStatus"))
    FindingSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    FindingSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    FindingSummary.struct_class = Types::FindingSummary

    FindingSummaryList.member = Shapes::ShapeRef.new(shape: FindingSummary)

    GetApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    GetApplicationRequest.struct_class = Types::GetApplicationRequest

    GetApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    GetApplicationResponse.add_member(:domain, Shapes::ShapeRef.new(shape: ApplicationDomain, required: true, location_name: "domain"))
    GetApplicationResponse.add_member(:application_name, Shapes::ShapeRef.new(shape: String, location_name: "applicationName"))
    GetApplicationResponse.add_member(:idc_configuration, Shapes::ShapeRef.new(shape: IdCConfiguration, location_name: "idcConfiguration"))
    GetApplicationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    GetApplicationResponse.add_member(:default_kms_key_id, Shapes::ShapeRef.new(shape: DefaultKmsKeyId, location_name: "defaultKmsKeyId"))
    GetApplicationResponse.struct_class = Types::GetApplicationResponse

    GetArtifactInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    GetArtifactInput.add_member(:artifact_id, Shapes::ShapeRef.new(shape: ArtifactId, required: true, location_name: "artifactId"))
    GetArtifactInput.struct_class = Types::GetArtifactInput

    GetArtifactOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    GetArtifactOutput.add_member(:artifact_id, Shapes::ShapeRef.new(shape: ArtifactId, required: true, location_name: "artifactId"))
    GetArtifactOutput.add_member(:artifact, Shapes::ShapeRef.new(shape: Artifact, required: true, location_name: "artifact"))
    GetArtifactOutput.add_member(:file_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fileName"))
    GetArtifactOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    GetArtifactOutput.struct_class = Types::GetArtifactOutput

    GetIntegrationInput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    GetIntegrationInput.struct_class = Types::GetIntegrationInput

    GetIntegrationOutput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    GetIntegrationOutput.add_member(:installation_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "installationId"))
    GetIntegrationOutput.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, required: true, location_name: "provider"))
    GetIntegrationOutput.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, required: true, location_name: "providerType"))
    GetIntegrationOutput.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    GetIntegrationOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    GetIntegrationOutput.add_member(:target_url, Shapes::ShapeRef.new(shape: TargetUrl, location_name: "targetUrl"))
    GetIntegrationOutput.add_member(:private_connection_name, Shapes::ShapeRef.new(shape: PrivateConnectionName, location_name: "privateConnectionName"))
    GetIntegrationOutput.struct_class = Types::GetIntegrationOutput

    GetSecurityRequirementPackInput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    GetSecurityRequirementPackInput.struct_class = Types::GetSecurityRequirementPackInput

    GetSecurityRequirementPackOutput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    GetSecurityRequirementPackOutput.add_member(:name, Shapes::ShapeRef.new(shape: SecurityRequirementPackName, required: true, location_name: "name"))
    GetSecurityRequirementPackOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    GetSecurityRequirementPackOutput.add_member(:vendor_name, Shapes::ShapeRef.new(shape: String, location_name: "vendorName"))
    GetSecurityRequirementPackOutput.add_member(:management_type, Shapes::ShapeRef.new(shape: ManagementType, required: true, location_name: "managementType"))
    GetSecurityRequirementPackOutput.add_member(:status, Shapes::ShapeRef.new(shape: SecurityRequirementPackStatus, required: true, location_name: "status"))
    GetSecurityRequirementPackOutput.add_member(:import_status, Shapes::ShapeRef.new(shape: SecurityRequirementPackImportStatus, location_name: "importStatus"))
    GetSecurityRequirementPackOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetSecurityRequirementPackOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    GetSecurityRequirementPackOutput.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    GetSecurityRequirementPackOutput.struct_class = Types::GetSecurityRequirementPackOutput

    GitHubIntegrationInput.add_member(:code, Shapes::ShapeRef.new(shape: AuthCode, required: true, location_name: "code"))
    GitHubIntegrationInput.add_member(:state, Shapes::ShapeRef.new(shape: CsrfState, required: true, location_name: "state"))
    GitHubIntegrationInput.add_member(:organization_name, Shapes::ShapeRef.new(shape: String, location_name: "organizationName"))
    GitHubIntegrationInput.add_member(:target_url, Shapes::ShapeRef.new(shape: TargetUrl, location_name: "targetUrl"))
    GitHubIntegrationInput.add_member(:installation_id, Shapes::ShapeRef.new(shape: String, location_name: "installationId"))
    GitHubIntegrationInput.struct_class = Types::GitHubIntegrationInput

    GitHubRepositoryMetadata.add_member(:name, Shapes::ShapeRef.new(shape: ProviderResourceName, required: true, location_name: "name"))
    GitHubRepositoryMetadata.add_member(:provider_resource_id, Shapes::ShapeRef.new(shape: ProviderResourceId, required: true, location_name: "providerResourceId"))
    GitHubRepositoryMetadata.add_member(:owner, Shapes::ShapeRef.new(shape: GitHubOwner, required: true, location_name: "owner"))
    GitHubRepositoryMetadata.add_member(:access_type, Shapes::ShapeRef.new(shape: AccessType, location_name: "accessType"))
    GitHubRepositoryMetadata.struct_class = Types::GitHubRepositoryMetadata

    GitHubRepositoryResource.add_member(:name, Shapes::ShapeRef.new(shape: ProviderResourceName, required: true, location_name: "name"))
    GitHubRepositoryResource.add_member(:owner, Shapes::ShapeRef.new(shape: GitHubOwner, required: true, location_name: "owner"))
    GitHubRepositoryResource.struct_class = Types::GitHubRepositoryResource

    GitHubResourceCapabilities.add_member(:leave_comments, Shapes::ShapeRef.new(shape: Boolean, location_name: "leaveComments"))
    GitHubResourceCapabilities.add_member(:remediate_code, Shapes::ShapeRef.new(shape: Boolean, location_name: "remediateCode"))
    GitHubResourceCapabilities.struct_class = Types::GitHubResourceCapabilities

    GitLabIntegrationInput.add_member(:access_token, Shapes::ShapeRef.new(shape: AccessToken, required: true, location_name: "accessToken"))
    GitLabIntegrationInput.add_member(:target_url, Shapes::ShapeRef.new(shape: TargetUrl, location_name: "targetUrl"))
    GitLabIntegrationInput.add_member(:token_type, Shapes::ShapeRef.new(shape: GitLabTokenType, required: true, location_name: "tokenType"))
    GitLabIntegrationInput.add_member(:group_id, Shapes::ShapeRef.new(shape: String, location_name: "groupId"))
    GitLabIntegrationInput.struct_class = Types::GitLabIntegrationInput

    GitLabRepositoryMetadata.add_member(:name, Shapes::ShapeRef.new(shape: ProviderResourceName, required: true, location_name: "name"))
    GitLabRepositoryMetadata.add_member(:provider_resource_id, Shapes::ShapeRef.new(shape: ProviderResourceId, required: true, location_name: "providerResourceId"))
    GitLabRepositoryMetadata.add_member(:namespace, Shapes::ShapeRef.new(shape: GitLabNamespace, required: true, location_name: "namespace"))
    GitLabRepositoryMetadata.add_member(:access_type, Shapes::ShapeRef.new(shape: AccessType, location_name: "accessType"))
    GitLabRepositoryMetadata.struct_class = Types::GitLabRepositoryMetadata

    GitLabRepositoryResource.add_member(:name, Shapes::ShapeRef.new(shape: ProviderResourceName, required: true, location_name: "name"))
    GitLabRepositoryResource.add_member(:namespace, Shapes::ShapeRef.new(shape: GitLabNamespace, required: true, location_name: "namespace"))
    GitLabRepositoryResource.struct_class = Types::GitLabRepositoryResource

    GitLabResourceCapabilities.add_member(:leave_comments, Shapes::ShapeRef.new(shape: Boolean, location_name: "leaveComments"))
    GitLabResourceCapabilities.add_member(:remediate_code, Shapes::ShapeRef.new(shape: Boolean, location_name: "remediateCode"))
    GitLabResourceCapabilities.struct_class = Types::GitLabResourceCapabilities

    HttpVerification.add_member(:token, Shapes::ShapeRef.new(shape: String, location_name: "token"))
    HttpVerification.add_member(:route_path, Shapes::ShapeRef.new(shape: String, location_name: "routePath"))
    HttpVerification.struct_class = Types::HttpVerification

    IamRoles.member = Shapes::ShapeRef.new(shape: ServiceRole)

    IdCConfiguration.add_member(:idc_application_arn, Shapes::ShapeRef.new(shape: IdCApplicationArn, location_name: "idcApplicationArn"))
    IdCConfiguration.add_member(:idc_instance_arn, Shapes::ShapeRef.new(shape: IdCInstanceArn, location_name: "idcInstanceArn"))
    IdCConfiguration.struct_class = Types::IdCConfiguration

    ImportSecurityRequirementsInput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    ImportSecurityRequirementsInput.add_member(:input, Shapes::ShapeRef.new(shape: ImportSource, required: true, location_name: "input"))
    ImportSecurityRequirementsInput.struct_class = Types::ImportSecurityRequirementsInput

    ImportSecurityRequirementsOutput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    ImportSecurityRequirementsOutput.add_member(:import_status, Shapes::ShapeRef.new(shape: SecurityRequirementPackImportStatus, required: true, location_name: "importStatus"))
    ImportSecurityRequirementsOutput.struct_class = Types::ImportSecurityRequirementsOutput

    ImportSource.add_member(:documents, Shapes::ShapeRef.new(shape: SecurityRequirementArtifactList, location_name: "documents"))
    ImportSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ImportSource.add_member_subclass(:documents, Types::ImportSource::Documents)
    ImportSource.add_member_subclass(:unknown, Types::ImportSource::Unknown)
    ImportSource.struct_class = Types::ImportSource

    InitiateProviderRegistrationInput.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, required: true, location_name: "provider"))
    InitiateProviderRegistrationInput.struct_class = Types::InitiateProviderRegistrationInput

    InitiateProviderRegistrationOutput.add_member(:redirect_to, Shapes::ShapeRef.new(shape: Location, required: true, location_name: "redirectTo"))
    InitiateProviderRegistrationOutput.add_member(:csrf_state, Shapes::ShapeRef.new(shape: CsrfState, required: true, location_name: "csrfState"))
    InitiateProviderRegistrationOutput.struct_class = Types::InitiateProviderRegistrationOutput

    IntegratedDocument.add_member(:integration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "integrationId"))
    IntegratedDocument.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    IntegratedDocument.struct_class = Types::IntegratedDocument

    IntegratedRepository.add_member(:integration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "integrationId"))
    IntegratedRepository.add_member(:provider_resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "providerResourceId"))
    IntegratedRepository.add_member(:branch, Shapes::ShapeRef.new(shape: String, location_name: "branch"))
    IntegratedRepository.struct_class = Types::IntegratedRepository

    IntegratedRepositoryList.member = Shapes::ShapeRef.new(shape: IntegratedRepository)

    IntegratedResource.add_member(:github_repository, Shapes::ShapeRef.new(shape: GitHubRepositoryResource, location_name: "githubRepository"))
    IntegratedResource.add_member(:gitlab_repository, Shapes::ShapeRef.new(shape: GitLabRepositoryResource, location_name: "gitlabRepository"))
    IntegratedResource.add_member(:bitbucket_repository, Shapes::ShapeRef.new(shape: BitbucketRepositoryResource, location_name: "bitbucketRepository"))
    IntegratedResource.add_member(:confluence_document, Shapes::ShapeRef.new(shape: ConfluenceDocumentResource, location_name: "confluenceDocument"))
    IntegratedResource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IntegratedResource.add_member_subclass(:github_repository, Types::IntegratedResource::GithubRepository)
    IntegratedResource.add_member_subclass(:gitlab_repository, Types::IntegratedResource::GitlabRepository)
    IntegratedResource.add_member_subclass(:bitbucket_repository, Types::IntegratedResource::BitbucketRepository)
    IntegratedResource.add_member_subclass(:confluence_document, Types::IntegratedResource::ConfluenceDocument)
    IntegratedResource.add_member_subclass(:unknown, Types::IntegratedResource::Unknown)
    IntegratedResource.struct_class = Types::IntegratedResource

    IntegratedResourceInputItem.add_member(:resource, Shapes::ShapeRef.new(shape: IntegratedResource, required: true, location_name: "resource"))
    IntegratedResourceInputItem.add_member(:capabilities, Shapes::ShapeRef.new(shape: ProviderResourceCapabilities, location_name: "capabilities"))
    IntegratedResourceInputItem.struct_class = Types::IntegratedResourceInputItem

    IntegratedResourceInputItemList.member = Shapes::ShapeRef.new(shape: IntegratedResourceInputItem)

    IntegratedResourceMetadata.add_member(:github_repository, Shapes::ShapeRef.new(shape: GitHubRepositoryMetadata, location_name: "githubRepository"))
    IntegratedResourceMetadata.add_member(:gitlab_repository, Shapes::ShapeRef.new(shape: GitLabRepositoryMetadata, location_name: "gitlabRepository"))
    IntegratedResourceMetadata.add_member(:bitbucket_repository, Shapes::ShapeRef.new(shape: BitbucketRepositoryMetadata, location_name: "bitbucketRepository"))
    IntegratedResourceMetadata.add_member(:confluence_document, Shapes::ShapeRef.new(shape: ConfluenceDocumentMetadata, location_name: "confluenceDocument"))
    IntegratedResourceMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IntegratedResourceMetadata.add_member_subclass(:github_repository, Types::IntegratedResourceMetadata::GithubRepository)
    IntegratedResourceMetadata.add_member_subclass(:gitlab_repository, Types::IntegratedResourceMetadata::GitlabRepository)
    IntegratedResourceMetadata.add_member_subclass(:bitbucket_repository, Types::IntegratedResourceMetadata::BitbucketRepository)
    IntegratedResourceMetadata.add_member_subclass(:confluence_document, Types::IntegratedResourceMetadata::ConfluenceDocument)
    IntegratedResourceMetadata.add_member_subclass(:unknown, Types::IntegratedResourceMetadata::Unknown)
    IntegratedResourceMetadata.struct_class = Types::IntegratedResourceMetadata

    IntegratedResourceSummary.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    IntegratedResourceSummary.add_member(:resource, Shapes::ShapeRef.new(shape: IntegratedResourceMetadata, required: true, location_name: "resource"))
    IntegratedResourceSummary.add_member(:capabilities, Shapes::ShapeRef.new(shape: ProviderResourceCapabilities, location_name: "capabilities"))
    IntegratedResourceSummary.struct_class = Types::IntegratedResourceSummary

    IntegratedResourceSummaryList.member = Shapes::ShapeRef.new(shape: IntegratedResourceSummary)

    IntegrationFilter.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, location_name: "provider"))
    IntegrationFilter.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "providerType"))
    IntegrationFilter.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IntegrationFilter.add_member_subclass(:provider, Types::IntegrationFilter::Provider)
    IntegrationFilter.add_member_subclass(:provider_type, Types::IntegrationFilter::ProviderType)
    IntegrationFilter.add_member_subclass(:unknown, Types::IntegrationFilter::Unknown)
    IntegrationFilter.struct_class = Types::IntegrationFilter

    IntegrationSummary.add_member(:integration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "integrationId"))
    IntegrationSummary.add_member(:installation_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "installationId"))
    IntegrationSummary.add_member(:provider, Shapes::ShapeRef.new(shape: Provider, required: true, location_name: "provider"))
    IntegrationSummary.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, required: true, location_name: "providerType"))
    IntegrationSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "displayName"))
    IntegrationSummary.add_member(:target_url, Shapes::ShapeRef.new(shape: TargetUrl, location_name: "targetUrl"))
    IntegrationSummary.add_member(:private_connection_name, Shapes::ShapeRef.new(shape: PrivateConnectionName, location_name: "privateConnectionName"))
    IntegrationSummary.struct_class = Types::IntegrationSummary

    IntegrationSummaryList.member = Shapes::ShapeRef.new(shape: IntegrationSummary)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LambdaFunctionArns.member = Shapes::ShapeRef.new(shape: LambdaFunctionArn)

    ListAgentSpacesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentSpacesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListAgentSpacesInput.struct_class = Types::ListAgentSpacesInput

    ListAgentSpacesOutput.add_member(:agent_space_summaries, Shapes::ShapeRef.new(shape: AgentSpaceSummaryList, location_name: "agentSpaceSummaries"))
    ListAgentSpacesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAgentSpacesOutput.struct_class = Types::ListAgentSpacesOutput

    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:application_summaries, Shapes::ShapeRef.new(shape: ApplicationSummaryList, required: true, location_name: "applicationSummaries"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListArtifactsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    ListArtifactsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListArtifactsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListArtifactsInput.struct_class = Types::ListArtifactsInput

    ListArtifactsOutput.add_member(:artifact_summaries, Shapes::ShapeRef.new(shape: ArtifactSummaryList, required: true, location_name: "artifactSummaries"))
    ListArtifactsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListArtifactsOutput.struct_class = Types::ListArtifactsOutput

    ListCodeReviewJobTasksInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListCodeReviewJobTasksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListCodeReviewJobTasksInput.add_member(:code_review_job_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewJobId"))
    ListCodeReviewJobTasksInput.add_member(:step_name, Shapes::ShapeRef.new(shape: StepName, location_name: "stepName"))
    ListCodeReviewJobTasksInput.add_member(:category_name, Shapes::ShapeRef.new(shape: String, location_name: "categoryName"))
    ListCodeReviewJobTasksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeReviewJobTasksInput.struct_class = Types::ListCodeReviewJobTasksInput

    ListCodeReviewJobTasksOutput.add_member(:code_review_job_task_summaries, Shapes::ShapeRef.new(shape: CodeReviewJobTaskSummaryList, location_name: "codeReviewJobTaskSummaries"))
    ListCodeReviewJobTasksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeReviewJobTasksOutput.struct_class = Types::ListCodeReviewJobTasksOutput

    ListCodeReviewJobsForCodeReviewInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListCodeReviewJobsForCodeReviewInput.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewId"))
    ListCodeReviewJobsForCodeReviewInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListCodeReviewJobsForCodeReviewInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeReviewJobsForCodeReviewInput.struct_class = Types::ListCodeReviewJobsForCodeReviewInput

    ListCodeReviewJobsForCodeReviewOutput.add_member(:code_review_job_summaries, Shapes::ShapeRef.new(shape: CodeReviewJobSummaryList, location_name: "codeReviewJobSummaries"))
    ListCodeReviewJobsForCodeReviewOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeReviewJobsForCodeReviewOutput.struct_class = Types::ListCodeReviewJobsForCodeReviewOutput

    ListCodeReviewsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListCodeReviewsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeReviewsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListCodeReviewsInput.struct_class = Types::ListCodeReviewsInput

    ListCodeReviewsOutput.add_member(:code_review_summaries, Shapes::ShapeRef.new(shape: CodeReviewSummaryList, location_name: "codeReviewSummaries"))
    ListCodeReviewsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeReviewsOutput.struct_class = Types::ListCodeReviewsOutput

    ListDiscoveredEndpointsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDiscoveredEndpointsInput.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pentestJobId"))
    ListDiscoveredEndpointsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListDiscoveredEndpointsInput.add_member(:prefix, Shapes::ShapeRef.new(shape: String, location_name: "prefix"))
    ListDiscoveredEndpointsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDiscoveredEndpointsInput.struct_class = Types::ListDiscoveredEndpointsInput

    ListDiscoveredEndpointsOutput.add_member(:discovered_endpoints, Shapes::ShapeRef.new(shape: DiscoveredEndpointList, location_name: "discoveredEndpoints"))
    ListDiscoveredEndpointsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDiscoveredEndpointsOutput.struct_class = Types::ListDiscoveredEndpointsOutput

    ListFindingsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListFindingsInput.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestJobId"))
    ListFindingsInput.add_member(:code_review_job_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewJobId"))
    ListFindingsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListFindingsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFindingsInput.add_member(:risk_type, Shapes::ShapeRef.new(shape: String, location_name: "riskType"))
    ListFindingsInput.add_member(:risk_level, Shapes::ShapeRef.new(shape: RiskLevel, location_name: "riskLevel"))
    ListFindingsInput.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, location_name: "status"))
    ListFindingsInput.add_member(:confidence, Shapes::ShapeRef.new(shape: ConfidenceLevel, location_name: "confidence"))
    ListFindingsInput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ListFindingsInput.struct_class = Types::ListFindingsInput

    ListFindingsOutput.add_member(:findings_summaries, Shapes::ShapeRef.new(shape: FindingSummaryList, location_name: "findingsSummaries"))
    ListFindingsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListFindingsOutput.struct_class = Types::ListFindingsOutput

    ListIntegratedResourcesInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    ListIntegratedResourcesInput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, location_name: "integrationId"))
    ListIntegratedResourcesInput.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ListIntegratedResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIntegratedResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListIntegratedResourcesInput.struct_class = Types::ListIntegratedResourcesInput

    ListIntegratedResourcesOutput.add_member(:integrated_resource_summaries, Shapes::ShapeRef.new(shape: IntegratedResourceSummaryList, required: true, location_name: "integratedResourceSummaries"))
    ListIntegratedResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIntegratedResourcesOutput.struct_class = Types::ListIntegratedResourcesOutput

    ListIntegrationsInput.add_member(:filter, Shapes::ShapeRef.new(shape: IntegrationFilter, location_name: "filter"))
    ListIntegrationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIntegrationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListIntegrationsInput.struct_class = Types::ListIntegrationsInput

    ListIntegrationsOutput.add_member(:integration_summaries, Shapes::ShapeRef.new(shape: IntegrationSummaryList, required: true, location_name: "integrationSummaries"))
    ListIntegrationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIntegrationsOutput.struct_class = Types::ListIntegrationsOutput

    ListMembershipsRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    ListMembershipsRequest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    ListMembershipsRequest.add_member(:member_type, Shapes::ShapeRef.new(shape: MembershipTypeFilter, location_name: "memberType"))
    ListMembershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListMembershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMembershipsRequest.struct_class = Types::ListMembershipsRequest

    ListMembershipsResponse.add_member(:membership_summaries, Shapes::ShapeRef.new(shape: MembershipSummaryList, required: true, location_name: "membershipSummaries"))
    ListMembershipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMembershipsResponse.struct_class = Types::ListMembershipsResponse

    ListPentestJobTasksInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListPentestJobTasksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPentestJobTasksInput.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestJobId"))
    ListPentestJobTasksInput.add_member(:step_name, Shapes::ShapeRef.new(shape: StepName, location_name: "stepName"))
    ListPentestJobTasksInput.add_member(:category_name, Shapes::ShapeRef.new(shape: String, location_name: "categoryName"))
    ListPentestJobTasksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPentestJobTasksInput.struct_class = Types::ListPentestJobTasksInput

    ListPentestJobTasksOutput.add_member(:task_summaries, Shapes::ShapeRef.new(shape: TaskSummaryList, location_name: "taskSummaries"))
    ListPentestJobTasksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPentestJobTasksOutput.struct_class = Types::ListPentestJobTasksOutput

    ListPentestJobsForPentestInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPentestJobsForPentestInput.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pentestId"))
    ListPentestJobsForPentestInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListPentestJobsForPentestInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPentestJobsForPentestInput.struct_class = Types::ListPentestJobsForPentestInput

    ListPentestJobsForPentestOutput.add_member(:pentest_job_summaries, Shapes::ShapeRef.new(shape: PentestJobSummaryList, location_name: "pentestJobSummaries"))
    ListPentestJobsForPentestOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPentestJobsForPentestOutput.struct_class = Types::ListPentestJobsForPentestOutput

    ListPentestsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPentestsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPentestsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListPentestsInput.struct_class = Types::ListPentestsInput

    ListPentestsOutput.add_member(:pentest_summaries, Shapes::ShapeRef.new(shape: PentestSummaryList, location_name: "pentestSummaries"))
    ListPentestsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPentestsOutput.struct_class = Types::ListPentestsOutput

    ListPrivateConnectionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListPrivateConnectionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPrivateConnectionsInput.struct_class = Types::ListPrivateConnectionsInput

    ListPrivateConnectionsOutput.add_member(:private_connections, Shapes::ShapeRef.new(shape: PrivateConnectionList, required: true, location_name: "privateConnections"))
    ListPrivateConnectionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPrivateConnectionsOutput.struct_class = Types::ListPrivateConnectionsOutput

    ListSecurityRequirementPackFilter.add_member(:management_type, Shapes::ShapeRef.new(shape: ManagementType, location_name: "managementType"))
    ListSecurityRequirementPackFilter.add_member(:status, Shapes::ShapeRef.new(shape: SecurityRequirementPackStatus, location_name: "status"))
    ListSecurityRequirementPackFilter.struct_class = Types::ListSecurityRequirementPackFilter

    ListSecurityRequirementPacksInput.add_member(:filter, Shapes::ShapeRef.new(shape: ListSecurityRequirementPackFilter, location_name: "filter"))
    ListSecurityRequirementPacksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSecurityRequirementPacksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSecurityRequirementPacksInput.struct_class = Types::ListSecurityRequirementPacksInput

    ListSecurityRequirementPacksOutput.add_member(:security_requirement_pack_summaries, Shapes::ShapeRef.new(shape: SecurityRequirementPackSummaryList, required: true, location_name: "securityRequirementPackSummaries"))
    ListSecurityRequirementPacksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSecurityRequirementPacksOutput.struct_class = Types::ListSecurityRequirementPacksOutput

    ListSecurityRequirementsInput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    ListSecurityRequirementsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSecurityRequirementsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListSecurityRequirementsInput.struct_class = Types::ListSecurityRequirementsInput

    ListSecurityRequirementsOutput.add_member(:security_requirement_summaries, Shapes::ShapeRef.new(shape: SecurityRequirementSummaryList, required: true, location_name: "securityRequirementSummaries"))
    ListSecurityRequirementsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSecurityRequirementsOutput.struct_class = Types::ListSecurityRequirementsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListTargetDomainsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTargetDomainsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListTargetDomainsInput.struct_class = Types::ListTargetDomainsInput

    ListTargetDomainsOutput.add_member(:target_domain_summaries, Shapes::ShapeRef.new(shape: TargetDomainSummaryList, location_name: "targetDomainSummaries"))
    ListTargetDomainsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTargetDomainsOutput.struct_class = Types::ListTargetDomainsOutput

    ListThreatModelJobTasksInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListThreatModelJobTasksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListThreatModelJobTasksInput.add_member(:threat_model_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelJobId"))
    ListThreatModelJobTasksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThreatModelJobTasksInput.struct_class = Types::ListThreatModelJobTasksInput

    ListThreatModelJobTasksOutput.add_member(:threat_model_job_task_summaries, Shapes::ShapeRef.new(shape: ThreatModelJobTaskSummaryList, location_name: "threatModelJobTaskSummaries"))
    ListThreatModelJobTasksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThreatModelJobTasksOutput.struct_class = Types::ListThreatModelJobTasksOutput

    ListThreatModelJobsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListThreatModelJobsInput.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelId"))
    ListThreatModelJobsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListThreatModelJobsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThreatModelJobsInput.struct_class = Types::ListThreatModelJobsInput

    ListThreatModelJobsOutput.add_member(:threat_model_job_summaries, Shapes::ShapeRef.new(shape: ThreatModelJobSummaryList, location_name: "threatModelJobSummaries"))
    ListThreatModelJobsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThreatModelJobsOutput.struct_class = Types::ListThreatModelJobsOutput

    ListThreatModelsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListThreatModelsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThreatModelsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListThreatModelsInput.struct_class = Types::ListThreatModelsInput

    ListThreatModelsOutput.add_member(:threat_model_summaries, Shapes::ShapeRef.new(shape: ThreatModelSummaryList, location_name: "threatModelSummaries"))
    ListThreatModelsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThreatModelsOutput.struct_class = Types::ListThreatModelsOutput

    ListThreatsInput.add_member(:threat_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatJobId"))
    ListThreatsInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ListThreatsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThreatsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListThreatsInput.struct_class = Types::ListThreatsInput

    ListThreatsOutput.add_member(:threats, Shapes::ShapeRef.new(shape: ThreatSummaryList, location_name: "threats"))
    ListThreatsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListThreatsOutput.struct_class = Types::ListThreatsOutput

    LogGroupArns.member = Shapes::ShapeRef.new(shape: LogGroupArn)

    LogLocation.add_member(:log_type, Shapes::ShapeRef.new(shape: LogType, location_name: "logType"))
    LogLocation.add_member(:cloud_watch_log, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "cloudWatchLog"))
    LogLocation.struct_class = Types::LogLocation

    MemberMetadata.add_member(:user, Shapes::ShapeRef.new(shape: UserMetadata, location_name: "user"))
    MemberMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MemberMetadata.add_member_subclass(:user, Types::MemberMetadata::User)
    MemberMetadata.add_member_subclass(:unknown, Types::MemberMetadata::Unknown)
    MemberMetadata.struct_class = Types::MemberMetadata

    MembershipConfig.add_member(:user, Shapes::ShapeRef.new(shape: UserConfig, location_name: "user"))
    MembershipConfig.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MembershipConfig.add_member_subclass(:user, Types::MembershipConfig::User)
    MembershipConfig.add_member_subclass(:unknown, Types::MembershipConfig::Unknown)
    MembershipConfig.struct_class = Types::MembershipConfig

    MembershipSummary.add_member(:membership_id, Shapes::ShapeRef.new(shape: MembershipId, required: true, location_name: "membershipId"))
    MembershipSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    MembershipSummary.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    MembershipSummary.add_member(:member_type, Shapes::ShapeRef.new(shape: MembershipType, required: true, location_name: "memberType"))
    MembershipSummary.add_member(:config, Shapes::ShapeRef.new(shape: MembershipConfig, location_name: "config"))
    MembershipSummary.add_member(:metadata, Shapes::ShapeRef.new(shape: MemberMetadata, location_name: "metadata"))
    MembershipSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    MembershipSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    MembershipSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "createdBy"))
    MembershipSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: String, required: true, location_name: "updatedBy"))
    MembershipSummary.struct_class = Types::MembershipSummary

    MembershipSummaryList.member = Shapes::ShapeRef.new(shape: MembershipSummary)

    NetworkTrafficConfig.add_member(:rules, Shapes::ShapeRef.new(shape: NetworkTrafficRuleList, location_name: "rules"))
    NetworkTrafficConfig.add_member(:custom_headers, Shapes::ShapeRef.new(shape: CustomHeaderList, location_name: "customHeaders"))
    NetworkTrafficConfig.struct_class = Types::NetworkTrafficConfig

    NetworkTrafficRule.add_member(:effect, Shapes::ShapeRef.new(shape: NetworkTrafficRuleEffect, location_name: "effect"))
    NetworkTrafficRule.add_member(:pattern, Shapes::ShapeRef.new(shape: String, location_name: "pattern"))
    NetworkTrafficRule.add_member(:network_traffic_rule_type, Shapes::ShapeRef.new(shape: NetworkTrafficRuleType, location_name: "networkTrafficRuleType"))
    NetworkTrafficRule.struct_class = Types::NetworkTrafficRule

    NetworkTrafficRuleList.member = Shapes::ShapeRef.new(shape: NetworkTrafficRule)

    Pentest.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pentestId"))
    Pentest.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    Pentest.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    Pentest.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, required: true, location_name: "assets"))
    Pentest.add_member(:exclude_risk_types, Shapes::ShapeRef.new(shape: RiskTypeList, location_name: "excludeRiskTypes"))
    Pentest.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    Pentest.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    Pentest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    Pentest.add_member(:network_traffic_config, Shapes::ShapeRef.new(shape: NetworkTrafficConfig, location_name: "networkTrafficConfig"))
    Pentest.add_member(:code_remediation_strategy, Shapes::ShapeRef.new(shape: CodeRemediationStrategy, location_name: "codeRemediationStrategy"))
    Pentest.add_member(:clean_up_strategy, Shapes::ShapeRef.new(shape: CleanUpStrategy, location_name: "cleanUpStrategy"))
    Pentest.add_member(:disable_managed_skills, Shapes::ShapeRef.new(shape: SkillTypeList, location_name: "disableManagedSkills"))
    Pentest.add_member(:max_task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "maxTaskHours"))
    Pentest.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    Pentest.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    Pentest.struct_class = Types::Pentest

    PentestIdList.member = Shapes::ShapeRef.new(shape: String)

    PentestJob.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestJobId"))
    PentestJob.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestId"))
    PentestJob.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    PentestJob.add_member(:overview, Shapes::ShapeRef.new(shape: String, location_name: "overview"))
    PentestJob.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    PentestJob.add_member(:endpoints, Shapes::ShapeRef.new(shape: EndpointList, location_name: "endpoints"))
    PentestJob.add_member(:actors, Shapes::ShapeRef.new(shape: ActorList, location_name: "actors"))
    PentestJob.add_member(:documents, Shapes::ShapeRef.new(shape: DocumentList, location_name: "documents"))
    PentestJob.add_member(:source_code, Shapes::ShapeRef.new(shape: SourceCodeRepositoryList, location_name: "sourceCode"))
    PentestJob.add_member(:exclude_paths, Shapes::ShapeRef.new(shape: EndpointList, location_name: "excludePaths"))
    PentestJob.add_member(:allowed_domains, Shapes::ShapeRef.new(shape: EndpointList, location_name: "allowedDomains"))
    PentestJob.add_member(:exclude_risk_types, Shapes::ShapeRef.new(shape: RiskTypeList, location_name: "excludeRiskTypes"))
    PentestJob.add_member(:steps, Shapes::ShapeRef.new(shape: StepList, location_name: "steps"))
    PentestJob.add_member(:execution_context, Shapes::ShapeRef.new(shape: ExecutionContextList, location_name: "executionContext"))
    PentestJob.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    PentestJob.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    PentestJob.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    PentestJob.add_member(:network_traffic_config, Shapes::ShapeRef.new(shape: NetworkTrafficConfig, location_name: "networkTrafficConfig"))
    PentestJob.add_member(:error_information, Shapes::ShapeRef.new(shape: ErrorInformation, location_name: "errorInformation"))
    PentestJob.add_member(:integrated_repositories, Shapes::ShapeRef.new(shape: IntegratedRepositoryList, location_name: "integratedRepositories"))
    PentestJob.add_member(:code_remediation_strategy, Shapes::ShapeRef.new(shape: CodeRemediationStrategy, location_name: "codeRemediationStrategy"))
    PentestJob.add_member(:clean_up_strategy, Shapes::ShapeRef.new(shape: CleanUpStrategy, location_name: "cleanUpStrategy"))
    PentestJob.add_member(:disable_managed_skills, Shapes::ShapeRef.new(shape: SkillTypeList, location_name: "disableManagedSkills"))
    PentestJob.add_member(:max_task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "maxTaskHours"))
    PentestJob.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "jobType"))
    PentestJob.add_member(:selected_finding_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "selectedFindingIds"))
    PentestJob.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    PentestJob.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    PentestJob.struct_class = Types::PentestJob

    PentestJobIdList.member = Shapes::ShapeRef.new(shape: String)

    PentestJobList.member = Shapes::ShapeRef.new(shape: PentestJob)

    PentestJobSummary.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pentestJobId"))
    PentestJobSummary.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pentestId"))
    PentestJobSummary.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    PentestJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    PentestJobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    PentestJobSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    PentestJobSummary.struct_class = Types::PentestJobSummary

    PentestJobSummaryList.member = Shapes::ShapeRef.new(shape: PentestJobSummary)

    PentestList.member = Shapes::ShapeRef.new(shape: Pentest)

    PentestSummary.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pentestId"))
    PentestSummary.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    PentestSummary.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    PentestSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    PentestSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    PentestSummary.struct_class = Types::PentestSummary

    PentestSummaryList.member = Shapes::ShapeRef.new(shape: PentestSummary)

    PortRanges.member = Shapes::ShapeRef.new(shape: PortRange)

    PrivateConnectionList.member = Shapes::ShapeRef.new(shape: PrivateConnectionSummary)

    PrivateConnectionMode.add_member(:service_managed, Shapes::ShapeRef.new(shape: ServiceManagedInput, location_name: "serviceManaged"))
    PrivateConnectionMode.add_member(:self_managed, Shapes::ShapeRef.new(shape: SelfManagedInput, location_name: "selfManaged"))
    PrivateConnectionMode.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrivateConnectionMode.add_member_subclass(:service_managed, Types::PrivateConnectionMode::ServiceManaged)
    PrivateConnectionMode.add_member_subclass(:self_managed, Types::PrivateConnectionMode::SelfManaged)
    PrivateConnectionMode.add_member_subclass(:unknown, Types::PrivateConnectionMode::Unknown)
    PrivateConnectionMode.struct_class = Types::PrivateConnectionMode

    PrivateConnectionSecurityGroupIds.member = Shapes::ShapeRef.new(shape: PrivateConnectionSecurityGroupId)

    PrivateConnectionSubnetIds.member = Shapes::ShapeRef.new(shape: PrivateConnectionSubnetId)

    PrivateConnectionSummary.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "name"))
    PrivateConnectionSummary.add_member(:type, Shapes::ShapeRef.new(shape: PrivateConnectionType, required: true, location_name: "type"))
    PrivateConnectionSummary.add_member(:status, Shapes::ShapeRef.new(shape: PrivateConnectionStatus, required: true, location_name: "status"))
    PrivateConnectionSummary.add_member(:resource_gateway_id, Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: "resourceGatewayId"))
    PrivateConnectionSummary.add_member(:host_address, Shapes::ShapeRef.new(shape: HostAddress, location_name: "hostAddress"))
    PrivateConnectionSummary.add_member(:vpc_id, Shapes::ShapeRef.new(shape: PrivateConnectionVpcId, location_name: "vpcId"))
    PrivateConnectionSummary.add_member(:resource_configuration_id, Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: "resourceConfigurationId"))
    PrivateConnectionSummary.add_member(:certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "certificateExpiryTime"))
    PrivateConnectionSummary.add_member(:dns_resolution, Shapes::ShapeRef.new(shape: ResourceConfigDnsResolution, location_name: "dnsResolution"))
    PrivateConnectionSummary.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    PrivateConnectionSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    PrivateConnectionSummary.struct_class = Types::PrivateConnectionSummary

    ProviderInput.add_member(:github, Shapes::ShapeRef.new(shape: GitHubIntegrationInput, location_name: "github"))
    ProviderInput.add_member(:gitlab, Shapes::ShapeRef.new(shape: GitLabIntegrationInput, location_name: "gitlab"))
    ProviderInput.add_member(:bitbucket, Shapes::ShapeRef.new(shape: BitbucketIntegrationInput, location_name: "bitbucket"))
    ProviderInput.add_member(:confluence, Shapes::ShapeRef.new(shape: ConfluenceIntegrationInput, location_name: "confluence"))
    ProviderInput.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProviderInput.add_member_subclass(:github, Types::ProviderInput::Github)
    ProviderInput.add_member_subclass(:gitlab, Types::ProviderInput::Gitlab)
    ProviderInput.add_member_subclass(:bitbucket, Types::ProviderInput::Bitbucket)
    ProviderInput.add_member_subclass(:confluence, Types::ProviderInput::Confluence)
    ProviderInput.add_member_subclass(:unknown, Types::ProviderInput::Unknown)
    ProviderInput.struct_class = Types::ProviderInput

    ProviderResourceCapabilities.add_member(:github, Shapes::ShapeRef.new(shape: GitHubResourceCapabilities, location_name: "github"))
    ProviderResourceCapabilities.add_member(:gitlab, Shapes::ShapeRef.new(shape: GitLabResourceCapabilities, location_name: "gitlab"))
    ProviderResourceCapabilities.add_member(:bitbucket, Shapes::ShapeRef.new(shape: BitbucketResourceCapabilities, location_name: "bitbucket"))
    ProviderResourceCapabilities.add_member(:confluence, Shapes::ShapeRef.new(shape: ConfluenceResourceCapabilities, location_name: "confluence"))
    ProviderResourceCapabilities.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProviderResourceCapabilities.add_member_subclass(:github, Types::ProviderResourceCapabilities::Github)
    ProviderResourceCapabilities.add_member_subclass(:gitlab, Types::ProviderResourceCapabilities::Gitlab)
    ProviderResourceCapabilities.add_member_subclass(:bitbucket, Types::ProviderResourceCapabilities::Bitbucket)
    ProviderResourceCapabilities.add_member_subclass(:confluence, Types::ProviderResourceCapabilities::Confluence)
    ProviderResourceCapabilities.add_member_subclass(:unknown, Types::ProviderResourceCapabilities::Unknown)
    ProviderResourceCapabilities.struct_class = Types::ProviderResourceCapabilities

    ReportDestination.add_member(:integration_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "integrationId"))
    ReportDestination.add_member(:container_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "containerId"))
    ReportDestination.add_member(:parent_id, Shapes::ShapeRef.new(shape: String, location_name: "parentId"))
    ReportDestination.add_member(:document_id, Shapes::ShapeRef.new(shape: String, location_name: "documentId"))
    ReportDestination.struct_class = Types::ReportDestination

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RiskTypeList.member = Shapes::ShapeRef.new(shape: RiskType)

    S3BucketArns.member = Shapes::ShapeRef.new(shape: S3BucketArn)

    SecretArns.member = Shapes::ShapeRef.new(shape: SecretArn)

    SecurityGroupArns.member = Shapes::ShapeRef.new(shape: SecurityGroupArn)

    SecurityRequirementArtifact.add_member(:name, Shapes::ShapeRef.new(shape: SecurityRequirementArtifactName, required: true, location_name: "name"))
    SecurityRequirementArtifact.add_member(:format, Shapes::ShapeRef.new(shape: SecurityRequirementArtifactFormat, required: true, location_name: "format"))
    SecurityRequirementArtifact.add_member(:content, Shapes::ShapeRef.new(shape: SecurityRequirementDocumentContent, required: true, location_name: "content"))
    SecurityRequirementArtifact.struct_class = Types::SecurityRequirementArtifact

    SecurityRequirementArtifactList.member = Shapes::ShapeRef.new(shape: SecurityRequirementArtifact)

    SecurityRequirementNameList.member = Shapes::ShapeRef.new(shape: SecurityRequirementName)

    SecurityRequirementPackSummary.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    SecurityRequirementPackSummary.add_member(:name, Shapes::ShapeRef.new(shape: SecurityRequirementPackName, required: true, location_name: "name"))
    SecurityRequirementPackSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    SecurityRequirementPackSummary.add_member(:vendor_name, Shapes::ShapeRef.new(shape: String, location_name: "vendorName"))
    SecurityRequirementPackSummary.add_member(:management_type, Shapes::ShapeRef.new(shape: ManagementType, required: true, location_name: "managementType"))
    SecurityRequirementPackSummary.add_member(:status, Shapes::ShapeRef.new(shape: SecurityRequirementPackStatus, required: true, location_name: "status"))
    SecurityRequirementPackSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    SecurityRequirementPackSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    SecurityRequirementPackSummary.struct_class = Types::SecurityRequirementPackSummary

    SecurityRequirementPackSummaryList.member = Shapes::ShapeRef.new(shape: SecurityRequirementPackSummary)

    SecurityRequirementSummary.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    SecurityRequirementSummary.add_member(:name, Shapes::ShapeRef.new(shape: SecurityRequirementName, required: true, location_name: "name"))
    SecurityRequirementSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "description"))
    SecurityRequirementSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    SecurityRequirementSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    SecurityRequirementSummary.struct_class = Types::SecurityRequirementSummary

    SecurityRequirementSummaryList.member = Shapes::ShapeRef.new(shape: SecurityRequirementSummary)

    SelfManagedInput.add_member(:resource_configuration_id, Shapes::ShapeRef.new(shape: ResourceConfigurationId, required: true, location_name: "resourceConfigurationId"))
    SelfManagedInput.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateChain, location_name: "certificate"))
    SelfManagedInput.struct_class = Types::SelfManagedInput

    ServiceManagedInput.add_member(:host_address, Shapes::ShapeRef.new(shape: HostAddress, required: true, location_name: "hostAddress"))
    ServiceManagedInput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: PrivateConnectionVpcId, required: true, location_name: "vpcId"))
    ServiceManagedInput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: PrivateConnectionSubnetIds, required: true, location_name: "subnetIds"))
    ServiceManagedInput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: PrivateConnectionSecurityGroupIds, location_name: "securityGroupIds"))
    ServiceManagedInput.add_member(:ip_address_type, Shapes::ShapeRef.new(shape: IpAddressType, location_name: "ipAddressType"))
    ServiceManagedInput.add_member(:ipv4_addresses_per_eni, Shapes::ShapeRef.new(shape: MaxIpv4AddressesPerEni, location_name: "ipv4AddressesPerEni"))
    ServiceManagedInput.add_member(:port_ranges, Shapes::ShapeRef.new(shape: PortRanges, location_name: "portRanges"))
    ServiceManagedInput.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateChain, location_name: "certificate"))
    ServiceManagedInput.add_member(:dns_resolution, Shapes::ShapeRef.new(shape: ResourceConfigDnsResolution, location_name: "dnsResolution"))
    ServiceManagedInput.struct_class = Types::ServiceManagedInput

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SkillTypeList.member = Shapes::ShapeRef.new(shape: SkillType)

    SourceCodeRepository.add_member(:s3_location, Shapes::ShapeRef.new(shape: String, location_name: "s3Location"))
    SourceCodeRepository.struct_class = Types::SourceCodeRepository

    SourceCodeRepositoryList.member = Shapes::ShapeRef.new(shape: SourceCodeRepository)

    StartCodeRemediationInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    StartCodeRemediationInput.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestJobId"))
    StartCodeRemediationInput.add_member(:code_review_job_id, Shapes::ShapeRef.new(shape: String, location_name: "codeReviewJobId"))
    StartCodeRemediationInput.add_member(:finding_ids, Shapes::ShapeRef.new(shape: FindingIdList, required: true, location_name: "findingIds"))
    StartCodeRemediationInput.struct_class = Types::StartCodeRemediationInput

    StartCodeRemediationOutput.struct_class = Types::StartCodeRemediationOutput

    StartCodeReviewJobInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    StartCodeReviewJobInput.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewId"))
    StartCodeReviewJobInput.add_member(:diff_source, Shapes::ShapeRef.new(shape: DiffSource, location_name: "diffSource"))
    StartCodeReviewJobInput.struct_class = Types::StartCodeReviewJobInput

    StartCodeReviewJobOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    StartCodeReviewJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    StartCodeReviewJobOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    StartCodeReviewJobOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    StartCodeReviewJobOutput.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewId"))
    StartCodeReviewJobOutput.add_member(:code_review_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewJobId"))
    StartCodeReviewJobOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    StartCodeReviewJobOutput.struct_class = Types::StartCodeReviewJobOutput

    StartPentestJobInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    StartPentestJobInput.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pentestId"))
    StartPentestJobInput.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "jobType"))
    StartPentestJobInput.add_member(:selected_finding_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "selectedFindingIds"))
    StartPentestJobInput.struct_class = Types::StartPentestJobInput

    StartPentestJobOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    StartPentestJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    StartPentestJobOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    StartPentestJobOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    StartPentestJobOutput.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestId"))
    StartPentestJobOutput.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestJobId"))
    StartPentestJobOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    StartPentestJobOutput.struct_class = Types::StartPentestJobOutput

    StartThreatModelJobInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    StartThreatModelJobInput.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelId"))
    StartThreatModelJobInput.struct_class = Types::StartThreatModelJobInput

    StartThreatModelJobOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    StartThreatModelJobOutput.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    StartThreatModelJobOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    StartThreatModelJobOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    StartThreatModelJobOutput.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, location_name: "threatModelId"))
    StartThreatModelJobOutput.add_member(:threat_model_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelJobId"))
    StartThreatModelJobOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    StartThreatModelJobOutput.struct_class = Types::StartThreatModelJobOutput

    Step.add_member(:name, Shapes::ShapeRef.new(shape: StepName, location_name: "name"))
    Step.add_member(:status, Shapes::ShapeRef.new(shape: StepStatus, location_name: "status"))
    Step.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    Step.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    Step.struct_class = Types::Step

    StepList.member = Shapes::ShapeRef.new(shape: Step)

    StopCodeReviewJobInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    StopCodeReviewJobInput.add_member(:code_review_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewJobId"))
    StopCodeReviewJobInput.struct_class = Types::StopCodeReviewJobInput

    StopCodeReviewJobOutput.struct_class = Types::StopCodeReviewJobOutput

    StopPentestJobInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    StopPentestJobInput.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pentestJobId"))
    StopPentestJobInput.struct_class = Types::StopPentestJobInput

    StopPentestJobOutput.struct_class = Types::StopPentestJobOutput

    StopThreatModelJobInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    StopThreatModelJobInput.add_member(:threat_model_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelJobId"))
    StopThreatModelJobInput.struct_class = Types::StopThreatModelJobInput

    StopThreatModelJobOutput.struct_class = Types::StopThreatModelJobOutput

    StrideCategoryList.member = Shapes::ShapeRef.new(shape: StrideCategory)

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubnetArns.member = Shapes::ShapeRef.new(shape: SubnetArn)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TargetDomain.add_member(:target_domain_id, Shapes::ShapeRef.new(shape: TargetDomainId, required: true, location_name: "targetDomainId"))
    TargetDomain.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "domainName"))
    TargetDomain.add_member(:verification_status, Shapes::ShapeRef.new(shape: TargetDomainStatus, location_name: "verificationStatus"))
    TargetDomain.add_member(:verification_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "verificationStatusReason"))
    TargetDomain.add_member(:verification_details, Shapes::ShapeRef.new(shape: VerificationDetails, location_name: "verificationDetails"))
    TargetDomain.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    TargetDomain.add_member(:verified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "verifiedAt"))
    TargetDomain.struct_class = Types::TargetDomain

    TargetDomainIdList.member = Shapes::ShapeRef.new(shape: String)

    TargetDomainList.member = Shapes::ShapeRef.new(shape: TargetDomain)

    TargetDomainSummary.add_member(:target_domain_id, Shapes::ShapeRef.new(shape: TargetDomainId, required: true, location_name: "targetDomainId"))
    TargetDomainSummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "domainName"))
    TargetDomainSummary.add_member(:verification_status, Shapes::ShapeRef.new(shape: TargetDomainStatus, location_name: "verificationStatus"))
    TargetDomainSummary.struct_class = Types::TargetDomainSummary

    TargetDomainSummaryList.member = Shapes::ShapeRef.new(shape: TargetDomainSummary)

    Task.add_member(:task_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskId"))
    Task.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestId"))
    Task.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestJobId"))
    Task.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    Task.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    Task.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    Task.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "categories"))
    Task.add_member(:risk_type, Shapes::ShapeRef.new(shape: RiskType, location_name: "riskType"))
    Task.add_member(:target_endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "targetEndpoint"))
    Task.add_member(:execution_status, Shapes::ShapeRef.new(shape: TaskExecutionStatus, location_name: "executionStatus"))
    Task.add_member(:logs_location, Shapes::ShapeRef.new(shape: LogLocation, location_name: "logsLocation"))
    Task.add_member(:task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "taskHours"))
    Task.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    Task.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    Task.struct_class = Types::Task

    TaskIdList.member = Shapes::ShapeRef.new(shape: String)

    TaskList.member = Shapes::ShapeRef.new(shape: Task)

    TaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskId"))
    TaskSummary.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestId"))
    TaskSummary.add_member(:pentest_job_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestJobId"))
    TaskSummary.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    TaskSummary.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    TaskSummary.add_member(:risk_type, Shapes::ShapeRef.new(shape: RiskType, location_name: "riskType"))
    TaskSummary.add_member(:execution_status, Shapes::ShapeRef.new(shape: TaskExecutionStatus, location_name: "executionStatus"))
    TaskSummary.add_member(:task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "taskHours"))
    TaskSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    TaskSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    TaskSummary.struct_class = Types::TaskSummary

    TaskSummaryList.member = Shapes::ShapeRef.new(shape: TaskSummary)

    Threat.add_member(:threat_id, Shapes::ShapeRef.new(shape: String, location_name: "threatId"))
    Threat.add_member(:threat_job_id, Shapes::ShapeRef.new(shape: String, location_name: "threatJobId"))
    Threat.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    Threat.add_member(:statement, Shapes::ShapeRef.new(shape: String, location_name: "statement"))
    Threat.add_member(:severity, Shapes::ShapeRef.new(shape: ThreatSeverity, location_name: "severity"))
    Threat.add_member(:status, Shapes::ShapeRef.new(shape: ThreatStatus, location_name: "status"))
    Threat.add_member(:comments, Shapes::ShapeRef.new(shape: String, location_name: "comments"))
    Threat.add_member(:threat_source, Shapes::ShapeRef.new(shape: String, location_name: "threatSource"))
    Threat.add_member(:prerequisites, Shapes::ShapeRef.new(shape: String, location_name: "prerequisites"))
    Threat.add_member(:threat_action, Shapes::ShapeRef.new(shape: String, location_name: "threatAction"))
    Threat.add_member(:threat_impact, Shapes::ShapeRef.new(shape: String, location_name: "threatImpact"))
    Threat.add_member(:impacted_goal, Shapes::ShapeRef.new(shape: StringList, location_name: "impactedGoal"))
    Threat.add_member(:impacted_assets, Shapes::ShapeRef.new(shape: StringList, location_name: "impactedAssets"))
    Threat.add_member(:anchor, Shapes::ShapeRef.new(shape: ThreatAnchorShape, location_name: "anchor"))
    Threat.add_member(:evidence, Shapes::ShapeRef.new(shape: ThreatEvidenceList, location_name: "evidence"))
    Threat.add_member(:stride, Shapes::ShapeRef.new(shape: StrideCategoryList, location_name: "stride"))
    Threat.add_member(:recommendation, Shapes::ShapeRef.new(shape: String, location_name: "recommendation"))
    Threat.add_member(:created_by, Shapes::ShapeRef.new(shape: ThreatActor, location_name: "createdBy"))
    Threat.add_member(:updated_by, Shapes::ShapeRef.new(shape: ThreatActor, location_name: "updatedBy"))
    Threat.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    Threat.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    Threat.struct_class = Types::Threat

    ThreatAnchorShape.add_member(:kind, Shapes::ShapeRef.new(shape: String, location_name: "kind"))
    ThreatAnchorShape.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    ThreatAnchorShape.add_member(:package_id, Shapes::ShapeRef.new(shape: String, location_name: "packageId"))
    ThreatAnchorShape.struct_class = Types::ThreatAnchorShape

    ThreatEvidenceList.member = Shapes::ShapeRef.new(shape: ThreatEvidenceShape)

    ThreatEvidenceShape.add_member(:package_id, Shapes::ShapeRef.new(shape: String, location_name: "packageId"))
    ThreatEvidenceShape.add_member(:path, Shapes::ShapeRef.new(shape: String, location_name: "path"))
    ThreatEvidenceShape.struct_class = Types::ThreatEvidenceShape

    ThreatIdList.member = Shapes::ShapeRef.new(shape: String)

    ThreatList.member = Shapes::ShapeRef.new(shape: Threat)

    ThreatModel.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelId"))
    ThreatModel.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ThreatModel.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    ThreatModel.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ThreatModel.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, required: true, location_name: "assets"))
    ThreatModel.add_member(:scope_docs, Shapes::ShapeRef.new(shape: DocumentList, location_name: "scopeDocs"))
    ThreatModel.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    ThreatModel.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    ThreatModel.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ThreatModel.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    ThreatModel.struct_class = Types::ThreatModel

    ThreatModelIdList.member = Shapes::ShapeRef.new(shape: String)

    ThreatModelJob.add_member(:threat_model_job_id, Shapes::ShapeRef.new(shape: String, location_name: "threatModelJobId"))
    ThreatModelJob.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, location_name: "threatModelId"))
    ThreatModelJob.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    ThreatModelJob.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    ThreatModelJob.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    ThreatModelJob.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ThreatModelJob.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    ThreatModelJob.add_member(:execution_start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "executionStartTime"))
    ThreatModelJob.add_member(:execution_end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "executionEndTime"))
    ThreatModelJob.add_member(:source_code, Shapes::ShapeRef.new(shape: SourceCodeRepositoryList, location_name: "sourceCode"))
    ThreatModelJob.add_member(:integrated_repositories, Shapes::ShapeRef.new(shape: IntegratedRepositoryList, location_name: "integratedRepositories"))
    ThreatModelJob.add_member(:documents, Shapes::ShapeRef.new(shape: DocumentList, location_name: "documents"))
    ThreatModelJob.add_member(:scope_docs, Shapes::ShapeRef.new(shape: DocumentList, location_name: "scopeDocs"))
    ThreatModelJob.add_member(:error_information, Shapes::ShapeRef.new(shape: ErrorInformation, location_name: "errorInformation"))
    ThreatModelJob.add_member(:system_overview, Shapes::ShapeRef.new(shape: String, location_name: "systemOverview"))
    ThreatModelJob.struct_class = Types::ThreatModelJob

    ThreatModelJobIdList.member = Shapes::ShapeRef.new(shape: String)

    ThreatModelJobList.member = Shapes::ShapeRef.new(shape: ThreatModelJob)

    ThreatModelJobSummary.add_member(:threat_model_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelJobId"))
    ThreatModelJobSummary.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelId"))
    ThreatModelJobSummary.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    ThreatModelJobSummary.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    ThreatModelJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "status"))
    ThreatModelJobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ThreatModelJobSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    ThreatModelJobSummary.struct_class = Types::ThreatModelJobSummary

    ThreatModelJobSummaryList.member = Shapes::ShapeRef.new(shape: ThreatModelJobSummary)

    ThreatModelJobTask.add_member(:task_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskId"))
    ThreatModelJobTask.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, location_name: "threatModelId"))
    ThreatModelJobTask.add_member(:threat_model_job_id, Shapes::ShapeRef.new(shape: String, location_name: "threatModelJobId"))
    ThreatModelJobTask.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    ThreatModelJobTask.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    ThreatModelJobTask.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    ThreatModelJobTask.add_member(:execution_status, Shapes::ShapeRef.new(shape: TaskExecutionStatus, location_name: "executionStatus"))
    ThreatModelJobTask.add_member(:logs_location, Shapes::ShapeRef.new(shape: LogLocation, location_name: "logsLocation"))
    ThreatModelJobTask.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ThreatModelJobTask.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    ThreatModelJobTask.struct_class = Types::ThreatModelJobTask

    ThreatModelJobTaskList.member = Shapes::ShapeRef.new(shape: ThreatModelJobTask)

    ThreatModelJobTaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "taskId"))
    ThreatModelJobTaskSummary.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, location_name: "threatModelId"))
    ThreatModelJobTaskSummary.add_member(:threat_model_job_id, Shapes::ShapeRef.new(shape: String, location_name: "threatModelJobId"))
    ThreatModelJobTaskSummary.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    ThreatModelJobTaskSummary.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    ThreatModelJobTaskSummary.add_member(:execution_status, Shapes::ShapeRef.new(shape: TaskExecutionStatus, location_name: "executionStatus"))
    ThreatModelJobTaskSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ThreatModelJobTaskSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    ThreatModelJobTaskSummary.struct_class = Types::ThreatModelJobTaskSummary

    ThreatModelJobTaskSummaryList.member = Shapes::ShapeRef.new(shape: ThreatModelJobTaskSummary)

    ThreatModelList.member = Shapes::ShapeRef.new(shape: ThreatModel)

    ThreatModelSummary.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelId"))
    ThreatModelSummary.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    ThreatModelSummary.add_member(:title, Shapes::ShapeRef.new(shape: String, required: true, location_name: "title"))
    ThreatModelSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ThreatModelSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    ThreatModelSummary.struct_class = Types::ThreatModelSummary

    ThreatModelSummaryList.member = Shapes::ShapeRef.new(shape: ThreatModelSummary)

    ThreatSummary.add_member(:threat_id, Shapes::ShapeRef.new(shape: String, location_name: "threatId"))
    ThreatSummary.add_member(:threat_job_id, Shapes::ShapeRef.new(shape: String, location_name: "threatJobId"))
    ThreatSummary.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    ThreatSummary.add_member(:statement, Shapes::ShapeRef.new(shape: String, location_name: "statement"))
    ThreatSummary.add_member(:severity, Shapes::ShapeRef.new(shape: ThreatSeverity, location_name: "severity"))
    ThreatSummary.add_member(:status, Shapes::ShapeRef.new(shape: ThreatStatus, location_name: "status"))
    ThreatSummary.add_member(:stride, Shapes::ShapeRef.new(shape: StrideCategoryList, location_name: "stride"))
    ThreatSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: ThreatActor, location_name: "createdBy"))
    ThreatSummary.add_member(:updated_by, Shapes::ShapeRef.new(shape: ThreatActor, location_name: "updatedBy"))
    ThreatSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    ThreatSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    ThreatSummary.struct_class = Types::ThreatSummary

    ThreatSummaryList.member = Shapes::ShapeRef.new(shape: ThreatSummary)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateAgentSpaceInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    UpdateAgentSpaceInput.add_member(:name, Shapes::ShapeRef.new(shape: AgentName, location_name: "name"))
    UpdateAgentSpaceInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateAgentSpaceInput.add_member(:aws_resources, Shapes::ShapeRef.new(shape: AWSResources, location_name: "awsResources"))
    UpdateAgentSpaceInput.add_member(:target_domain_ids, Shapes::ShapeRef.new(shape: TargetDomainIdList, location_name: "targetDomainIds"))
    UpdateAgentSpaceInput.add_member(:code_review_settings, Shapes::ShapeRef.new(shape: CodeReviewSettings, location_name: "codeReviewSettings"))
    UpdateAgentSpaceInput.struct_class = Types::UpdateAgentSpaceInput

    UpdateAgentSpaceOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    UpdateAgentSpaceOutput.add_member(:name, Shapes::ShapeRef.new(shape: AgentName, required: true, location_name: "name"))
    UpdateAgentSpaceOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateAgentSpaceOutput.add_member(:aws_resources, Shapes::ShapeRef.new(shape: AWSResources, location_name: "awsResources"))
    UpdateAgentSpaceOutput.add_member(:target_domain_ids, Shapes::ShapeRef.new(shape: TargetDomainIdList, location_name: "targetDomainIds"))
    UpdateAgentSpaceOutput.add_member(:code_review_settings, Shapes::ShapeRef.new(shape: CodeReviewSettings, location_name: "codeReviewSettings"))
    UpdateAgentSpaceOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    UpdateAgentSpaceOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    UpdateAgentSpaceOutput.struct_class = Types::UpdateAgentSpaceOutput

    UpdateApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    UpdateApplicationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateApplicationRequest.add_member(:default_kms_key_id, Shapes::ShapeRef.new(shape: DefaultKmsKeyId, location_name: "defaultKmsKeyId"))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "applicationId"))
    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse

    UpdateCodeReviewInput.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewId"))
    UpdateCodeReviewInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    UpdateCodeReviewInput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    UpdateCodeReviewInput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "assets"))
    UpdateCodeReviewInput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    UpdateCodeReviewInput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    UpdateCodeReviewInput.add_member(:code_remediation_strategy, Shapes::ShapeRef.new(shape: CodeRemediationStrategy, location_name: "codeRemediationStrategy"))
    UpdateCodeReviewInput.add_member(:validation_mode, Shapes::ShapeRef.new(shape: ValidationMode, location_name: "validationMode"))
    UpdateCodeReviewInput.add_member(:max_task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "maxTaskHours"))
    UpdateCodeReviewInput.struct_class = Types::UpdateCodeReviewInput

    UpdateCodeReviewOutput.add_member(:code_review_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "codeReviewId"))
    UpdateCodeReviewOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    UpdateCodeReviewOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    UpdateCodeReviewOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    UpdateCodeReviewOutput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "assets"))
    UpdateCodeReviewOutput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    UpdateCodeReviewOutput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    UpdateCodeReviewOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    UpdateCodeReviewOutput.add_member(:code_remediation_strategy, Shapes::ShapeRef.new(shape: CodeRemediationStrategy, location_name: "codeRemediationStrategy"))
    UpdateCodeReviewOutput.add_member(:validation_mode, Shapes::ShapeRef.new(shape: ValidationMode, location_name: "validationMode"))
    UpdateCodeReviewOutput.add_member(:max_task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "maxTaskHours"))
    UpdateCodeReviewOutput.struct_class = Types::UpdateCodeReviewOutput

    UpdateFindingInput.add_member(:finding_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "findingId"))
    UpdateFindingInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    UpdateFindingInput.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    UpdateFindingInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateFindingInput.add_member(:risk_type, Shapes::ShapeRef.new(shape: String, location_name: "riskType"))
    UpdateFindingInput.add_member(:risk_level, Shapes::ShapeRef.new(shape: RiskLevel, location_name: "riskLevel"))
    UpdateFindingInput.add_member(:risk_score, Shapes::ShapeRef.new(shape: String, location_name: "riskScore"))
    UpdateFindingInput.add_member(:attack_script, Shapes::ShapeRef.new(shape: String, location_name: "attackScript"))
    UpdateFindingInput.add_member(:reasoning, Shapes::ShapeRef.new(shape: String, location_name: "reasoning"))
    UpdateFindingInput.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, location_name: "status"))
    UpdateFindingInput.add_member(:customer_note, Shapes::ShapeRef.new(shape: String, location_name: "customerNote"))
    UpdateFindingInput.struct_class = Types::UpdateFindingInput

    UpdateFindingOutput.struct_class = Types::UpdateFindingOutput

    UpdateIntegratedResourcesInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: AgentSpaceId, required: true, location_name: "agentSpaceId"))
    UpdateIntegratedResourcesInput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    UpdateIntegratedResourcesInput.add_member(:items, Shapes::ShapeRef.new(shape: IntegratedResourceInputItemList, required: true, location_name: "items"))
    UpdateIntegratedResourcesInput.struct_class = Types::UpdateIntegratedResourcesInput

    UpdateIntegratedResourcesOutput.struct_class = Types::UpdateIntegratedResourcesOutput

    UpdatePentestInput.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pentestId"))
    UpdatePentestInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    UpdatePentestInput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    UpdatePentestInput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "assets"))
    UpdatePentestInput.add_member(:exclude_risk_types, Shapes::ShapeRef.new(shape: RiskTypeList, location_name: "excludeRiskTypes"))
    UpdatePentestInput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    UpdatePentestInput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    UpdatePentestInput.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfig, location_name: "vpcConfig"))
    UpdatePentestInput.add_member(:network_traffic_config, Shapes::ShapeRef.new(shape: NetworkTrafficConfig, location_name: "networkTrafficConfig"))
    UpdatePentestInput.add_member(:code_remediation_strategy, Shapes::ShapeRef.new(shape: CodeRemediationStrategy, location_name: "codeRemediationStrategy"))
    UpdatePentestInput.add_member(:disable_managed_skills, Shapes::ShapeRef.new(shape: SkillTypeList, location_name: "disableManagedSkills"))
    UpdatePentestInput.add_member(:max_task_hours, Shapes::ShapeRef.new(shape: Double, location_name: "maxTaskHours"))
    UpdatePentestInput.struct_class = Types::UpdatePentestInput

    UpdatePentestOutput.add_member(:pentest_id, Shapes::ShapeRef.new(shape: String, location_name: "pentestId"))
    UpdatePentestOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    UpdatePentestOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    UpdatePentestOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    UpdatePentestOutput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "assets"))
    UpdatePentestOutput.add_member(:exclude_risk_types, Shapes::ShapeRef.new(shape: RiskTypeList, location_name: "excludeRiskTypes"))
    UpdatePentestOutput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    UpdatePentestOutput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    UpdatePentestOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    UpdatePentestOutput.struct_class = Types::UpdatePentestOutput

    UpdatePrivateConnectionCertificateInput.add_member(:private_connection_name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "privateConnectionName"))
    UpdatePrivateConnectionCertificateInput.add_member(:certificate, Shapes::ShapeRef.new(shape: CertificateChain, required: true, location_name: "certificate"))
    UpdatePrivateConnectionCertificateInput.struct_class = Types::UpdatePrivateConnectionCertificateInput

    UpdatePrivateConnectionCertificateOutput.add_member(:name, Shapes::ShapeRef.new(shape: PrivateConnectionName, required: true, location_name: "name"))
    UpdatePrivateConnectionCertificateOutput.add_member(:type, Shapes::ShapeRef.new(shape: PrivateConnectionType, required: true, location_name: "type"))
    UpdatePrivateConnectionCertificateOutput.add_member(:status, Shapes::ShapeRef.new(shape: PrivateConnectionStatus, required: true, location_name: "status"))
    UpdatePrivateConnectionCertificateOutput.add_member(:resource_gateway_id, Shapes::ShapeRef.new(shape: ResourceGatewayId, location_name: "resourceGatewayId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:host_address, Shapes::ShapeRef.new(shape: HostAddress, location_name: "hostAddress"))
    UpdatePrivateConnectionCertificateOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: PrivateConnectionVpcId, location_name: "vpcId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:resource_configuration_id, Shapes::ShapeRef.new(shape: ResourceConfigurationId, location_name: "resourceConfigurationId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:certificate_expiry_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "certificateExpiryTime"))
    UpdatePrivateConnectionCertificateOutput.add_member(:dns_resolution, Shapes::ShapeRef.new(shape: ResourceConfigDnsResolution, location_name: "dnsResolution"))
    UpdatePrivateConnectionCertificateOutput.add_member(:failure_message, Shapes::ShapeRef.new(shape: String, location_name: "failureMessage"))
    UpdatePrivateConnectionCertificateOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdatePrivateConnectionCertificateOutput.struct_class = Types::UpdatePrivateConnectionCertificateOutput

    UpdateSecurityRequirementEntry.add_member(:name, Shapes::ShapeRef.new(shape: SecurityRequirementName, required: true, location_name: "name"))
    UpdateSecurityRequirementEntry.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateSecurityRequirementEntry.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "domain"))
    UpdateSecurityRequirementEntry.add_member(:evaluation, Shapes::ShapeRef.new(shape: String, location_name: "evaluation"))
    UpdateSecurityRequirementEntry.add_member(:remediation, Shapes::ShapeRef.new(shape: String, location_name: "remediation"))
    UpdateSecurityRequirementEntry.struct_class = Types::UpdateSecurityRequirementEntry

    UpdateSecurityRequirementEntryList.member = Shapes::ShapeRef.new(shape: UpdateSecurityRequirementEntry)

    UpdateSecurityRequirementPackInput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    UpdateSecurityRequirementPackInput.add_member(:name, Shapes::ShapeRef.new(shape: SecurityRequirementPackName, location_name: "name"))
    UpdateSecurityRequirementPackInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateSecurityRequirementPackInput.add_member(:status, Shapes::ShapeRef.new(shape: SecurityRequirementPackStatus, location_name: "status"))
    UpdateSecurityRequirementPackInput.struct_class = Types::UpdateSecurityRequirementPackInput

    UpdateSecurityRequirementPackOutput.add_member(:pack_id, Shapes::ShapeRef.new(shape: SecurityRequirementPackId, required: true, location_name: "packId"))
    UpdateSecurityRequirementPackOutput.add_member(:name, Shapes::ShapeRef.new(shape: SecurityRequirementPackName, location_name: "name"))
    UpdateSecurityRequirementPackOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateSecurityRequirementPackOutput.add_member(:status, Shapes::ShapeRef.new(shape: SecurityRequirementPackStatus, location_name: "status"))
    UpdateSecurityRequirementPackOutput.struct_class = Types::UpdateSecurityRequirementPackOutput

    UpdateTargetDomainInput.add_member(:target_domain_id, Shapes::ShapeRef.new(shape: TargetDomainId, required: true, location_name: "targetDomainId"))
    UpdateTargetDomainInput.add_member(:verification_method, Shapes::ShapeRef.new(shape: DomainVerificationMethod, required: true, location_name: "verificationMethod"))
    UpdateTargetDomainInput.struct_class = Types::UpdateTargetDomainInput

    UpdateTargetDomainOutput.add_member(:target_domain_id, Shapes::ShapeRef.new(shape: TargetDomainId, required: true, location_name: "targetDomainId"))
    UpdateTargetDomainOutput.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "domainName"))
    UpdateTargetDomainOutput.add_member(:verification_status, Shapes::ShapeRef.new(shape: TargetDomainStatus, required: true, location_name: "verificationStatus"))
    UpdateTargetDomainOutput.add_member(:verification_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "verificationStatusReason"))
    UpdateTargetDomainOutput.add_member(:verification_details, Shapes::ShapeRef.new(shape: VerificationDetails, location_name: "verificationDetails"))
    UpdateTargetDomainOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    UpdateTargetDomainOutput.add_member(:verified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "verifiedAt"))
    UpdateTargetDomainOutput.struct_class = Types::UpdateTargetDomainOutput

    UpdateThreatInput.add_member(:threat_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatId"))
    UpdateThreatInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    UpdateThreatInput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    UpdateThreatInput.add_member(:status, Shapes::ShapeRef.new(shape: ThreatStatus, location_name: "status"))
    UpdateThreatInput.add_member(:comments, Shapes::ShapeRef.new(shape: String, location_name: "comments"))
    UpdateThreatInput.add_member(:statement, Shapes::ShapeRef.new(shape: String, location_name: "statement"))
    UpdateThreatInput.add_member(:severity, Shapes::ShapeRef.new(shape: ThreatSeverity, location_name: "severity"))
    UpdateThreatInput.add_member(:threat_source, Shapes::ShapeRef.new(shape: String, location_name: "threatSource"))
    UpdateThreatInput.add_member(:prerequisites, Shapes::ShapeRef.new(shape: String, location_name: "prerequisites"))
    UpdateThreatInput.add_member(:threat_action, Shapes::ShapeRef.new(shape: String, location_name: "threatAction"))
    UpdateThreatInput.add_member(:threat_impact, Shapes::ShapeRef.new(shape: String, location_name: "threatImpact"))
    UpdateThreatInput.add_member(:impacted_goal, Shapes::ShapeRef.new(shape: StringList, location_name: "impactedGoal"))
    UpdateThreatInput.add_member(:impacted_assets, Shapes::ShapeRef.new(shape: StringList, location_name: "impactedAssets"))
    UpdateThreatInput.add_member(:anchor, Shapes::ShapeRef.new(shape: ThreatAnchorShape, location_name: "anchor"))
    UpdateThreatInput.add_member(:evidence, Shapes::ShapeRef.new(shape: ThreatEvidenceList, location_name: "evidence"))
    UpdateThreatInput.add_member(:recommendation, Shapes::ShapeRef.new(shape: String, location_name: "recommendation"))
    UpdateThreatInput.struct_class = Types::UpdateThreatInput

    UpdateThreatModelInput.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelId"))
    UpdateThreatModelInput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "agentSpaceId"))
    UpdateThreatModelInput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    UpdateThreatModelInput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateThreatModelInput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "assets"))
    UpdateThreatModelInput.add_member(:scope_docs, Shapes::ShapeRef.new(shape: DocumentList, location_name: "scopeDocs"))
    UpdateThreatModelInput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    UpdateThreatModelInput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    UpdateThreatModelInput.struct_class = Types::UpdateThreatModelInput

    UpdateThreatModelOutput.add_member(:threat_model_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatModelId"))
    UpdateThreatModelOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    UpdateThreatModelOutput.add_member(:agent_space_id, Shapes::ShapeRef.new(shape: String, location_name: "agentSpaceId"))
    UpdateThreatModelOutput.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    UpdateThreatModelOutput.add_member(:assets, Shapes::ShapeRef.new(shape: Assets, location_name: "assets"))
    UpdateThreatModelOutput.add_member(:scope_docs, Shapes::ShapeRef.new(shape: DocumentList, location_name: "scopeDocs"))
    UpdateThreatModelOutput.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "serviceRole"))
    UpdateThreatModelOutput.add_member(:log_config, Shapes::ShapeRef.new(shape: CloudWatchLog, location_name: "logConfig"))
    UpdateThreatModelOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    UpdateThreatModelOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    UpdateThreatModelOutput.struct_class = Types::UpdateThreatModelOutput

    UpdateThreatOutput.add_member(:threat_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatId"))
    UpdateThreatOutput.add_member(:threat_job_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "threatJobId"))
    UpdateThreatOutput.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    UpdateThreatOutput.add_member(:statement, Shapes::ShapeRef.new(shape: String, location_name: "statement"))
    UpdateThreatOutput.add_member(:severity, Shapes::ShapeRef.new(shape: ThreatSeverity, location_name: "severity"))
    UpdateThreatOutput.add_member(:status, Shapes::ShapeRef.new(shape: ThreatStatus, location_name: "status"))
    UpdateThreatOutput.add_member(:comments, Shapes::ShapeRef.new(shape: String, location_name: "comments"))
    UpdateThreatOutput.add_member(:stride, Shapes::ShapeRef.new(shape: StrideCategoryList, location_name: "stride"))
    UpdateThreatOutput.add_member(:threat_source, Shapes::ShapeRef.new(shape: String, location_name: "threatSource"))
    UpdateThreatOutput.add_member(:prerequisites, Shapes::ShapeRef.new(shape: String, location_name: "prerequisites"))
    UpdateThreatOutput.add_member(:threat_action, Shapes::ShapeRef.new(shape: String, location_name: "threatAction"))
    UpdateThreatOutput.add_member(:threat_impact, Shapes::ShapeRef.new(shape: String, location_name: "threatImpact"))
    UpdateThreatOutput.add_member(:impacted_goal, Shapes::ShapeRef.new(shape: StringList, location_name: "impactedGoal"))
    UpdateThreatOutput.add_member(:impacted_assets, Shapes::ShapeRef.new(shape: StringList, location_name: "impactedAssets"))
    UpdateThreatOutput.add_member(:anchor, Shapes::ShapeRef.new(shape: ThreatAnchorShape, location_name: "anchor"))
    UpdateThreatOutput.add_member(:evidence, Shapes::ShapeRef.new(shape: ThreatEvidenceList, location_name: "evidence"))
    UpdateThreatOutput.add_member(:recommendation, Shapes::ShapeRef.new(shape: String, location_name: "recommendation"))
    UpdateThreatOutput.add_member(:created_by, Shapes::ShapeRef.new(shape: ThreatActor, location_name: "createdBy"))
    UpdateThreatOutput.add_member(:updated_by, Shapes::ShapeRef.new(shape: ThreatActor, location_name: "updatedBy"))
    UpdateThreatOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    UpdateThreatOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    UpdateThreatOutput.struct_class = Types::UpdateThreatOutput

    UriList.member = Shapes::ShapeRef.new(shape: String)

    UserConfig.add_member(:role, Shapes::ShapeRef.new(shape: UserRole, location_name: "role"))
    UserConfig.struct_class = Types::UserConfig

    UserMetadata.add_member(:username, Shapes::ShapeRef.new(shape: String, required: true, location_name: "username"))
    UserMetadata.add_member(:email, Shapes::ShapeRef.new(shape: SensitiveEmail, required: true, location_name: "email"))
    UserMetadata.struct_class = Types::UserMetadata

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VerificationDetails.add_member(:method, Shapes::ShapeRef.new(shape: DomainVerificationMethod, location_name: "method"))
    VerificationDetails.add_member(:dns_txt, Shapes::ShapeRef.new(shape: DnsVerification, location_name: "dnsTxt"))
    VerificationDetails.add_member(:http_route, Shapes::ShapeRef.new(shape: HttpVerification, location_name: "httpRoute"))
    VerificationDetails.struct_class = Types::VerificationDetails

    VerificationScript.add_member(:script_type, Shapes::ShapeRef.new(shape: String, location_name: "scriptType"))
    VerificationScript.add_member(:script_url, Shapes::ShapeRef.new(shape: String, location_name: "scriptUrl"))
    VerificationScript.add_member(:instructions, Shapes::ShapeRef.new(shape: String, location_name: "instructions"))
    VerificationScript.add_member(:env_vars, Shapes::ShapeRef.new(shape: VerificationScriptEnvVarList, location_name: "envVars"))
    VerificationScript.struct_class = Types::VerificationScript

    VerificationScriptEnvVar.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    VerificationScriptEnvVar.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    VerificationScriptEnvVar.struct_class = Types::VerificationScriptEnvVar

    VerificationScriptEnvVarList.member = Shapes::ShapeRef.new(shape: VerificationScriptEnvVar)

    VerifyTargetDomainInput.add_member(:target_domain_id, Shapes::ShapeRef.new(shape: TargetDomainId, required: true, location_name: "targetDomainId"))
    VerifyTargetDomainInput.struct_class = Types::VerifyTargetDomainInput

    VerifyTargetDomainOutput.add_member(:target_domain_id, Shapes::ShapeRef.new(shape: TargetDomainId, location_name: "targetDomainId"))
    VerifyTargetDomainOutput.add_member(:domain_name, Shapes::ShapeRef.new(shape: String, location_name: "domainName"))
    VerifyTargetDomainOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    VerifyTargetDomainOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    VerifyTargetDomainOutput.add_member(:verified_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "verifiedAt"))
    VerifyTargetDomainOutput.add_member(:status, Shapes::ShapeRef.new(shape: TargetDomainStatus, location_name: "status"))
    VerifyTargetDomainOutput.add_member(:verification_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "verificationStatusReason"))
    VerifyTargetDomainOutput.struct_class = Types::VerifyTargetDomainOutput

    VpcConfig.add_member(:vpc_arn, Shapes::ShapeRef.new(shape: VpcArn, location_name: "vpcArn"))
    VpcConfig.add_member(:security_group_arns, Shapes::ShapeRef.new(shape: SecurityGroupArns, location_name: "securityGroupArns"))
    VpcConfig.add_member(:subnet_arns, Shapes::ShapeRef.new(shape: SubnetArns, location_name: "subnetArns"))
    VpcConfig.struct_class = Types::VpcConfig

    VpcConfigs.member = Shapes::ShapeRef.new(shape: VpcConfig)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-09-06"

      api.metadata = {
        "apiVersion" => "2025-09-06",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "securityagent",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Security Agent",
        "serviceId" => "SecurityAgent",
        "signatureVersion" => "v4",
        "signingName" => "securityagent",
        "uid" => "securityagent-2025-09-06",
      }

      api.add_operation(:add_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/AddArtifact"
        o.input = Shapes::ShapeRef.new(shape: AddArtifactInput)
        o.output = Shapes::ShapeRef.new(shape: AddArtifactOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_create_security_requirements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchCreateSecurityRequirements"
        o.http_method = "POST"
        o.http_request_uri = "/BatchCreateSecurityRequirements"
        o.input = Shapes::ShapeRef.new(shape: BatchCreateSecurityRequirementsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchCreateSecurityRequirementsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:batch_delete_code_reviews, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteCodeReviews"
        o.http_method = "POST"
        o.http_request_uri = "/BatchDeleteCodeReviews"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteCodeReviewsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteCodeReviewsOutput)
      end)

      api.add_operation(:batch_delete_pentests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeletePentests"
        o.http_method = "POST"
        o.http_request_uri = "/BatchDeletePentests"
        o.input = Shapes::ShapeRef.new(shape: BatchDeletePentestsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchDeletePentestsOutput)
      end)

      api.add_operation(:batch_delete_security_requirements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteSecurityRequirements"
        o.http_method = "POST"
        o.http_request_uri = "/BatchDeleteSecurityRequirements"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteSecurityRequirementsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteSecurityRequirementsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_delete_threat_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchDeleteThreatModels"
        o.http_method = "POST"
        o.http_request_uri = "/BatchDeleteThreatModels"
        o.input = Shapes::ShapeRef.new(shape: BatchDeleteThreatModelsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchDeleteThreatModelsOutput)
      end)

      api.add_operation(:batch_get_agent_spaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetAgentSpaces"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetAgentSpaces"
        o.input = Shapes::ShapeRef.new(shape: BatchGetAgentSpacesInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetAgentSpacesOutput)
      end)

      api.add_operation(:batch_get_artifact_metadata, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetArtifactMetadata"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetArtifactMetadata"
        o.input = Shapes::ShapeRef.new(shape: BatchGetArtifactMetadataInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetArtifactMetadataOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_get_code_review_job_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetCodeReviewJobTasks"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetCodeReviewJobTasks"
        o.input = Shapes::ShapeRef.new(shape: BatchGetCodeReviewJobTasksInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetCodeReviewJobTasksOutput)
      end)

      api.add_operation(:batch_get_code_review_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetCodeReviewJobs"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetCodeReviewJobs"
        o.input = Shapes::ShapeRef.new(shape: BatchGetCodeReviewJobsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetCodeReviewJobsOutput)
      end)

      api.add_operation(:batch_get_code_reviews, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetCodeReviews"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetCodeReviews"
        o.input = Shapes::ShapeRef.new(shape: BatchGetCodeReviewsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetCodeReviewsOutput)
      end)

      api.add_operation(:batch_get_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetFindings"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetFindings"
        o.input = Shapes::ShapeRef.new(shape: BatchGetFindingsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetFindingsOutput)
      end)

      api.add_operation(:batch_get_pentest_job_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetPentestJobTasks"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetPentestJobTasks"
        o.input = Shapes::ShapeRef.new(shape: BatchGetPentestJobTasksInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetPentestJobTasksOutput)
      end)

      api.add_operation(:batch_get_pentest_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetPentestJobs"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetPentestJobs"
        o.input = Shapes::ShapeRef.new(shape: BatchGetPentestJobsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetPentestJobsOutput)
      end)

      api.add_operation(:batch_get_pentests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetPentests"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetPentests"
        o.input = Shapes::ShapeRef.new(shape: BatchGetPentestsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetPentestsOutput)
      end)

      api.add_operation(:batch_get_security_requirements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetSecurityRequirements"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetSecurityRequirements"
        o.input = Shapes::ShapeRef.new(shape: BatchGetSecurityRequirementsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetSecurityRequirementsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:batch_get_target_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetTargetDomains"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetTargetDomains"
        o.input = Shapes::ShapeRef.new(shape: BatchGetTargetDomainsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetTargetDomainsOutput)
      end)

      api.add_operation(:batch_get_threat_model_job_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetThreatModelJobTasks"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetThreatModelJobTasks"
        o.input = Shapes::ShapeRef.new(shape: BatchGetThreatModelJobTasksInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetThreatModelJobTasksOutput)
      end)

      api.add_operation(:batch_get_threat_model_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetThreatModelJobs"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetThreatModelJobs"
        o.input = Shapes::ShapeRef.new(shape: BatchGetThreatModelJobsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetThreatModelJobsOutput)
      end)

      api.add_operation(:batch_get_threat_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetThreatModels"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetThreatModels"
        o.input = Shapes::ShapeRef.new(shape: BatchGetThreatModelsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetThreatModelsOutput)
      end)

      api.add_operation(:batch_get_threats, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetThreats"
        o.http_method = "POST"
        o.http_request_uri = "/BatchGetThreats"
        o.input = Shapes::ShapeRef.new(shape: BatchGetThreatsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchGetThreatsOutput)
      end)

      api.add_operation(:batch_update_security_requirements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateSecurityRequirements"
        o.http_method = "POST"
        o.http_request_uri = "/BatchUpdateSecurityRequirements"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateSecurityRequirementsInput)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateSecurityRequirementsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_agent_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAgentSpace"
        o.http_method = "POST"
        o.http_request_uri = "/CreateAgentSpace"
        o.input = Shapes::ShapeRef.new(shape: CreateAgentSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateAgentSpaceOutput)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/CreateApplication"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
      end)

      api.add_operation(:create_code_review, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCodeReview"
        o.http_method = "POST"
        o.http_request_uri = "/CreateCodeReview"
        o.input = Shapes::ShapeRef.new(shape: CreateCodeReviewInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCodeReviewOutput)
      end)

      api.add_operation(:create_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/CreateIntegration"
        o.input = Shapes::ShapeRef.new(shape: CreateIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMembership"
        o.http_method = "POST"
        o.http_request_uri = "/CreateMembership"
        o.input = Shapes::ShapeRef.new(shape: CreateMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMembershipResponse)
      end)

      api.add_operation(:create_pentest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePentest"
        o.http_method = "POST"
        o.http_request_uri = "/CreatePentest"
        o.input = Shapes::ShapeRef.new(shape: CreatePentestInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePentestOutput)
      end)

      api.add_operation(:create_private_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePrivateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/CreatePrivateConnection"
        o.input = Shapes::ShapeRef.new(shape: CreatePrivateConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: CreatePrivateConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_security_requirement_pack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSecurityRequirementPack"
        o.http_method = "POST"
        o.http_request_uri = "/CreateSecurityRequirementPack"
        o.input = Shapes::ShapeRef.new(shape: CreateSecurityRequirementPackInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSecurityRequirementPackOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_target_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTargetDomain"
        o.http_method = "POST"
        o.http_request_uri = "/CreateTargetDomain"
        o.input = Shapes::ShapeRef.new(shape: CreateTargetDomainInput)
        o.output = Shapes::ShapeRef.new(shape: CreateTargetDomainOutput)
      end)

      api.add_operation(:create_threat, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateThreat"
        o.http_method = "POST"
        o.http_request_uri = "/CreateThreat"
        o.input = Shapes::ShapeRef.new(shape: CreateThreatInput)
        o.output = Shapes::ShapeRef.new(shape: CreateThreatOutput)
      end)

      api.add_operation(:create_threat_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateThreatModel"
        o.http_method = "POST"
        o.http_request_uri = "/CreateThreatModel"
        o.input = Shapes::ShapeRef.new(shape: CreateThreatModelInput)
        o.output = Shapes::ShapeRef.new(shape: CreateThreatModelOutput)
      end)

      api.add_operation(:delete_agent_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAgentSpace"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteAgentSpace"
        o.input = Shapes::ShapeRef.new(shape: DeleteAgentSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteAgentSpaceOutput)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteApplication"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteArtifact"
        o.input = Shapes::ShapeRef.new(shape: DeleteArtifactInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteArtifactOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteIntegration"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMembership"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteMembership"
        o.input = Shapes::ShapeRef.new(shape: DeleteMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMembershipResponse)
      end)

      api.add_operation(:delete_private_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePrivateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/DeletePrivateConnection"
        o.input = Shapes::ShapeRef.new(shape: DeletePrivateConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: DeletePrivateConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_security_requirement_pack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSecurityRequirementPack"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteSecurityRequirementPack"
        o.input = Shapes::ShapeRef.new(shape: DeleteSecurityRequirementPackInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteSecurityRequirementPackOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_target_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTargetDomain"
        o.http_method = "POST"
        o.http_request_uri = "/DeleteTargetDomain"
        o.input = Shapes::ShapeRef.new(shape: DeleteTargetDomainInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTargetDomainOutput)
      end)

      api.add_operation(:describe_private_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePrivateConnection"
        o.http_method = "POST"
        o.http_request_uri = "/DescribePrivateConnection"
        o.input = Shapes::ShapeRef.new(shape: DescribePrivateConnectionInput)
        o.output = Shapes::ShapeRef.new(shape: DescribePrivateConnectionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplication"
        o.http_method = "POST"
        o.http_request_uri = "/GetApplication"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationResponse)
      end)

      api.add_operation(:get_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/GetArtifact"
        o.input = Shapes::ShapeRef.new(shape: GetArtifactInput)
        o.output = Shapes::ShapeRef.new(shape: GetArtifactOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/GetIntegration"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_security_requirement_pack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSecurityRequirementPack"
        o.http_method = "POST"
        o.http_request_uri = "/GetSecurityRequirementPack"
        o.input = Shapes::ShapeRef.new(shape: GetSecurityRequirementPackInput)
        o.output = Shapes::ShapeRef.new(shape: GetSecurityRequirementPackOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:import_security_requirements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportSecurityRequirements"
        o.http_method = "POST"
        o.http_request_uri = "/ImportSecurityRequirements"
        o.input = Shapes::ShapeRef.new(shape: ImportSecurityRequirementsInput)
        o.output = Shapes::ShapeRef.new(shape: ImportSecurityRequirementsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:initiate_provider_registration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InitiateProviderRegistration"
        o.http_method = "POST"
        o.http_request_uri = "/oauth2/provider/register"
        o.input = Shapes::ShapeRef.new(shape: InitiateProviderRegistrationInput)
        o.output = Shapes::ShapeRef.new(shape: InitiateProviderRegistrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_agent_spaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAgentSpaces"
        o.http_method = "POST"
        o.http_request_uri = "/ListAgentSpaces"
        o.input = Shapes::ShapeRef.new(shape: ListAgentSpacesInput)
        o.output = Shapes::ShapeRef.new(shape: ListAgentSpacesOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "POST"
        o.http_request_uri = "/ListApplications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_artifacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListArtifacts"
        o.http_method = "POST"
        o.http_request_uri = "/ListArtifacts"
        o.input = Shapes::ShapeRef.new(shape: ListArtifactsInput)
        o.output = Shapes::ShapeRef.new(shape: ListArtifactsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_code_review_job_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeReviewJobTasks"
        o.http_method = "POST"
        o.http_request_uri = "/ListCodeReviewJobTasks"
        o.input = Shapes::ShapeRef.new(shape: ListCodeReviewJobTasksInput)
        o.output = Shapes::ShapeRef.new(shape: ListCodeReviewJobTasksOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_code_review_jobs_for_code_review, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeReviewJobsForCodeReview"
        o.http_method = "POST"
        o.http_request_uri = "/ListCodeReviewJobsForCodeReview"
        o.input = Shapes::ShapeRef.new(shape: ListCodeReviewJobsForCodeReviewInput)
        o.output = Shapes::ShapeRef.new(shape: ListCodeReviewJobsForCodeReviewOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_code_reviews, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeReviews"
        o.http_method = "POST"
        o.http_request_uri = "/ListCodeReviews"
        o.input = Shapes::ShapeRef.new(shape: ListCodeReviewsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCodeReviewsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_discovered_endpoints, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDiscoveredEndpoints"
        o.http_method = "POST"
        o.http_request_uri = "/ListDiscoveredEndpoints"
        o.input = Shapes::ShapeRef.new(shape: ListDiscoveredEndpointsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDiscoveredEndpointsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindings"
        o.http_method = "POST"
        o.http_request_uri = "/ListFindings"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsInput)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_integrated_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIntegratedResources"
        o.http_method = "POST"
        o.http_request_uri = "/ListIntegratedResources"
        o.input = Shapes::ShapeRef.new(shape: ListIntegratedResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListIntegratedResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/ListIntegrations"
        o.input = Shapes::ShapeRef.new(shape: ListIntegrationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListIntegrationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemberships"
        o.http_method = "POST"
        o.http_request_uri = "/ListMemberships"
        o.input = Shapes::ShapeRef.new(shape: ListMembershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMembershipsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pentest_job_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPentestJobTasks"
        o.http_method = "POST"
        o.http_request_uri = "/ListPentestJobTasks"
        o.input = Shapes::ShapeRef.new(shape: ListPentestJobTasksInput)
        o.output = Shapes::ShapeRef.new(shape: ListPentestJobTasksOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pentest_jobs_for_pentest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPentestJobsForPentest"
        o.http_method = "POST"
        o.http_request_uri = "/ListPentestJobsForPentest"
        o.input = Shapes::ShapeRef.new(shape: ListPentestJobsForPentestInput)
        o.output = Shapes::ShapeRef.new(shape: ListPentestJobsForPentestOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_pentests, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPentests"
        o.http_method = "POST"
        o.http_request_uri = "/ListPentests"
        o.input = Shapes::ShapeRef.new(shape: ListPentestsInput)
        o.output = Shapes::ShapeRef.new(shape: ListPentestsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_private_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPrivateConnections"
        o.http_method = "POST"
        o.http_request_uri = "/ListPrivateConnections"
        o.input = Shapes::ShapeRef.new(shape: ListPrivateConnectionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListPrivateConnectionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_requirement_packs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityRequirementPacks"
        o.http_method = "POST"
        o.http_request_uri = "/ListSecurityRequirementPacks"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityRequirementPacksInput)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityRequirementPacksOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_security_requirements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSecurityRequirements"
        o.http_method = "POST"
        o.http_request_uri = "/ListSecurityRequirements"
        o.input = Shapes::ShapeRef.new(shape: ListSecurityRequirementsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSecurityRequirementsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
      end)

      api.add_operation(:list_target_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTargetDomains"
        o.http_method = "POST"
        o.http_request_uri = "/ListTargetDomains"
        o.input = Shapes::ShapeRef.new(shape: ListTargetDomainsInput)
        o.output = Shapes::ShapeRef.new(shape: ListTargetDomainsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_threat_model_job_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThreatModelJobTasks"
        o.http_method = "POST"
        o.http_request_uri = "/ListThreatModelJobTasks"
        o.input = Shapes::ShapeRef.new(shape: ListThreatModelJobTasksInput)
        o.output = Shapes::ShapeRef.new(shape: ListThreatModelJobTasksOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_threat_model_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThreatModelJobs"
        o.http_method = "POST"
        o.http_request_uri = "/ListThreatModelJobs"
        o.input = Shapes::ShapeRef.new(shape: ListThreatModelJobsInput)
        o.output = Shapes::ShapeRef.new(shape: ListThreatModelJobsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_threat_models, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThreatModels"
        o.http_method = "POST"
        o.http_request_uri = "/ListThreatModels"
        o.input = Shapes::ShapeRef.new(shape: ListThreatModelsInput)
        o.output = Shapes::ShapeRef.new(shape: ListThreatModelsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_threats, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThreats"
        o.http_method = "POST"
        o.http_request_uri = "/ListThreats"
        o.input = Shapes::ShapeRef.new(shape: ListThreatsInput)
        o.output = Shapes::ShapeRef.new(shape: ListThreatsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_code_remediation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCodeRemediation"
        o.http_method = "POST"
        o.http_request_uri = "/StartCodeRemediation"
        o.input = Shapes::ShapeRef.new(shape: StartCodeRemediationInput)
        o.output = Shapes::ShapeRef.new(shape: StartCodeRemediationOutput)
      end)

      api.add_operation(:start_code_review_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCodeReviewJob"
        o.http_method = "POST"
        o.http_request_uri = "/StartCodeReviewJob"
        o.input = Shapes::ShapeRef.new(shape: StartCodeReviewJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartCodeReviewJobOutput)
      end)

      api.add_operation(:start_pentest_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPentestJob"
        o.http_method = "POST"
        o.http_request_uri = "/StartPentestJob"
        o.input = Shapes::ShapeRef.new(shape: StartPentestJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartPentestJobOutput)
      end)

      api.add_operation(:start_threat_model_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartThreatModelJob"
        o.http_method = "POST"
        o.http_request_uri = "/StartThreatModelJob"
        o.input = Shapes::ShapeRef.new(shape: StartThreatModelJobInput)
        o.output = Shapes::ShapeRef.new(shape: StartThreatModelJobOutput)
      end)

      api.add_operation(:stop_code_review_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopCodeReviewJob"
        o.http_method = "POST"
        o.http_request_uri = "/StopCodeReviewJob"
        o.input = Shapes::ShapeRef.new(shape: StopCodeReviewJobInput)
        o.output = Shapes::ShapeRef.new(shape: StopCodeReviewJobOutput)
      end)

      api.add_operation(:stop_pentest_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopPentestJob"
        o.http_method = "POST"
        o.http_request_uri = "/StopPentestJob"
        o.input = Shapes::ShapeRef.new(shape: StopPentestJobInput)
        o.output = Shapes::ShapeRef.new(shape: StopPentestJobOutput)
      end)

      api.add_operation(:stop_threat_model_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopThreatModelJob"
        o.http_method = "POST"
        o.http_request_uri = "/StopThreatModelJob"
        o.input = Shapes::ShapeRef.new(shape: StopThreatModelJobInput)
        o.output = Shapes::ShapeRef.new(shape: StopThreatModelJobOutput)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
      end)

      api.add_operation(:update_agent_space, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAgentSpace"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateAgentSpace"
        o.input = Shapes::ShapeRef.new(shape: UpdateAgentSpaceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAgentSpaceOutput)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateApplication"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
      end)

      api.add_operation(:update_code_review, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCodeReview"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateCodeReview"
        o.input = Shapes::ShapeRef.new(shape: UpdateCodeReviewInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCodeReviewOutput)
      end)

      api.add_operation(:update_finding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFinding"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateFinding"
        o.input = Shapes::ShapeRef.new(shape: UpdateFindingInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateFindingOutput)
      end)

      api.add_operation(:update_integrated_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIntegratedResources"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateIntegratedResources"
        o.input = Shapes::ShapeRef.new(shape: UpdateIntegratedResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateIntegratedResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_pentest, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePentest"
        o.http_method = "POST"
        o.http_request_uri = "/UpdatePentest"
        o.input = Shapes::ShapeRef.new(shape: UpdatePentestInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePentestOutput)
      end)

      api.add_operation(:update_private_connection_certificate, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePrivateConnectionCertificate"
        o.http_method = "POST"
        o.http_request_uri = "/UpdatePrivateConnectionCertificate"
        o.input = Shapes::ShapeRef.new(shape: UpdatePrivateConnectionCertificateInput)
        o.output = Shapes::ShapeRef.new(shape: UpdatePrivateConnectionCertificateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_security_requirement_pack, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSecurityRequirementPack"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateSecurityRequirementPack"
        o.input = Shapes::ShapeRef.new(shape: UpdateSecurityRequirementPackInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSecurityRequirementPackOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_target_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTargetDomain"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateTargetDomain"
        o.input = Shapes::ShapeRef.new(shape: UpdateTargetDomainInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateTargetDomainOutput)
      end)

      api.add_operation(:update_threat, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThreat"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateThreat"
        o.input = Shapes::ShapeRef.new(shape: UpdateThreatInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateThreatOutput)
      end)

      api.add_operation(:update_threat_model, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThreatModel"
        o.http_method = "POST"
        o.http_request_uri = "/UpdateThreatModel"
        o.input = Shapes::ShapeRef.new(shape: UpdateThreatModelInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateThreatModelOutput)
      end)

      api.add_operation(:verify_target_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "VerifyTargetDomain"
        o.http_method = "POST"
        o.http_request_uri = "/VerifyTargetDomain"
        o.input = Shapes::ShapeRef.new(shape: VerifyTargetDomainInput)
        o.output = Shapes::ShapeRef.new(shape: VerifyTargetDomainOutput)
      end)
    end

  end
end
