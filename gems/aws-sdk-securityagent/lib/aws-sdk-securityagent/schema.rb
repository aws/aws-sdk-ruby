# frozen_string_literal: true

# This is generated code!

module Aws::SecurityAgent
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSResources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#AWSResources", name: "AWSResources")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#AccessToken", name: "AccessToken", traits: {"smithy.api#sensitive" => {}})
    AccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#AccessType", name: "AccessType")
    Actor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#Actor", name: "Actor")
    ActorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ActorList", name: "ActorList")
    ActorMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ActorMessage", name: "ActorMessage")
    ActorMessageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ActorMessageList", name: "ActorMessageList")
    AddArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#AddArtifactInput", name: "AddArtifactInput")
    AddArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#AddArtifactOutput", name: "AddArtifactOutput")
    AgentName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#AgentName", name: "AgentName")
    AgentSpace = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#AgentSpace", name: "AgentSpace")
    AgentSpaceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#AgentSpaceId", name: "AgentSpaceId")
    AgentSpaceIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#AgentSpaceIdList", name: "AgentSpaceIdList")
    AgentSpaceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#AgentSpaceList", name: "AgentSpaceList")
    AgentSpaceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#AgentSpaceSummary", name: "AgentSpaceSummary")
    AgentSpaceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#AgentSpaceSummaryList", name: "AgentSpaceSummaryList")
    ApplicationDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ApplicationDomain", name: "ApplicationDomain")
    ApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ApplicationId", name: "ApplicationId")
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ApplicationSummary", name: "ApplicationSummary")
    ApplicationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ApplicationSummaryList", name: "ApplicationSummaryList")
    Artifact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#Artifact", name: "Artifact")
    ArtifactId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ArtifactId", name: "ArtifactId")
    ArtifactIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ArtifactIds", name: "ArtifactIds")
    ArtifactMetadataItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ArtifactMetadataItem", name: "ArtifactMetadataItem")
    ArtifactMetadataList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ArtifactMetadataList", name: "ArtifactMetadataList")
    ArtifactSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ArtifactSummary", name: "ArtifactSummary")
    ArtifactSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ArtifactSummaryList", name: "ArtifactSummaryList")
    ArtifactType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ArtifactType", name: "ArtifactType")
    Assets = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#Assets", name: "Assets")
    AuthCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#AuthCode", name: "AuthCode")
    Authentication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#Authentication", name: "Authentication")
    AuthenticationProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#AuthenticationProviderType", name: "AuthenticationProviderType")
    AzureDevOpsIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#AzureDevOpsIntegrationInput", name: "AzureDevOpsIntegrationInput")
    AzureDevOpsOrganization = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#AzureDevOpsOrganization", name: "AzureDevOpsOrganization")
    AzureDevOpsRepositoryMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#AzureDevOpsRepositoryMetadata", name: "AzureDevOpsRepositoryMetadata")
    AzureDevOpsRepositoryResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#AzureDevOpsRepositoryResource", name: "AzureDevOpsRepositoryResource")
    AzureDevOpsResourceCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#AzureDevOpsResourceCapabilities", name: "AzureDevOpsResourceCapabilities")
    BatchCreateSecurityRequirementResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchCreateSecurityRequirementResult", name: "BatchCreateSecurityRequirementResult")
    BatchCreateSecurityRequirementResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#BatchCreateSecurityRequirementResultList", name: "BatchCreateSecurityRequirementResultList")
    BatchCreateSecurityRequirementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchCreateSecurityRequirementsInput", name: "BatchCreateSecurityRequirementsInput")
    BatchCreateSecurityRequirementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchCreateSecurityRequirementsOutput", name: "BatchCreateSecurityRequirementsOutput")
    BatchDeleteCodeReviewsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchDeleteCodeReviewsInput", name: "BatchDeleteCodeReviewsInput")
    BatchDeleteCodeReviewsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchDeleteCodeReviewsOutput", name: "BatchDeleteCodeReviewsOutput")
    BatchDeletePentestsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchDeletePentestsInput", name: "BatchDeletePentestsInput")
    BatchDeletePentestsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchDeletePentestsOutput", name: "BatchDeletePentestsOutput")
    BatchDeleteSecurityRequirementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchDeleteSecurityRequirementsInput", name: "BatchDeleteSecurityRequirementsInput")
    BatchDeleteSecurityRequirementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchDeleteSecurityRequirementsOutput", name: "BatchDeleteSecurityRequirementsOutput")
    BatchDeleteThreatModelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchDeleteThreatModelsInput", name: "BatchDeleteThreatModelsInput")
    BatchDeleteThreatModelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchDeleteThreatModelsOutput", name: "BatchDeleteThreatModelsOutput")
    BatchDisassociateFindingIssueError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchDisassociateFindingIssueError", name: "BatchDisassociateFindingIssueError")
    BatchDisassociateFindingIssueErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#BatchDisassociateFindingIssueErrors", name: "BatchDisassociateFindingIssueErrors")
    BatchDisassociateFindingIssueInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchDisassociateFindingIssueInput", name: "BatchDisassociateFindingIssueInput")
    BatchDisassociateFindingIssueOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchDisassociateFindingIssueOutput", name: "BatchDisassociateFindingIssueOutput")
    BatchExportFindingError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchExportFindingError", name: "BatchExportFindingError")
    BatchExportFindingErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#BatchExportFindingErrorList", name: "BatchExportFindingErrorList")
    BatchExportFindingResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchExportFindingResult", name: "BatchExportFindingResult")
    BatchExportFindingResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#BatchExportFindingResultList", name: "BatchExportFindingResultList")
    BatchExportFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchExportFindingsInput", name: "BatchExportFindingsInput")
    BatchExportFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchExportFindingsOutput", name: "BatchExportFindingsOutput")
    BatchGetAgentSpacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetAgentSpacesInput", name: "BatchGetAgentSpacesInput")
    BatchGetAgentSpacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetAgentSpacesOutput", name: "BatchGetAgentSpacesOutput")
    BatchGetArtifactMetadataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetArtifactMetadataInput", name: "BatchGetArtifactMetadataInput")
    BatchGetArtifactMetadataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetArtifactMetadataOutput", name: "BatchGetArtifactMetadataOutput")
    BatchGetCodeReviewJobTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetCodeReviewJobTasksInput", name: "BatchGetCodeReviewJobTasksInput")
    BatchGetCodeReviewJobTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetCodeReviewJobTasksOutput", name: "BatchGetCodeReviewJobTasksOutput")
    BatchGetCodeReviewJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetCodeReviewJobsInput", name: "BatchGetCodeReviewJobsInput")
    BatchGetCodeReviewJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetCodeReviewJobsOutput", name: "BatchGetCodeReviewJobsOutput")
    BatchGetCodeReviewsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetCodeReviewsInput", name: "BatchGetCodeReviewsInput")
    BatchGetCodeReviewsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetCodeReviewsOutput", name: "BatchGetCodeReviewsOutput")
    BatchGetFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetFindingsInput", name: "BatchGetFindingsInput")
    BatchGetFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetFindingsOutput", name: "BatchGetFindingsOutput")
    BatchGetPentestJobTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetPentestJobTasksInput", name: "BatchGetPentestJobTasksInput")
    BatchGetPentestJobTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetPentestJobTasksOutput", name: "BatchGetPentestJobTasksOutput")
    BatchGetPentestJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetPentestJobsInput", name: "BatchGetPentestJobsInput")
    BatchGetPentestJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetPentestJobsOutput", name: "BatchGetPentestJobsOutput")
    BatchGetPentestsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetPentestsInput", name: "BatchGetPentestsInput")
    BatchGetPentestsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetPentestsOutput", name: "BatchGetPentestsOutput")
    BatchGetSecurityRequirementResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetSecurityRequirementResult", name: "BatchGetSecurityRequirementResult")
    BatchGetSecurityRequirementResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#BatchGetSecurityRequirementResultList", name: "BatchGetSecurityRequirementResultList")
    BatchGetSecurityRequirementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetSecurityRequirementsInput", name: "BatchGetSecurityRequirementsInput")
    BatchGetSecurityRequirementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetSecurityRequirementsOutput", name: "BatchGetSecurityRequirementsOutput")
    BatchGetTargetDomainsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetTargetDomainsInput", name: "BatchGetTargetDomainsInput")
    BatchGetTargetDomainsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetTargetDomainsOutput", name: "BatchGetTargetDomainsOutput")
    BatchGetThreatModelJobTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetThreatModelJobTasksInput", name: "BatchGetThreatModelJobTasksInput")
    BatchGetThreatModelJobTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetThreatModelJobTasksOutput", name: "BatchGetThreatModelJobTasksOutput")
    BatchGetThreatModelJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetThreatModelJobsInput", name: "BatchGetThreatModelJobsInput")
    BatchGetThreatModelJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetThreatModelJobsOutput", name: "BatchGetThreatModelJobsOutput")
    BatchGetThreatModelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetThreatModelsInput", name: "BatchGetThreatModelsInput")
    BatchGetThreatModelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetThreatModelsOutput", name: "BatchGetThreatModelsOutput")
    BatchGetThreatsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetThreatsInput", name: "BatchGetThreatsInput")
    BatchGetThreatsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchGetThreatsOutput", name: "BatchGetThreatsOutput")
    BatchSecurityRequirementError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchSecurityRequirementError", name: "BatchSecurityRequirementError")
    BatchSecurityRequirementErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#BatchSecurityRequirementErrors", name: "BatchSecurityRequirementErrors")
    BatchUpdateSecurityRequirementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchUpdateSecurityRequirementsInput", name: "BatchUpdateSecurityRequirementsInput")
    BatchUpdateSecurityRequirementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BatchUpdateSecurityRequirementsOutput", name: "BatchUpdateSecurityRequirementsOutput")
    BitbucketDataCenterIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BitbucketDataCenterIntegrationInput", name: "BitbucketDataCenterIntegrationInput")
    BitbucketInstallationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#BitbucketInstallationId", name: "BitbucketInstallationId")
    BitbucketIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BitbucketIntegrationInput", name: "BitbucketIntegrationInput")
    BitbucketRepositoryMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BitbucketRepositoryMetadata", name: "BitbucketRepositoryMetadata")
    BitbucketRepositoryResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BitbucketRepositoryResource", name: "BitbucketRepositoryResource")
    BitbucketResourceCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#BitbucketResourceCapabilities", name: "BitbucketResourceCapabilities")
    BitbucketWorkspace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#BitbucketWorkspace", name: "BitbucketWorkspace")
    CaCertificatePem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#CaCertificatePem", name: "CaCertificatePem", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#sensitive" => {}})
    CaCertificateSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.securityagent#CaCertificateSource", name: "CaCertificateSource")
    Category = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#Category", name: "Category")
    CategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CategoryList", name: "CategoryList")
    CertificateChain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#CertificateChain", name: "CertificateChain", traits: {"smithy.api#sensitive" => {}})
    CiCdConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CiCdConfiguration", name: "CiCdConfiguration")
    CleanUpStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#CleanUpStrategy", name: "CleanUpStrategy")
    ClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ClientId", name: "ClientId")
    ClientSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ClientSecret", name: "ClientSecret", traits: {"smithy.api#sensitive" => {}})
    CloudWatchLog = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CloudWatchLog", name: "CloudWatchLog")
    CodeLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CodeLocation", name: "CodeLocation")
    CodeLocationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CodeLocationList", name: "CodeLocationList")
    CodeRemediationStrategy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#CodeRemediationStrategy", name: "CodeRemediationStrategy")
    CodeRemediationTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CodeRemediationTask", name: "CodeRemediationTask")
    CodeRemediationTaskDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CodeRemediationTaskDetails", name: "CodeRemediationTaskDetails")
    CodeRemediationTaskDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CodeRemediationTaskDetailsList", name: "CodeRemediationTaskDetailsList")
    CodeRemediationTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#CodeRemediationTaskStatus", name: "CodeRemediationTaskStatus")
    CodeReview = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CodeReview", name: "CodeReview")
    CodeReviewIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CodeReviewIdList", name: "CodeReviewIdList")
    CodeReviewJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CodeReviewJob", name: "CodeReviewJob")
    CodeReviewJobIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CodeReviewJobIdList", name: "CodeReviewJobIdList")
    CodeReviewJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CodeReviewJobList", name: "CodeReviewJobList")
    CodeReviewJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CodeReviewJobSummary", name: "CodeReviewJobSummary")
    CodeReviewJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CodeReviewJobSummaryList", name: "CodeReviewJobSummaryList")
    CodeReviewJobTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CodeReviewJobTask", name: "CodeReviewJobTask")
    CodeReviewJobTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CodeReviewJobTaskList", name: "CodeReviewJobTaskList")
    CodeReviewJobTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CodeReviewJobTaskSummary", name: "CodeReviewJobTaskSummary")
    CodeReviewJobTaskSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CodeReviewJobTaskSummaryList", name: "CodeReviewJobTaskSummaryList")
    CodeReviewList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CodeReviewList", name: "CodeReviewList")
    CodeReviewSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CodeReviewSettings", name: "CodeReviewSettings")
    CodeReviewSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CodeReviewSummary", name: "CodeReviewSummary")
    CodeReviewSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CodeReviewSummaryList", name: "CodeReviewSummaryList")
    ConfidenceLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ConfidenceLevel", name: "ConfidenceLevel")
    ConfidenceLevelFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ConfidenceLevelFilterList", name: "ConfidenceLevelFilterList", traits: {"smithy.api#length" => {"max" => 50}})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConfluenceDocumentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ConfluenceDocumentMetadata", name: "ConfluenceDocumentMetadata")
    ConfluenceDocumentResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ConfluenceDocumentResource", name: "ConfluenceDocumentResource")
    ConfluenceInstallationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ConfluenceInstallationId", name: "ConfluenceInstallationId")
    ConfluenceIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ConfluenceIntegrationInput", name: "ConfluenceIntegrationInput")
    ConfluenceResourceCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ConfluenceResourceCapabilities", name: "ConfluenceResourceCapabilities")
    ConfluenceSiteUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ConfluenceSiteUrl", name: "ConfluenceSiteUrl")
    ContextType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ContextType", name: "ContextType")
    CreateAgentSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateAgentSpaceInput", name: "CreateAgentSpaceInput")
    CreateAgentSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateAgentSpaceOutput", name: "CreateAgentSpaceOutput")
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateApplicationResponse", name: "CreateApplicationResponse")
    CreateCodeReviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateCodeReviewInput", name: "CreateCodeReviewInput")
    CreateCodeReviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateCodeReviewOutput", name: "CreateCodeReviewOutput")
    CreateIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateIntegrationInput", name: "CreateIntegrationInput")
    CreateIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateIntegrationOutput", name: "CreateIntegrationOutput")
    CreateMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateMembershipRequest", name: "CreateMembershipRequest")
    CreateMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateMembershipResponse", name: "CreateMembershipResponse")
    CreatePentestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreatePentestInput", name: "CreatePentestInput")
    CreatePentestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreatePentestOutput", name: "CreatePentestOutput")
    CreatePrivateConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreatePrivateConnectionInput", name: "CreatePrivateConnectionInput")
    CreatePrivateConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreatePrivateConnectionOutput", name: "CreatePrivateConnectionOutput")
    CreateSecurityRequirementEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateSecurityRequirementEntry", name: "CreateSecurityRequirementEntry")
    CreateSecurityRequirementEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CreateSecurityRequirementEntryList", name: "CreateSecurityRequirementEntryList")
    CreateSecurityRequirementPackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateSecurityRequirementPackInput", name: "CreateSecurityRequirementPackInput")
    CreateSecurityRequirementPackOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateSecurityRequirementPackOutput", name: "CreateSecurityRequirementPackOutput")
    CreateTargetDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateTargetDomainInput", name: "CreateTargetDomainInput")
    CreateTargetDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateTargetDomainOutput", name: "CreateTargetDomainOutput")
    CreateThreatInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateThreatInput", name: "CreateThreatInput")
    CreateThreatModelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateThreatModelInput", name: "CreateThreatModelInput")
    CreateThreatModelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateThreatModelOutput", name: "CreateThreatModelOutput")
    CreateThreatOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CreateThreatOutput", name: "CreateThreatOutput")
    CsrfState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#CsrfState", name: "CsrfState")
    CustomHeader = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#CustomHeader", name: "CustomHeader")
    CustomHeaderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#CustomHeaderList", name: "CustomHeaderList")
    DNSRecordType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#DNSRecordType", name: "DNSRecordType")
    DefaultKmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#DefaultKmsKeyId", name: "DefaultKmsKeyId")
    DeleteAgentSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteAgentSpaceInput", name: "DeleteAgentSpaceInput")
    DeleteAgentSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteAgentSpaceOutput", name: "DeleteAgentSpaceOutput")
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteApplicationRequest", name: "DeleteApplicationRequest")
    DeleteArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteArtifactInput", name: "DeleteArtifactInput")
    DeleteArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteArtifactOutput", name: "DeleteArtifactOutput")
    DeleteCodeReviewFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteCodeReviewFailure", name: "DeleteCodeReviewFailure")
    DeleteCodeReviewFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#DeleteCodeReviewFailureList", name: "DeleteCodeReviewFailureList")
    DeleteIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteIntegrationInput", name: "DeleteIntegrationInput")
    DeleteIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteIntegrationOutput", name: "DeleteIntegrationOutput")
    DeleteMembershipRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteMembershipRequest", name: "DeleteMembershipRequest")
    DeleteMembershipResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteMembershipResponse", name: "DeleteMembershipResponse")
    DeletePentestFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeletePentestFailure", name: "DeletePentestFailure")
    DeletePentestFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#DeletePentestFailureList", name: "DeletePentestFailureList")
    DeletePrivateConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeletePrivateConnectionInput", name: "DeletePrivateConnectionInput")
    DeletePrivateConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeletePrivateConnectionOutput", name: "DeletePrivateConnectionOutput")
    DeleteSecurityRequirementPackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteSecurityRequirementPackInput", name: "DeleteSecurityRequirementPackInput")
    DeleteSecurityRequirementPackOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteSecurityRequirementPackOutput", name: "DeleteSecurityRequirementPackOutput")
    DeleteTargetDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteTargetDomainInput", name: "DeleteTargetDomainInput")
    DeleteTargetDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteTargetDomainOutput", name: "DeleteTargetDomainOutput")
    DeleteThreatModelFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DeleteThreatModelFailure", name: "DeleteThreatModelFailure")
    DeleteThreatModelFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#DeleteThreatModelFailureList", name: "DeleteThreatModelFailureList")
    DescribePrivateConnectionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DescribePrivateConnectionInput", name: "DescribePrivateConnectionInput")
    DescribePrivateConnectionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DescribePrivateConnectionOutput", name: "DescribePrivateConnectionOutput")
    DiffSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.securityagent#DiffSource", name: "DiffSource")
    DiscoveredEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DiscoveredEndpoint", name: "DiscoveredEndpoint")
    DiscoveredEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#DiscoveredEndpointList", name: "DiscoveredEndpointList")
    DnsVerification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DnsVerification", name: "DnsVerification")
    DocumentInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#DocumentInfo", name: "DocumentInfo")
    DocumentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#DocumentList", name: "DocumentList")
    DomainVerificationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#DomainVerificationMethod", name: "DomainVerificationMethod")
    Endpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#Endpoint", name: "Endpoint")
    EndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#EndpointList", name: "EndpointList")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ErrorCode", name: "ErrorCode")
    ErrorInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ErrorInformation", name: "ErrorInformation")
    ExecutionContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ExecutionContext", name: "ExecutionContext")
    ExecutionContextList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ExecutionContextList", name: "ExecutionContextList")
    Finding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#Finding", name: "Finding")
    FindingIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#FindingIdList", name: "FindingIdList")
    FindingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#FindingList", name: "FindingList")
    FindingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#FindingStatus", name: "FindingStatus")
    FindingStatusFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#FindingStatusFilterList", name: "FindingStatusFilterList", traits: {"smithy.api#length" => {"max" => 50}})
    FindingSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#FindingSummary", name: "FindingSummary")
    FindingSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#FindingSummaryList", name: "FindingSummaryList")
    GetApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GetApplicationRequest", name: "GetApplicationRequest")
    GetApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GetApplicationResponse", name: "GetApplicationResponse")
    GetArtifactInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GetArtifactInput", name: "GetArtifactInput")
    GetArtifactOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GetArtifactOutput", name: "GetArtifactOutput")
    GetIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GetIntegrationInput", name: "GetIntegrationInput")
    GetIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GetIntegrationOutput", name: "GetIntegrationOutput")
    GetSecurityRequirementPackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GetSecurityRequirementPackInput", name: "GetSecurityRequirementPackInput")
    GetSecurityRequirementPackOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GetSecurityRequirementPackOutput", name: "GetSecurityRequirementPackOutput")
    GitHubIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GitHubIntegrationInput", name: "GitHubIntegrationInput")
    GitHubOwner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#GitHubOwner", name: "GitHubOwner")
    GitHubRepositoryMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GitHubRepositoryMetadata", name: "GitHubRepositoryMetadata")
    GitHubRepositoryResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GitHubRepositoryResource", name: "GitHubRepositoryResource")
    GitHubResourceCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GitHubResourceCapabilities", name: "GitHubResourceCapabilities")
    GitLabIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GitLabIntegrationInput", name: "GitLabIntegrationInput")
    GitLabNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#GitLabNamespace", name: "GitLabNamespace")
    GitLabRepositoryMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GitLabRepositoryMetadata", name: "GitLabRepositoryMetadata")
    GitLabRepositoryResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GitLabRepositoryResource", name: "GitLabRepositoryResource")
    GitLabResourceCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#GitLabResourceCapabilities", name: "GitLabResourceCapabilities")
    GitLabTokenType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#GitLabTokenType", name: "GitLabTokenType")
    HostAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#HostAddress", name: "HostAddress")
    HttpVerification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#HttpVerification", name: "HttpVerification")
    IamRoles = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#IamRoles", name: "IamRoles")
    IdCApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#IdCApplicationArn", name: "IdCApplicationArn")
    IdCConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#IdCConfiguration", name: "IdCConfiguration")
    IdCInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#IdCInstanceArn", name: "IdCInstanceArn")
    ImportSecurityRequirementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ImportSecurityRequirementsInput", name: "ImportSecurityRequirementsInput")
    ImportSecurityRequirementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ImportSecurityRequirementsOutput", name: "ImportSecurityRequirementsOutput")
    ImportSource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.securityagent#ImportSource", name: "ImportSource")
    InitiateProviderRegistrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#InitiateProviderRegistrationInput", name: "InitiateProviderRegistrationInput")
    InitiateProviderRegistrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#InitiateProviderRegistrationOutput", name: "InitiateProviderRegistrationOutput")
    IntegratedDocument = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#IntegratedDocument", name: "IntegratedDocument")
    IntegratedRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#IntegratedRepository", name: "IntegratedRepository")
    IntegratedRepositoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#IntegratedRepositoryList", name: "IntegratedRepositoryList")
    IntegratedResource = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.securityagent#IntegratedResource", name: "IntegratedResource")
    IntegratedResourceInputItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#IntegratedResourceInputItem", name: "IntegratedResourceInputItem")
    IntegratedResourceInputItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#IntegratedResourceInputItemList", name: "IntegratedResourceInputItemList")
    IntegratedResourceMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.securityagent#IntegratedResourceMetadata", name: "IntegratedResourceMetadata")
    IntegratedResourceSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#IntegratedResourceSummary", name: "IntegratedResourceSummary")
    IntegratedResourceSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#IntegratedResourceSummaryList", name: "IntegratedResourceSummaryList")
    IntegrationFilter = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.securityagent#IntegrationFilter", name: "IntegrationFilter")
    IntegrationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#IntegrationId", name: "IntegrationId")
    IntegrationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#IntegrationSummary", name: "IntegrationSummary")
    IntegrationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#IntegrationSummaryList", name: "IntegrationSummaryList")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IpAddressType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#IpAddressType", name: "IpAddressType")
    IssueDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#IssueDestination", name: "IssueDestination")
    JiraInstallationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#JiraInstallationId", name: "JiraInstallationId")
    JiraIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#JiraIntegrationInput", name: "JiraIntegrationInput")
    JiraProjectMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#JiraProjectMetadata", name: "JiraProjectMetadata")
    JiraProjectResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#JiraProjectResource", name: "JiraProjectResource")
    JiraResourceCapabilities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#JiraResourceCapabilities", name: "JiraResourceCapabilities")
    JiraSiteUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#JiraSiteUrl", name: "JiraSiteUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^https://[a-zA-Z0-9\\-]+\\.atlassian\\.net$"})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#JobStatus", name: "JobStatus")
    JobType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#JobType", name: "JobType")
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#KmsKeyId", name: "KmsKeyId")
    LambdaFunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#LambdaFunctionArn", name: "LambdaFunctionArn")
    LambdaFunctionArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#LambdaFunctionArns", name: "LambdaFunctionArns")
    LinkedIssue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#LinkedIssue", name: "LinkedIssue")
    ListActorMessagesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListActorMessagesInput", name: "ListActorMessagesInput")
    ListActorMessagesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListActorMessagesOutput", name: "ListActorMessagesOutput")
    ListAgentSpacesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListAgentSpacesInput", name: "ListAgentSpacesInput")
    ListAgentSpacesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListAgentSpacesOutput", name: "ListAgentSpacesOutput")
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListApplicationsRequest", name: "ListApplicationsRequest")
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListApplicationsResponse", name: "ListApplicationsResponse")
    ListArtifactsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListArtifactsInput", name: "ListArtifactsInput")
    ListArtifactsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListArtifactsOutput", name: "ListArtifactsOutput")
    ListCodeReviewJobTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListCodeReviewJobTasksInput", name: "ListCodeReviewJobTasksInput")
    ListCodeReviewJobTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListCodeReviewJobTasksOutput", name: "ListCodeReviewJobTasksOutput")
    ListCodeReviewJobsForCodeReviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListCodeReviewJobsForCodeReviewInput", name: "ListCodeReviewJobsForCodeReviewInput")
    ListCodeReviewJobsForCodeReviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListCodeReviewJobsForCodeReviewOutput", name: "ListCodeReviewJobsForCodeReviewOutput")
    ListCodeReviewsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListCodeReviewsInput", name: "ListCodeReviewsInput")
    ListCodeReviewsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListCodeReviewsOutput", name: "ListCodeReviewsOutput")
    ListDiscoveredEndpointsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListDiscoveredEndpointsInput", name: "ListDiscoveredEndpointsInput")
    ListDiscoveredEndpointsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListDiscoveredEndpointsOutput", name: "ListDiscoveredEndpointsOutput")
    ListFindingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListFindingsInput", name: "ListFindingsInput")
    ListFindingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListFindingsOutput", name: "ListFindingsOutput")
    ListIntegratedResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListIntegratedResourcesInput", name: "ListIntegratedResourcesInput")
    ListIntegratedResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListIntegratedResourcesOutput", name: "ListIntegratedResourcesOutput")
    ListIntegrationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListIntegrationsInput", name: "ListIntegrationsInput")
    ListIntegrationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListIntegrationsOutput", name: "ListIntegrationsOutput")
    ListMembershipsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListMembershipsRequest", name: "ListMembershipsRequest")
    ListMembershipsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListMembershipsResponse", name: "ListMembershipsResponse")
    ListPentestJobTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListPentestJobTasksInput", name: "ListPentestJobTasksInput")
    ListPentestJobTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListPentestJobTasksOutput", name: "ListPentestJobTasksOutput")
    ListPentestJobsForPentestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListPentestJobsForPentestInput", name: "ListPentestJobsForPentestInput")
    ListPentestJobsForPentestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListPentestJobsForPentestOutput", name: "ListPentestJobsForPentestOutput")
    ListPentestsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListPentestsInput", name: "ListPentestsInput")
    ListPentestsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListPentestsOutput", name: "ListPentestsOutput")
    ListPrivateConnectionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListPrivateConnectionsInput", name: "ListPrivateConnectionsInput")
    ListPrivateConnectionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListPrivateConnectionsOutput", name: "ListPrivateConnectionsOutput")
    ListSecurityRequirementPackFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListSecurityRequirementPackFilter", name: "ListSecurityRequirementPackFilter")
    ListSecurityRequirementPacksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListSecurityRequirementPacksInput", name: "ListSecurityRequirementPacksInput")
    ListSecurityRequirementPacksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListSecurityRequirementPacksOutput", name: "ListSecurityRequirementPacksOutput")
    ListSecurityRequirementsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListSecurityRequirementsInput", name: "ListSecurityRequirementsInput")
    ListSecurityRequirementsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListSecurityRequirementsOutput", name: "ListSecurityRequirementsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ListTargetDomainsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListTargetDomainsInput", name: "ListTargetDomainsInput")
    ListTargetDomainsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListTargetDomainsOutput", name: "ListTargetDomainsOutput")
    ListThreatModelJobTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListThreatModelJobTasksInput", name: "ListThreatModelJobTasksInput")
    ListThreatModelJobTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListThreatModelJobTasksOutput", name: "ListThreatModelJobTasksOutput")
    ListThreatModelJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListThreatModelJobsInput", name: "ListThreatModelJobsInput")
    ListThreatModelJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListThreatModelJobsOutput", name: "ListThreatModelJobsOutput")
    ListThreatModelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListThreatModelsInput", name: "ListThreatModelsInput")
    ListThreatModelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListThreatModelsOutput", name: "ListThreatModelsOutput")
    ListThreatsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListThreatsInput", name: "ListThreatsInput")
    ListThreatsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ListThreatsOutput", name: "ListThreatsOutput")
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#Location", name: "Location")
    LogGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#LogGroupArn", name: "LogGroupArn")
    LogGroupArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#LogGroupArns", name: "LogGroupArns")
    LogLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#LogLocation", name: "LogLocation")
    LogType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#LogType", name: "LogType")
    ManagementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ManagementType", name: "ManagementType")
    MaxIpv4AddressesPerEni = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.securityagent#MaxIpv4AddressesPerEni", name: "MaxIpv4AddressesPerEni")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.securityagent#MaxResults", name: "MaxResults")
    MemberMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.securityagent#MemberMetadata", name: "MemberMetadata")
    MembershipConfig = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.securityagent#MembershipConfig", name: "MembershipConfig")
    MembershipId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#MembershipId", name: "MembershipId")
    MembershipSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#MembershipSummary", name: "MembershipSummary")
    MembershipSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#MembershipSummaryList", name: "MembershipSummaryList")
    MembershipType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#MembershipType", name: "MembershipType")
    MembershipTypeFilter = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#MembershipTypeFilter", name: "MembershipTypeFilter")
    NetworkTrafficConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#NetworkTrafficConfig", name: "NetworkTrafficConfig")
    NetworkTrafficRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#NetworkTrafficRule", name: "NetworkTrafficRule")
    NetworkTrafficRuleEffect = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#NetworkTrafficRuleEffect", name: "NetworkTrafficRuleEffect")
    NetworkTrafficRuleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#NetworkTrafficRuleList", name: "NetworkTrafficRuleList")
    NetworkTrafficRuleType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#NetworkTrafficRuleType", name: "NetworkTrafficRuleType")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#NextToken", name: "NextToken")
    Pentest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#Pentest", name: "Pentest")
    PentestIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#PentestIdList", name: "PentestIdList")
    PentestJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#PentestJob", name: "PentestJob")
    PentestJobIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#PentestJobIdList", name: "PentestJobIdList")
    PentestJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#PentestJobList", name: "PentestJobList")
    PentestJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#PentestJobSummary", name: "PentestJobSummary")
    PentestJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#PentestJobSummaryList", name: "PentestJobSummaryList")
    PentestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#PentestList", name: "PentestList")
    PentestSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#PentestSummary", name: "PentestSummary")
    PentestSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#PentestSummaryList", name: "PentestSummaryList")
    PortRange = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#PortRange", name: "PortRange")
    PortRanges = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#PortRanges", name: "PortRanges")
    PrivateConnectionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#PrivateConnectionList", name: "PrivateConnectionList")
    PrivateConnectionMode = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.securityagent#PrivateConnectionMode", name: "PrivateConnectionMode")
    PrivateConnectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#PrivateConnectionName", name: "PrivateConnectionName")
    PrivateConnectionSecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#PrivateConnectionSecurityGroupId", name: "PrivateConnectionSecurityGroupId")
    PrivateConnectionSecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#PrivateConnectionSecurityGroupIds", name: "PrivateConnectionSecurityGroupIds")
    PrivateConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#PrivateConnectionStatus", name: "PrivateConnectionStatus")
    PrivateConnectionSubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#PrivateConnectionSubnetId", name: "PrivateConnectionSubnetId")
    PrivateConnectionSubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#PrivateConnectionSubnetIds", name: "PrivateConnectionSubnetIds")
    PrivateConnectionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#PrivateConnectionSummary", name: "PrivateConnectionSummary")
    PrivateConnectionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#PrivateConnectionType", name: "PrivateConnectionType")
    PrivateConnectionVpcId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#PrivateConnectionVpcId", name: "PrivateConnectionVpcId")
    Provider = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#Provider", name: "Provider")
    ProviderInput = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.securityagent#ProviderInput", name: "ProviderInput")
    ProviderResourceCapabilities = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.securityagent#ProviderResourceCapabilities", name: "ProviderResourceCapabilities")
    ProviderResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ProviderResourceId", name: "ProviderResourceId")
    ProviderResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ProviderResourceName", name: "ProviderResourceName")
    ProviderType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ProviderType", name: "ProviderType")
    ReportDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ReportDestination", name: "ReportDestination")
    ReportFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ReportFilterList", name: "ReportFilterList", traits: {"smithy.api#length" => {"max" => 50}})
    ReportFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ReportFilterValue", name: "ReportFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ReportFilters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ReportFilters", name: "ReportFilters")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ResourceArn", name: "ResourceArn")
    ResourceConfigDnsResolution = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ResourceConfigDnsResolution", name: "ResourceConfigDnsResolution")
    ResourceConfigurationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ResourceConfigurationId", name: "ResourceConfigurationId")
    ResourceGatewayId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ResourceGatewayId", name: "ResourceGatewayId")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ResourceType", name: "ResourceType")
    RiskLevel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#RiskLevel", name: "RiskLevel")
    RiskLevelFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#RiskLevelFilterList", name: "RiskLevelFilterList", traits: {"smithy.api#length" => {"max" => 50}})
    RiskType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#RiskType", name: "RiskType")
    RiskTypeFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#RiskTypeFilterList", name: "RiskTypeFilterList", traits: {"smithy.api#length" => {"max" => 50}})
    RiskTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#RiskTypeList", name: "RiskTypeList")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#RoleArn", name: "RoleArn")
    S3BucketArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#S3BucketArn", name: "S3BucketArn")
    S3BucketArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#S3BucketArns", name: "S3BucketArns")
    ScopeChange = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ScopeChange", name: "ScopeChange")
    ScopeChangeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ScopeChangeList", name: "ScopeChangeList")
    ScopeDecision = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ScopeDecision", name: "ScopeDecision")
    ScopeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ScopeResult", name: "ScopeResult")
    SecretArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SecretArn", name: "SecretArn")
    SecretArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#SecretArns", name: "SecretArns")
    SecurityGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SecurityGroupArn", name: "SecurityGroupArn")
    SecurityGroupArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#SecurityGroupArns", name: "SecurityGroupArns")
    SecurityRequirementArtifact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#SecurityRequirementArtifact", name: "SecurityRequirementArtifact")
    SecurityRequirementArtifactFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#SecurityRequirementArtifactFormat", name: "SecurityRequirementArtifactFormat")
    SecurityRequirementArtifactList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#SecurityRequirementArtifactList", name: "SecurityRequirementArtifactList")
    SecurityRequirementArtifactName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SecurityRequirementArtifactName", name: "SecurityRequirementArtifactName")
    SecurityRequirementDocumentContent = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.securityagent#SecurityRequirementDocumentContent", name: "SecurityRequirementDocumentContent", traits: {"smithy.api#sensitive" => {}})
    SecurityRequirementName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SecurityRequirementName", name: "SecurityRequirementName")
    SecurityRequirementNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#SecurityRequirementNameList", name: "SecurityRequirementNameList")
    SecurityRequirementPackId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SecurityRequirementPackId", name: "SecurityRequirementPackId")
    SecurityRequirementPackImportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#SecurityRequirementPackImportStatus", name: "SecurityRequirementPackImportStatus")
    SecurityRequirementPackName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SecurityRequirementPackName", name: "SecurityRequirementPackName")
    SecurityRequirementPackStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#SecurityRequirementPackStatus", name: "SecurityRequirementPackStatus")
    SecurityRequirementPackSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#SecurityRequirementPackSummary", name: "SecurityRequirementPackSummary")
    SecurityRequirementPackSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#SecurityRequirementPackSummaryList", name: "SecurityRequirementPackSummaryList")
    SecurityRequirementSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#SecurityRequirementSummary", name: "SecurityRequirementSummary")
    SecurityRequirementSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#SecurityRequirementSummaryList", name: "SecurityRequirementSummaryList")
    SelfManagedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#SelfManagedInput", name: "SelfManagedInput")
    SensitiveEmail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SensitiveEmail", name: "SensitiveEmail")
    SensitiveEmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SensitiveEmailAddress", name: "SensitiveEmailAddress", traits: {"smithy.api#sensitive" => {}})
    SensitiveMessageBody = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SensitiveMessageBody", name: "SensitiveMessageBody", traits: {"smithy.api#sensitive" => {}})
    SensitiveMessageSender = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SensitiveMessageSender", name: "SensitiveMessageSender", traits: {"smithy.api#sensitive" => {}})
    SensitiveMessageSubject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SensitiveMessageSubject", name: "SensitiveMessageSubject", traits: {"smithy.api#sensitive" => {}})
    ServiceManagedInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ServiceManagedInput", name: "ServiceManagedInput")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#ServiceRole", name: "ServiceRole")
    SkillType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#SkillType", name: "SkillType")
    SkillTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#SkillTypeList", name: "SkillTypeList")
    SourceCodeRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#SourceCodeRepository", name: "SourceCodeRepository")
    SourceCodeRepositoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#SourceCodeRepositoryList", name: "SourceCodeRepositoryList")
    StartCodeRemediationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StartCodeRemediationInput", name: "StartCodeRemediationInput")
    StartCodeRemediationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StartCodeRemediationOutput", name: "StartCodeRemediationOutput")
    StartCodeReviewJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StartCodeReviewJobInput", name: "StartCodeReviewJobInput")
    StartCodeReviewJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StartCodeReviewJobOutput", name: "StartCodeReviewJobOutput")
    StartPentestJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StartPentestJobInput", name: "StartPentestJobInput")
    StartPentestJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StartPentestJobOutput", name: "StartPentestJobOutput")
    StartThreatModelJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StartThreatModelJobInput", name: "StartThreatModelJobInput")
    StartThreatModelJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StartThreatModelJobOutput", name: "StartThreatModelJobOutput")
    Step = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#Step", name: "Step")
    StepList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#StepList", name: "StepList")
    StepName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#StepName", name: "StepName")
    StepStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#StepStatus", name: "StepStatus")
    StopCodeReviewJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StopCodeReviewJobInput", name: "StopCodeReviewJobInput")
    StopCodeReviewJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StopCodeReviewJobOutput", name: "StopCodeReviewJobOutput")
    StopPentestJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StopPentestJobInput", name: "StopPentestJobInput")
    StopPentestJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StopPentestJobOutput", name: "StopPentestJobOutput")
    StopThreatModelJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StopThreatModelJobInput", name: "StopThreatModelJobInput")
    StopThreatModelJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#StopThreatModelJobOutput", name: "StopThreatModelJobOutput")
    StrideCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#StrideCategory", name: "StrideCategory")
    StrideCategoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#StrideCategoryList", name: "StrideCategoryList")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#StringList", name: "StringList")
    SubnetArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#SubnetArn", name: "SubnetArn")
    SubnetArns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#SubnetArns", name: "SubnetArns")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#TagKey", name: "TagKey")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TagKeyList", name: "TagKeyList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.securityagent#TagMap", name: "TagMap")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#TagValue", name: "TagValue")
    TargetDomain = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#TargetDomain", name: "TargetDomain")
    TargetDomainId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#TargetDomainId", name: "TargetDomainId")
    TargetDomainIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TargetDomainIdList", name: "TargetDomainIdList")
    TargetDomainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TargetDomainList", name: "TargetDomainList")
    TargetDomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#TargetDomainStatus", name: "TargetDomainStatus")
    TargetDomainSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#TargetDomainSummary", name: "TargetDomainSummary")
    TargetDomainSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TargetDomainSummaryList", name: "TargetDomainSummaryList")
    TargetUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#TargetUrl", name: "TargetUrl")
    Task = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#Task", name: "Task")
    TaskExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#TaskExecutionStatus", name: "TaskExecutionStatus")
    TaskExecutionStatusFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TaskExecutionStatusFilterList", name: "TaskExecutionStatusFilterList", traits: {"smithy.api#length" => {"max" => 50}})
    TaskIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TaskIdList", name: "TaskIdList")
    TaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TaskList", name: "TaskList")
    TaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#TaskSummary", name: "TaskSummary")
    TaskSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TaskSummaryList", name: "TaskSummaryList")
    TestScope = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#TestScope", name: "TestScope")
    TestScopeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#TestScopeType", name: "TestScopeType")
    Threat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#Threat", name: "Threat")
    ThreatActor = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ThreatActor", name: "ThreatActor")
    ThreatAnchorShape = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ThreatAnchorShape", name: "ThreatAnchorShape")
    ThreatEvidenceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatEvidenceList", name: "ThreatEvidenceList")
    ThreatEvidenceShape = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ThreatEvidenceShape", name: "ThreatEvidenceShape")
    ThreatIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatIdList", name: "ThreatIdList")
    ThreatList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatList", name: "ThreatList")
    ThreatModel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ThreatModel", name: "ThreatModel")
    ThreatModelIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatModelIdList", name: "ThreatModelIdList")
    ThreatModelJob = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ThreatModelJob", name: "ThreatModelJob")
    ThreatModelJobIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatModelJobIdList", name: "ThreatModelJobIdList")
    ThreatModelJobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatModelJobList", name: "ThreatModelJobList")
    ThreatModelJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ThreatModelJobSummary", name: "ThreatModelJobSummary")
    ThreatModelJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatModelJobSummaryList", name: "ThreatModelJobSummaryList")
    ThreatModelJobTask = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ThreatModelJobTask", name: "ThreatModelJobTask")
    ThreatModelJobTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatModelJobTaskList", name: "ThreatModelJobTaskList")
    ThreatModelJobTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ThreatModelJobTaskSummary", name: "ThreatModelJobTaskSummary")
    ThreatModelJobTaskSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatModelJobTaskSummaryList", name: "ThreatModelJobTaskSummaryList")
    ThreatModelList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatModelList", name: "ThreatModelList")
    ThreatModelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ThreatModelSummary", name: "ThreatModelSummary")
    ThreatModelSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatModelSummaryList", name: "ThreatModelSummaryList")
    ThreatSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ThreatSeverity", name: "ThreatSeverity")
    ThreatStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ThreatStatus", name: "ThreatStatus")
    ThreatSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ThreatSummary", name: "ThreatSummary")
    ThreatSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ThreatSummaryList", name: "ThreatSummaryList")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TriggerEvent = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#TriggerEvent", name: "TriggerEvent")
    TriggerEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TriggerEventList", name: "TriggerEventList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    TriggerFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#TriggerFilter", name: "TriggerFilter")
    TriggerFilterGroup = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#TriggerFilterGroup", name: "TriggerFilterGroup")
    TriggerFilterGroups = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TriggerFilterGroups", name: "TriggerFilterGroups", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TriggerFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TriggerFilterList", name: "TriggerFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    TriggerFilterMatchMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#TriggerFilterMatchMode", name: "TriggerFilterMatchMode")
    TriggerFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#TriggerFilterType", name: "TriggerFilterType")
    TriggerRegexPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#TriggerRegexPattern", name: "TriggerRegexPattern", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\x00-\\x1F\\x7F-\\x9F]+$"})
    TriggerRegexPatternList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TriggerRegexPatternList", name: "TriggerRegexPatternList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    TrustedCaCertificate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#TrustedCaCertificate", name: "TrustedCaCertificate", traits: {"smithy.api#sensitive" => {}})
    TrustedCaCertificateList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#TrustedCaCertificateList", name: "TrustedCaCertificateList")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateAgentSpaceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateAgentSpaceInput", name: "UpdateAgentSpaceInput")
    UpdateAgentSpaceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateAgentSpaceOutput", name: "UpdateAgentSpaceOutput")
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateApplicationRequest", name: "UpdateApplicationRequest")
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateApplicationResponse", name: "UpdateApplicationResponse")
    UpdateCodeReviewInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateCodeReviewInput", name: "UpdateCodeReviewInput")
    UpdateCodeReviewOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateCodeReviewOutput", name: "UpdateCodeReviewOutput")
    UpdateFindingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateFindingInput", name: "UpdateFindingInput")
    UpdateFindingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateFindingOutput", name: "UpdateFindingOutput")
    UpdateIntegratedResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateIntegratedResourcesInput", name: "UpdateIntegratedResourcesInput")
    UpdateIntegratedResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateIntegratedResourcesOutput", name: "UpdateIntegratedResourcesOutput")
    UpdateIntegrationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateIntegrationInput", name: "UpdateIntegrationInput")
    UpdateIntegrationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateIntegrationOutput", name: "UpdateIntegrationOutput")
    UpdatePentestInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdatePentestInput", name: "UpdatePentestInput")
    UpdatePentestOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdatePentestOutput", name: "UpdatePentestOutput")
    UpdatePrivateConnectionCertificateInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdatePrivateConnectionCertificateInput", name: "UpdatePrivateConnectionCertificateInput")
    UpdatePrivateConnectionCertificateOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdatePrivateConnectionCertificateOutput", name: "UpdatePrivateConnectionCertificateOutput")
    UpdateSecurityRequirementEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateSecurityRequirementEntry", name: "UpdateSecurityRequirementEntry")
    UpdateSecurityRequirementEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#UpdateSecurityRequirementEntryList", name: "UpdateSecurityRequirementEntryList")
    UpdateSecurityRequirementPackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateSecurityRequirementPackInput", name: "UpdateSecurityRequirementPackInput")
    UpdateSecurityRequirementPackOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateSecurityRequirementPackOutput", name: "UpdateSecurityRequirementPackOutput")
    UpdateTargetDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateTargetDomainInput", name: "UpdateTargetDomainInput")
    UpdateTargetDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateTargetDomainOutput", name: "UpdateTargetDomainOutput")
    UpdateThreatInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateThreatInput", name: "UpdateThreatInput")
    UpdateThreatModelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateThreatModelInput", name: "UpdateThreatModelInput")
    UpdateThreatModelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateThreatModelOutput", name: "UpdateThreatModelOutput")
    UpdateThreatOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UpdateThreatOutput", name: "UpdateThreatOutput")
    UriList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#UriList", name: "UriList")
    UserConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UserConfig", name: "UserConfig")
    UserMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#UserMetadata", name: "UserMetadata")
    UserRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#UserRole", name: "UserRole")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ValidationMode", name: "ValidationMode")
    ValidationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#ValidationStatus", name: "ValidationStatus")
    VerificationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#VerificationDetails", name: "VerificationDetails")
    VerificationScript = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#VerificationScript", name: "VerificationScript")
    VerificationScriptEnvVar = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#VerificationScriptEnvVar", name: "VerificationScriptEnvVar")
    VerificationScriptEnvVarList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#VerificationScriptEnvVarList", name: "VerificationScriptEnvVarList")
    VerifyTargetDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#VerifyTargetDomainInput", name: "VerifyTargetDomainInput")
    VerifyTargetDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#VerifyTargetDomainOutput", name: "VerifyTargetDomainOutput")
    VpcArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#VpcArn", name: "VpcArn")
    VpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.securityagent#VpcConfig", name: "VpcConfig")
    VpcConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.securityagent#VpcConfigs", name: "VpcConfigs")
    WebhookAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.securityagent#WebhookAction", name: "WebhookAction")
    WebhookSecret = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.securityagent#WebhookSecret", name: "WebhookSecret", traits: {"smithy.api#sensitive" => {}})

    AWSResources.add_member(:vpcs, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigs, name: "vpcs"))
    AWSResources.add_member(:log_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArns, name: "logGroups"))
    AWSResources.add_member(:s3_buckets, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketArns, name: "s3Buckets"))
    AWSResources.add_member(:secret_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArns, name: "secretArns"))
    AWSResources.add_member(:lambda_function_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionArns, name: "lambdaFunctionArns"))
    AWSResources.add_member(:iam_roles, ::Smithy::Schema::Shapes::MemberShape.new(target: IamRoles, name: "iamRoles"))
    AWSResources.type = Types::AWSResources
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessType.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    AccessType.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    Actor.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "identifier"))
    Actor.add_member(:uris, ::Smithy::Schema::Shapes::MemberShape.new(target: UriList, name: "uris"))
    Actor.add_member(:authentication, ::Smithy::Schema::Shapes::MemberShape.new(target: Authentication, name: "authentication"))
    Actor.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    Actor.add_member(:enable_email_mfa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enableEmailMfa"))
    Actor.add_member(:mfa_forwarding_address, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveEmailAddress, name: "mfaForwardingAddress"))
    Actor.type = Types::Actor
    ActorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Actor, name: "member"))
    ActorMessage.add_member(:sender, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveMessageSender, name: "sender"))
    ActorMessage.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveMessageSubject, name: "subject"))
    ActorMessage.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveMessageBody, name: "body"))
    ActorMessage.add_member(:received_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "receivedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ActorMessage.type = Types::ActorMessage
    ActorMessageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorMessage, name: "member"))
    AddArtifactInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    AddArtifactInput.add_member(:artifact_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "artifactContent", traits: {"smithy.api#required" => {}}))
    AddArtifactInput.add_member(:artifact_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactType, name: "artifactType", traits: {"smithy.api#required" => {}}))
    AddArtifactInput.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fileName", traits: {"smithy.api#required" => {}}))
    AddArtifactInput.type = Types::AddArtifactInput
    AddArtifactOutput.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, name: "artifactId", traits: {"smithy.api#required" => {}}))
    AddArtifactOutput.type = Types::AddArtifactOutput
    AgentSpace.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    AgentSpace.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    AgentSpace.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    AgentSpace.add_member(:aws_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSResources, name: "awsResources"))
    AgentSpace.add_member(:target_domain_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainIdList, name: "targetDomainIds"))
    AgentSpace.add_member(:code_review_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewSettings, name: "codeReviewSettings"))
    AgentSpace.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    AgentSpace.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AgentSpace.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AgentSpace.type = Types::AgentSpace
    AgentSpaceIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "member"))
    AgentSpaceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpace, name: "member"))
    AgentSpaceSummary.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    AgentSpaceSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name", traits: {"smithy.api#required" => {}}))
    AgentSpaceSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AgentSpaceSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    AgentSpaceSummary.type = Types::AgentSpaceSummary
    AgentSpaceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceSummary, name: "member"))
    ApplicationSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "applicationName", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDomain, name: "domain", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:default_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultKmsKeyId, name: "defaultKmsKeyId"))
    ApplicationSummary.type = Types::ApplicationSummary
    ApplicationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary, name: "member"))
    Artifact.add_member(:contents, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contents", traits: {"smithy.api#required" => {}}))
    Artifact.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactType, name: "type", traits: {"smithy.api#required" => {}}))
    Artifact.type = Types::Artifact
    ArtifactIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, name: "member"))
    ArtifactMetadataItem.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ArtifactMetadataItem.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, name: "artifactId", traits: {"smithy.api#required" => {}}))
    ArtifactMetadataItem.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fileName", traits: {"smithy.api#required" => {}}))
    ArtifactMetadataItem.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ArtifactMetadataItem.type = Types::ArtifactMetadataItem
    ArtifactMetadataList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactMetadataItem, name: "member"))
    ArtifactSummary.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, name: "artifactId", traits: {"smithy.api#required" => {}}))
    ArtifactSummary.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fileName", traits: {"smithy.api#required" => {}}))
    ArtifactSummary.add_member(:artifact_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactType, name: "artifactType", traits: {"smithy.api#required" => {}}))
    ArtifactSummary.type = Types::ArtifactSummary
    ArtifactSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactSummary, name: "member"))
    ArtifactType.add_member(:txt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TXT", traits: {"smithy.api#enumValue" => "TXT"}))
    ArtifactType.add_member(:png, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PNG", traits: {"smithy.api#enumValue" => "PNG"}))
    ArtifactType.add_member(:jpeg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JPEG", traits: {"smithy.api#enumValue" => "JPEG"}))
    ArtifactType.add_member(:md, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MD", traits: {"smithy.api#enumValue" => "MD"}))
    ArtifactType.add_member(:pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PDF", traits: {"smithy.api#enumValue" => "PDF"}))
    ArtifactType.add_member(:docx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCX", traits: {"smithy.api#enumValue" => "DOCX"}))
    ArtifactType.add_member(:doc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOC", traits: {"smithy.api#enumValue" => "DOC"}))
    ArtifactType.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    ArtifactType.add_member(:yaml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YAML", traits: {"smithy.api#enumValue" => "YAML"}))
    Assets.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointList, name: "endpoints"))
    Assets.add_member(:actors, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorList, name: "actors"))
    Assets.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "documents"))
    Assets.add_member(:source_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeRepositoryList, name: "sourceCode"))
    Assets.add_member(:integrated_repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedRepositoryList, name: "integratedRepositories"))
    Assets.add_member(:trusted_ca_certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedCaCertificateList, name: "trustedCaCertificates"))
    Assets.type = Types::Assets
    Authentication.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationProviderType, name: "providerType"))
    Authentication.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    Authentication.type = Types::Authentication
    AuthenticationProviderType.add_member(:secrets_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECRETS_MANAGER", traits: {"smithy.api#enumValue" => "SECRETS_MANAGER"}))
    AuthenticationProviderType.add_member(:aws_lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_LAMBDA", traits: {"smithy.api#enumValue" => "AWS_LAMBDA"}))
    AuthenticationProviderType.add_member(:aws_iam_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_IAM_ROLE", traits: {"smithy.api#enumValue" => "AWS_IAM_ROLE"}))
    AuthenticationProviderType.add_member(:aws_internal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_INTERNAL", traits: {"smithy.api#enumValue" => "AWS_INTERNAL"}))
    AzureDevOpsIntegrationInput.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthCode, name: "code", traits: {"smithy.api#required" => {}}))
    AzureDevOpsIntegrationInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CsrfState, name: "state", traits: {"smithy.api#required" => {}}))
    AzureDevOpsIntegrationInput.add_member(:organization_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "organizationName", traits: {"smithy.api#required" => {}}))
    AzureDevOpsIntegrationInput.type = Types::AzureDevOpsIntegrationInput
    AzureDevOpsRepositoryMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    AzureDevOpsRepositoryMetadata.add_member(:provider_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceId, name: "providerResourceId", traits: {"smithy.api#required" => {}}))
    AzureDevOpsRepositoryMetadata.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureDevOpsOrganization, name: "organization", traits: {"smithy.api#required" => {}}))
    AzureDevOpsRepositoryMetadata.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "project"))
    AzureDevOpsRepositoryMetadata.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectId"))
    AzureDevOpsRepositoryMetadata.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "accessType"))
    AzureDevOpsRepositoryMetadata.type = Types::AzureDevOpsRepositoryMetadata
    AzureDevOpsRepositoryResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    AzureDevOpsRepositoryResource.add_member(:organization, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureDevOpsOrganization, name: "organization", traits: {"smithy.api#required" => {}}))
    AzureDevOpsRepositoryResource.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "project"))
    AzureDevOpsRepositoryResource.type = Types::AzureDevOpsRepositoryResource
    AzureDevOpsResourceCapabilities.add_member(:trigger_filter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerFilterGroups, name: "triggerFilterGroups"))
    AzureDevOpsResourceCapabilities.add_member(:leave_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "leaveComments"))
    AzureDevOpsResourceCapabilities.add_member(:remediate_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "remediateCode"))
    AzureDevOpsResourceCapabilities.type = Types::AzureDevOpsResourceCapabilities
    BatchCreateSecurityRequirementResult.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    BatchCreateSecurityRequirementResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementName, name: "name", traits: {"smithy.api#required" => {}}))
    BatchCreateSecurityRequirementResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    BatchCreateSecurityRequirementResult.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domain", traits: {"smithy.api#required" => {}}))
    BatchCreateSecurityRequirementResult.add_member(:evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "evaluation", traits: {"smithy.api#required" => {}}))
    BatchCreateSecurityRequirementResult.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "remediation"))
    BatchCreateSecurityRequirementResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    BatchCreateSecurityRequirementResult.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    BatchCreateSecurityRequirementResult.type = Types::BatchCreateSecurityRequirementResult
    BatchCreateSecurityRequirementResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateSecurityRequirementResult, name: "member"))
    BatchCreateSecurityRequirementsInput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    BatchCreateSecurityRequirementsInput.add_member(:security_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateSecurityRequirementEntryList, name: "securityRequirements", traits: {"smithy.api#required" => {}}))
    BatchCreateSecurityRequirementsInput.type = Types::BatchCreateSecurityRequirementsInput
    BatchCreateSecurityRequirementsOutput.add_member(:security_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchCreateSecurityRequirementResultList, name: "securityRequirements", traits: {"smithy.api#required" => {}}))
    BatchCreateSecurityRequirementsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSecurityRequirementErrors, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchCreateSecurityRequirementsOutput.type = Types::BatchCreateSecurityRequirementsOutput
    BatchDeleteCodeReviewsInput.add_member(:code_review_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewIdList, name: "codeReviewIds", traits: {"smithy.api#required" => {}}))
    BatchDeleteCodeReviewsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchDeleteCodeReviewsInput.type = Types::BatchDeleteCodeReviewsInput
    BatchDeleteCodeReviewsOutput.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewIdList, name: "deleted"))
    BatchDeleteCodeReviewsOutput.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteCodeReviewFailureList, name: "failed"))
    BatchDeleteCodeReviewsOutput.type = Types::BatchDeleteCodeReviewsOutput
    BatchDeletePentestsInput.add_member(:pentest_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestIdList, name: "pentestIds", traits: {"smithy.api#required" => {}}))
    BatchDeletePentestsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchDeletePentestsInput.type = Types::BatchDeletePentestsInput
    BatchDeletePentestsOutput.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestList, name: "deleted"))
    BatchDeletePentestsOutput.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletePentestFailureList, name: "failed"))
    BatchDeletePentestsOutput.type = Types::BatchDeletePentestsOutput
    BatchDeleteSecurityRequirementsInput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    BatchDeleteSecurityRequirementsInput.add_member(:security_requirement_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementNameList, name: "securityRequirementNames", traits: {"smithy.api#required" => {}}))
    BatchDeleteSecurityRequirementsInput.type = Types::BatchDeleteSecurityRequirementsInput
    BatchDeleteSecurityRequirementsOutput.add_member(:deleted_security_requirement_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementNameList, name: "deletedSecurityRequirementNames", traits: {"smithy.api#required" => {}}))
    BatchDeleteSecurityRequirementsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSecurityRequirementErrors, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchDeleteSecurityRequirementsOutput.type = Types::BatchDeleteSecurityRequirementsOutput
    BatchDeleteThreatModelsInput.add_member(:threat_model_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelIdList, name: "threatModelIds", traits: {"smithy.api#required" => {}}))
    BatchDeleteThreatModelsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchDeleteThreatModelsInput.type = Types::BatchDeleteThreatModelsInput
    BatchDeleteThreatModelsOutput.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelIdList, name: "deleted"))
    BatchDeleteThreatModelsOutput.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteThreatModelFailureList, name: "failed"))
    BatchDeleteThreatModelsOutput.type = Types::BatchDeleteThreatModelsOutput
    BatchDisassociateFindingIssueError.add_member(:finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "findingId", traits: {"smithy.api#required" => {}}))
    BatchDisassociateFindingIssueError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    BatchDisassociateFindingIssueError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#length" => {"max" => 300}, "smithy.api#required" => {}}))
    BatchDisassociateFindingIssueError.type = Types::BatchDisassociateFindingIssueError
    BatchDisassociateFindingIssueErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDisassociateFindingIssueError, name: "member"))
    BatchDisassociateFindingIssueInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchDisassociateFindingIssueInput.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId"))
    BatchDisassociateFindingIssueInput.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId"))
    BatchDisassociateFindingIssueInput.add_member(:finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIdList, name: "findingIds", traits: {"smithy.api#required" => {}}))
    BatchDisassociateFindingIssueInput.type = Types::BatchDisassociateFindingIssueInput
    BatchDisassociateFindingIssueOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchDisassociateFindingIssueErrors, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchDisassociateFindingIssueOutput.type = Types::BatchDisassociateFindingIssueOutput
    BatchExportFindingError.add_member(:finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "findingId", traits: {"smithy.api#required" => {}}))
    BatchExportFindingError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code", traits: {"smithy.api#required" => {}}))
    BatchExportFindingError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#length" => {"max" => 300}, "smithy.api#required" => {}}))
    BatchExportFindingError.type = Types::BatchExportFindingError
    BatchExportFindingErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchExportFindingError, name: "member"))
    BatchExportFindingResult.add_member(:finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "findingId", traits: {"smithy.api#required" => {}}))
    BatchExportFindingResult.add_member(:linked_issue, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedIssue, name: "linkedIssue", traits: {"smithy.api#required" => {}}))
    BatchExportFindingResult.type = Types::BatchExportFindingResult
    BatchExportFindingResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchExportFindingResult, name: "member"))
    BatchExportFindingsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchExportFindingsInput.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId"))
    BatchExportFindingsInput.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId"))
    BatchExportFindingsInput.add_member(:issue_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: IssueDestination, name: "issueDestination", traits: {"smithy.api#required" => {}}))
    BatchExportFindingsInput.add_member(:finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIdList, name: "findingIds", traits: {"smithy.api#required" => {}}))
    BatchExportFindingsInput.type = Types::BatchExportFindingsInput
    BatchExportFindingsOutput.add_member(:results, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchExportFindingResultList, name: "results", traits: {"smithy.api#required" => {}}))
    BatchExportFindingsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchExportFindingErrorList, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchExportFindingsOutput.type = Types::BatchExportFindingsOutput
    BatchGetAgentSpacesInput.add_member(:agent_space_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdList, name: "agentSpaceIds", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    BatchGetAgentSpacesInput.type = Types::BatchGetAgentSpacesInput
    BatchGetAgentSpacesOutput.add_member(:agent_spaces, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceList, name: "agentSpaces", traits: {"smithy.api#notProperty" => {}}))
    BatchGetAgentSpacesOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceIdList, name: "notFound", traits: {"smithy.api#notProperty" => {}}))
    BatchGetAgentSpacesOutput.type = Types::BatchGetAgentSpacesOutput
    BatchGetArtifactMetadataInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetArtifactMetadataInput.add_member(:artifact_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactIds, name: "artifactIds", traits: {"smithy.api#required" => {}}))
    BatchGetArtifactMetadataInput.type = Types::BatchGetArtifactMetadataInput
    BatchGetArtifactMetadataOutput.add_member(:artifact_metadata_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactMetadataList, name: "artifactMetadataList", traits: {"smithy.api#required" => {}}))
    BatchGetArtifactMetadataOutput.type = Types::BatchGetArtifactMetadataOutput
    BatchGetCodeReviewJobTasksInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetCodeReviewJobTasksInput.add_member(:code_review_job_task_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdList, name: "codeReviewJobTaskIds", traits: {"smithy.api#required" => {}}))
    BatchGetCodeReviewJobTasksInput.type = Types::BatchGetCodeReviewJobTasksInput
    BatchGetCodeReviewJobTasksOutput.add_member(:code_review_job_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewJobTaskList, name: "codeReviewJobTasks"))
    BatchGetCodeReviewJobTasksOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdList, name: "notFound"))
    BatchGetCodeReviewJobTasksOutput.type = Types::BatchGetCodeReviewJobTasksOutput
    BatchGetCodeReviewJobsInput.add_member(:code_review_job_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewJobIdList, name: "codeReviewJobIds", traits: {"smithy.api#required" => {}}))
    BatchGetCodeReviewJobsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetCodeReviewJobsInput.type = Types::BatchGetCodeReviewJobsInput
    BatchGetCodeReviewJobsOutput.add_member(:code_review_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewJobList, name: "codeReviewJobs"))
    BatchGetCodeReviewJobsOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewJobIdList, name: "notFound"))
    BatchGetCodeReviewJobsOutput.type = Types::BatchGetCodeReviewJobsOutput
    BatchGetCodeReviewsInput.add_member(:code_review_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewIdList, name: "codeReviewIds", traits: {"smithy.api#required" => {}}))
    BatchGetCodeReviewsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetCodeReviewsInput.type = Types::BatchGetCodeReviewsInput
    BatchGetCodeReviewsOutput.add_member(:code_reviews, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewList, name: "codeReviews"))
    BatchGetCodeReviewsOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewIdList, name: "notFound"))
    BatchGetCodeReviewsOutput.type = Types::BatchGetCodeReviewsOutput
    BatchGetFindingsInput.add_member(:finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIdList, name: "findingIds", traits: {"smithy.api#required" => {}}))
    BatchGetFindingsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetFindingsInput.type = Types::BatchGetFindingsInput
    BatchGetFindingsOutput.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingList, name: "findings"))
    BatchGetFindingsOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIdList, name: "notFound"))
    BatchGetFindingsOutput.type = Types::BatchGetFindingsOutput
    BatchGetPentestJobTasksInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetPentestJobTasksInput.add_member(:task_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdList, name: "taskIds", traits: {"smithy.api#required" => {}}))
    BatchGetPentestJobTasksInput.type = Types::BatchGetPentestJobTasksInput
    BatchGetPentestJobTasksOutput.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskList, name: "tasks"))
    BatchGetPentestJobTasksOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdList, name: "notFound"))
    BatchGetPentestJobTasksOutput.type = Types::BatchGetPentestJobTasksOutput
    BatchGetPentestJobsInput.add_member(:pentest_job_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestJobIdList, name: "pentestJobIds", traits: {"smithy.api#required" => {}}))
    BatchGetPentestJobsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetPentestJobsInput.type = Types::BatchGetPentestJobsInput
    BatchGetPentestJobsOutput.add_member(:pentest_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestJobList, name: "pentestJobs"))
    BatchGetPentestJobsOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestJobIdList, name: "notFound"))
    BatchGetPentestJobsOutput.type = Types::BatchGetPentestJobsOutput
    BatchGetPentestsInput.add_member(:pentest_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestIdList, name: "pentestIds", traits: {"smithy.api#required" => {}}))
    BatchGetPentestsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetPentestsInput.type = Types::BatchGetPentestsInput
    BatchGetPentestsOutput.add_member(:pentests, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestList, name: "pentests"))
    BatchGetPentestsOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestIdList, name: "notFound"))
    BatchGetPentestsOutput.type = Types::BatchGetPentestsOutput
    BatchGetSecurityRequirementResult.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    BatchGetSecurityRequirementResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementName, name: "name", traits: {"smithy.api#required" => {}}))
    BatchGetSecurityRequirementResult.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    BatchGetSecurityRequirementResult.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domain", traits: {"smithy.api#required" => {}}))
    BatchGetSecurityRequirementResult.add_member(:evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "evaluation", traits: {"smithy.api#required" => {}}))
    BatchGetSecurityRequirementResult.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "remediation"))
    BatchGetSecurityRequirementResult.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    BatchGetSecurityRequirementResult.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    BatchGetSecurityRequirementResult.type = Types::BatchGetSecurityRequirementResult
    BatchGetSecurityRequirementResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetSecurityRequirementResult, name: "member"))
    BatchGetSecurityRequirementsInput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    BatchGetSecurityRequirementsInput.add_member(:security_requirement_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementNameList, name: "securityRequirementNames", traits: {"smithy.api#required" => {}}))
    BatchGetSecurityRequirementsInput.type = Types::BatchGetSecurityRequirementsInput
    BatchGetSecurityRequirementsOutput.add_member(:security_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchGetSecurityRequirementResultList, name: "securityRequirements", traits: {"smithy.api#required" => {}}))
    BatchGetSecurityRequirementsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSecurityRequirementErrors, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchGetSecurityRequirementsOutput.type = Types::BatchGetSecurityRequirementsOutput
    BatchGetTargetDomainsInput.add_member(:target_domain_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainIdList, name: "targetDomainIds", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    BatchGetTargetDomainsInput.type = Types::BatchGetTargetDomainsInput
    BatchGetTargetDomainsOutput.add_member(:target_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainList, name: "targetDomains", traits: {"smithy.api#notProperty" => {}}))
    BatchGetTargetDomainsOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainIdList, name: "notFound", traits: {"smithy.api#notProperty" => {}}))
    BatchGetTargetDomainsOutput.type = Types::BatchGetTargetDomainsOutput
    BatchGetThreatModelJobTasksInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetThreatModelJobTasksInput.add_member(:threat_model_job_task_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdList, name: "threatModelJobTaskIds", traits: {"smithy.api#required" => {}}))
    BatchGetThreatModelJobTasksInput.type = Types::BatchGetThreatModelJobTasksInput
    BatchGetThreatModelJobTasksOutput.add_member(:threat_model_job_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelJobTaskList, name: "threatModelJobTasks"))
    BatchGetThreatModelJobTasksOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdList, name: "notFound"))
    BatchGetThreatModelJobTasksOutput.type = Types::BatchGetThreatModelJobTasksOutput
    BatchGetThreatModelJobsInput.add_member(:threat_model_job_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelJobIdList, name: "threatModelJobIds", traits: {"smithy.api#required" => {}}))
    BatchGetThreatModelJobsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetThreatModelJobsInput.type = Types::BatchGetThreatModelJobsInput
    BatchGetThreatModelJobsOutput.add_member(:threat_model_jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelJobList, name: "threatModelJobs"))
    BatchGetThreatModelJobsOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelJobIdList, name: "notFound"))
    BatchGetThreatModelJobsOutput.type = Types::BatchGetThreatModelJobsOutput
    BatchGetThreatModelsInput.add_member(:threat_model_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelIdList, name: "threatModelIds", traits: {"smithy.api#required" => {}}))
    BatchGetThreatModelsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetThreatModelsInput.type = Types::BatchGetThreatModelsInput
    BatchGetThreatModelsOutput.add_member(:threat_models, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelList, name: "threatModels"))
    BatchGetThreatModelsOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelIdList, name: "notFound"))
    BatchGetThreatModelsOutput.type = Types::BatchGetThreatModelsOutput
    BatchGetThreatsInput.add_member(:threat_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatIdList, name: "threatIds", traits: {"smithy.api#required" => {}}))
    BatchGetThreatsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    BatchGetThreatsInput.type = Types::BatchGetThreatsInput
    BatchGetThreatsOutput.add_member(:threats, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatList, name: "threats"))
    BatchGetThreatsOutput.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatIdList, name: "notFound"))
    BatchGetThreatsOutput.type = Types::BatchGetThreatsOutput
    BatchSecurityRequirementError.add_member(:security_requirement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementName, name: "securityRequirementName", traits: {"smithy.api#required" => {}}))
    BatchSecurityRequirementError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "code", traits: {"smithy.api#required" => {}}))
    BatchSecurityRequirementError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    BatchSecurityRequirementError.type = Types::BatchSecurityRequirementError
    BatchSecurityRequirementErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSecurityRequirementError, name: "member"))
    BatchUpdateSecurityRequirementsInput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    BatchUpdateSecurityRequirementsInput.add_member(:security_requirements, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSecurityRequirementEntryList, name: "securityRequirements", traits: {"smithy.api#required" => {}}))
    BatchUpdateSecurityRequirementsInput.type = Types::BatchUpdateSecurityRequirementsInput
    BatchUpdateSecurityRequirementsOutput.add_member(:updated_security_requirement_names, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementNameList, name: "updatedSecurityRequirementNames", traits: {"smithy.api#required" => {}}))
    BatchUpdateSecurityRequirementsOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: BatchSecurityRequirementErrors, name: "errors", traits: {"smithy.api#required" => {}}))
    BatchUpdateSecurityRequirementsOutput.type = Types::BatchUpdateSecurityRequirementsOutput
    BitbucketDataCenterIntegrationInput.add_member(:target_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetUrl, name: "targetUrl", traits: {"smithy.api#required" => {}}))
    BitbucketDataCenterIntegrationInput.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthCode, name: "code", traits: {"smithy.api#required" => {}}))
    BitbucketDataCenterIntegrationInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CsrfState, name: "state", traits: {"smithy.api#required" => {}}))
    BitbucketDataCenterIntegrationInput.type = Types::BitbucketDataCenterIntegrationInput
    BitbucketIntegrationInput.add_member(:installation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: BitbucketInstallationId, name: "installationId", traits: {"smithy.api#required" => {}}))
    BitbucketIntegrationInput.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: BitbucketWorkspace, name: "workspace", traits: {"smithy.api#required" => {}}))
    BitbucketIntegrationInput.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthCode, name: "code", traits: {"smithy.api#required" => {}}))
    BitbucketIntegrationInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CsrfState, name: "state", traits: {"smithy.api#required" => {}}))
    BitbucketIntegrationInput.type = Types::BitbucketIntegrationInput
    BitbucketRepositoryMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    BitbucketRepositoryMetadata.add_member(:provider_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceId, name: "providerResourceId", traits: {"smithy.api#required" => {}}))
    BitbucketRepositoryMetadata.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: BitbucketWorkspace, name: "workspace", traits: {"smithy.api#required" => {}}))
    BitbucketRepositoryMetadata.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "accessType"))
    BitbucketRepositoryMetadata.type = Types::BitbucketRepositoryMetadata
    BitbucketRepositoryResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    BitbucketRepositoryResource.add_member(:workspace, ::Smithy::Schema::Shapes::MemberShape.new(target: BitbucketWorkspace, name: "workspace", traits: {"smithy.api#required" => {}}))
    BitbucketRepositoryResource.type = Types::BitbucketRepositoryResource
    BitbucketResourceCapabilities.add_member(:trigger_filter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerFilterGroups, name: "triggerFilterGroups"))
    BitbucketResourceCapabilities.add_member(:leave_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "leaveComments"))
    BitbucketResourceCapabilities.add_member(:remediate_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "remediateCode"))
    BitbucketResourceCapabilities.type = Types::BitbucketResourceCapabilities
    CaCertificateSource.add_member(:inline_pem, Types::CaCertificateSource::InlinePem, ::Smithy::Schema::Shapes::MemberShape.new(target: CaCertificatePem, name: "inlinePem"))
    CaCertificateSource.add_member(:artifact_id, Types::CaCertificateSource::ArtifactId, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "artifactId"))
    CaCertificateSource.add_member(:s3_location, Types::CaCertificateSource::S3Location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "s3Location"))
    CaCertificateSource.add_member(:unknown, Types::CaCertificateSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    CaCertificateSource.type = Types::CaCertificateSource
    Category.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    Category.add_member(:is_primary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "isPrimary"))
    Category.type = Types::Category
    CategoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Category, name: "member"))
    CiCdConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    CiCdConfiguration.type = Types::CiCdConfiguration
    CleanUpStrategy.add_member(:best_effort_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEST_EFFORT_DELETE", traits: {"smithy.api#enumValue" => "BEST_EFFORT_DELETE"}))
    CleanUpStrategy.add_member(:retain_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETAIN_ALL", traits: {"smithy.api#enumValue" => "RETAIN_ALL"}))
    CloudWatchLog.add_member(:log_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "logGroup"))
    CloudWatchLog.add_member(:log_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "logStream"))
    CloudWatchLog.type = Types::CloudWatchLog
    CodeLocation.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "filePath", traits: {"smithy.api#required" => {}}))
    CodeLocation.add_member(:line_start, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lineStart"))
    CodeLocation.add_member(:line_end, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "lineEnd"))
    CodeLocation.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "label"))
    CodeLocation.type = Types::CodeLocation
    CodeLocationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeLocation, name: "member"))
    CodeRemediationStrategy.add_member(:automatic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMATIC", traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    CodeRemediationStrategy.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CodeRemediationTask.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationTaskStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CodeRemediationTask.add_member(:status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statusReason"))
    CodeRemediationTask.add_member(:task_details, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationTaskDetailsList, name: "taskDetails"))
    CodeRemediationTask.type = Types::CodeRemediationTask
    CodeRemediationTaskDetails.add_member(:repo_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "repoName"))
    CodeRemediationTaskDetails.add_member(:code_diff_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeDiffLink"))
    CodeRemediationTaskDetails.add_member(:pull_request_link, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pullRequestLink"))
    CodeRemediationTaskDetails.type = Types::CodeRemediationTaskDetails
    CodeRemediationTaskDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationTaskDetails, name: "member"))
    CodeRemediationTaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    CodeRemediationTaskStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    CodeRemediationTaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    CodeReview.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId", traits: {"smithy.api#required" => {}}))
    CodeReview.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    CodeReview.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    CodeReview.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets", traits: {"smithy.api#required" => {}}))
    CodeReview.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    CodeReview.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    CodeReview.add_member(:code_remediation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationStrategy, name: "codeRemediationStrategy"))
    CodeReview.add_member(:validation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMode, name: "validationMode"))
    CodeReview.add_member(:max_task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxTaskHours"))
    CodeReview.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    CodeReview.add_member(:report_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilters, name: "reportFilters"))
    CodeReview.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReview.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReview.type = Types::CodeReview
    CodeReviewIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    CodeReviewJob.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId"))
    CodeReviewJob.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId"))
    CodeReviewJob.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CodeReviewJob.add_member(:overview, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "overview"))
    CodeReviewJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    CodeReviewJob.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "documents"))
    CodeReviewJob.add_member(:source_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeRepositoryList, name: "sourceCode"))
    CodeReviewJob.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: StepList, name: "steps"))
    CodeReviewJob.add_member(:execution_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionContextList, name: "executionContext"))
    CodeReviewJob.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    CodeReviewJob.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    CodeReviewJob.add_member(:error_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInformation, name: "errorInformation"))
    CodeReviewJob.add_member(:integrated_repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedRepositoryList, name: "integratedRepositories"))
    CodeReviewJob.add_member(:code_remediation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationStrategy, name: "codeRemediationStrategy"))
    CodeReviewJob.add_member(:max_task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxTaskHours"))
    CodeReviewJob.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    CodeReviewJob.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReviewJob.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReviewJob.type = Types::CodeReviewJob
    CodeReviewJobIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    CodeReviewJobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewJob, name: "member"))
    CodeReviewJobSummary.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId", traits: {"smithy.api#required" => {}}))
    CodeReviewJobSummary.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId", traits: {"smithy.api#required" => {}}))
    CodeReviewJobSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CodeReviewJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    CodeReviewJobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReviewJobSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReviewJobSummary.type = Types::CodeReviewJobSummary
    CodeReviewJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewJobSummary, name: "member"))
    CodeReviewJobTask.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskId", traits: {"smithy.api#required" => {}}))
    CodeReviewJobTask.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId"))
    CodeReviewJobTask.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId"))
    CodeReviewJobTask.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    CodeReviewJobTask.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CodeReviewJobTask.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CodeReviewJobTask.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "categories"))
    CodeReviewJobTask.add_member(:risk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskType, name: "riskType"))
    CodeReviewJobTask.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionStatus, name: "executionStatus"))
    CodeReviewJobTask.add_member(:logs_location, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLocation, name: "logsLocation"))
    CodeReviewJobTask.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReviewJobTask.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReviewJobTask.type = Types::CodeReviewJobTask
    CodeReviewJobTaskList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewJobTask, name: "member"))
    CodeReviewJobTaskSummary.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskId", traits: {"smithy.api#required" => {}}))
    CodeReviewJobTaskSummary.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId"))
    CodeReviewJobTaskSummary.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId"))
    CodeReviewJobTaskSummary.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    CodeReviewJobTaskSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CodeReviewJobTaskSummary.add_member(:risk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskType, name: "riskType"))
    CodeReviewJobTaskSummary.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionStatus, name: "executionStatus"))
    CodeReviewJobTaskSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReviewJobTaskSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReviewJobTaskSummary.type = Types::CodeReviewJobTaskSummary
    CodeReviewJobTaskSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewJobTaskSummary, name: "member"))
    CodeReviewList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReview, name: "member"))
    CodeReviewSettings.add_member(:controls_scanning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "controlsScanning", traits: {"smithy.api#required" => {}}))
    CodeReviewSettings.add_member(:general_purpose_scanning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "generalPurposeScanning", traits: {"smithy.api#required" => {}}))
    CodeReviewSettings.type = Types::CodeReviewSettings
    CodeReviewSummary.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId", traits: {"smithy.api#required" => {}}))
    CodeReviewSummary.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    CodeReviewSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    CodeReviewSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReviewSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CodeReviewSummary.type = Types::CodeReviewSummary
    CodeReviewSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewSummary, name: "member"))
    ConfidenceLevel.add_member(:false_positive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FALSE_POSITIVE", traits: {"smithy.api#enumValue" => "FALSE_POSITIVE"}))
    ConfidenceLevel.add_member(:unconfirmed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNCONFIRMED", traits: {"smithy.api#enumValue" => "UNCONFIRMED"}))
    ConfidenceLevel.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ConfidenceLevel.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ConfidenceLevel.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ConfidenceLevelFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceLevel, name: "member"))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    ConfluenceDocumentMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    ConfluenceDocumentMetadata.add_member(:provider_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceId, name: "providerResourceId", traits: {"smithy.api#required" => {}}))
    ConfluenceDocumentMetadata.add_member(:space_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "spaceKey", traits: {"smithy.api#required" => {}}))
    ConfluenceDocumentMetadata.add_member(:page_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pageId", traits: {"smithy.api#required" => {}}))
    ConfluenceDocumentMetadata.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    ConfluenceDocumentMetadata.add_member(:space_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "spaceTitle"))
    ConfluenceDocumentMetadata.type = Types::ConfluenceDocumentMetadata
    ConfluenceDocumentResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    ConfluenceDocumentResource.add_member(:space_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "spaceKey", traits: {"smithy.api#required" => {}}))
    ConfluenceDocumentResource.add_member(:page_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pageId", traits: {"smithy.api#required" => {}}))
    ConfluenceDocumentResource.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    ConfluenceDocumentResource.add_member(:space_title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "spaceTitle"))
    ConfluenceDocumentResource.type = Types::ConfluenceDocumentResource
    ConfluenceIntegrationInput.add_member(:installation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceInstallationId, name: "installationId", traits: {"smithy.api#required" => {}}))
    ConfluenceIntegrationInput.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthCode, name: "code", traits: {"smithy.api#required" => {}}))
    ConfluenceIntegrationInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CsrfState, name: "state", traits: {"smithy.api#required" => {}}))
    ConfluenceIntegrationInput.add_member(:site_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceSiteUrl, name: "siteUrl", traits: {"smithy.api#required" => {}}))
    ConfluenceIntegrationInput.type = Types::ConfluenceIntegrationInput
    ConfluenceResourceCapabilities.add_member(:fetch_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "fetchDocument"))
    ConfluenceResourceCapabilities.add_member(:create_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createDocument"))
    ConfluenceResourceCapabilities.add_member(:update_document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "updateDocument"))
    ConfluenceResourceCapabilities.type = Types::ConfluenceResourceCapabilities
    ContextType.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    ContextType.add_member(:client_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_ERROR", traits: {"smithy.api#enumValue" => "CLIENT_ERROR"}))
    ContextType.add_member(:warning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WARNING", traits: {"smithy.api#enumValue" => "WARNING"}))
    ContextType.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    CreateAgentSpaceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAgentSpaceInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateAgentSpaceInput.add_member(:aws_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSResources, name: "awsResources"))
    CreateAgentSpaceInput.add_member(:target_domain_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainIdList, name: "targetDomainIds"))
    CreateAgentSpaceInput.add_member(:code_review_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewSettings, name: "codeReviewSettings"))
    CreateAgentSpaceInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateAgentSpaceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateAgentSpaceInput.type = Types::CreateAgentSpaceInput
    CreateAgentSpaceOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateAgentSpaceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateAgentSpaceOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateAgentSpaceOutput.add_member(:aws_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSResources, name: "awsResources"))
    CreateAgentSpaceOutput.add_member(:target_domain_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainIdList, name: "targetDomainIds"))
    CreateAgentSpaceOutput.add_member(:code_review_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewSettings, name: "codeReviewSettings"))
    CreateAgentSpaceOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateAgentSpaceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateAgentSpaceOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateAgentSpaceOutput.type = Types::CreateAgentSpaceOutput
    CreateApplicationRequest.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdCInstanceArn, name: "idcInstanceArn", traits: {"smithy.api#notProperty" => {}}))
    CreateApplicationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    CreateApplicationRequest.add_member(:default_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultKmsKeyId, name: "defaultKmsKeyId"))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    CreateCodeReviewInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    CreateCodeReviewInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    CreateCodeReviewInput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets", traits: {"smithy.api#required" => {}}))
    CreateCodeReviewInput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    CreateCodeReviewInput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    CreateCodeReviewInput.add_member(:code_remediation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationStrategy, name: "codeRemediationStrategy"))
    CreateCodeReviewInput.add_member(:validation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMode, name: "validationMode"))
    CreateCodeReviewInput.add_member(:max_task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxTaskHours"))
    CreateCodeReviewInput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    CreateCodeReviewInput.add_member(:report_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilters, name: "reportFilters"))
    CreateCodeReviewInput.type = Types::CreateCodeReviewInput
    CreateCodeReviewOutput.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId", traits: {"smithy.api#required" => {}}))
    CreateCodeReviewOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CreateCodeReviewOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateCodeReviewOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateCodeReviewOutput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets"))
    CreateCodeReviewOutput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    CreateCodeReviewOutput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    CreateCodeReviewOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    CreateCodeReviewOutput.add_member(:code_remediation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationStrategy, name: "codeRemediationStrategy"))
    CreateCodeReviewOutput.add_member(:validation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMode, name: "validationMode"))
    CreateCodeReviewOutput.add_member(:max_task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxTaskHours"))
    CreateCodeReviewOutput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    CreateCodeReviewOutput.add_member(:report_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilters, name: "reportFilters"))
    CreateCodeReviewOutput.type = Types::CreateCodeReviewOutput
    CreateIntegrationInput.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider", traits: {"smithy.api#required" => {}}))
    CreateIntegrationInput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderInput, name: "input", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateIntegrationInput.add_member(:integration_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "integrationDisplayName", traits: {"smithy.api#property" => {"name" => "displayName"}, "smithy.api#required" => {}}))
    CreateIntegrationInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateIntegrationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateIntegrationInput.add_member(:private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "privateConnectionName"))
    CreateIntegrationInput.type = Types::CreateIntegrationInput
    CreateIntegrationOutput.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationId, name: "integrationId", traits: {"smithy.api#required" => {}}))
    CreateIntegrationOutput.type = Types::CreateIntegrationOutput
    CreateMembershipRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}}))
    CreateMembershipRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    CreateMembershipRequest.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipId, name: "membershipId", traits: {"smithy.api#required" => {}}))
    CreateMembershipRequest.add_member(:member_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, name: "memberType", traits: {"smithy.api#required" => {}}))
    CreateMembershipRequest.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipConfig, name: "config"))
    CreateMembershipRequest.type = Types::CreateMembershipRequest
    CreateMembershipResponse.type = Types::CreateMembershipResponse
    CreatePentestInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    CreatePentestInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    CreatePentestInput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets"))
    CreatePentestInput.add_member(:exclude_risk_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskTypeList, name: "excludeRiskTypes"))
    CreatePentestInput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    CreatePentestInput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    CreatePentestInput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    CreatePentestInput.add_member(:network_traffic_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTrafficConfig, name: "networkTrafficConfig"))
    CreatePentestInput.add_member(:code_remediation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationStrategy, name: "codeRemediationStrategy"))
    CreatePentestInput.add_member(:disable_managed_skills, ::Smithy::Schema::Shapes::MemberShape.new(target: SkillTypeList, name: "disableManagedSkills"))
    CreatePentestInput.add_member(:max_task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxTaskHours"))
    CreatePentestInput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    CreatePentestInput.add_member(:report_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilters, name: "reportFilters"))
    CreatePentestInput.add_member(:cicd_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CiCdConfiguration, name: "cicdConfiguration"))
    CreatePentestInput.add_member(:test_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: TestScope, name: "testScope"))
    CreatePentestInput.type = Types::CreatePentestInput
    CreatePentestOutput.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId"))
    CreatePentestOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CreatePentestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreatePentestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreatePentestOutput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets"))
    CreatePentestOutput.add_member(:exclude_risk_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskTypeList, name: "excludeRiskTypes"))
    CreatePentestOutput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    CreatePentestOutput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    CreatePentestOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    CreatePentestOutput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    CreatePentestOutput.add_member(:report_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilters, name: "reportFilters"))
    CreatePentestOutput.add_member(:cicd_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CiCdConfiguration, name: "cicdConfiguration"))
    CreatePentestOutput.add_member(:test_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: TestScope, name: "testScope"))
    CreatePentestOutput.type = Types::CreatePentestOutput
    CreatePrivateConnectionInput.add_member(:private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "privateConnectionName", traits: {"smithy.api#required" => {}}))
    CreatePrivateConnectionInput.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionMode, name: "mode", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreatePrivateConnectionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreatePrivateConnectionInput.type = Types::CreatePrivateConnectionInput
    CreatePrivateConnectionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#required" => {}}))
    CreatePrivateConnectionOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionType, name: "type", traits: {"smithy.api#required" => {}}))
    CreatePrivateConnectionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreatePrivateConnectionOutput.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "resourceGatewayId"))
    CreatePrivateConnectionOutput.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: HostAddress, name: "hostAddress"))
    CreatePrivateConnectionOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionVpcId, name: "vpcId"))
    CreatePrivateConnectionOutput.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationId"))
    CreatePrivateConnectionOutput.add_member(:certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "certificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreatePrivateConnectionOutput.add_member(:dns_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigDnsResolution, name: "dnsResolution"))
    CreatePrivateConnectionOutput.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    CreatePrivateConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreatePrivateConnectionOutput.type = Types::CreatePrivateConnectionOutput
    CreateSecurityRequirementEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateSecurityRequirementEntry.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    CreateSecurityRequirementEntry.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domain", traits: {"smithy.api#required" => {}}))
    CreateSecurityRequirementEntry.add_member(:evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "evaluation", traits: {"smithy.api#required" => {}}))
    CreateSecurityRequirementEntry.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "remediation"))
    CreateSecurityRequirementEntry.type = Types::CreateSecurityRequirementEntry
    CreateSecurityRequirementEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateSecurityRequirementEntry, name: "member"))
    CreateSecurityRequirementPackInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateSecurityRequirementPackInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateSecurityRequirementPackInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackStatus, name: "status"))
    CreateSecurityRequirementPackInput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateSecurityRequirementPackInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateSecurityRequirementPackInput.type = Types::CreateSecurityRequirementPackInput
    CreateSecurityRequirementPackOutput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateSecurityRequirementPackOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateSecurityRequirementPackOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    CreateSecurityRequirementPackOutput.type = Types::CreateSecurityRequirementPackOutput
    CreateTargetDomainInput.add_member(:target_domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "targetDomainName", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateTargetDomainInput.add_member(:verification_method, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainVerificationMethod, name: "verificationMethod", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateTargetDomainInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateTargetDomainInput.type = Types::CreateTargetDomainInput
    CreateTargetDomainOutput.add_member(:target_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainId, name: "targetDomainId", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    CreateTargetDomainOutput.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainName", traits: {"smithy.api#required" => {}}))
    CreateTargetDomainOutput.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainStatus, name: "verificationStatus", traits: {"smithy.api#required" => {}}))
    CreateTargetDomainOutput.add_member(:verification_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "verificationStatusReason"))
    CreateTargetDomainOutput.add_member(:verification_details, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationDetails, name: "verificationDetails"))
    CreateTargetDomainOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateTargetDomainOutput.add_member(:verified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "verifiedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateTargetDomainOutput.type = Types::CreateTargetDomainOutput
    CreateThreatInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    CreateThreatInput.add_member(:threat_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatJobId", traits: {"smithy.api#required" => {}}))
    CreateThreatInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CreateThreatInput.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statement"))
    CreateThreatInput.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatSeverity, name: "severity"))
    CreateThreatInput.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comments"))
    CreateThreatInput.add_member(:stride, ::Smithy::Schema::Shapes::MemberShape.new(target: StrideCategoryList, name: "stride"))
    CreateThreatInput.add_member(:threat_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatSource"))
    CreateThreatInput.add_member(:prerequisites, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prerequisites"))
    CreateThreatInput.add_member(:threat_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatAction"))
    CreateThreatInput.add_member(:threat_impact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatImpact"))
    CreateThreatInput.add_member(:impacted_goal, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "impactedGoal"))
    CreateThreatInput.add_member(:impacted_assets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "impactedAssets"))
    CreateThreatInput.add_member(:anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatAnchorShape, name: "anchor"))
    CreateThreatInput.add_member(:evidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatEvidenceList, name: "evidence"))
    CreateThreatInput.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendation"))
    CreateThreatInput.type = Types::CreateThreatInput
    CreateThreatModelInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    CreateThreatModelInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    CreateThreatModelInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateThreatModelInput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets"))
    CreateThreatModelInput.add_member(:scope_docs, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "scopeDocs"))
    CreateThreatModelInput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole", traits: {"smithy.api#required" => {}}))
    CreateThreatModelInput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    CreateThreatModelInput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    CreateThreatModelInput.type = Types::CreateThreatModelInput
    CreateThreatModelOutput.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId", traits: {"smithy.api#required" => {}}))
    CreateThreatModelOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CreateThreatModelOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    CreateThreatModelOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    CreateThreatModelOutput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets"))
    CreateThreatModelOutput.add_member(:scope_docs, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "scopeDocs"))
    CreateThreatModelOutput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    CreateThreatModelOutput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    CreateThreatModelOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateThreatModelOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateThreatModelOutput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    CreateThreatModelOutput.type = Types::CreateThreatModelOutput
    CreateThreatOutput.add_member(:threat_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatId", traits: {"smithy.api#required" => {}}))
    CreateThreatOutput.add_member(:threat_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatJobId", traits: {"smithy.api#required" => {}}))
    CreateThreatOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    CreateThreatOutput.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statement"))
    CreateThreatOutput.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatSeverity, name: "severity"))
    CreateThreatOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatStatus, name: "status"))
    CreateThreatOutput.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comments"))
    CreateThreatOutput.add_member(:stride, ::Smithy::Schema::Shapes::MemberShape.new(target: StrideCategoryList, name: "stride"))
    CreateThreatOutput.add_member(:threat_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatSource"))
    CreateThreatOutput.add_member(:prerequisites, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prerequisites"))
    CreateThreatOutput.add_member(:threat_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatAction"))
    CreateThreatOutput.add_member(:threat_impact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatImpact"))
    CreateThreatOutput.add_member(:impacted_goal, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "impactedGoal"))
    CreateThreatOutput.add_member(:impacted_assets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "impactedAssets"))
    CreateThreatOutput.add_member(:anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatAnchorShape, name: "anchor"))
    CreateThreatOutput.add_member(:evidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatEvidenceList, name: "evidence"))
    CreateThreatOutput.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendation"))
    CreateThreatOutput.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatActor, name: "createdBy"))
    CreateThreatOutput.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatActor, name: "updatedBy"))
    CreateThreatOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateThreatOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    CreateThreatOutput.type = Types::CreateThreatOutput
    CustomHeader.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    CustomHeader.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    CustomHeader.type = Types::CustomHeader
    CustomHeaderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeader, name: "member"))
    DNSRecordType.add_member(:txt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TXT", traits: {"smithy.api#enumValue" => "TXT"}))
    DeleteAgentSpaceInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    DeleteAgentSpaceInput.type = Types::DeleteAgentSpaceInput
    DeleteAgentSpaceOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#notProperty" => {}}))
    DeleteAgentSpaceOutput.type = Types::DeleteAgentSpaceOutput
    DeleteApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteArtifactInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    DeleteArtifactInput.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, name: "artifactId", traits: {"smithy.api#required" => {}}))
    DeleteArtifactInput.type = Types::DeleteArtifactInput
    DeleteArtifactOutput.type = Types::DeleteArtifactOutput
    DeleteCodeReviewFailure.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId"))
    DeleteCodeReviewFailure.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason"))
    DeleteCodeReviewFailure.type = Types::DeleteCodeReviewFailure
    DeleteCodeReviewFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteCodeReviewFailure, name: "member"))
    DeleteIntegrationInput.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationId, name: "integrationId", traits: {"smithy.api#required" => {}}))
    DeleteIntegrationInput.type = Types::DeleteIntegrationInput
    DeleteIntegrationOutput.type = Types::DeleteIntegrationOutput
    DeleteMembershipRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}}))
    DeleteMembershipRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    DeleteMembershipRequest.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipId, name: "membershipId", traits: {"smithy.api#required" => {}}))
    DeleteMembershipRequest.add_member(:member_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, name: "memberType"))
    DeleteMembershipRequest.type = Types::DeleteMembershipRequest
    DeleteMembershipResponse.type = Types::DeleteMembershipResponse
    DeletePentestFailure.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId"))
    DeletePentestFailure.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason"))
    DeletePentestFailure.type = Types::DeletePentestFailure
    DeletePentestFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletePentestFailure, name: "member"))
    DeletePrivateConnectionInput.add_member(:private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "privateConnectionName", traits: {"smithy.api#required" => {}}))
    DeletePrivateConnectionInput.type = Types::DeletePrivateConnectionInput
    DeletePrivateConnectionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#required" => {}}))
    DeletePrivateConnectionOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionType, name: "type", traits: {"smithy.api#required" => {}}))
    DeletePrivateConnectionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeletePrivateConnectionOutput.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "resourceGatewayId"))
    DeletePrivateConnectionOutput.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: HostAddress, name: "hostAddress"))
    DeletePrivateConnectionOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionVpcId, name: "vpcId"))
    DeletePrivateConnectionOutput.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationId"))
    DeletePrivateConnectionOutput.add_member(:certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "certificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DeletePrivateConnectionOutput.add_member(:dns_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigDnsResolution, name: "dnsResolution"))
    DeletePrivateConnectionOutput.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    DeletePrivateConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    DeletePrivateConnectionOutput.type = Types::DeletePrivateConnectionOutput
    DeleteSecurityRequirementPackInput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    DeleteSecurityRequirementPackInput.type = Types::DeleteSecurityRequirementPackInput
    DeleteSecurityRequirementPackOutput.type = Types::DeleteSecurityRequirementPackOutput
    DeleteTargetDomainInput.add_member(:target_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainId, name: "targetDomainId", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    DeleteTargetDomainInput.type = Types::DeleteTargetDomainInput
    DeleteTargetDomainOutput.add_member(:target_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainId, name: "targetDomainId", traits: {"smithy.api#notProperty" => {}}))
    DeleteTargetDomainOutput.type = Types::DeleteTargetDomainOutput
    DeleteThreatModelFailure.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId"))
    DeleteThreatModelFailure.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason"))
    DeleteThreatModelFailure.type = Types::DeleteThreatModelFailure
    DeleteThreatModelFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteThreatModelFailure, name: "member"))
    DescribePrivateConnectionInput.add_member(:private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "privateConnectionName", traits: {"smithy.api#required" => {}}))
    DescribePrivateConnectionInput.type = Types::DescribePrivateConnectionInput
    DescribePrivateConnectionOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#required" => {}}))
    DescribePrivateConnectionOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionType, name: "type", traits: {"smithy.api#required" => {}}))
    DescribePrivateConnectionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DescribePrivateConnectionOutput.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "resourceGatewayId"))
    DescribePrivateConnectionOutput.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: HostAddress, name: "hostAddress"))
    DescribePrivateConnectionOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionVpcId, name: "vpcId"))
    DescribePrivateConnectionOutput.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationId"))
    DescribePrivateConnectionOutput.add_member(:certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "certificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    DescribePrivateConnectionOutput.add_member(:dns_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigDnsResolution, name: "dnsResolution"))
    DescribePrivateConnectionOutput.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    DescribePrivateConnectionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    DescribePrivateConnectionOutput.type = Types::DescribePrivateConnectionOutput
    DiffSource.add_member(:s3_uri, Types::DiffSource::S3Uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "s3Uri"))
    DiffSource.add_member(:unknown, Types::DiffSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DiffSource.type = Types::DiffSource
    DiscoveredEndpoint.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "uri", traits: {"smithy.api#required" => {}}))
    DiscoveredEndpoint.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId", traits: {"smithy.api#required" => {}}))
    DiscoveredEndpoint.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskId", traits: {"smithy.api#required" => {}}))
    DiscoveredEndpoint.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    DiscoveredEndpoint.add_member(:evidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "evidence"))
    DiscoveredEndpoint.add_member(:operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "operation"))
    DiscoveredEndpoint.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    DiscoveredEndpoint.type = Types::DiscoveredEndpoint
    DiscoveredEndpointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveredEndpoint, name: "member"))
    DnsVerification.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "token"))
    DnsVerification.add_member(:dns_record_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "dnsRecordName"))
    DnsVerification.add_member(:dns_record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DNSRecordType, name: "dnsRecordType"))
    DnsVerification.type = Types::DnsVerification
    DocumentInfo.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "s3Location"))
    DocumentInfo.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "artifactId"))
    DocumentInfo.add_member(:integrated_document, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedDocument, name: "integratedDocument"))
    DocumentInfo.type = Types::DocumentInfo
    DocumentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentInfo, name: "member"))
    DomainVerificationMethod.add_member(:dns_txt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DNS_TXT", traits: {"smithy.api#enumValue" => "DNS_TXT"}))
    DomainVerificationMethod.add_member(:http_route, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTTP_ROUTE", traits: {"smithy.api#enumValue" => "HTTP_ROUTE"}))
    DomainVerificationMethod.add_member(:private_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE_VPC", traits: {"smithy.api#enumValue" => "PRIVATE_VPC"}))
    Endpoint.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "uri"))
    Endpoint.type = Types::Endpoint
    EndpointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "member"))
    ErrorCode.add_member(:client_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIENT_ERROR", traits: {"smithy.api#enumValue" => "CLIENT_ERROR"}))
    ErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ErrorCode.add_member(:stopped_by_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED_BY_USER", traits: {"smithy.api#enumValue" => "STOPPED_BY_USER"}))
    ErrorInformation.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    ErrorInformation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ErrorInformation.type = Types::ErrorInformation
    ExecutionContext.add_member(:context_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContextType, name: "contextType"))
    ExecutionContext.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "context"))
    ExecutionContext.add_member(:timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "timestamp", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ExecutionContext.type = Types::ExecutionContext
    ExecutionContextList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionContext, name: "member"))
    Finding.add_member(:finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "findingId", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    Finding.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId"))
    Finding.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId"))
    Finding.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId"))
    Finding.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId"))
    Finding.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskId"))
    Finding.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    Finding.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    Finding.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status"))
    Finding.add_member(:risk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "riskType"))
    Finding.add_member(:risk_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskLevel, name: "riskLevel"))
    Finding.add_member(:risk_score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "riskScore"))
    Finding.add_member(:reasoning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reasoning"))
    Finding.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceLevel, name: "confidence"))
    Finding.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationStatus, name: "validationStatus"))
    Finding.add_member(:attack_script, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "attackScript"))
    Finding.add_member(:remediation_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "remediationCode"))
    Finding.add_member(:code_remediation_task, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationTask, name: "codeRemediationTask"))
    Finding.add_member(:last_updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "lastUpdatedBy"))
    Finding.add_member(:customer_note, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "customerNote"))
    Finding.add_member(:code_locations, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeLocationList, name: "codeLocations"))
    Finding.add_member(:verification_script, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationScript, name: "verificationScript"))
    Finding.add_member(:alignment_rationale, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "alignmentRationale"))
    Finding.add_member(:revalidation_job_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "revalidationJobIds"))
    Finding.add_member(:original_finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "originalFindingId"))
    Finding.add_member(:linked_issue, ::Smithy::Schema::Shapes::MemberShape.new(target: LinkedIssue, name: "linkedIssue"))
    Finding.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Finding.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Finding.type = Types::Finding
    FindingIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    FindingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Finding, name: "member"))
    FindingStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    FindingStatus.add_member(:resolved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOLVED", traits: {"smithy.api#enumValue" => "RESOLVED"}))
    FindingStatus.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED", traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    FindingStatus.add_member(:false_positive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FALSE_POSITIVE", traits: {"smithy.api#enumValue" => "FALSE_POSITIVE"}))
    FindingStatusFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "member"))
    FindingSummary.add_member(:finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "findingId", traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    FindingSummary.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId"))
    FindingSummary.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId"))
    FindingSummary.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId"))
    FindingSummary.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId"))
    FindingSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    FindingSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status"))
    FindingSummary.add_member(:risk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "riskType"))
    FindingSummary.add_member(:risk_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskLevel, name: "riskLevel"))
    FindingSummary.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceLevel, name: "confidence"))
    FindingSummary.add_member(:validation_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationStatus, name: "validationStatus"))
    FindingSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    FindingSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    FindingSummary.type = Types::FindingSummary
    FindingSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSummary, name: "member"))
    GetApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}}))
    GetApplicationRequest.type = Types::GetApplicationRequest
    GetApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}}))
    GetApplicationResponse.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationDomain, name: "domain", traits: {"smithy.api#required" => {}}))
    GetApplicationResponse.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "applicationName"))
    GetApplicationResponse.add_member(:idc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdCConfiguration, name: "idcConfiguration"))
    GetApplicationResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn"))
    GetApplicationResponse.add_member(:default_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultKmsKeyId, name: "defaultKmsKeyId"))
    GetApplicationResponse.type = Types::GetApplicationResponse
    GetArtifactInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    GetArtifactInput.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, name: "artifactId", traits: {"smithy.api#required" => {}}))
    GetArtifactInput.type = Types::GetArtifactInput
    GetArtifactOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    GetArtifactOutput.add_member(:artifact_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactId, name: "artifactId", traits: {"smithy.api#required" => {}}))
    GetArtifactOutput.add_member(:artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: Artifact, name: "artifact", traits: {"smithy.api#required" => {}}))
    GetArtifactOutput.add_member(:file_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "fileName", traits: {"smithy.api#required" => {}}))
    GetArtifactOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetArtifactOutput.type = Types::GetArtifactOutput
    GetIntegrationInput.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationId, name: "integrationId", traits: {"smithy.api#required" => {}}))
    GetIntegrationInput.type = Types::GetIntegrationInput
    GetIntegrationOutput.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationId, name: "integrationId", traits: {"smithy.api#required" => {}}))
    GetIntegrationOutput.add_member(:installation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "installationId", traits: {"smithy.api#required" => {}}))
    GetIntegrationOutput.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider", traits: {"smithy.api#required" => {}}))
    GetIntegrationOutput.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "providerType", traits: {"smithy.api#required" => {}}))
    GetIntegrationOutput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName"))
    GetIntegrationOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    GetIntegrationOutput.add_member(:target_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetUrl, name: "targetUrl"))
    GetIntegrationOutput.add_member(:site_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetUrl, name: "siteUrl"))
    GetIntegrationOutput.add_member(:webhook_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "webhookUrl"))
    GetIntegrationOutput.add_member(:private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "privateConnectionName"))
    GetIntegrationOutput.type = Types::GetIntegrationOutput
    GetSecurityRequirementPackInput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    GetSecurityRequirementPackInput.type = Types::GetSecurityRequirementPackInput
    GetSecurityRequirementPackOutput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    GetSecurityRequirementPackOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackName, name: "name", traits: {"smithy.api#required" => {}}))
    GetSecurityRequirementPackOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    GetSecurityRequirementPackOutput.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vendorName", traits: {"smithy.api#notProperty" => {}}))
    GetSecurityRequirementPackOutput.add_member(:management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagementType, name: "managementType", traits: {"smithy.api#required" => {}}))
    GetSecurityRequirementPackOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetSecurityRequirementPackOutput.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackImportStatus, name: "importStatus"))
    GetSecurityRequirementPackOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSecurityRequirementPackOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSecurityRequirementPackOutput.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyId, name: "kmsKeyId"))
    GetSecurityRequirementPackOutput.type = Types::GetSecurityRequirementPackOutput
    GitHubIntegrationInput.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthCode, name: "code", traits: {"smithy.api#required" => {}}))
    GitHubIntegrationInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CsrfState, name: "state", traits: {"smithy.api#required" => {}}))
    GitHubIntegrationInput.add_member(:organization_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "organizationName"))
    GitHubIntegrationInput.add_member(:target_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetUrl, name: "targetUrl"))
    GitHubIntegrationInput.add_member(:installation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "installationId"))
    GitHubIntegrationInput.type = Types::GitHubIntegrationInput
    GitHubRepositoryMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GitHubRepositoryMetadata.add_member(:provider_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceId, name: "providerResourceId", traits: {"smithy.api#required" => {}}))
    GitHubRepositoryMetadata.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubOwner, name: "owner", traits: {"smithy.api#required" => {}}))
    GitHubRepositoryMetadata.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "accessType"))
    GitHubRepositoryMetadata.type = Types::GitHubRepositoryMetadata
    GitHubRepositoryResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GitHubRepositoryResource.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubOwner, name: "owner", traits: {"smithy.api#required" => {}}))
    GitHubRepositoryResource.type = Types::GitHubRepositoryResource
    GitHubResourceCapabilities.add_member(:trigger_filter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerFilterGroups, name: "triggerFilterGroups"))
    GitHubResourceCapabilities.add_member(:leave_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "leaveComments"))
    GitHubResourceCapabilities.add_member(:remediate_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "remediateCode"))
    GitHubResourceCapabilities.type = Types::GitHubResourceCapabilities
    GitLabIntegrationInput.add_member(:access_token, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessToken, name: "accessToken", traits: {"smithy.api#required" => {}}))
    GitLabIntegrationInput.add_member(:target_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetUrl, name: "targetUrl"))
    GitLabIntegrationInput.add_member(:token_type, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabTokenType, name: "tokenType", traits: {"smithy.api#required" => {}}))
    GitLabIntegrationInput.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "groupId"))
    GitLabIntegrationInput.type = Types::GitLabIntegrationInput
    GitLabRepositoryMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GitLabRepositoryMetadata.add_member(:provider_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceId, name: "providerResourceId", traits: {"smithy.api#required" => {}}))
    GitLabRepositoryMetadata.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabNamespace, name: "namespace", traits: {"smithy.api#required" => {}}))
    GitLabRepositoryMetadata.add_member(:access_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessType, name: "accessType"))
    GitLabRepositoryMetadata.type = Types::GitLabRepositoryMetadata
    GitLabRepositoryResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    GitLabRepositoryResource.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabNamespace, name: "namespace", traits: {"smithy.api#required" => {}}))
    GitLabRepositoryResource.type = Types::GitLabRepositoryResource
    GitLabResourceCapabilities.add_member(:trigger_filter_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerFilterGroups, name: "triggerFilterGroups"))
    GitLabResourceCapabilities.add_member(:leave_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "leaveComments"))
    GitLabResourceCapabilities.add_member(:remediate_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "remediateCode"))
    GitLabResourceCapabilities.type = Types::GitLabResourceCapabilities
    GitLabTokenType.add_member(:personal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERSONAL", traits: {"smithy.api#enumValue" => "PERSONAL"}))
    GitLabTokenType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    HttpVerification.add_member(:token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "token"))
    HttpVerification.add_member(:route_path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "routePath"))
    HttpVerification.type = Types::HttpVerification
    IamRoles.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "member"))
    IdCConfiguration.add_member(:idc_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdCApplicationArn, name: "idcApplicationArn"))
    IdCConfiguration.add_member(:idc_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdCInstanceArn, name: "idcInstanceArn"))
    IdCConfiguration.type = Types::IdCConfiguration
    ImportSecurityRequirementsInput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    ImportSecurityRequirementsInput.add_member(:input, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportSource, name: "input", traits: {"smithy.api#required" => {}}))
    ImportSecurityRequirementsInput.type = Types::ImportSecurityRequirementsInput
    ImportSecurityRequirementsOutput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    ImportSecurityRequirementsOutput.add_member(:import_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackImportStatus, name: "importStatus", traits: {"smithy.api#required" => {}}))
    ImportSecurityRequirementsOutput.type = Types::ImportSecurityRequirementsOutput
    ImportSource.add_member(:documents, Types::ImportSource::Documents, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementArtifactList, name: "documents"))
    ImportSource.add_member(:unknown, Types::ImportSource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ImportSource.type = Types::ImportSource
    InitiateProviderRegistrationInput.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider", traits: {"smithy.api#required" => {}}))
    InitiateProviderRegistrationInput.add_member(:target_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetUrl, name: "targetUrl"))
    InitiateProviderRegistrationInput.add_member(:organization_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "organizationName"))
    InitiateProviderRegistrationInput.add_member(:client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientId, name: "clientId"))
    InitiateProviderRegistrationInput.add_member(:client_secret, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientSecret, name: "clientSecret"))
    InitiateProviderRegistrationInput.type = Types::InitiateProviderRegistrationInput
    InitiateProviderRegistrationOutput.add_member(:redirect_to, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "redirectTo", traits: {"smithy.api#required" => {}}))
    InitiateProviderRegistrationOutput.add_member(:csrf_state, ::Smithy::Schema::Shapes::MemberShape.new(target: CsrfState, name: "csrfState", traits: {"smithy.api#required" => {}}))
    InitiateProviderRegistrationOutput.type = Types::InitiateProviderRegistrationOutput
    IntegratedDocument.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "integrationId", traits: {"smithy.api#required" => {}}))
    IntegratedDocument.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceId", traits: {"smithy.api#required" => {}}))
    IntegratedDocument.type = Types::IntegratedDocument
    IntegratedRepository.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "integrationId", traits: {"smithy.api#required" => {}}))
    IntegratedRepository.add_member(:provider_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "providerResourceId", traits: {"smithy.api#required" => {}}))
    IntegratedRepository.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "branch"))
    IntegratedRepository.type = Types::IntegratedRepository
    IntegratedRepositoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedRepository, name: "member"))
    IntegratedResource.add_member(:github_repository, Types::IntegratedResource::GithubRepository, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubRepositoryResource, name: "githubRepository"))
    IntegratedResource.add_member(:gitlab_repository, Types::IntegratedResource::GitlabRepository, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabRepositoryResource, name: "gitlabRepository"))
    IntegratedResource.add_member(:bitbucket_repository, Types::IntegratedResource::BitbucketRepository, ::Smithy::Schema::Shapes::MemberShape.new(target: BitbucketRepositoryResource, name: "bitbucketRepository"))
    IntegratedResource.add_member(:confluence_document, Types::IntegratedResource::ConfluenceDocument, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceDocumentResource, name: "confluenceDocument"))
    IntegratedResource.add_member(:azure_dev_ops_repository, Types::IntegratedResource::AzureDevOpsRepository, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureDevOpsRepositoryResource, name: "azureDevOpsRepository"))
    IntegratedResource.add_member(:jira_project, Types::IntegratedResource::JiraProject, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraProjectResource, name: "jiraProject"))
    IntegratedResource.add_member(:unknown, Types::IntegratedResource::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IntegratedResource.type = Types::IntegratedResource
    IntegratedResourceInputItem.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedResource, name: "resource", traits: {"smithy.api#required" => {}}))
    IntegratedResourceInputItem.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceCapabilities, name: "capabilities"))
    IntegratedResourceInputItem.type = Types::IntegratedResourceInputItem
    IntegratedResourceInputItemList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedResourceInputItem, name: "member"))
    IntegratedResourceMetadata.add_member(:github_repository, Types::IntegratedResourceMetadata::GithubRepository, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubRepositoryMetadata, name: "githubRepository"))
    IntegratedResourceMetadata.add_member(:gitlab_repository, Types::IntegratedResourceMetadata::GitlabRepository, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabRepositoryMetadata, name: "gitlabRepository"))
    IntegratedResourceMetadata.add_member(:bitbucket_repository, Types::IntegratedResourceMetadata::BitbucketRepository, ::Smithy::Schema::Shapes::MemberShape.new(target: BitbucketRepositoryMetadata, name: "bitbucketRepository"))
    IntegratedResourceMetadata.add_member(:confluence_document, Types::IntegratedResourceMetadata::ConfluenceDocument, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceDocumentMetadata, name: "confluenceDocument"))
    IntegratedResourceMetadata.add_member(:azure_dev_ops_repository, Types::IntegratedResourceMetadata::AzureDevOpsRepository, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureDevOpsRepositoryMetadata, name: "azureDevOpsRepository"))
    IntegratedResourceMetadata.add_member(:jira_project, Types::IntegratedResourceMetadata::JiraProject, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraProjectMetadata, name: "jiraProject"))
    IntegratedResourceMetadata.add_member(:unknown, Types::IntegratedResourceMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IntegratedResourceMetadata.type = Types::IntegratedResourceMetadata
    IntegratedResourceSummary.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationId, name: "integrationId", traits: {"smithy.api#required" => {}}))
    IntegratedResourceSummary.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedResourceMetadata, name: "resource", traits: {"smithy.api#required" => {}}))
    IntegratedResourceSummary.add_member(:capabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceCapabilities, name: "capabilities"))
    IntegratedResourceSummary.type = Types::IntegratedResourceSummary
    IntegratedResourceSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedResourceSummary, name: "member"))
    IntegrationFilter.add_member(:provider, Types::IntegrationFilter::Provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider"))
    IntegrationFilter.add_member(:provider_type, Types::IntegrationFilter::ProviderType, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "providerType"))
    IntegrationFilter.add_member(:unknown, Types::IntegrationFilter::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    IntegrationFilter.type = Types::IntegrationFilter
    IntegrationSummary.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "integrationId", traits: {"smithy.api#required" => {}}))
    IntegrationSummary.add_member(:installation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "installationId", traits: {"smithy.api#required" => {}}))
    IntegrationSummary.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider", traits: {"smithy.api#required" => {}}))
    IntegrationSummary.add_member(:provider_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderType, name: "providerType", traits: {"smithy.api#required" => {}}))
    IntegrationSummary.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "displayName", traits: {"smithy.api#required" => {}}))
    IntegrationSummary.add_member(:target_url, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetUrl, name: "targetUrl"))
    IntegrationSummary.add_member(:webhook_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "webhookUrl"))
    IntegrationSummary.add_member(:private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "privateConnectionName"))
    IntegrationSummary.type = Types::IntegrationSummary
    IntegrationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationSummary, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    IpAddressType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "IPV4"}))
    IpAddressType.add_member(:ipv6, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV6", traits: {"smithy.api#enumValue" => "IPV6"}))
    IpAddressType.add_member(:dual_stack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUAL_STACK", traits: {"smithy.api#enumValue" => "DUAL_STACK"}))
    IssueDestination.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "integrationId", traits: {"smithy.api#required" => {}}))
    IssueDestination.add_member(:project_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectKey", traits: {"smithy.api#required" => {}}))
    IssueDestination.type = Types::IssueDestination
    JiraIntegrationInput.add_member(:installation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraInstallationId, name: "installationId", traits: {"smithy.api#required" => {}}))
    JiraIntegrationInput.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthCode, name: "code", traits: {"smithy.api#required" => {}}))
    JiraIntegrationInput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: CsrfState, name: "state", traits: {"smithy.api#required" => {}}))
    JiraIntegrationInput.add_member(:site_url, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraSiteUrl, name: "siteUrl", traits: {"smithy.api#required" => {}}))
    JiraIntegrationInput.type = Types::JiraIntegrationInput
    JiraProjectMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    JiraProjectMetadata.add_member(:provider_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceId, name: "providerResourceId", traits: {"smithy.api#required" => {}}))
    JiraProjectMetadata.add_member(:project_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectKey", traits: {"smithy.api#required" => {}}))
    JiraProjectMetadata.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectId", traits: {"smithy.api#required" => {}}))
    JiraProjectMetadata.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    JiraProjectMetadata.type = Types::JiraProjectMetadata
    JiraProjectResource.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    JiraProjectResource.add_member(:project_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectKey", traits: {"smithy.api#required" => {}}))
    JiraProjectResource.add_member(:project_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectId", traits: {"smithy.api#required" => {}}))
    JiraProjectResource.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    JiraProjectResource.type = Types::JiraProjectResource
    JiraResourceCapabilities.add_member(:create_issue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "createIssue"))
    JiraResourceCapabilities.add_member(:comment_issue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "commentIssue"))
    JiraResourceCapabilities.type = Types::JiraResourceCapabilities
    JobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    JobStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    JobType.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "FULL"}))
    JobType.add_member(:revalidation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REVALIDATION", traits: {"smithy.api#enumValue" => "REVALIDATION"}))
    JobType.add_member(:cicd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CICD", traits: {"smithy.api#enumValue" => "CICD"}))
    LambdaFunctionArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LambdaFunctionArn, name: "member"))
    LinkedIssue.add_member(:provider, ::Smithy::Schema::Shapes::MemberShape.new(target: Provider, name: "provider"))
    LinkedIssue.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "integrationId"))
    LinkedIssue.add_member(:project_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "projectKey"))
    LinkedIssue.add_member(:issue_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "issueKey"))
    LinkedIssue.add_member(:issue_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "issueId"))
    LinkedIssue.add_member(:issue_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "issueUrl"))
    LinkedIssue.add_member(:site_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "siteUrl"))
    LinkedIssue.type = Types::LinkedIssue
    ListActorMessagesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListActorMessagesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListActorMessagesInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListActorMessagesInput.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId", traits: {"smithy.api#required" => {}}))
    ListActorMessagesInput.add_member(:actor_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "actorIdentifier", traits: {"smithy.api#required" => {}}))
    ListActorMessagesInput.type = Types::ListActorMessagesInput
    ListActorMessagesOutput.add_member(:messages, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorMessageList, name: "messages"))
    ListActorMessagesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListActorMessagesOutput.type = Types::ListActorMessagesOutput
    ListAgentSpacesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAgentSpacesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListAgentSpacesInput.type = Types::ListAgentSpacesInput
    ListAgentSpacesOutput.add_member(:agent_space_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceSummaryList, name: "agentSpaceSummaries"))
    ListAgentSpacesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAgentSpacesOutput.type = Types::ListAgentSpacesOutput
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:application_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummaryList, name: "applicationSummaries", traits: {"smithy.api#required" => {}}))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListArtifactsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListArtifactsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListArtifactsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListArtifactsInput.type = Types::ListArtifactsInput
    ListArtifactsOutput.add_member(:artifact_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactSummaryList, name: "artifactSummaries", traits: {"smithy.api#required" => {}}))
    ListArtifactsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListArtifactsOutput.type = Types::ListArtifactsOutput
    ListCodeReviewJobTasksInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListCodeReviewJobTasksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListCodeReviewJobTasksInput.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId"))
    ListCodeReviewJobTasksInput.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StepName, name: "stepName"))
    ListCodeReviewJobTasksInput.add_member(:category_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "categoryName"))
    ListCodeReviewJobTasksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCodeReviewJobTasksInput.type = Types::ListCodeReviewJobTasksInput
    ListCodeReviewJobTasksOutput.add_member(:code_review_job_task_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewJobTaskSummaryList, name: "codeReviewJobTaskSummaries"))
    ListCodeReviewJobTasksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCodeReviewJobTasksOutput.type = Types::ListCodeReviewJobTasksOutput
    ListCodeReviewJobsForCodeReviewInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListCodeReviewJobsForCodeReviewInput.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId", traits: {"smithy.api#required" => {}}))
    ListCodeReviewJobsForCodeReviewInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListCodeReviewJobsForCodeReviewInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCodeReviewJobsForCodeReviewInput.type = Types::ListCodeReviewJobsForCodeReviewInput
    ListCodeReviewJobsForCodeReviewOutput.add_member(:code_review_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewJobSummaryList, name: "codeReviewJobSummaries"))
    ListCodeReviewJobsForCodeReviewOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCodeReviewJobsForCodeReviewOutput.type = Types::ListCodeReviewJobsForCodeReviewOutput
    ListCodeReviewsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListCodeReviewsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCodeReviewsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListCodeReviewsInput.type = Types::ListCodeReviewsInput
    ListCodeReviewsOutput.add_member(:code_review_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewSummaryList, name: "codeReviewSummaries"))
    ListCodeReviewsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCodeReviewsOutput.type = Types::ListCodeReviewsOutput
    ListDiscoveredEndpointsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListDiscoveredEndpointsInput.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId", traits: {"smithy.api#required" => {}}))
    ListDiscoveredEndpointsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListDiscoveredEndpointsInput.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prefix"))
    ListDiscoveredEndpointsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDiscoveredEndpointsInput.type = Types::ListDiscoveredEndpointsInput
    ListDiscoveredEndpointsOutput.add_member(:discovered_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: DiscoveredEndpointList, name: "discoveredEndpoints"))
    ListDiscoveredEndpointsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListDiscoveredEndpointsOutput.type = Types::ListDiscoveredEndpointsOutput
    ListFindingsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListFindingsInput.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId"))
    ListFindingsInput.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId"))
    ListFindingsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListFindingsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFindingsInput.add_member(:risk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "riskType"))
    ListFindingsInput.add_member(:risk_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskLevel, name: "riskLevel"))
    ListFindingsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status"))
    ListFindingsInput.add_member(:confidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceLevel, name: "confidence"))
    ListFindingsInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    ListFindingsInput.type = Types::ListFindingsInput
    ListFindingsOutput.add_member(:findings_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingSummaryList, name: "findingsSummaries"))
    ListFindingsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListFindingsOutput.type = Types::ListFindingsOutput
    ListIntegratedResourcesInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListIntegratedResourcesInput.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationId, name: "integrationId"))
    ListIntegratedResourcesInput.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ListIntegratedResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIntegratedResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListIntegratedResourcesInput.type = Types::ListIntegratedResourcesInput
    ListIntegratedResourcesOutput.add_member(:integrated_resource_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedResourceSummaryList, name: "integratedResourceSummaries", traits: {"smithy.api#required" => {}}))
    ListIntegratedResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIntegratedResourcesOutput.type = Types::ListIntegratedResourcesOutput
    ListIntegrationsInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationFilter, name: "filter"))
    ListIntegrationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIntegrationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListIntegrationsInput.type = Types::ListIntegrationsInput
    ListIntegrationsOutput.add_member(:integration_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationSummaryList, name: "integrationSummaries", traits: {"smithy.api#required" => {}}))
    ListIntegrationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListIntegrationsOutput.type = Types::ListIntegrationsOutput
    ListMembershipsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}}))
    ListMembershipsRequest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListMembershipsRequest.add_member(:member_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipTypeFilter, name: "memberType"))
    ListMembershipsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListMembershipsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListMembershipsRequest.type = Types::ListMembershipsRequest
    ListMembershipsResponse.add_member(:membership_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipSummaryList, name: "membershipSummaries", traits: {"smithy.api#required" => {}}))
    ListMembershipsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListMembershipsResponse.type = Types::ListMembershipsResponse
    ListPentestJobTasksInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListPentestJobTasksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListPentestJobTasksInput.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId"))
    ListPentestJobTasksInput.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StepName, name: "stepName"))
    ListPentestJobTasksInput.add_member(:category_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "categoryName"))
    ListPentestJobTasksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPentestJobTasksInput.type = Types::ListPentestJobTasksInput
    ListPentestJobTasksOutput.add_member(:task_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSummaryList, name: "taskSummaries"))
    ListPentestJobTasksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPentestJobTasksOutput.type = Types::ListPentestJobTasksOutput
    ListPentestJobsForPentestInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListPentestJobsForPentestInput.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId", traits: {"smithy.api#required" => {}}))
    ListPentestJobsForPentestInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListPentestJobsForPentestInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPentestJobsForPentestInput.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "jobType"))
    ListPentestJobsForPentestInput.type = Types::ListPentestJobsForPentestInput
    ListPentestJobsForPentestOutput.add_member(:pentest_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestJobSummaryList, name: "pentestJobSummaries"))
    ListPentestJobsForPentestOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPentestJobsForPentestOutput.type = Types::ListPentestJobsForPentestOutput
    ListPentestsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListPentestsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPentestsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListPentestsInput.type = Types::ListPentestsInput
    ListPentestsOutput.add_member(:pentest_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestSummaryList, name: "pentestSummaries"))
    ListPentestsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPentestsOutput.type = Types::ListPentestsOutput
    ListPrivateConnectionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListPrivateConnectionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPrivateConnectionsInput.type = Types::ListPrivateConnectionsInput
    ListPrivateConnectionsOutput.add_member(:private_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionList, name: "privateConnections", traits: {"smithy.api#required" => {}}))
    ListPrivateConnectionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListPrivateConnectionsOutput.type = Types::ListPrivateConnectionsOutput
    ListSecurityRequirementPackFilter.add_member(:management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagementType, name: "managementType"))
    ListSecurityRequirementPackFilter.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackStatus, name: "status"))
    ListSecurityRequirementPackFilter.type = Types::ListSecurityRequirementPackFilter
    ListSecurityRequirementPacksInput.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSecurityRequirementPackFilter, name: "filter"))
    ListSecurityRequirementPacksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSecurityRequirementPacksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListSecurityRequirementPacksInput.type = Types::ListSecurityRequirementPacksInput
    ListSecurityRequirementPacksOutput.add_member(:security_requirement_pack_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackSummaryList, name: "securityRequirementPackSummaries", traits: {"smithy.api#required" => {}}))
    ListSecurityRequirementPacksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSecurityRequirementPacksOutput.type = Types::ListSecurityRequirementPacksOutput
    ListSecurityRequirementsInput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    ListSecurityRequirementsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSecurityRequirementsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListSecurityRequirementsInput.type = Types::ListSecurityRequirementsInput
    ListSecurityRequirementsOutput.add_member(:security_requirement_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementSummaryList, name: "securityRequirementSummaries", traits: {"smithy.api#required" => {}}))
    ListSecurityRequirementsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListSecurityRequirementsOutput.type = Types::ListSecurityRequirementsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListTargetDomainsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTargetDomainsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListTargetDomainsInput.type = Types::ListTargetDomainsInput
    ListTargetDomainsOutput.add_member(:target_domain_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainSummaryList, name: "targetDomainSummaries"))
    ListTargetDomainsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListTargetDomainsOutput.type = Types::ListTargetDomainsOutput
    ListThreatModelJobTasksInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListThreatModelJobTasksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListThreatModelJobTasksInput.add_member(:threat_model_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelJobId", traits: {"smithy.api#required" => {}}))
    ListThreatModelJobTasksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListThreatModelJobTasksInput.type = Types::ListThreatModelJobTasksInput
    ListThreatModelJobTasksOutput.add_member(:threat_model_job_task_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelJobTaskSummaryList, name: "threatModelJobTaskSummaries"))
    ListThreatModelJobTasksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListThreatModelJobTasksOutput.type = Types::ListThreatModelJobTasksOutput
    ListThreatModelJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListThreatModelJobsInput.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId", traits: {"smithy.api#required" => {}}))
    ListThreatModelJobsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListThreatModelJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListThreatModelJobsInput.type = Types::ListThreatModelJobsInput
    ListThreatModelJobsOutput.add_member(:threat_model_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelJobSummaryList, name: "threatModelJobSummaries"))
    ListThreatModelJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListThreatModelJobsOutput.type = Types::ListThreatModelJobsOutput
    ListThreatModelsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListThreatModelsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListThreatModelsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListThreatModelsInput.type = Types::ListThreatModelsInput
    ListThreatModelsOutput.add_member(:threat_model_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelSummaryList, name: "threatModelSummaries"))
    ListThreatModelsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListThreatModelsOutput.type = Types::ListThreatModelsOutput
    ListThreatsInput.add_member(:threat_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatJobId", traits: {"smithy.api#required" => {}}))
    ListThreatsInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ListThreatsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListThreatsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults"))
    ListThreatsInput.type = Types::ListThreatsInput
    ListThreatsOutput.add_member(:threats, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatSummaryList, name: "threats"))
    ListThreatsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListThreatsOutput.type = Types::ListThreatsOutput
    LogGroupArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupArn, name: "member"))
    LogLocation.add_member(:log_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LogType, name: "logType"))
    LogLocation.add_member(:cloud_watch_log, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "cloudWatchLog"))
    LogLocation.type = Types::LogLocation
    LogType.add_member(:cloudwatch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOUDWATCH", traits: {"smithy.api#enumValue" => "CLOUDWATCH"}))
    ManagementType.add_member(:aws_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MANAGED", traits: {"smithy.api#enumValue" => "AWS_MANAGED"}))
    ManagementType.add_member(:customer_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED"}))
    MemberMetadata.add_member(:user, Types::MemberMetadata::User, ::Smithy::Schema::Shapes::MemberShape.new(target: UserMetadata, name: "user"))
    MemberMetadata.add_member(:unknown, Types::MemberMetadata::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MemberMetadata.type = Types::MemberMetadata
    MembershipConfig.add_member(:user, Types::MembershipConfig::User, ::Smithy::Schema::Shapes::MemberShape.new(target: UserConfig, name: "user"))
    MembershipConfig.add_member(:unknown, Types::MembershipConfig::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MembershipConfig.type = Types::MembershipConfig
    MembershipSummary.add_member(:membership_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipId, name: "membershipId", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:member_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipType, name: "memberType", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:config, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipConfig, name: "config"))
    MembershipSummary.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberMetadata, name: "metadata"))
    MembershipSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MembershipSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    MembershipSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "createdBy", traits: {"smithy.api#required" => {}}))
    MembershipSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "updatedBy", traits: {"smithy.api#required" => {}}))
    MembershipSummary.type = Types::MembershipSummary
    MembershipSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MembershipSummary, name: "member"))
    MembershipType.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    MembershipTypeFilter.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    MembershipTypeFilter.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    NetworkTrafficConfig.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTrafficRuleList, name: "rules"))
    NetworkTrafficConfig.add_member(:custom_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomHeaderList, name: "customHeaders"))
    NetworkTrafficConfig.type = Types::NetworkTrafficConfig
    NetworkTrafficRule.add_member(:effect, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTrafficRuleEffect, name: "effect"))
    NetworkTrafficRule.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pattern"))
    NetworkTrafficRule.add_member(:network_traffic_rule_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTrafficRuleType, name: "networkTrafficRuleType"))
    NetworkTrafficRule.type = Types::NetworkTrafficRule
    NetworkTrafficRuleEffect.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    NetworkTrafficRuleEffect.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    NetworkTrafficRuleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTrafficRule, name: "member"))
    NetworkTrafficRuleType.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "URL", traits: {"smithy.api#enumValue" => "URL"}))
    Pentest.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId", traits: {"smithy.api#required" => {}}))
    Pentest.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    Pentest.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    Pentest.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets", traits: {"smithy.api#required" => {}}))
    Pentest.add_member(:exclude_risk_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskTypeList, name: "excludeRiskTypes"))
    Pentest.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    Pentest.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    Pentest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    Pentest.add_member(:network_traffic_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTrafficConfig, name: "networkTrafficConfig"))
    Pentest.add_member(:code_remediation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationStrategy, name: "codeRemediationStrategy"))
    Pentest.add_member(:clean_up_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CleanUpStrategy, name: "cleanUpStrategy"))
    Pentest.add_member(:disable_managed_skills, ::Smithy::Schema::Shapes::MemberShape.new(target: SkillTypeList, name: "disableManagedSkills"))
    Pentest.add_member(:max_task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxTaskHours"))
    Pentest.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    Pentest.add_member(:report_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilters, name: "reportFilters"))
    Pentest.add_member(:cicd_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CiCdConfiguration, name: "cicdConfiguration"))
    Pentest.add_member(:test_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: TestScope, name: "testScope"))
    Pentest.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Pentest.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Pentest.type = Types::Pentest
    PentestIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    PentestJob.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId"))
    PentestJob.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId"))
    PentestJob.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    PentestJob.add_member(:overview, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "overview"))
    PentestJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    PentestJob.add_member(:endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointList, name: "endpoints"))
    PentestJob.add_member(:actors, ::Smithy::Schema::Shapes::MemberShape.new(target: ActorList, name: "actors"))
    PentestJob.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "documents"))
    PentestJob.add_member(:source_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeRepositoryList, name: "sourceCode"))
    PentestJob.add_member(:exclude_paths, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointList, name: "excludePaths"))
    PentestJob.add_member(:allowed_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointList, name: "allowedDomains"))
    PentestJob.add_member(:exclude_risk_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskTypeList, name: "excludeRiskTypes"))
    PentestJob.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: StepList, name: "steps"))
    PentestJob.add_member(:execution_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ExecutionContextList, name: "executionContext"))
    PentestJob.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    PentestJob.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    PentestJob.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    PentestJob.add_member(:network_traffic_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTrafficConfig, name: "networkTrafficConfig"))
    PentestJob.add_member(:error_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInformation, name: "errorInformation"))
    PentestJob.add_member(:integrated_repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedRepositoryList, name: "integratedRepositories"))
    PentestJob.add_member(:trusted_ca_certificates, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedCaCertificateList, name: "trustedCaCertificates"))
    PentestJob.add_member(:code_remediation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationStrategy, name: "codeRemediationStrategy"))
    PentestJob.add_member(:clean_up_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CleanUpStrategy, name: "cleanUpStrategy"))
    PentestJob.add_member(:disable_managed_skills, ::Smithy::Schema::Shapes::MemberShape.new(target: SkillTypeList, name: "disableManagedSkills"))
    PentestJob.add_member(:max_task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxTaskHours"))
    PentestJob.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "jobType"))
    PentestJob.add_member(:selected_finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "selectedFindingIds"))
    PentestJob.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    PentestJob.add_member(:report_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reportUrl"))
    PentestJob.add_member(:scope_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeResult, name: "scopeResult"))
    PentestJob.add_member(:scope_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeChangeList, name: "scopeChanges"))
    PentestJob.add_member(:cicd_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CiCdConfiguration, name: "cicdConfiguration"))
    PentestJob.add_member(:test_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: TestScope, name: "testScope"))
    PentestJob.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    PentestJob.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    PentestJob.type = Types::PentestJob
    PentestJobIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    PentestJobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestJob, name: "member"))
    PentestJobSummary.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId", traits: {"smithy.api#required" => {}}))
    PentestJobSummary.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId", traits: {"smithy.api#required" => {}}))
    PentestJobSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    PentestJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    PentestJobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    PentestJobSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    PentestJobSummary.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "jobType"))
    PentestJobSummary.add_member(:report_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reportUrl"))
    PentestJobSummary.type = Types::PentestJobSummary
    PentestJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestJobSummary, name: "member"))
    PentestList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Pentest, name: "member"))
    PentestSummary.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId", traits: {"smithy.api#required" => {}}))
    PentestSummary.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    PentestSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    PentestSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    PentestSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    PentestSummary.type = Types::PentestSummary
    PentestSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PentestSummary, name: "member"))
    PortRanges.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRange, name: "member"))
    PrivateConnectionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionSummary, name: "member"))
    PrivateConnectionMode.add_member(:service_managed, Types::PrivateConnectionMode::ServiceManaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceManagedInput, name: "serviceManaged"))
    PrivateConnectionMode.add_member(:self_managed, Types::PrivateConnectionMode::SelfManaged, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManagedInput, name: "selfManaged"))
    PrivateConnectionMode.add_member(:unknown, Types::PrivateConnectionMode::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    PrivateConnectionMode.type = Types::PrivateConnectionMode
    PrivateConnectionSecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionSecurityGroupId, name: "member"))
    PrivateConnectionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    PrivateConnectionStatus.add_member(:create_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    PrivateConnectionStatus.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    PrivateConnectionStatus.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    PrivateConnectionStatus.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    PrivateConnectionSubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionSubnetId, name: "member"))
    PrivateConnectionSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#required" => {}}))
    PrivateConnectionSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionType, name: "type", traits: {"smithy.api#required" => {}}))
    PrivateConnectionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    PrivateConnectionSummary.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "resourceGatewayId"))
    PrivateConnectionSummary.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: HostAddress, name: "hostAddress"))
    PrivateConnectionSummary.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionVpcId, name: "vpcId"))
    PrivateConnectionSummary.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationId"))
    PrivateConnectionSummary.add_member(:certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "certificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    PrivateConnectionSummary.add_member(:dns_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigDnsResolution, name: "dnsResolution"))
    PrivateConnectionSummary.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    PrivateConnectionSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    PrivateConnectionSummary.type = Types::PrivateConnectionSummary
    PrivateConnectionType.add_member(:service_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_MANAGED", traits: {"smithy.api#enumValue" => "SERVICE_MANAGED"}))
    PrivateConnectionType.add_member(:self_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF_MANAGED", traits: {"smithy.api#enumValue" => "SELF_MANAGED"}))
    Provider.add_member(:github, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITHUB", traits: {"smithy.api#enumValue" => "GITHUB"}))
    Provider.add_member(:gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GITLAB", traits: {"smithy.api#enumValue" => "GITLAB"}))
    Provider.add_member(:bitbucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BITBUCKET", traits: {"smithy.api#enumValue" => "BITBUCKET"}))
    Provider.add_member(:confluence, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFLUENCE", traits: {"smithy.api#enumValue" => "CONFLUENCE"}))
    Provider.add_member(:azure_devops, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZURE_DEVOPS", traits: {"smithy.api#enumValue" => "AZURE_DEVOPS"}))
    Provider.add_member(:jira, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JIRA", traits: {"smithy.api#enumValue" => "JIRA"}))
    ProviderInput.add_member(:github, Types::ProviderInput::Github, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubIntegrationInput, name: "github"))
    ProviderInput.add_member(:gitlab, Types::ProviderInput::Gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabIntegrationInput, name: "gitlab"))
    ProviderInput.add_member(:bitbucket, Types::ProviderInput::Bitbucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BitbucketIntegrationInput, name: "bitbucket"))
    ProviderInput.add_member(:confluence, Types::ProviderInput::Confluence, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceIntegrationInput, name: "confluence"))
    ProviderInput.add_member(:azure_dev_ops, Types::ProviderInput::AzureDevOps, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureDevOpsIntegrationInput, name: "azureDevOps"))
    ProviderInput.add_member(:bitbucket_data_center, Types::ProviderInput::BitbucketDataCenter, ::Smithy::Schema::Shapes::MemberShape.new(target: BitbucketDataCenterIntegrationInput, name: "bitbucketDataCenter"))
    ProviderInput.add_member(:jira, Types::ProviderInput::Jira, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraIntegrationInput, name: "jira"))
    ProviderInput.add_member(:unknown, Types::ProviderInput::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProviderInput.type = Types::ProviderInput
    ProviderResourceCapabilities.add_member(:github, Types::ProviderResourceCapabilities::Github, ::Smithy::Schema::Shapes::MemberShape.new(target: GitHubResourceCapabilities, name: "github"))
    ProviderResourceCapabilities.add_member(:gitlab, Types::ProviderResourceCapabilities::Gitlab, ::Smithy::Schema::Shapes::MemberShape.new(target: GitLabResourceCapabilities, name: "gitlab"))
    ProviderResourceCapabilities.add_member(:bitbucket, Types::ProviderResourceCapabilities::Bitbucket, ::Smithy::Schema::Shapes::MemberShape.new(target: BitbucketResourceCapabilities, name: "bitbucket"))
    ProviderResourceCapabilities.add_member(:confluence, Types::ProviderResourceCapabilities::Confluence, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfluenceResourceCapabilities, name: "confluence"))
    ProviderResourceCapabilities.add_member(:azure_dev_ops, Types::ProviderResourceCapabilities::AzureDevOps, ::Smithy::Schema::Shapes::MemberShape.new(target: AzureDevOpsResourceCapabilities, name: "azureDevOps"))
    ProviderResourceCapabilities.add_member(:jira, Types::ProviderResourceCapabilities::Jira, ::Smithy::Schema::Shapes::MemberShape.new(target: JiraResourceCapabilities, name: "jira"))
    ProviderResourceCapabilities.add_member(:unknown, Types::ProviderResourceCapabilities::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ProviderResourceCapabilities.type = Types::ProviderResourceCapabilities
    ProviderType.add_member(:source_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOURCE_CODE", traits: {"smithy.api#enumValue" => "SOURCE_CODE"}))
    ProviderType.add_member(:documentation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENTATION", traits: {"smithy.api#enumValue" => "DOCUMENTATION"}))
    ProviderType.add_member(:issue_tracking, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISSUE_TRACKING", traits: {"smithy.api#enumValue" => "ISSUE_TRACKING"}))
    ReportDestination.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "integrationId", traits: {"smithy.api#required" => {}}))
    ReportDestination.add_member(:container_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "containerId", traits: {"smithy.api#required" => {}}))
    ReportDestination.add_member(:parent_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "parentId"))
    ReportDestination.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "documentId"))
    ReportDestination.type = Types::ReportDestination
    ReportFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilterValue, name: "member"))
    ReportFilters.add_member(:risk_levels, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskLevelFilterList, name: "riskLevels"))
    ReportFilters.add_member(:confidence_levels, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfidenceLevelFilterList, name: "confidenceLevels"))
    ReportFilters.add_member(:statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatusFilterList, name: "statuses"))
    ReportFilters.add_member(:risk_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskTypeFilterList, name: "riskTypes"))
    ReportFilters.add_member(:finding_types, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilterList, name: "findingTypes"))
    ReportFilters.add_member(:task_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionStatusFilterList, name: "taskStatuses"))
    ReportFilters.add_member(:annotation_notes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "annotationNotes"))
    ReportFilters.add_member(:compliance_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "complianceReport"))
    ReportFilters.type = Types::ReportFilters
    ResourceConfigDnsResolution.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    ResourceConfigDnsResolution.add_member(:in_vpc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_VPC", traits: {"smithy.api#enumValue" => "IN_VPC"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:code_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODE_REPOSITORY", traits: {"smithy.api#enumValue" => "CODE_REPOSITORY"}))
    ResourceType.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCUMENT", traits: {"smithy.api#enumValue" => "DOCUMENT"}))
    ResourceType.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROJECT", traits: {"smithy.api#enumValue" => "PROJECT"}))
    RiskLevel.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    RiskLevel.add_member(:informational, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFORMATIONAL", traits: {"smithy.api#enumValue" => "INFORMATIONAL"}))
    RiskLevel.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    RiskLevel.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    RiskLevel.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    RiskLevel.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    RiskLevelFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskLevel, name: "member"))
    RiskType.add_member(:cross_site_scripting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CROSS_SITE_SCRIPTING", traits: {"smithy.api#enumValue" => "CROSS_SITE_SCRIPTING"}))
    RiskType.add_member(:default_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT_CREDENTIALS", traits: {"smithy.api#enumValue" => "DEFAULT_CREDENTIALS"}))
    RiskType.add_member(:insecure_direct_object_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSECURE_DIRECT_OBJECT_REFERENCE", traits: {"smithy.api#enumValue" => "INSECURE_DIRECT_OBJECT_REFERENCE"}))
    RiskType.add_member(:privilege_escalation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVILEGE_ESCALATION", traits: {"smithy.api#enumValue" => "PRIVILEGE_ESCALATION"}))
    RiskType.add_member(:server_side_template_injection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER_SIDE_TEMPLATE_INJECTION", traits: {"smithy.api#enumValue" => "SERVER_SIDE_TEMPLATE_INJECTION"}))
    RiskType.add_member(:command_injection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMAND_INJECTION", traits: {"smithy.api#enumValue" => "COMMAND_INJECTION"}))
    RiskType.add_member(:code_injection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CODE_INJECTION", traits: {"smithy.api#enumValue" => "CODE_INJECTION"}))
    RiskType.add_member(:sql_injection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL_INJECTION", traits: {"smithy.api#enumValue" => "SQL_INJECTION"}))
    RiskType.add_member(:arbitrary_file_upload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARBITRARY_FILE_UPLOAD", traits: {"smithy.api#enumValue" => "ARBITRARY_FILE_UPLOAD"}))
    RiskType.add_member(:insecure_deserialization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSECURE_DESERIALIZATION", traits: {"smithy.api#enumValue" => "INSECURE_DESERIALIZATION"}))
    RiskType.add_member(:local_file_inclusion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOCAL_FILE_INCLUSION", traits: {"smithy.api#enumValue" => "LOCAL_FILE_INCLUSION"}))
    RiskType.add_member(:information_disclosure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFORMATION_DISCLOSURE", traits: {"smithy.api#enumValue" => "INFORMATION_DISCLOSURE"}))
    RiskType.add_member(:path_traversal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PATH_TRAVERSAL", traits: {"smithy.api#enumValue" => "PATH_TRAVERSAL"}))
    RiskType.add_member(:server_side_request_forgery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVER_SIDE_REQUEST_FORGERY", traits: {"smithy.api#enumValue" => "SERVER_SIDE_REQUEST_FORGERY"}))
    RiskType.add_member(:json_web_token_vulnerabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON_WEB_TOKEN_VULNERABILITIES", traits: {"smithy.api#enumValue" => "JSON_WEB_TOKEN_VULNERABILITIES"}))
    RiskType.add_member(:xml_external_entity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XML_EXTERNAL_ENTITY", traits: {"smithy.api#enumValue" => "XML_EXTERNAL_ENTITY"}))
    RiskType.add_member(:file_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_DELETION", traits: {"smithy.api#enumValue" => "FILE_DELETION"}))
    RiskType.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))
    RiskType.add_member(:graphql_vulnerabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GRAPHQL_VULNERABILITIES", traits: {"smithy.api#enumValue" => "GRAPHQL_VULNERABILITIES"}))
    RiskType.add_member(:business_logic_vulnerabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_LOGIC_VULNERABILITIES", traits: {"smithy.api#enumValue" => "BUSINESS_LOGIC_VULNERABILITIES"}))
    RiskType.add_member(:cryptographic_vulnerabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRYPTOGRAPHIC_VULNERABILITIES", traits: {"smithy.api#enumValue" => "CRYPTOGRAPHIC_VULNERABILITIES"}))
    RiskType.add_member(:denial_of_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENIAL_OF_SERVICE", traits: {"smithy.api#enumValue" => "DENIAL_OF_SERVICE"}))
    RiskType.add_member(:file_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_ACCESS", traits: {"smithy.api#enumValue" => "FILE_ACCESS"}))
    RiskType.add_member(:file_creation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_CREATION", traits: {"smithy.api#enumValue" => "FILE_CREATION"}))
    RiskType.add_member(:database_modification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE_MODIFICATION", traits: {"smithy.api#enumValue" => "DATABASE_MODIFICATION"}))
    RiskType.add_member(:database_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATABASE_ACCESS", traits: {"smithy.api#enumValue" => "DATABASE_ACCESS"}))
    RiskType.add_member(:outbound_service_request, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUTBOUND_SERVICE_REQUEST", traits: {"smithy.api#enumValue" => "OUTBOUND_SERVICE_REQUEST"}))
    RiskType.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    RiskTypeFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskType, name: "member"))
    RiskTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskType, name: "member"))
    S3BucketArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BucketArn, name: "member"))
    ScopeChange.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "integrationId", traits: {"smithy.api#required" => {}}))
    ScopeChange.add_member(:provider_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "providerResourceId", traits: {"smithy.api#required" => {}}))
    ScopeChange.add_member(:base_commit_sha, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "baseCommitSha"))
    ScopeChange.add_member(:head_commit_sha, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "headCommitSha", traits: {"smithy.api#required" => {}}))
    ScopeChange.add_member(:trigger_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "triggerRunId"))
    ScopeChange.type = Types::ScopeChange
    ScopeChangeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeChange, name: "member"))
    ScopeDecision.add_member(:in_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_SCOPE", traits: {"smithy.api#enumValue" => "IN_SCOPE"}))
    ScopeDecision.add_member(:scoped_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCOPED_OUT", traits: {"smithy.api#enumValue" => "SCOPED_OUT"}))
    ScopeDecision.add_member(:scope_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCOPE_CONFLICT", traits: {"smithy.api#enumValue" => "SCOPE_CONFLICT"}))
    ScopeResult.add_member(:decision, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeDecision, name: "decision", traits: {"smithy.api#required" => {}}))
    ScopeResult.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason", traits: {"smithy.api#required" => {}}))
    ScopeResult.type = Types::ScopeResult
    SecretArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretArn, name: "member"))
    SecurityGroupArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupArn, name: "member"))
    SecurityRequirementArtifact.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementArtifactName, name: "name", traits: {"smithy.api#required" => {}}))
    SecurityRequirementArtifact.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementArtifactFormat, name: "format", traits: {"smithy.api#required" => {}}))
    SecurityRequirementArtifact.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementDocumentContent, name: "content", traits: {"smithy.api#required" => {}}))
    SecurityRequirementArtifact.type = Types::SecurityRequirementArtifact
    SecurityRequirementArtifactFormat.add_member(:md, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MD", traits: {"smithy.api#enumValue" => "MD"}))
    SecurityRequirementArtifactFormat.add_member(:pdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PDF", traits: {"smithy.api#enumValue" => "PDF"}))
    SecurityRequirementArtifactFormat.add_member(:txt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TXT", traits: {"smithy.api#enumValue" => "TXT"}))
    SecurityRequirementArtifactFormat.add_member(:docx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCX", traits: {"smithy.api#enumValue" => "DOCX"}))
    SecurityRequirementArtifactFormat.add_member(:doc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOC", traits: {"smithy.api#enumValue" => "DOC"}))
    SecurityRequirementArtifactList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementArtifact, name: "member"))
    SecurityRequirementNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementName, name: "member"))
    SecurityRequirementPackImportStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    SecurityRequirementPackImportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    SecurityRequirementPackImportStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    SecurityRequirementPackImportStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    SecurityRequirementPackStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    SecurityRequirementPackStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    SecurityRequirementPackSummary.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    SecurityRequirementPackSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackName, name: "name", traits: {"smithy.api#required" => {}}))
    SecurityRequirementPackSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    SecurityRequirementPackSummary.add_member(:vendor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vendorName"))
    SecurityRequirementPackSummary.add_member(:management_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagementType, name: "managementType", traits: {"smithy.api#required" => {}}))
    SecurityRequirementPackSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackStatus, name: "status", traits: {"smithy.api#required" => {}}))
    SecurityRequirementPackSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    SecurityRequirementPackSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    SecurityRequirementPackSummary.type = Types::SecurityRequirementPackSummary
    SecurityRequirementPackSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackSummary, name: "member"))
    SecurityRequirementSummary.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    SecurityRequirementSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementName, name: "name", traits: {"smithy.api#required" => {}}))
    SecurityRequirementSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description", traits: {"smithy.api#required" => {}}))
    SecurityRequirementSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    SecurityRequirementSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    SecurityRequirementSummary.type = Types::SecurityRequirementSummary
    SecurityRequirementSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementSummary, name: "member"))
    SelfManagedInput.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationId", traits: {"smithy.api#required" => {}}))
    SelfManagedInput.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateChain, name: "certificate"))
    SelfManagedInput.type = Types::SelfManagedInput
    ServiceManagedInput.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: HostAddress, name: "hostAddress", traits: {"smithy.api#required" => {}}))
    ServiceManagedInput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionVpcId, name: "vpcId", traits: {"smithy.api#required" => {}}))
    ServiceManagedInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionSubnetIds, name: "subnetIds", traits: {"smithy.api#required" => {}}))
    ServiceManagedInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionSecurityGroupIds, name: "securityGroupIds"))
    ServiceManagedInput.add_member(:ip_address_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IpAddressType, name: "ipAddressType"))
    ServiceManagedInput.add_member(:ipv4_addresses_per_eni, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxIpv4AddressesPerEni, name: "ipv4AddressesPerEni"))
    ServiceManagedInput.add_member(:port_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: PortRanges, name: "portRanges"))
    ServiceManagedInput.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateChain, name: "certificate"))
    ServiceManagedInput.add_member(:dns_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigDnsResolution, name: "dnsResolution"))
    ServiceManagedInput.type = Types::ServiceManagedInput
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SkillType.add_member(:finding_personalization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINDING_PERSONALIZATION", traits: {"smithy.api#enumValue" => "FINDING_PERSONALIZATION"}))
    SkillType.add_member(:login_optimization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOGIN_OPTIMIZATION", traits: {"smithy.api#enumValue" => "LOGIN_OPTIMIZATION"}))
    SkillTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SkillType, name: "member"))
    SourceCodeRepository.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "s3Location"))
    SourceCodeRepository.type = Types::SourceCodeRepository
    SourceCodeRepositoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeRepository, name: "member"))
    StartCodeRemediationInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    StartCodeRemediationInput.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId"))
    StartCodeRemediationInput.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId"))
    StartCodeRemediationInput.add_member(:finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingIdList, name: "findingIds", traits: {"smithy.api#required" => {}}))
    StartCodeRemediationInput.type = Types::StartCodeRemediationInput
    StartCodeRemediationOutput.type = Types::StartCodeRemediationOutput
    StartCodeReviewJobInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    StartCodeReviewJobInput.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId", traits: {"smithy.api#required" => {}}))
    StartCodeReviewJobInput.add_member(:diff_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DiffSource, name: "diffSource"))
    StartCodeReviewJobInput.type = Types::StartCodeReviewJobInput
    StartCodeReviewJobOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    StartCodeReviewJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    StartCodeReviewJobOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    StartCodeReviewJobOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    StartCodeReviewJobOutput.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId", traits: {"smithy.api#required" => {}}))
    StartCodeReviewJobOutput.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId", traits: {"smithy.api#required" => {}}))
    StartCodeReviewJobOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    StartCodeReviewJobOutput.type = Types::StartCodeReviewJobOutput
    StartPentestJobInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    StartPentestJobInput.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId", traits: {"smithy.api#required" => {}}))
    StartPentestJobInput.add_member(:job_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobType, name: "jobType"))
    StartPentestJobInput.add_member(:selected_finding_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "selectedFindingIds"))
    StartPentestJobInput.add_member(:scope_changes, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeChangeList, name: "scopeChanges"))
    StartPentestJobInput.type = Types::StartPentestJobInput
    StartPentestJobOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    StartPentestJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    StartPentestJobOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    StartPentestJobOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    StartPentestJobOutput.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId"))
    StartPentestJobOutput.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId"))
    StartPentestJobOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    StartPentestJobOutput.type = Types::StartPentestJobOutput
    StartThreatModelJobInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    StartThreatModelJobInput.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId", traits: {"smithy.api#required" => {}}))
    StartThreatModelJobInput.type = Types::StartThreatModelJobInput
    StartThreatModelJobOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    StartThreatModelJobOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    StartThreatModelJobOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    StartThreatModelJobOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    StartThreatModelJobOutput.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId"))
    StartThreatModelJobOutput.add_member(:threat_model_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelJobId", traits: {"smithy.api#required" => {}}))
    StartThreatModelJobOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    StartThreatModelJobOutput.type = Types::StartThreatModelJobOutput
    Step.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: StepName, name: "name"))
    Step.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StepStatus, name: "status"))
    Step.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Step.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Step.type = Types::Step
    StepList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Step, name: "member"))
    StepName.add_member(:preflight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFLIGHT", traits: {"smithy.api#enumValue" => "PREFLIGHT"}))
    StepName.add_member(:static_analysis, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATIC_ANALYSIS", traits: {"smithy.api#enumValue" => "STATIC_ANALYSIS"}))
    StepName.add_member(:pentest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENTEST", traits: {"smithy.api#enumValue" => "PENTEST"}))
    StepName.add_member(:finalizing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINALIZING", traits: {"smithy.api#enumValue" => "FINALIZING"}))
    StepName.add_member(:validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION", traits: {"smithy.api#enumValue" => "VALIDATION"}))
    StepStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    StepStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    StepStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    StepStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StepStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    StopCodeReviewJobInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    StopCodeReviewJobInput.add_member(:code_review_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewJobId", traits: {"smithy.api#required" => {}}))
    StopCodeReviewJobInput.type = Types::StopCodeReviewJobInput
    StopCodeReviewJobOutput.type = Types::StopCodeReviewJobOutput
    StopPentestJobInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    StopPentestJobInput.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId", traits: {"smithy.api#required" => {}}))
    StopPentestJobInput.type = Types::StopPentestJobInput
    StopPentestJobOutput.type = Types::StopPentestJobOutput
    StopThreatModelJobInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    StopThreatModelJobInput.add_member(:threat_model_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelJobId", traits: {"smithy.api#required" => {}}))
    StopThreatModelJobInput.type = Types::StopThreatModelJobInput
    StopThreatModelJobOutput.type = Types::StopThreatModelJobOutput
    StrideCategory.add_member(:spoofing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPOOFING", traits: {"smithy.api#enumValue" => "SPOOFING"}))
    StrideCategory.add_member(:tampering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TAMPERING", traits: {"smithy.api#enumValue" => "TAMPERING"}))
    StrideCategory.add_member(:repudiation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPUDIATION", traits: {"smithy.api#enumValue" => "REPUDIATION"}))
    StrideCategory.add_member(:information_disclosure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFORMATION_DISCLOSURE", traits: {"smithy.api#enumValue" => "INFORMATION_DISCLOSURE"}))
    StrideCategory.add_member(:denial_of_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENIAL_OF_SERVICE", traits: {"smithy.api#enumValue" => "DENIAL_OF_SERVICE"}))
    StrideCategory.add_member(:elevation_of_privilege, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELEVATION_OF_PRIVILEGE", traits: {"smithy.api#enumValue" => "ELEVATION_OF_PRIVILEGE"}))
    StrideCategoryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StrideCategory, name: "member"))
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    SubnetArns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArn, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TargetDomain.add_member(:target_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainId, name: "targetDomainId", traits: {"smithy.api#required" => {}}))
    TargetDomain.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainName", traits: {"smithy.api#required" => {}}))
    TargetDomain.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainStatus, name: "verificationStatus"))
    TargetDomain.add_member(:verification_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "verificationStatusReason"))
    TargetDomain.add_member(:verification_details, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationDetails, name: "verificationDetails"))
    TargetDomain.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    TargetDomain.add_member(:verified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "verifiedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    TargetDomain.type = Types::TargetDomain
    TargetDomainIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TargetDomainList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomain, name: "member"))
    TargetDomainStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    TargetDomainStatus.add_member(:verified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VERIFIED", traits: {"smithy.api#enumValue" => "VERIFIED"}))
    TargetDomainStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TargetDomainStatus.add_member(:unreachable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNREACHABLE", traits: {"smithy.api#enumValue" => "UNREACHABLE"}))
    TargetDomainSummary.add_member(:target_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainId, name: "targetDomainId", traits: {"smithy.api#required" => {}}))
    TargetDomainSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainName", traits: {"smithy.api#required" => {}}))
    TargetDomainSummary.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainStatus, name: "verificationStatus"))
    TargetDomainSummary.type = Types::TargetDomainSummary
    TargetDomainSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainSummary, name: "member"))
    Task.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskId", traits: {"smithy.api#required" => {}}))
    Task.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId"))
    Task.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId"))
    Task.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    Task.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    Task.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    Task.add_member(:categories, ::Smithy::Schema::Shapes::MemberShape.new(target: CategoryList, name: "categories"))
    Task.add_member(:risk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskType, name: "riskType"))
    Task.add_member(:target_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "targetEndpoint"))
    Task.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionStatus, name: "executionStatus"))
    Task.add_member(:logs_location, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLocation, name: "logsLocation"))
    Task.add_member(:task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "taskHours"))
    Task.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Task.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Task.type = Types::Task
    TaskExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TaskExecutionStatus.add_member(:aborted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORTED", traits: {"smithy.api#enumValue" => "ABORTED"}))
    TaskExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    TaskExecutionStatus.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    TaskExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TaskExecutionStatusFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionStatus, name: "member"))
    TaskIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TaskList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Task, name: "member"))
    TaskSummary.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskId", traits: {"smithy.api#required" => {}}))
    TaskSummary.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId"))
    TaskSummary.add_member(:pentest_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestJobId"))
    TaskSummary.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    TaskSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    TaskSummary.add_member(:risk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskType, name: "riskType"))
    TaskSummary.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionStatus, name: "executionStatus"))
    TaskSummary.add_member(:task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "taskHours"))
    TaskSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    TaskSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    TaskSummary.type = Types::TaskSummary
    TaskSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskSummary, name: "member"))
    TestScope.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TestScopeType, name: "type", traits: {"smithy.api#required" => {}}))
    TestScope.type = Types::TestScope
    TestScopeType.add_member(:web_app, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEB_APP", traits: {"smithy.api#enumValue" => "WEB_APP"}))
    TestScopeType.add_member(:generative_ai_app, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENERATIVE_AI_APP", traits: {"smithy.api#enumValue" => "GENERATIVE_AI_APP"}))
    Threat.add_member(:threat_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatId"))
    Threat.add_member(:threat_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatJobId"))
    Threat.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    Threat.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statement"))
    Threat.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatSeverity, name: "severity"))
    Threat.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatStatus, name: "status"))
    Threat.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comments"))
    Threat.add_member(:threat_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatSource"))
    Threat.add_member(:prerequisites, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prerequisites"))
    Threat.add_member(:threat_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatAction"))
    Threat.add_member(:threat_impact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatImpact"))
    Threat.add_member(:impacted_goal, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "impactedGoal"))
    Threat.add_member(:impacted_assets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "impactedAssets"))
    Threat.add_member(:anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatAnchorShape, name: "anchor"))
    Threat.add_member(:evidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatEvidenceList, name: "evidence"))
    Threat.add_member(:stride, ::Smithy::Schema::Shapes::MemberShape.new(target: StrideCategoryList, name: "stride"))
    Threat.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendation"))
    Threat.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatActor, name: "createdBy"))
    Threat.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatActor, name: "updatedBy"))
    Threat.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Threat.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    Threat.type = Types::Threat
    ThreatActor.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER", traits: {"smithy.api#enumValue" => "CUSTOMER"}))
    ThreatActor.add_member(:agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGENT", traits: {"smithy.api#enumValue" => "AGENT"}))
    ThreatAnchorShape.add_member(:kind, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "kind"))
    ThreatAnchorShape.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    ThreatAnchorShape.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "packageId"))
    ThreatAnchorShape.type = Types::ThreatAnchorShape
    ThreatEvidenceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatEvidenceShape, name: "member"))
    ThreatEvidenceShape.add_member(:package_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "packageId"))
    ThreatEvidenceShape.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "path"))
    ThreatEvidenceShape.type = Types::ThreatEvidenceShape
    ThreatIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ThreatList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Threat, name: "member"))
    ThreatModel.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId", traits: {"smithy.api#required" => {}}))
    ThreatModel.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ThreatModel.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    ThreatModel.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    ThreatModel.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets", traits: {"smithy.api#required" => {}}))
    ThreatModel.add_member(:scope_docs, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "scopeDocs"))
    ThreatModel.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    ThreatModel.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    ThreatModel.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    ThreatModel.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModel.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModel.type = Types::ThreatModel
    ThreatModelIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ThreatModelJob.add_member(:threat_model_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelJobId"))
    ThreatModelJob.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId"))
    ThreatModelJob.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    ThreatModelJob.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    ThreatModelJob.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    ThreatModelJob.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelJob.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelJob.add_member(:execution_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "executionStartTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelJob.add_member(:execution_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "executionEndTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelJob.add_member(:source_code, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeRepositoryList, name: "sourceCode"))
    ThreatModelJob.add_member(:integrated_repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedRepositoryList, name: "integratedRepositories"))
    ThreatModelJob.add_member(:documents, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "documents"))
    ThreatModelJob.add_member(:scope_docs, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "scopeDocs"))
    ThreatModelJob.add_member(:error_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInformation, name: "errorInformation"))
    ThreatModelJob.add_member(:system_overview, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "systemOverview"))
    ThreatModelJob.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    ThreatModelJob.type = Types::ThreatModelJob
    ThreatModelJobIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ThreatModelJobList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelJob, name: "member"))
    ThreatModelJobSummary.add_member(:threat_model_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelJobId", traits: {"smithy.api#required" => {}}))
    ThreatModelJobSummary.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId", traits: {"smithy.api#required" => {}}))
    ThreatModelJobSummary.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    ThreatModelJobSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    ThreatModelJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "status"))
    ThreatModelJobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelJobSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelJobSummary.type = Types::ThreatModelJobSummary
    ThreatModelJobSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelJobSummary, name: "member"))
    ThreatModelJobTask.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskId", traits: {"smithy.api#required" => {}}))
    ThreatModelJobTask.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId"))
    ThreatModelJobTask.add_member(:threat_model_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelJobId"))
    ThreatModelJobTask.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    ThreatModelJobTask.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    ThreatModelJobTask.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    ThreatModelJobTask.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionStatus, name: "executionStatus"))
    ThreatModelJobTask.add_member(:logs_location, ::Smithy::Schema::Shapes::MemberShape.new(target: LogLocation, name: "logsLocation"))
    ThreatModelJobTask.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelJobTask.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelJobTask.type = Types::ThreatModelJobTask
    ThreatModelJobTaskList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelJobTask, name: "member"))
    ThreatModelJobTaskSummary.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskId", traits: {"smithy.api#required" => {}}))
    ThreatModelJobTaskSummary.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId"))
    ThreatModelJobTaskSummary.add_member(:threat_model_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelJobId"))
    ThreatModelJobTaskSummary.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    ThreatModelJobTaskSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    ThreatModelJobTaskSummary.add_member(:execution_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskExecutionStatus, name: "executionStatus"))
    ThreatModelJobTaskSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelJobTaskSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelJobTaskSummary.type = Types::ThreatModelJobTaskSummary
    ThreatModelJobTaskSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelJobTaskSummary, name: "member"))
    ThreatModelList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModel, name: "member"))
    ThreatModelSummary.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId", traits: {"smithy.api#required" => {}}))
    ThreatModelSummary.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    ThreatModelSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title", traits: {"smithy.api#required" => {}}))
    ThreatModelSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatModelSummary.type = Types::ThreatModelSummary
    ThreatModelSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatModelSummary, name: "member"))
    ThreatSeverity.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRITICAL", traits: {"smithy.api#enumValue" => "CRITICAL"}))
    ThreatSeverity.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "HIGH"}))
    ThreatSeverity.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "MEDIUM"}))
    ThreatSeverity.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "LOW"}))
    ThreatSeverity.add_member(:info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INFO", traits: {"smithy.api#enumValue" => "INFO"}))
    ThreatStatus.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    ThreatStatus.add_member(:resolved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOLVED", traits: {"smithy.api#enumValue" => "RESOLVED"}))
    ThreatStatus.add_member(:dismissed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISMISSED", traits: {"smithy.api#enumValue" => "DISMISSED"}))
    ThreatSummary.add_member(:threat_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatId"))
    ThreatSummary.add_member(:threat_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatJobId"))
    ThreatSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    ThreatSummary.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statement"))
    ThreatSummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatSeverity, name: "severity"))
    ThreatSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatStatus, name: "status"))
    ThreatSummary.add_member(:stride, ::Smithy::Schema::Shapes::MemberShape.new(target: StrideCategoryList, name: "stride"))
    ThreatSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatActor, name: "createdBy"))
    ThreatSummary.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatActor, name: "updatedBy"))
    ThreatSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    ThreatSummary.type = Types::ThreatSummary
    ThreatSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatSummary, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "quotaCode"))
    ThrottlingException.type = Types::ThrottlingException
    TriggerEvent.add_member(:pull_request_ready_for_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_READY_FOR_REVIEW", traits: {"smithy.api#enumValue" => "PULL_REQUEST_READY_FOR_REVIEW"}))
    TriggerEvent.add_member(:pull_request_draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_DRAFT", traits: {"smithy.api#enumValue" => "PULL_REQUEST_DRAFT"}))
    TriggerEvent.add_member(:pull_request_label_added, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PULL_REQUEST_LABEL_ADDED", traits: {"smithy.api#enumValue" => "PULL_REQUEST_LABEL_ADDED"}))
    TriggerEventList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerEvent, name: "member"))
    TriggerFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerFilterType, name: "type", traits: {"smithy.api#required" => {}}))
    TriggerFilter.add_member(:patterns, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerRegexPatternList, name: "patterns", traits: {"smithy.api#required" => {}}))
    TriggerFilter.add_member(:match_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerFilterMatchMode, name: "matchMode"))
    TriggerFilter.type = Types::TriggerFilter
    TriggerFilterGroup.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerEventList, name: "events"))
    TriggerFilterGroup.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerFilterList, name: "filters"))
    TriggerFilterGroup.type = Types::TriggerFilterGroup
    TriggerFilterGroups.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerFilterGroup, name: "member"))
    TriggerFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerFilter, name: "member"))
    TriggerFilterMatchMode.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INCLUDE", traits: {"smithy.api#enumValue" => "INCLUDE"}))
    TriggerFilterMatchMode.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXCLUDE", traits: {"smithy.api#enumValue" => "EXCLUDE"}))
    TriggerFilterType.add_member(:target_branch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TARGET_BRANCH", traits: {"smithy.api#enumValue" => "TARGET_BRANCH"}))
    TriggerFilterType.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LABEL", traits: {"smithy.api#enumValue" => "LABEL"}))
    TriggerRegexPatternList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TriggerRegexPattern, name: "member"))
    TrustedCaCertificate.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: CaCertificateSource, name: "source", traits: {"smithy.api#required" => {}}))
    TrustedCaCertificate.type = Types::TrustedCaCertificate
    TrustedCaCertificateList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TrustedCaCertificate, name: "member"))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateAgentSpaceInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    UpdateAgentSpaceInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentName, name: "name"))
    UpdateAgentSpaceInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateAgentSpaceInput.add_member(:aws_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSResources, name: "awsResources"))
    UpdateAgentSpaceInput.add_member(:target_domain_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainIdList, name: "targetDomainIds"))
    UpdateAgentSpaceInput.add_member(:code_review_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewSettings, name: "codeReviewSettings"))
    UpdateAgentSpaceInput.type = Types::UpdateAgentSpaceInput
    UpdateAgentSpaceOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateAgentSpaceOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateAgentSpaceOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateAgentSpaceOutput.add_member(:aws_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSResources, name: "awsResources"))
    UpdateAgentSpaceOutput.add_member(:target_domain_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainIdList, name: "targetDomainIds"))
    UpdateAgentSpaceOutput.add_member(:code_review_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeReviewSettings, name: "codeReviewSettings"))
    UpdateAgentSpaceOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateAgentSpaceOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateAgentSpaceOutput.type = Types::UpdateAgentSpaceOutput
    UpdateApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "roleArn", traits: {"smithy.api#property" => {}}))
    UpdateApplicationRequest.add_member(:default_kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultKmsKeyId, name: "defaultKmsKeyId"))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}}))
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse
    UpdateCodeReviewInput.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId", traits: {"smithy.api#required" => {}}))
    UpdateCodeReviewInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    UpdateCodeReviewInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    UpdateCodeReviewInput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets"))
    UpdateCodeReviewInput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    UpdateCodeReviewInput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    UpdateCodeReviewInput.add_member(:code_remediation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationStrategy, name: "codeRemediationStrategy"))
    UpdateCodeReviewInput.add_member(:validation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMode, name: "validationMode"))
    UpdateCodeReviewInput.add_member(:max_task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxTaskHours"))
    UpdateCodeReviewInput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    UpdateCodeReviewInput.add_member(:report_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilters, name: "reportFilters"))
    UpdateCodeReviewInput.type = Types::UpdateCodeReviewInput
    UpdateCodeReviewOutput.add_member(:code_review_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "codeReviewId", traits: {"smithy.api#required" => {}}))
    UpdateCodeReviewOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    UpdateCodeReviewOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateCodeReviewOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateCodeReviewOutput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets"))
    UpdateCodeReviewOutput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    UpdateCodeReviewOutput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    UpdateCodeReviewOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    UpdateCodeReviewOutput.add_member(:code_remediation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationStrategy, name: "codeRemediationStrategy"))
    UpdateCodeReviewOutput.add_member(:validation_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationMode, name: "validationMode"))
    UpdateCodeReviewOutput.add_member(:max_task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxTaskHours"))
    UpdateCodeReviewOutput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    UpdateCodeReviewOutput.add_member(:report_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilters, name: "reportFilters"))
    UpdateCodeReviewOutput.type = Types::UpdateCodeReviewOutput
    UpdateFindingInput.add_member(:finding_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "findingId", traits: {"smithy.api#required" => {}}))
    UpdateFindingInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    UpdateFindingInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    UpdateFindingInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateFindingInput.add_member(:risk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "riskType"))
    UpdateFindingInput.add_member(:risk_level, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskLevel, name: "riskLevel"))
    UpdateFindingInput.add_member(:risk_score, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "riskScore"))
    UpdateFindingInput.add_member(:attack_script, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "attackScript"))
    UpdateFindingInput.add_member(:reasoning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reasoning"))
    UpdateFindingInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingStatus, name: "status"))
    UpdateFindingInput.add_member(:customer_note, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "customerNote"))
    UpdateFindingInput.type = Types::UpdateFindingInput
    UpdateFindingOutput.type = Types::UpdateFindingOutput
    UpdateIntegratedResourcesInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentSpaceId, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    UpdateIntegratedResourcesInput.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationId, name: "integrationId", traits: {"smithy.api#required" => {}}))
    UpdateIntegratedResourcesInput.add_member(:items, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegratedResourceInputItemList, name: "items", traits: {"smithy.api#required" => {}}))
    UpdateIntegratedResourcesInput.type = Types::UpdateIntegratedResourcesInput
    UpdateIntegratedResourcesOutput.type = Types::UpdateIntegratedResourcesOutput
    UpdateIntegrationInput.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationId, name: "integrationId", traits: {"smithy.api#required" => {}}))
    UpdateIntegrationInput.add_member(:webhook_action, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookAction, name: "webhookAction", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateIntegrationInput.type = Types::UpdateIntegrationInput
    UpdateIntegrationOutput.add_member(:integration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: IntegrationId, name: "integrationId", traits: {"smithy.api#required" => {}}))
    UpdateIntegrationOutput.add_member(:webhook_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "webhookUrl"))
    UpdateIntegrationOutput.add_member(:secret, ::Smithy::Schema::Shapes::MemberShape.new(target: WebhookSecret, name: "secret", traits: {"smithy.api#notProperty" => {}}))
    UpdateIntegrationOutput.type = Types::UpdateIntegrationOutput
    UpdatePentestInput.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId", traits: {"smithy.api#required" => {}}))
    UpdatePentestInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    UpdatePentestInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    UpdatePentestInput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets"))
    UpdatePentestInput.add_member(:exclude_risk_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskTypeList, name: "excludeRiskTypes"))
    UpdatePentestInput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    UpdatePentestInput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    UpdatePentestInput.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "vpcConfig"))
    UpdatePentestInput.add_member(:network_traffic_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkTrafficConfig, name: "networkTrafficConfig"))
    UpdatePentestInput.add_member(:code_remediation_strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: CodeRemediationStrategy, name: "codeRemediationStrategy"))
    UpdatePentestInput.add_member(:disable_managed_skills, ::Smithy::Schema::Shapes::MemberShape.new(target: SkillTypeList, name: "disableManagedSkills"))
    UpdatePentestInput.add_member(:max_task_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "maxTaskHours"))
    UpdatePentestInput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    UpdatePentestInput.add_member(:report_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilters, name: "reportFilters"))
    UpdatePentestInput.add_member(:cicd_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CiCdConfiguration, name: "cicdConfiguration"))
    UpdatePentestInput.add_member(:test_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: TestScope, name: "testScope"))
    UpdatePentestInput.type = Types::UpdatePentestInput
    UpdatePentestOutput.add_member(:pentest_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "pentestId"))
    UpdatePentestOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    UpdatePentestOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdatePentestOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdatePentestOutput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets"))
    UpdatePentestOutput.add_member(:exclude_risk_types, ::Smithy::Schema::Shapes::MemberShape.new(target: RiskTypeList, name: "excludeRiskTypes"))
    UpdatePentestOutput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    UpdatePentestOutput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    UpdatePentestOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    UpdatePentestOutput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    UpdatePentestOutput.add_member(:report_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFilters, name: "reportFilters"))
    UpdatePentestOutput.add_member(:cicd_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CiCdConfiguration, name: "cicdConfiguration"))
    UpdatePentestOutput.add_member(:test_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: TestScope, name: "testScope"))
    UpdatePentestOutput.type = Types::UpdatePentestOutput
    UpdatePrivateConnectionCertificateInput.add_member(:private_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "privateConnectionName", traits: {"smithy.api#required" => {}}))
    UpdatePrivateConnectionCertificateInput.add_member(:certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateChain, name: "certificate", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdatePrivateConnectionCertificateInput.type = Types::UpdatePrivateConnectionCertificateInput
    UpdatePrivateConnectionCertificateOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdatePrivateConnectionCertificateOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionType, name: "type", traits: {"smithy.api#required" => {}}))
    UpdatePrivateConnectionCertificateOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    UpdatePrivateConnectionCertificateOutput.add_member(:resource_gateway_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceGatewayId, name: "resourceGatewayId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:host_address, ::Smithy::Schema::Shapes::MemberShape.new(target: HostAddress, name: "hostAddress"))
    UpdatePrivateConnectionCertificateOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PrivateConnectionVpcId, name: "vpcId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:resource_configuration_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigurationId, name: "resourceConfigurationId"))
    UpdatePrivateConnectionCertificateOutput.add_member(:certificate_expiry_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "certificateExpiryTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdatePrivateConnectionCertificateOutput.add_member(:dns_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceConfigDnsResolution, name: "dnsResolution"))
    UpdatePrivateConnectionCertificateOutput.add_member(:failure_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "failureMessage"))
    UpdatePrivateConnectionCertificateOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    UpdatePrivateConnectionCertificateOutput.type = Types::UpdatePrivateConnectionCertificateOutput
    UpdateSecurityRequirementEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementName, name: "name", traits: {"smithy.api#required" => {}}))
    UpdateSecurityRequirementEntry.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateSecurityRequirementEntry.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domain"))
    UpdateSecurityRequirementEntry.add_member(:evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "evaluation"))
    UpdateSecurityRequirementEntry.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "remediation"))
    UpdateSecurityRequirementEntry.type = Types::UpdateSecurityRequirementEntry
    UpdateSecurityRequirementEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSecurityRequirementEntry, name: "member"))
    UpdateSecurityRequirementPackInput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    UpdateSecurityRequirementPackInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackName, name: "name"))
    UpdateSecurityRequirementPackInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateSecurityRequirementPackInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackStatus, name: "status"))
    UpdateSecurityRequirementPackInput.type = Types::UpdateSecurityRequirementPackInput
    UpdateSecurityRequirementPackOutput.add_member(:pack_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackId, name: "packId", traits: {"smithy.api#required" => {}}))
    UpdateSecurityRequirementPackOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackName, name: "name"))
    UpdateSecurityRequirementPackOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateSecurityRequirementPackOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityRequirementPackStatus, name: "status"))
    UpdateSecurityRequirementPackOutput.type = Types::UpdateSecurityRequirementPackOutput
    UpdateTargetDomainInput.add_member(:target_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainId, name: "targetDomainId", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateTargetDomainInput.add_member(:verification_method, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainVerificationMethod, name: "verificationMethod", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateTargetDomainInput.type = Types::UpdateTargetDomainInput
    UpdateTargetDomainOutput.add_member(:target_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainId, name: "targetDomainId", traits: {"smithy.api#notProperty" => {}, "smithy.api#required" => {}}))
    UpdateTargetDomainOutput.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainName", traits: {"smithy.api#required" => {}}))
    UpdateTargetDomainOutput.add_member(:verification_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainStatus, name: "verificationStatus", traits: {"smithy.api#required" => {}}))
    UpdateTargetDomainOutput.add_member(:verification_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "verificationStatusReason"))
    UpdateTargetDomainOutput.add_member(:verification_details, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationDetails, name: "verificationDetails"))
    UpdateTargetDomainOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateTargetDomainOutput.add_member(:verified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "verifiedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateTargetDomainOutput.type = Types::UpdateTargetDomainOutput
    UpdateThreatInput.add_member(:threat_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatId", traits: {"smithy.api#required" => {}}))
    UpdateThreatInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    UpdateThreatInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    UpdateThreatInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatStatus, name: "status"))
    UpdateThreatInput.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comments"))
    UpdateThreatInput.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statement"))
    UpdateThreatInput.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatSeverity, name: "severity"))
    UpdateThreatInput.add_member(:threat_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatSource"))
    UpdateThreatInput.add_member(:prerequisites, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prerequisites"))
    UpdateThreatInput.add_member(:threat_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatAction"))
    UpdateThreatInput.add_member(:threat_impact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatImpact"))
    UpdateThreatInput.add_member(:impacted_goal, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "impactedGoal"))
    UpdateThreatInput.add_member(:impacted_assets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "impactedAssets"))
    UpdateThreatInput.add_member(:anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatAnchorShape, name: "anchor"))
    UpdateThreatInput.add_member(:evidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatEvidenceList, name: "evidence"))
    UpdateThreatInput.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendation"))
    UpdateThreatInput.type = Types::UpdateThreatInput
    UpdateThreatModelInput.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId", traits: {"smithy.api#required" => {}}))
    UpdateThreatModelInput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId", traits: {"smithy.api#required" => {}}))
    UpdateThreatModelInput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    UpdateThreatModelInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateThreatModelInput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets"))
    UpdateThreatModelInput.add_member(:scope_docs, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "scopeDocs"))
    UpdateThreatModelInput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    UpdateThreatModelInput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    UpdateThreatModelInput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    UpdateThreatModelInput.type = Types::UpdateThreatModelInput
    UpdateThreatModelOutput.add_member(:threat_model_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatModelId", traits: {"smithy.api#required" => {}}))
    UpdateThreatModelOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    UpdateThreatModelOutput.add_member(:agent_space_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "agentSpaceId"))
    UpdateThreatModelOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    UpdateThreatModelOutput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: Assets, name: "assets"))
    UpdateThreatModelOutput.add_member(:scope_docs, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentList, name: "scopeDocs"))
    UpdateThreatModelOutput.add_member(:service_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceRole, name: "serviceRole"))
    UpdateThreatModelOutput.add_member(:log_config, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLog, name: "logConfig"))
    UpdateThreatModelOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateThreatModelOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateThreatModelOutput.add_member(:report_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDestination, name: "reportDestination"))
    UpdateThreatModelOutput.type = Types::UpdateThreatModelOutput
    UpdateThreatOutput.add_member(:threat_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatId", traits: {"smithy.api#required" => {}}))
    UpdateThreatOutput.add_member(:threat_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatJobId", traits: {"smithy.api#required" => {}}))
    UpdateThreatOutput.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    UpdateThreatOutput.add_member(:statement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "statement"))
    UpdateThreatOutput.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatSeverity, name: "severity"))
    UpdateThreatOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatStatus, name: "status"))
    UpdateThreatOutput.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comments"))
    UpdateThreatOutput.add_member(:stride, ::Smithy::Schema::Shapes::MemberShape.new(target: StrideCategoryList, name: "stride"))
    UpdateThreatOutput.add_member(:threat_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatSource"))
    UpdateThreatOutput.add_member(:prerequisites, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "prerequisites"))
    UpdateThreatOutput.add_member(:threat_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatAction"))
    UpdateThreatOutput.add_member(:threat_impact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "threatImpact"))
    UpdateThreatOutput.add_member(:impacted_goal, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "impactedGoal"))
    UpdateThreatOutput.add_member(:impacted_assets, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "impactedAssets"))
    UpdateThreatOutput.add_member(:anchor, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatAnchorShape, name: "anchor"))
    UpdateThreatOutput.add_member(:evidence, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatEvidenceList, name: "evidence"))
    UpdateThreatOutput.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "recommendation"))
    UpdateThreatOutput.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatActor, name: "createdBy"))
    UpdateThreatOutput.add_member(:updated_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreatActor, name: "updatedBy"))
    UpdateThreatOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateThreatOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    UpdateThreatOutput.type = Types::UpdateThreatOutput
    UriList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    UserConfig.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: UserRole, name: "role"))
    UserConfig.type = Types::UserConfig
    UserMetadata.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "username", traits: {"smithy.api#required" => {}}))
    UserMetadata.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveEmail, name: "email", traits: {"smithy.api#required" => {}}))
    UserMetadata.type = Types::UserMetadata
    UserRole.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEMBER", traits: {"smithy.api#enumValue" => "MEMBER"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionFieldList, name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "path", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionField, name: "member"))
    ValidationMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ValidationMode.add_member(:simulated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIMULATED", traits: {"smithy.api#enumValue" => "SIMULATED"}))
    ValidationStatus.add_member(:confirmed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONFIRMED", traits: {"smithy.api#enumValue" => "CONFIRMED"}))
    ValidationStatus.add_member(:not_reproduced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_REPRODUCED", traits: {"smithy.api#enumValue" => "NOT_REPRODUCED"}))
    ValidationStatus.add_member(:validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "VALIDATION_FAILED"}))
    ValidationStatus.add_member(:validating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALIDATING", traits: {"smithy.api#enumValue" => "VALIDATING"}))
    ValidationStatus.add_member(:not_validated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_VALIDATED", traits: {"smithy.api#enumValue" => "NOT_VALIDATED"}))
    VerificationDetails.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainVerificationMethod, name: "method"))
    VerificationDetails.add_member(:dns_txt, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsVerification, name: "dnsTxt"))
    VerificationDetails.add_member(:http_route, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpVerification, name: "httpRoute"))
    VerificationDetails.type = Types::VerificationDetails
    VerificationScript.add_member(:script_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scriptType"))
    VerificationScript.add_member(:script_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "scriptUrl"))
    VerificationScript.add_member(:instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "instructions"))
    VerificationScript.add_member(:env_vars, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationScriptEnvVarList, name: "envVars"))
    VerificationScript.type = Types::VerificationScript
    VerificationScriptEnvVar.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    VerificationScriptEnvVar.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    VerificationScriptEnvVar.type = Types::VerificationScriptEnvVar
    VerificationScriptEnvVarList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VerificationScriptEnvVar, name: "member"))
    VerifyTargetDomainInput.add_member(:target_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainId, name: "targetDomainId", traits: {"smithy.api#required" => {}}))
    VerifyTargetDomainInput.type = Types::VerifyTargetDomainInput
    VerifyTargetDomainOutput.add_member(:target_domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainId, name: "targetDomainId"))
    VerifyTargetDomainOutput.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "domainName"))
    VerifyTargetDomainOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    VerifyTargetDomainOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    VerifyTargetDomainOutput.add_member(:verified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "verifiedAt", traits: {"smithy.api#timestampFormat" => "date-time"}))
    VerifyTargetDomainOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDomainStatus, name: "status"))
    VerifyTargetDomainOutput.add_member(:verification_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "verificationStatusReason"))
    VerifyTargetDomainOutput.type = Types::VerifyTargetDomainOutput
    VpcConfig.add_member(:vpc_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcArn, name: "vpcArn"))
    VpcConfig.add_member(:security_group_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupArns, name: "securityGroupArns"))
    VpcConfig.add_member(:subnet_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetArns, name: "subnetArns"))
    VpcConfig.type = Types::VpcConfig
    VpcConfigs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "member"))
    WebhookAction.add_member(:create_if_absent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_IF_ABSENT", traits: {"smithy.api#enumValue" => "CREATE_IF_ABSENT"}))
    WebhookAction.add_member(:rotate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROTATE", traits: {"smithy.api#enumValue" => "ROTATE"}))

    SecurityAgent = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.securityagent#SecurityAgent"
      service.name = "SecurityAgent"
      service.version = "2025-09-06"
      service.traits = {"aws.api#service" => {"sdkId" => "SecurityAgent", "arnNamespace" => "securityagent", "cloudTrailEventSource" => "securityagent.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "securityagent"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS Security Agent", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://securityagent-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://securityagent.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:add_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#AddArtifact"
        operation.name = "AddArtifact"
        operation.input = AddArtifactInput
        operation.output = AddArtifactOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/AddArtifact"}}
      end)
      service.add_operation(:batch_create_security_requirements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchCreateSecurityRequirements"
        operation.name = "BatchCreateSecurityRequirements"
        operation.input = BatchCreateSecurityRequirementsInput
        operation.output = BatchCreateSecurityRequirementsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/BatchCreateSecurityRequirements"}}
      end)
      service.add_operation(:batch_delete_code_reviews, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchDeleteCodeReviews"
        operation.name = "BatchDeleteCodeReviews"
        operation.input = BatchDeleteCodeReviewsInput
        operation.output = BatchDeleteCodeReviewsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchDeleteCodeReviews"}}
      end)
      service.add_operation(:batch_delete_pentests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchDeletePentests"
        operation.name = "BatchDeletePentests"
        operation.input = BatchDeletePentestsInput
        operation.output = BatchDeletePentestsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchDeletePentests"}}
      end)
      service.add_operation(:batch_delete_security_requirements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchDeleteSecurityRequirements"
        operation.name = "BatchDeleteSecurityRequirements"
        operation.input = BatchDeleteSecurityRequirementsInput
        operation.output = BatchDeleteSecurityRequirementsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchDeleteSecurityRequirements"}}
      end)
      service.add_operation(:batch_delete_threat_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchDeleteThreatModels"
        operation.name = "BatchDeleteThreatModels"
        operation.input = BatchDeleteThreatModelsInput
        operation.output = BatchDeleteThreatModelsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchDeleteThreatModels"}}
      end)
      service.add_operation(:batch_disassociate_finding_issue, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchDisassociateFindingIssue"
        operation.name = "BatchDisassociateFindingIssue"
        operation.input = BatchDisassociateFindingIssueInput
        operation.output = BatchDisassociateFindingIssueOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchDisassociateFindingIssue"}}
      end)
      service.add_operation(:batch_export_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchExportFindings"
        operation.name = "BatchExportFindings"
        operation.input = BatchExportFindingsInput
        operation.output = BatchExportFindingsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchExportFindings"}}
      end)
      service.add_operation(:batch_get_agent_spaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetAgentSpaces"
        operation.name = "BatchGetAgentSpaces"
        operation.input = BatchGetAgentSpacesInput
        operation.output = BatchGetAgentSpacesOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetAgentSpaces"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_artifact_metadata, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetArtifactMetadata"
        operation.name = "BatchGetArtifactMetadata"
        operation.input = BatchGetArtifactMetadataInput
        operation.output = BatchGetArtifactMetadataOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/BatchGetArtifactMetadata"}}
      end)
      service.add_operation(:batch_get_code_review_job_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetCodeReviewJobTasks"
        operation.name = "BatchGetCodeReviewJobTasks"
        operation.input = BatchGetCodeReviewJobTasksInput
        operation.output = BatchGetCodeReviewJobTasksOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetCodeReviewJobTasks"}}
      end)
      service.add_operation(:batch_get_code_review_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetCodeReviewJobs"
        operation.name = "BatchGetCodeReviewJobs"
        operation.input = BatchGetCodeReviewJobsInput
        operation.output = BatchGetCodeReviewJobsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetCodeReviewJobs"}}
      end)
      service.add_operation(:batch_get_code_reviews, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetCodeReviews"
        operation.name = "BatchGetCodeReviews"
        operation.input = BatchGetCodeReviewsInput
        operation.output = BatchGetCodeReviewsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetCodeReviews"}}
      end)
      service.add_operation(:batch_get_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetFindings"
        operation.name = "BatchGetFindings"
        operation.input = BatchGetFindingsInput
        operation.output = BatchGetFindingsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetFindings"}}
      end)
      service.add_operation(:batch_get_pentest_job_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetPentestJobTasks"
        operation.name = "BatchGetPentestJobTasks"
        operation.input = BatchGetPentestJobTasksInput
        operation.output = BatchGetPentestJobTasksOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetPentestJobTasks"}}
      end)
      service.add_operation(:batch_get_pentest_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetPentestJobs"
        operation.name = "BatchGetPentestJobs"
        operation.input = BatchGetPentestJobsInput
        operation.output = BatchGetPentestJobsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetPentestJobs"}}
      end)
      service.add_operation(:batch_get_pentests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetPentests"
        operation.name = "BatchGetPentests"
        operation.input = BatchGetPentestsInput
        operation.output = BatchGetPentestsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetPentests"}}
      end)
      service.add_operation(:batch_get_security_requirements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetSecurityRequirements"
        operation.name = "BatchGetSecurityRequirements"
        operation.input = BatchGetSecurityRequirementsInput
        operation.output = BatchGetSecurityRequirementsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetSecurityRequirements"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_target_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetTargetDomains"
        operation.name = "BatchGetTargetDomains"
        operation.input = BatchGetTargetDomainsInput
        operation.output = BatchGetTargetDomainsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetTargetDomains"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_threat_model_job_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetThreatModelJobTasks"
        operation.name = "BatchGetThreatModelJobTasks"
        operation.input = BatchGetThreatModelJobTasksInput
        operation.output = BatchGetThreatModelJobTasksOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetThreatModelJobTasks"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:batch_get_threat_model_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetThreatModelJobs"
        operation.name = "BatchGetThreatModelJobs"
        operation.input = BatchGetThreatModelJobsInput
        operation.output = BatchGetThreatModelJobsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetThreatModelJobs"}}
      end)
      service.add_operation(:batch_get_threat_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetThreatModels"
        operation.name = "BatchGetThreatModels"
        operation.input = BatchGetThreatModelsInput
        operation.output = BatchGetThreatModelsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetThreatModels"}}
      end)
      service.add_operation(:batch_get_threats, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchGetThreats"
        operation.name = "BatchGetThreats"
        operation.input = BatchGetThreatsInput
        operation.output = BatchGetThreatsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchGetThreats"}}
      end)
      service.add_operation(:batch_update_security_requirements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#BatchUpdateSecurityRequirements"
        operation.name = "BatchUpdateSecurityRequirements"
        operation.input = BatchUpdateSecurityRequirementsInput
        operation.output = BatchUpdateSecurityRequirementsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/BatchUpdateSecurityRequirements"}}
      end)
      service.add_operation(:create_agent_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#CreateAgentSpace"
        operation.name = "CreateAgentSpace"
        operation.input = CreateAgentSpaceInput
        operation.output = CreateAgentSpaceOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateAgentSpace"}}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateApplication"}}
      end)
      service.add_operation(:create_code_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#CreateCodeReview"
        operation.name = "CreateCodeReview"
        operation.input = CreateCodeReviewInput
        operation.output = CreateCodeReviewOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateCodeReview"}}
      end)
      service.add_operation(:create_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#CreateIntegration"
        operation.name = "CreateIntegration"
        operation.input = CreateIntegrationInput
        operation.output = CreateIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/CreateIntegration"}}
      end)
      service.add_operation(:create_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#CreateMembership"
        operation.name = "CreateMembership"
        operation.input = CreateMembershipRequest
        operation.output = CreateMembershipResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateMembership"}}
      end)
      service.add_operation(:create_pentest, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#CreatePentest"
        operation.name = "CreatePentest"
        operation.input = CreatePentestInput
        operation.output = CreatePentestOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreatePentest"}}
      end)
      service.add_operation(:create_private_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#CreatePrivateConnection"
        operation.name = "CreatePrivateConnection"
        operation.input = CreatePrivateConnectionInput
        operation.output = CreatePrivateConnectionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/CreatePrivateConnection"}}
      end)
      service.add_operation(:create_security_requirement_pack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#CreateSecurityRequirementPack"
        operation.name = "CreateSecurityRequirementPack"
        operation.input = CreateSecurityRequirementPackInput
        operation.output = CreateSecurityRequirementPackOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/CreateSecurityRequirementPack"}}
      end)
      service.add_operation(:create_target_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#CreateTargetDomain"
        operation.name = "CreateTargetDomain"
        operation.input = CreateTargetDomainInput
        operation.output = CreateTargetDomainOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateTargetDomain"}}
      end)
      service.add_operation(:create_threat, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#CreateThreat"
        operation.name = "CreateThreat"
        operation.input = CreateThreatInput
        operation.output = CreateThreatOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateThreat"}}
      end)
      service.add_operation(:create_threat_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#CreateThreatModel"
        operation.name = "CreateThreatModel"
        operation.input = CreateThreatModelInput
        operation.output = CreateThreatModelOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/CreateThreatModel"}}
      end)
      service.add_operation(:delete_agent_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#DeleteAgentSpace"
        operation.name = "DeleteAgentSpace"
        operation.input = DeleteAgentSpaceInput
        operation.output = DeleteAgentSpaceOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteAgentSpace"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteApplication"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#DeleteArtifact"
        operation.name = "DeleteArtifact"
        operation.input = DeleteArtifactInput
        operation.output = DeleteArtifactOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/DeleteArtifact"}}
      end)
      service.add_operation(:delete_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#DeleteIntegration"
        operation.name = "DeleteIntegration"
        operation.input = DeleteIntegrationInput
        operation.output = DeleteIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/DeleteIntegration"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_membership, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#DeleteMembership"
        operation.name = "DeleteMembership"
        operation.input = DeleteMembershipRequest
        operation.output = DeleteMembershipResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteMembership"}}
      end)
      service.add_operation(:delete_private_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#DeletePrivateConnection"
        operation.name = "DeletePrivateConnection"
        operation.input = DeletePrivateConnectionInput
        operation.output = DeletePrivateConnectionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeletePrivateConnection"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_security_requirement_pack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#DeleteSecurityRequirementPack"
        operation.name = "DeleteSecurityRequirementPack"
        operation.input = DeleteSecurityRequirementPackInput
        operation.output = DeleteSecurityRequirementPackOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteSecurityRequirementPack"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_target_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#DeleteTargetDomain"
        operation.name = "DeleteTargetDomain"
        operation.input = DeleteTargetDomainInput
        operation.output = DeleteTargetDomainOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DeleteTargetDomain"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_private_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#DescribePrivateConnection"
        operation.name = "DescribePrivateConnection"
        operation.input = DescribePrivateConnectionInput
        operation.output = DescribePrivateConnectionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/DescribePrivateConnection"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationRequest
        operation.output = GetApplicationResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetApplication"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_artifact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#GetArtifact"
        operation.name = "GetArtifact"
        operation.input = GetArtifactInput
        operation.output = GetArtifactOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetArtifact"}}
      end)
      service.add_operation(:get_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#GetIntegration"
        operation.name = "GetIntegration"
        operation.input = GetIntegrationInput
        operation.output = GetIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/GetIntegration"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_security_requirement_pack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#GetSecurityRequirementPack"
        operation.name = "GetSecurityRequirementPack"
        operation.input = GetSecurityRequirementPackInput
        operation.output = GetSecurityRequirementPackOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetSecurityRequirementPack"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:import_security_requirements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ImportSecurityRequirements"
        operation.name = "ImportSecurityRequirements"
        operation.input = ImportSecurityRequirementsInput
        operation.output = ImportSecurityRequirementsOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/ImportSecurityRequirements"}}
      end)
      service.add_operation(:initiate_provider_registration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#InitiateProviderRegistration"
        operation.name = "InitiateProviderRegistration"
        operation.input = InitiateProviderRegistrationInput
        operation.output = InitiateProviderRegistrationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/oauth2/provider/register"}}
      end)
      service.add_operation(:list_actor_messages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListActorMessages"
        operation.name = "ListActorMessages"
        operation.input = ListActorMessagesInput
        operation.output = ListActorMessagesOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListActorMessages"}}
        operation[:paginator] = Paginators::ListActorMessages.new
      end)
      service.add_operation(:list_agent_spaces, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListAgentSpaces"
        operation.name = "ListAgentSpaces"
        operation.input = ListAgentSpacesInput
        operation.output = ListAgentSpacesOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListAgentSpaces"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListAgentSpacesSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListAgentSpaces.new
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsRequest
        operation.output = ListApplicationsResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListApplications"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_artifacts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListArtifacts"
        operation.name = "ListArtifacts"
        operation.input = ListArtifactsInput
        operation.output = ListArtifactsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListArtifacts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListArtifacts.new
      end)
      service.add_operation(:list_code_review_job_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListCodeReviewJobTasks"
        operation.name = "ListCodeReviewJobTasks"
        operation.input = ListCodeReviewJobTasksInput
        operation.output = ListCodeReviewJobTasksOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListCodeReviewJobTasks"}}
        operation[:paginator] = Paginators::ListCodeReviewJobTasks.new
      end)
      service.add_operation(:list_code_review_jobs_for_code_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListCodeReviewJobsForCodeReview"
        operation.name = "ListCodeReviewJobsForCodeReview"
        operation.input = ListCodeReviewJobsForCodeReviewInput
        operation.output = ListCodeReviewJobsForCodeReviewOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListCodeReviewJobsForCodeReview"}}
        operation[:paginator] = Paginators::ListCodeReviewJobsForCodeReview.new
      end)
      service.add_operation(:list_code_reviews, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListCodeReviews"
        operation.name = "ListCodeReviews"
        operation.input = ListCodeReviewsInput
        operation.output = ListCodeReviewsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListCodeReviews"}}
        operation[:paginator] = Paginators::ListCodeReviews.new
      end)
      service.add_operation(:list_discovered_endpoints, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListDiscoveredEndpoints"
        operation.name = "ListDiscoveredEndpoints"
        operation.input = ListDiscoveredEndpointsInput
        operation.output = ListDiscoveredEndpointsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListDiscoveredEndpoints"}}
        operation[:paginator] = Paginators::ListDiscoveredEndpoints.new
      end)
      service.add_operation(:list_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListFindings"
        operation.name = "ListFindings"
        operation.input = ListFindingsInput
        operation.output = ListFindingsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListFindings"}}
        operation[:paginator] = Paginators::ListFindings.new
      end)
      service.add_operation(:list_integrated_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListIntegratedResources"
        operation.name = "ListIntegratedResources"
        operation.input = ListIntegratedResourcesInput
        operation.output = ListIntegratedResourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListIntegratedResources"}}
        operation[:paginator] = Paginators::ListIntegratedResources.new
      end)
      service.add_operation(:list_integrations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListIntegrations"
        operation.name = "ListIntegrations"
        operation.input = ListIntegrationsInput
        operation.output = ListIntegrationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/ListIntegrations"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListIntegrations.new
      end)
      service.add_operation(:list_memberships, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListMemberships"
        operation.name = "ListMemberships"
        operation.input = ListMembershipsRequest
        operation.output = ListMembershipsResponse
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListMemberships"}}
        operation[:paginator] = Paginators::ListMemberships.new
      end)
      service.add_operation(:list_pentest_job_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListPentestJobTasks"
        operation.name = "ListPentestJobTasks"
        operation.input = ListPentestJobTasksInput
        operation.output = ListPentestJobTasksOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPentestJobTasks"}}
        operation[:paginator] = Paginators::ListPentestJobTasks.new
      end)
      service.add_operation(:list_pentest_jobs_for_pentest, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListPentestJobsForPentest"
        operation.name = "ListPentestJobsForPentest"
        operation.input = ListPentestJobsForPentestInput
        operation.output = ListPentestJobsForPentestOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPentestJobsForPentest"}}
        operation[:paginator] = Paginators::ListPentestJobsForPentest.new
      end)
      service.add_operation(:list_pentests, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListPentests"
        operation.name = "ListPentests"
        operation.input = ListPentestsInput
        operation.output = ListPentestsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPentests"}}
        operation[:paginator] = Paginators::ListPentests.new
      end)
      service.add_operation(:list_private_connections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListPrivateConnections"
        operation.name = "ListPrivateConnections"
        operation.input = ListPrivateConnectionsInput
        operation.output = ListPrivateConnectionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListPrivateConnections"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListPrivateConnections.new
      end)
      service.add_operation(:list_security_requirement_packs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListSecurityRequirementPacks"
        operation.name = "ListSecurityRequirementPacks"
        operation.input = ListSecurityRequirementPacksInput
        operation.output = ListSecurityRequirementPacksOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListSecurityRequirementPacks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSecurityRequirementPacks.new
      end)
      service.add_operation(:list_security_requirements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListSecurityRequirements"
        operation.name = "ListSecurityRequirements"
        operation.input = ListSecurityRequirementsInput
        operation.output = ListSecurityRequirementsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListSecurityRequirements"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSecurityRequirements.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_target_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListTargetDomains"
        operation.name = "ListTargetDomains"
        operation.input = ListTargetDomainsInput
        operation.output = ListTargetDomainsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListTargetDomains"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTargetDomains.new
      end)
      service.add_operation(:list_threat_model_job_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListThreatModelJobTasks"
        operation.name = "ListThreatModelJobTasks"
        operation.input = ListThreatModelJobTasksInput
        operation.output = ListThreatModelJobTasksOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListThreatModelJobTasks"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListThreatModelJobTasks.new
      end)
      service.add_operation(:list_threat_model_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListThreatModelJobs"
        operation.name = "ListThreatModelJobs"
        operation.input = ListThreatModelJobsInput
        operation.output = ListThreatModelJobsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListThreatModelJobs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListThreatModelJobs.new
      end)
      service.add_operation(:list_threat_models, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListThreatModels"
        operation.name = "ListThreatModels"
        operation.input = ListThreatModelsInput
        operation.output = ListThreatModelsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListThreatModels"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListThreatModels.new
      end)
      service.add_operation(:list_threats, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#ListThreats"
        operation.name = "ListThreats"
        operation.input = ListThreatsInput
        operation.output = ListThreatsOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListThreats"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListThreats.new
      end)
      service.add_operation(:start_code_remediation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#StartCodeRemediation"
        operation.name = "StartCodeRemediation"
        operation.input = StartCodeRemediationInput
        operation.output = StartCodeRemediationOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartCodeRemediation"}}
      end)
      service.add_operation(:start_code_review_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#StartCodeReviewJob"
        operation.name = "StartCodeReviewJob"
        operation.input = StartCodeReviewJobInput
        operation.output = StartCodeReviewJobOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartCodeReviewJob"}}
      end)
      service.add_operation(:start_pentest_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#StartPentestJob"
        operation.name = "StartPentestJob"
        operation.input = StartPentestJobInput
        operation.output = StartPentestJobOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartPentestJob"}}
      end)
      service.add_operation(:start_threat_model_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#StartThreatModelJob"
        operation.name = "StartThreatModelJob"
        operation.input = StartThreatModelJobInput
        operation.output = StartThreatModelJobOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StartThreatModelJob"}}
      end)
      service.add_operation(:stop_code_review_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#StopCodeReviewJob"
        operation.name = "StopCodeReviewJob"
        operation.input = StopCodeReviewJobInput
        operation.output = StopCodeReviewJobOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopCodeReviewJob"}}
      end)
      service.add_operation(:stop_pentest_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#StopPentestJob"
        operation.name = "StopPentestJob"
        operation.input = StopPentestJobInput
        operation.output = StopPentestJobOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopPentestJob"}}
      end)
      service.add_operation(:stop_threat_model_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#StopThreatModelJob"
        operation.name = "StopThreatModelJob"
        operation.input = StopThreatModelJobInput
        operation.output = StopThreatModelJobOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/StopThreatModelJob"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_agent_space, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdateAgentSpace"
        operation.name = "UpdateAgentSpace"
        operation.input = UpdateAgentSpaceInput
        operation.output = UpdateAgentSpaceOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateAgentSpace"}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationRequest
        operation.output = UpdateApplicationResponse
        operation.traits = {"aws.iam#iamAction" => {"requiredActions" => ["iam:PassRole"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/UpdateApplication"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_code_review, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdateCodeReview"
        operation.name = "UpdateCodeReview"
        operation.input = UpdateCodeReviewInput
        operation.output = UpdateCodeReviewOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateCodeReview"}}
      end)
      service.add_operation(:update_finding, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdateFinding"
        operation.name = "UpdateFinding"
        operation.input = UpdateFindingInput
        operation.output = UpdateFindingOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateFinding"}}
      end)
      service.add_operation(:update_integrated_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdateIntegratedResources"
        operation.name = "UpdateIntegratedResources"
        operation.input = UpdateIntegratedResourcesInput
        operation.output = UpdateIntegratedResourcesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateIntegratedResources"}}
      end)
      service.add_operation(:update_integration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdateIntegration"
        operation.name = "UpdateIntegration"
        operation.input = UpdateIntegrationInput
        operation.output = UpdateIntegrationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/UpdateIntegration"}}
      end)
      service.add_operation(:update_pentest, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdatePentest"
        operation.name = "UpdatePentest"
        operation.input = UpdatePentestInput
        operation.output = UpdatePentestOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdatePentest"}}
      end)
      service.add_operation(:update_private_connection_certificate, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdatePrivateConnectionCertificate"
        operation.name = "UpdatePrivateConnectionCertificate"
        operation.input = UpdatePrivateConnectionCertificateInput
        operation.output = UpdatePrivateConnectionCertificateOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdatePrivateConnectionCertificate"}}
      end)
      service.add_operation(:update_security_requirement_pack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdateSecurityRequirementPack"
        operation.name = "UpdateSecurityRequirementPack"
        operation.input = UpdateSecurityRequirementPackInput
        operation.output = UpdateSecurityRequirementPackOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateSecurityRequirementPack"}}
      end)
      service.add_operation(:update_target_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdateTargetDomain"
        operation.name = "UpdateTargetDomain"
        operation.input = UpdateTargetDomainInput
        operation.output = UpdateTargetDomainOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateTargetDomain"}}
      end)
      service.add_operation(:update_threat, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdateThreat"
        operation.name = "UpdateThreat"
        operation.input = UpdateThreatInput
        operation.output = UpdateThreatOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateThreat"}}
      end)
      service.add_operation(:update_threat_model, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#UpdateThreatModel"
        operation.name = "UpdateThreatModel"
        operation.input = UpdateThreatModelInput
        operation.output = UpdateThreatModelOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/UpdateThreatModel"}}
      end)
      service.add_operation(:verify_target_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securityagent#VerifyTargetDomain"
        operation.name = "VerifyTargetDomain"
        operation.input = VerifyTargetDomainInput
        operation.output = VerifyTargetDomainOutput
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/VerifyTargetDomain"}}
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
