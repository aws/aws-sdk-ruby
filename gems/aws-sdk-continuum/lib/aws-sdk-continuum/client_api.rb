# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Continuum
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AffectedPackage = Shapes::StructureShape.new(name: 'AffectedPackage')
    AffectedPackageList = Shapes::ListShape.new(name: 'AffectedPackageList')
    ArtifactCitation = Shapes::StringShape.new(name: 'ArtifactCitation')
    ArtifactCitations = Shapes::ListShape.new(name: 'ArtifactCitations')
    ArtifactHeaders = Shapes::MapShape.new(name: 'ArtifactHeaders')
    ArtifactHttpMethod = Shapes::StringShape.new(name: 'ArtifactHttpMethod')
    ArtifactProofBody = Shapes::StringShape.new(name: 'ArtifactProofBody')
    ArtifactSha256 = Shapes::StringShape.new(name: 'ArtifactSha256')
    ArtifactText = Shapes::StringShape.new(name: 'ArtifactText')
    AssociateCollectorInput = Shapes::StructureShape.new(name: 'AssociateCollectorInput')
    AssociateCollectorOutput = Shapes::StructureShape.new(name: 'AssociateCollectorOutput')
    AssociatedCollector = Shapes::StructureShape.new(name: 'AssociatedCollector')
    AssociatedCollectors = Shapes::ListShape.new(name: 'AssociatedCollectors')
    AssociatedEnvironment = Shapes::StructureShape.new(name: 'AssociatedEnvironment')
    AssociatedEnvironments = Shapes::ListShape.new(name: 'AssociatedEnvironments')
    AssociationClientToken = Shapes::StringShape.new(name: 'AssociationClientToken')
    AttackFlowId = Shapes::StringShape.new(name: 'AttackFlowId')
    AttackFlowIds = Shapes::ListShape.new(name: 'AttackFlowIds')
    AuthorizationCode = Shapes::StringShape.new(name: 'AuthorizationCode')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BuildRepositoryName = Shapes::StringShape.new(name: 'BuildRepositoryName')
    CodeConfigurationDetails = Shapes::StructureShape.new(name: 'CodeConfigurationDetails')
    CodeFindingSummaries = Shapes::ListShape.new(name: 'CodeFindingSummaries')
    CodeIssueArtifactItems = Shapes::ListShape.new(name: 'CodeIssueArtifactItems')
    CodeIssueSummaries = Shapes::ListShape.new(name: 'CodeIssueSummaries')
    CodeScanData = Shapes::StructureShape.new(name: 'CodeScanData')
    CodeScanSummaries = Shapes::ListShape.new(name: 'CodeScanSummaries')
    CodeScanSummary = Shapes::StructureShape.new(name: 'CodeScanSummary')
    CollectorArn = Shapes::StringShape.new(name: 'CollectorArn')
    CollectorClientToken = Shapes::StringShape.new(name: 'CollectorClientToken')
    CollectorDetails = Shapes::StructureShape.new(name: 'CollectorDetails')
    CollectorId = Shapes::StringShape.new(name: 'CollectorId')
    CollectorName = Shapes::StringShape.new(name: 'CollectorName')
    CollectorStatus = Shapes::StringShape.new(name: 'CollectorStatus')
    CollectorSummaries = Shapes::ListShape.new(name: 'CollectorSummaries')
    CollectorSummary = Shapes::StructureShape.new(name: 'CollectorSummary')
    CollectorType = Shapes::StringShape.new(name: 'CollectorType')
    ConfigRecorderArn = Shapes::StringShape.new(name: 'ConfigRecorderArn')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateCodeConfiguration = Shapes::StructureShape.new(name: 'CreateCodeConfiguration')
    CreateCodeFindingInput = Shapes::StructureShape.new(name: 'CreateCodeFindingInput')
    CreateCodeFindingOutput = Shapes::StructureShape.new(name: 'CreateCodeFindingOutput')
    CreateCodeScanInput = Shapes::StructureShape.new(name: 'CreateCodeScanInput')
    CreateCodeScanOutput = Shapes::StructureShape.new(name: 'CreateCodeScanOutput')
    CreateCollectorInput = Shapes::StructureShape.new(name: 'CreateCollectorInput')
    CreateCollectorOutput = Shapes::StructureShape.new(name: 'CreateCollectorOutput')
    CreateEnvironmentConfiguration = Shapes::StructureShape.new(name: 'CreateEnvironmentConfiguration')
    CreateEnvironmentInput = Shapes::StructureShape.new(name: 'CreateEnvironmentInput')
    CreateEnvironmentOutput = Shapes::StructureShape.new(name: 'CreateEnvironmentOutput')
    CreateIntegrationInput = Shapes::StructureShape.new(name: 'CreateIntegrationInput')
    CreateIntegrationOutput = Shapes::StructureShape.new(name: 'CreateIntegrationOutput')
    CveId = Shapes::StringShape.new(name: 'CveId')
    CweId = Shapes::StringShape.new(name: 'CweId')
    CweIdList = Shapes::ListShape.new(name: 'CweIdList')
    DeleteCollectorInput = Shapes::StructureShape.new(name: 'DeleteCollectorInput')
    DeleteEnvironmentInput = Shapes::StructureShape.new(name: 'DeleteEnvironmentInput')
    DeleteIntegrationInput = Shapes::StructureShape.new(name: 'DeleteIntegrationInput')
    DeliveryGitCommitSha = Shapes::StringShape.new(name: 'DeliveryGitCommitSha')
    DeliveryGitHubName = Shapes::StringShape.new(name: 'DeliveryGitHubName')
    DeliveryObjectKey = Shapes::StringShape.new(name: 'DeliveryObjectKey')
    DeliveryPullRequestNumber = Shapes::IntegerShape.new(name: 'DeliveryPullRequestNumber')
    DeliveryReason = Shapes::StringShape.new(name: 'DeliveryReason')
    DeliveryStatus = Shapes::StringShape.new(name: 'DeliveryStatus')
    DeliveryVersionId = Shapes::StringShape.new(name: 'DeliveryVersionId')
    DestinationTarget = Shapes::UnionShape.new(name: 'DestinationTarget')
    DisassociateCollectorInput = Shapes::StructureShape.new(name: 'DisassociateCollectorInput')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainNames = Shapes::ListShape.new(name: 'DomainNames')
    Double = Shapes::FloatShape.new(name: 'Double')
    EnvironmentArn = Shapes::StringShape.new(name: 'EnvironmentArn')
    EnvironmentConfiguration = Shapes::StructureShape.new(name: 'EnvironmentConfiguration')
    EnvironmentConfigurationDetails = Shapes::StructureShape.new(name: 'EnvironmentConfigurationDetails')
    EnvironmentId = Shapes::StringShape.new(name: 'EnvironmentId')
    EnvironmentListEntries = Shapes::ListShape.new(name: 'EnvironmentListEntries')
    EnvironmentListEntry = Shapes::StructureShape.new(name: 'EnvironmentListEntry')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentNetworkConfiguration = Shapes::StructureShape.new(name: 'EnvironmentNetworkConfiguration')
    EnvironmentRepositorySource = Shapes::StructureShape.new(name: 'EnvironmentRepositorySource')
    EnvironmentRepositorySources = Shapes::ListShape.new(name: 'EnvironmentRepositorySources')
    EnvironmentS3IntegrationSource = Shapes::StructureShape.new(name: 'EnvironmentS3IntegrationSource')
    EnvironmentS3Sources = Shapes::ListShape.new(name: 'EnvironmentS3Sources')
    EnvironmentSourceBucketName = Shapes::StringShape.new(name: 'EnvironmentSourceBucketName')
    EnvironmentSourceConfiguration = Shapes::StructureShape.new(name: 'EnvironmentSourceConfiguration')
    EnvironmentSourcePrefix = Shapes::StringShape.new(name: 'EnvironmentSourcePrefix')
    EnvironmentSourceRoleArn = Shapes::StringShape.new(name: 'EnvironmentSourceRoleArn')
    EnvironmentStatus = Shapes::StringShape.new(name: 'EnvironmentStatus')
    EnvironmentStatusMessage = Shapes::StringShape.new(name: 'EnvironmentStatusMessage')
    ExploitEffect = Shapes::StringShape.new(name: 'ExploitEffect')
    ExploitabilityVerdict = Shapes::StringShape.new(name: 'ExploitabilityVerdict')
    FindingArn = Shapes::StringShape.new(name: 'FindingArn')
    FindingBlockingReason = Shapes::StringShape.new(name: 'FindingBlockingReason')
    FindingCategory = Shapes::StringShape.new(name: 'FindingCategory')
    FindingClientToken = Shapes::StringShape.new(name: 'FindingClientToken')
    FindingCodeSnippet = Shapes::StringShape.new(name: 'FindingCodeSnippet')
    FindingComplianceCheck = Shapes::StructureShape.new(name: 'FindingComplianceCheck')
    FindingComplianceCheckList = Shapes::ListShape.new(name: 'FindingComplianceCheckList')
    FindingDescription = Shapes::StringShape.new(name: 'FindingDescription')
    FindingDiscardReason = Shapes::StringShape.new(name: 'FindingDiscardReason')
    FindingEvidence = Shapes::StructureShape.new(name: 'FindingEvidence')
    FindingEvidenceList = Shapes::ListShape.new(name: 'FindingEvidenceList')
    FindingFilePath = Shapes::StringShape.new(name: 'FindingFilePath')
    FindingId = Shapes::StringShape.new(name: 'FindingId')
    FindingListEntry = Shapes::StringShape.new(name: 'FindingListEntry')
    FindingLocation = Shapes::StructureShape.new(name: 'FindingLocation')
    FindingLocationList = Shapes::ListShape.new(name: 'FindingLocationList')
    FindingOcsfClass = Shapes::StringShape.new(name: 'FindingOcsfClass')
    FindingPosture = Shapes::StructureShape.new(name: 'FindingPosture')
    FindingResource = Shapes::StructureShape.new(name: 'FindingResource')
    FindingResourceList = Shapes::ListShape.new(name: 'FindingResourceList')
    FindingResourceUid = Shapes::StringShape.new(name: 'FindingResourceUid')
    FindingSeverityAdjustment = Shapes::StringShape.new(name: 'FindingSeverityAdjustment')
    FindingSeverityId = Shapes::StringShape.new(name: 'FindingSeverityId')
    FindingSource = Shapes::StringShape.new(name: 'FindingSource')
    FindingStatus = Shapes::StringShape.new(name: 'FindingStatus')
    FindingStatusMessage = Shapes::StringShape.new(name: 'FindingStatusMessage')
    FindingStringList = Shapes::ListShape.new(name: 'FindingStringList')
    FindingSummary = Shapes::StructureShape.new(name: 'FindingSummary')
    FindingTitle = Shapes::StringShape.new(name: 'FindingTitle')
    FindingType = Shapes::StringShape.new(name: 'FindingType')
    FindingValidation = Shapes::StructureShape.new(name: 'FindingValidation')
    FindingVerdict = Shapes::StringShape.new(name: 'FindingVerdict')
    FindingVulnerability = Shapes::StructureShape.new(name: 'FindingVulnerability')
    FindingVulnerabilityList = Shapes::ListShape.new(name: 'FindingVulnerabilityList')
    FlowVerdict = Shapes::StructureShape.new(name: 'FlowVerdict')
    FlowVerdictValue = Shapes::StringShape.new(name: 'FlowVerdictValue')
    FlowVerdicts = Shapes::ListShape.new(name: 'FlowVerdicts')
    GetCodeFindingInput = Shapes::StructureShape.new(name: 'GetCodeFindingInput')
    GetCodeFindingOutput = Shapes::StructureShape.new(name: 'GetCodeFindingOutput')
    GetCodeIssueArtifactInput = Shapes::StructureShape.new(name: 'GetCodeIssueArtifactInput')
    GetCodeIssueArtifactOutput = Shapes::StructureShape.new(name: 'GetCodeIssueArtifactOutput')
    GetCodeIssueInput = Shapes::StructureShape.new(name: 'GetCodeIssueInput')
    GetCodeIssueOutput = Shapes::StructureShape.new(name: 'GetCodeIssueOutput')
    GetCodeScanInput = Shapes::StructureShape.new(name: 'GetCodeScanInput')
    GetCodeScanOutput = Shapes::StructureShape.new(name: 'GetCodeScanOutput')
    GetCollectorDataAccessAuthorizationInput = Shapes::StructureShape.new(name: 'GetCollectorDataAccessAuthorizationInput')
    GetCollectorDataAccessAuthorizationOutput = Shapes::StructureShape.new(name: 'GetCollectorDataAccessAuthorizationOutput')
    GetCollectorInput = Shapes::StructureShape.new(name: 'GetCollectorInput')
    GetCollectorOutput = Shapes::StructureShape.new(name: 'GetCollectorOutput')
    GetEnvironmentInput = Shapes::StructureShape.new(name: 'GetEnvironmentInput')
    GetEnvironmentOutput = Shapes::StructureShape.new(name: 'GetEnvironmentOutput')
    GetIntegrationInput = Shapes::StructureShape.new(name: 'GetIntegrationInput')
    GetIntegrationOutput = Shapes::StructureShape.new(name: 'GetIntegrationOutput')
    GetResourcePolicyInput = Shapes::StructureShape.new(name: 'GetResourcePolicyInput')
    GetResourcePolicyOutput = Shapes::StructureShape.new(name: 'GetResourcePolicyOutput')
    GitHubAuthorizationConfiguration = Shapes::StructureShape.new(name: 'GitHubAuthorizationConfiguration')
    GitHubConfiguration = Shapes::StructureShape.new(name: 'GitHubConfiguration')
    GitHubDetails = Shapes::StructureShape.new(name: 'GitHubDetails')
    GitHubOrganizationName = Shapes::StringShape.new(name: 'GitHubOrganizationName')
    GitHubTarget = Shapes::StructureShape.new(name: 'GitHubTarget')
    GitLabAccessToken = Shapes::StringShape.new(name: 'GitLabAccessToken')
    GitLabConfiguration = Shapes::StructureShape.new(name: 'GitLabConfiguration')
    GitLabDetails = Shapes::StructureShape.new(name: 'GitLabDetails')
    GitLabInstanceUrl = Shapes::StringShape.new(name: 'GitLabInstanceUrl')
    GitLabTargetPath = Shapes::StringShape.new(name: 'GitLabTargetPath')
    GitLabTargetType = Shapes::StringShape.new(name: 'GitLabTargetType')
    GitLabTokenRotation = Shapes::StringShape.new(name: 'GitLabTokenRotation')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegrationArn = Shapes::StringShape.new(name: 'IntegrationArn')
    IntegrationAuthorizationProviderType = Shapes::StringShape.new(name: 'IntegrationAuthorizationProviderType')
    IntegrationClientToken = Shapes::StringShape.new(name: 'IntegrationClientToken')
    IntegrationId = Shapes::StringShape.new(name: 'IntegrationId')
    IntegrationName = Shapes::StringShape.new(name: 'IntegrationName')
    IntegrationS3BucketName = Shapes::StringShape.new(name: 'IntegrationS3BucketName')
    IntegrationS3ExternalId = Shapes::StringShape.new(name: 'IntegrationS3ExternalId')
    IntegrationS3RoleArn = Shapes::StringShape.new(name: 'IntegrationS3RoleArn')
    IntegrationSummaries = Shapes::ListShape.new(name: 'IntegrationSummaries')
    IntegrationSummary = Shapes::StructureShape.new(name: 'IntegrationSummary')
    IntegrationType = Shapes::StringShape.new(name: 'IntegrationType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IssueArn = Shapes::StringShape.new(name: 'IssueArn')
    IssueArtifactBody = Shapes::UnionShape.new(name: 'IssueArtifactBody')
    IssueArtifactContent = Shapes::StringShape.new(name: 'IssueArtifactContent')
    IssueArtifactId = Shapes::StringShape.new(name: 'IssueArtifactId')
    IssueArtifactItem = Shapes::StructureShape.new(name: 'IssueArtifactItem')
    IssueArtifactMediaType = Shapes::StringShape.new(name: 'IssueArtifactMediaType')
    IssueArtifactProducerName = Shapes::StringShape.new(name: 'IssueArtifactProducerName')
    IssueArtifactProducerSummary = Shapes::StructureShape.new(name: 'IssueArtifactProducerSummary')
    IssueArtifactType = Shapes::StringShape.new(name: 'IssueArtifactType')
    IssueConfidence = Shapes::IntegerShape.new(name: 'IssueConfidence')
    IssueEvidenceAvailability = Shapes::StringShape.new(name: 'IssueEvidenceAvailability')
    IssueFindingIds = Shapes::ListShape.new(name: 'IssueFindingIds')
    IssueId = Shapes::StringShape.new(name: 'IssueId')
    IssueName = Shapes::StringShape.new(name: 'IssueName')
    IssuePatchDelivery = Shapes::StructureShape.new(name: 'IssuePatchDelivery')
    IssuePatchDeliveryCount = Shapes::IntegerShape.new(name: 'IssuePatchDeliveryCount')
    IssuePatchDeliveryFailureReasons = Shapes::ListShape.new(name: 'IssuePatchDeliveryFailureReasons')
    IssuePatchDeliveryStatus = Shapes::StringShape.new(name: 'IssuePatchDeliveryStatus')
    IssuePhase = Shapes::StringShape.new(name: 'IssuePhase')
    IssueRemediationSummary = Shapes::StringShape.new(name: 'IssueRemediationSummary')
    IssueSeverity = Shapes::StringShape.new(name: 'IssueSeverity')
    IssueSeverityReasoning = Shapes::StringShape.new(name: 'IssueSeverityReasoning')
    IssueStatus = Shapes::StringShape.new(name: 'IssueStatus')
    IssueStatusMessage = Shapes::StringShape.new(name: 'IssueStatusMessage')
    IssueStatusReason = Shapes::StringShape.new(name: 'IssueStatusReason')
    IssueSummary = Shapes::StructureShape.new(name: 'IssueSummary')
    IssueSynopsis = Shapes::StringShape.new(name: 'IssueSynopsis')
    KubernetesClusterExternalId = Shapes::StringShape.new(name: 'KubernetesClusterExternalId')
    KubernetesClusterRoleArn = Shapes::StringShape.new(name: 'KubernetesClusterRoleArn')
    KubernetesClusterRoleConfiguration = Shapes::StructureShape.new(name: 'KubernetesClusterRoleConfiguration')
    KubernetesClusterRoleUpdate = Shapes::UnionShape.new(name: 'KubernetesClusterRoleUpdate')
    ListAssociatedCollectorsInput = Shapes::StructureShape.new(name: 'ListAssociatedCollectorsInput')
    ListAssociatedCollectorsOutput = Shapes::StructureShape.new(name: 'ListAssociatedCollectorsOutput')
    ListAssociatedEnvironmentsInput = Shapes::StructureShape.new(name: 'ListAssociatedEnvironmentsInput')
    ListAssociatedEnvironmentsOutput = Shapes::StructureShape.new(name: 'ListAssociatedEnvironmentsOutput')
    ListCodeFindingsInput = Shapes::StructureShape.new(name: 'ListCodeFindingsInput')
    ListCodeFindingsOutput = Shapes::StructureShape.new(name: 'ListCodeFindingsOutput')
    ListCodeIssueArtifactsInput = Shapes::StructureShape.new(name: 'ListCodeIssueArtifactsInput')
    ListCodeIssueArtifactsOutput = Shapes::StructureShape.new(name: 'ListCodeIssueArtifactsOutput')
    ListCodeIssuesInput = Shapes::StructureShape.new(name: 'ListCodeIssuesInput')
    ListCodeIssuesOutput = Shapes::StructureShape.new(name: 'ListCodeIssuesOutput')
    ListCodeScansInput = Shapes::StructureShape.new(name: 'ListCodeScansInput')
    ListCodeScansOutput = Shapes::StructureShape.new(name: 'ListCodeScansOutput')
    ListCollectorsInput = Shapes::StructureShape.new(name: 'ListCollectorsInput')
    ListCollectorsOutput = Shapes::StructureShape.new(name: 'ListCollectorsOutput')
    ListEnvironmentsInput = Shapes::StructureShape.new(name: 'ListEnvironmentsInput')
    ListEnvironmentsOutput = Shapes::StructureShape.new(name: 'ListEnvironmentsOutput')
    ListIntegrationsInput = Shapes::StructureShape.new(name: 'ListIntegrationsInput')
    ListIntegrationsOutput = Shapes::StructureShape.new(name: 'ListIntegrationsOutput')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OAuthCodeChallenge = Shapes::StringShape.new(name: 'OAuthCodeChallenge')
    OAuthCodeChallengeMethod = Shapes::StringShape.new(name: 'OAuthCodeChallengeMethod')
    OAuthState = Shapes::StringShape.new(name: 'OAuthState')
    PackageManager = Shapes::StringShape.new(name: 'PackageManager')
    PackageName = Shapes::StringShape.new(name: 'PackageName')
    PackageVersion = Shapes::StringShape.new(name: 'PackageVersion')
    PatchBody = Shapes::StructureShape.new(name: 'PatchBody')
    PatchCreationPolicy = Shapes::StringShape.new(name: 'PatchCreationPolicy')
    PatchDelivery = Shapes::StructureShape.new(name: 'PatchDelivery')
    PatchFormat = Shapes::StringShape.new(name: 'PatchFormat')
    PerFindingResult = Shapes::StructureShape.new(name: 'PerFindingResult')
    PerFindingResults = Shapes::ListShape.new(name: 'PerFindingResults')
    PrevalidationSignal = Shapes::StructureShape.new(name: 'PrevalidationSignal')
    PrevalidationSignals = Shapes::ListShape.new(name: 'PrevalidationSignals')
    PrevalidationSignalsBody = Shapes::StructureShape.new(name: 'PrevalidationSignalsBody')
    ProviderConfiguration = Shapes::UnionShape.new(name: 'ProviderConfiguration')
    ProviderDetails = Shapes::UnionShape.new(name: 'ProviderDetails')
    PutResourcePolicyInput = Shapes::StructureShape.new(name: 'PutResourcePolicyInput')
    PutResourcePolicyOutput = Shapes::StructureShape.new(name: 'PutResourcePolicyOutput')
    ReasoningStep = Shapes::StructureShape.new(name: 'ReasoningStep')
    ReasoningSteps = Shapes::ListShape.new(name: 'ReasoningSteps')
    RedirectUrl = Shapes::StringShape.new(name: 'RedirectUrl')
    RemediationProposalBody = Shapes::StructureShape.new(name: 'RemediationProposalBody')
    RemoveKubernetesClusterRole = Shapes::StructureShape.new(name: 'RemoveKubernetesClusterRole')
    RepositoryBranch = Shapes::StringShape.new(name: 'RepositoryBranch')
    RepositoryName = Shapes::StringShape.new(name: 'RepositoryName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicyDocument = Shapes::StringShape.new(name: 'ResourcePolicyDocument')
    ResourcePolicyInputDocument = Shapes::StringShape.new(name: 'ResourcePolicyInputDocument')
    ResourcePolicyRevisionId = Shapes::StringShape.new(name: 'ResourcePolicyRevisionId')
    ResourcePolicyTargetArn = Shapes::StringShape.new(name: 'ResourcePolicyTargetArn')
    S3Configuration = Shapes::StructureShape.new(name: 'S3Configuration')
    S3Details = Shapes::StructureShape.new(name: 'S3Details')
    S3Target = Shapes::StructureShape.new(name: 'S3Target')
    ScanClientToken = Shapes::StringShape.new(name: 'ScanClientToken')
    ScanFailureStage = Shapes::StringShape.new(name: 'ScanFailureStage')
    ScanFrequency = Shapes::StringShape.new(name: 'ScanFrequency')
    ScanOrigin = Shapes::StringShape.new(name: 'ScanOrigin')
    ScanRunFailureMessage = Shapes::StringShape.new(name: 'ScanRunFailureMessage')
    ScanRunId = Shapes::StringShape.new(name: 'ScanRunId')
    ScanStatus = Shapes::StringShape.new(name: 'ScanStatus')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SignalAccessLevel = Shapes::StringShape.new(name: 'SignalAccessLevel')
    SignalAccessPrecondition = Shapes::StructureShape.new(name: 'SignalAccessPrecondition')
    SignalAttackerGains = Shapes::StringShape.new(name: 'SignalAttackerGains')
    SignalAttackerGainsDimension = Shapes::StructureShape.new(name: 'SignalAttackerGainsDimension')
    SignalBand = Shapes::StringShape.new(name: 'SignalBand')
    SignalBasis = Shapes::StringShape.new(name: 'SignalBasis')
    SignalBlastRadius = Shapes::StringShape.new(name: 'SignalBlastRadius')
    SignalBlastRadiusDimension = Shapes::StructureShape.new(name: 'SignalBlastRadiusDimension')
    SignalComputation = Shapes::StructureShape.new(name: 'SignalComputation')
    SignalConfidenceReasoning = Shapes::StructureShape.new(name: 'SignalConfidenceReasoning')
    SignalDimension = Shapes::StringShape.new(name: 'SignalDimension')
    SignalExploitability = Shapes::StructureShape.new(name: 'SignalExploitability')
    SignalImpactDimensions = Shapes::StructureShape.new(name: 'SignalImpactDimensions')
    SignalPrecondition = Shapes::StructureShape.new(name: 'SignalPrecondition')
    SignalPreconditions = Shapes::StructureShape.new(name: 'SignalPreconditions')
    SignalStrength = Shapes::StringShape.new(name: 'SignalStrength')
    SignalTargetValue = Shapes::StringShape.new(name: 'SignalTargetValue')
    SignalTargetValueDimension = Shapes::StructureShape.new(name: 'SignalTargetValueDimension')
    SourceFindingId = Shapes::StringShape.new(name: 'SourceFindingId')
    StartIntegrationAuthorizationInput = Shapes::StructureShape.new(name: 'StartIntegrationAuthorizationInput')
    StartIntegrationAuthorizationOutput = Shapes::StructureShape.new(name: 'StartIntegrationAuthorizationOutput')
    String = Shapes::StringShape.new(name: 'String')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UpdateCodeConfiguration = Shapes::StructureShape.new(name: 'UpdateCodeConfiguration')
    UpdateCollectorInput = Shapes::StructureShape.new(name: 'UpdateCollectorInput')
    UpdateCollectorOutput = Shapes::StructureShape.new(name: 'UpdateCollectorOutput')
    UpdateEnvironmentConfiguration = Shapes::StructureShape.new(name: 'UpdateEnvironmentConfiguration')
    UpdateEnvironmentInput = Shapes::StructureShape.new(name: 'UpdateEnvironmentInput')
    UpdateEnvironmentOutput = Shapes::StructureShape.new(name: 'UpdateEnvironmentOutput')
    UpdateIntegrationInput = Shapes::StructureShape.new(name: 'UpdateIntegrationInput')
    UpdateIntegrationOutput = Shapes::StructureShape.new(name: 'UpdateIntegrationOutput')
    UpdateProviderConfiguration = Shapes::UnionShape.new(name: 'UpdateProviderConfiguration')
    UpdateS3Configuration = Shapes::StructureShape.new(name: 'UpdateS3Configuration')
    ValidationConfidence = Shapes::FloatShape.new(name: 'ValidationConfidence')
    ValidationConfidenceTier = Shapes::StringShape.new(name: 'ValidationConfidenceTier')
    ValidationEvidenceBody = Shapes::StructureShape.new(name: 'ValidationEvidenceBody')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExecutedProof = Shapes::StructureShape.new(name: 'ValidationExecutedProof')
    ValidationExploitArtifact = Shapes::StructureShape.new(name: 'ValidationExploitArtifact')
    ValidationProofCode = Shapes::StructureShape.new(name: 'ValidationProofCode')
    ValidationProofConsoleOutput = Shapes::StringShape.new(name: 'ValidationProofConsoleOutput')
    ValidationProofMaterial = Shapes::StructureShape.new(name: 'ValidationProofMaterial')
    ValidationProofMaterialText = Shapes::StringShape.new(name: 'ValidationProofMaterialText')
    ValidationProofMaterials = Shapes::ListShape.new(name: 'ValidationProofMaterials')
    ValidationProofOutput = Shapes::StructureShape.new(name: 'ValidationProofOutput')
    ValidationProofSummary = Shapes::StringShape.new(name: 'ValidationProofSummary')
    ValidationSourceAnalysis = Shapes::StructureShape.new(name: 'ValidationSourceAnalysis')
    ValidationTerminalStatus = Shapes::StringShape.new(name: 'ValidationTerminalStatus')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AffectedPackage.add_member(:name, Shapes::ShapeRef.new(shape: PackageName, required: true, location_name: "name"))
    AffectedPackage.add_member(:version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "version"))
    AffectedPackage.add_member(:fixed_in_version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "fixedInVersion"))
    AffectedPackage.add_member(:package_manager, Shapes::ShapeRef.new(shape: PackageManager, location_name: "packageManager"))
    AffectedPackage.struct_class = Types::AffectedPackage

    AffectedPackageList.member = Shapes::ShapeRef.new(shape: AffectedPackage)

    ArtifactCitations.member = Shapes::ShapeRef.new(shape: ArtifactCitation)

    ArtifactHeaders.key = Shapes::ShapeRef.new(shape: ArtifactCitation)
    ArtifactHeaders.value = Shapes::ShapeRef.new(shape: ArtifactText)

    AssociateCollectorInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    AssociateCollectorInput.add_member(:client_token, Shapes::ShapeRef.new(shape: AssociationClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    AssociateCollectorInput.add_member(:collector_arn, Shapes::ShapeRef.new(shape: CollectorArn, required: true, location_name: "collectorArn"))
    AssociateCollectorInput.add_member(:collector_data_access_role_arn, Shapes::ShapeRef.new(shape: EnvironmentSourceRoleArn, required: true, location_name: "collectorDataAccessRoleArn"))
    AssociateCollectorInput.struct_class = Types::AssociateCollectorInput

    AssociateCollectorOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    AssociateCollectorOutput.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location_name: "environmentArn"))
    AssociateCollectorOutput.add_member(:associated_collector, Shapes::ShapeRef.new(shape: AssociatedCollector, required: true, location_name: "associatedCollector"))
    AssociateCollectorOutput.struct_class = Types::AssociateCollectorOutput

    AssociatedCollector.add_member(:collector_id, Shapes::ShapeRef.new(shape: CollectorId, required: true, location_name: "collectorId"))
    AssociatedCollector.add_member(:collector_arn, Shapes::ShapeRef.new(shape: CollectorArn, required: true, location_name: "collectorArn"))
    AssociatedCollector.struct_class = Types::AssociatedCollector

    AssociatedCollectors.member = Shapes::ShapeRef.new(shape: AssociatedCollector)

    AssociatedEnvironment.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    AssociatedEnvironment.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location_name: "environmentArn"))
    AssociatedEnvironment.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    AssociatedEnvironment.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, required: true, location_name: "status"))
    AssociatedEnvironment.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    AssociatedEnvironment.struct_class = Types::AssociatedEnvironment

    AssociatedEnvironments.member = Shapes::ShapeRef.new(shape: AssociatedEnvironment)

    AttackFlowIds.member = Shapes::ShapeRef.new(shape: AttackFlowId)

    CodeConfigurationDetails.add_member(:collector_details, Shapes::ShapeRef.new(shape: CollectorDetails, location_name: "collectorDetails"))
    CodeConfigurationDetails.add_member(:source_configuration, Shapes::ShapeRef.new(shape: EnvironmentSourceConfiguration, location_name: "sourceConfiguration"))
    CodeConfigurationDetails.add_member(:environment_configuration, Shapes::ShapeRef.new(shape: EnvironmentConfiguration, location_name: "environmentConfiguration"))
    CodeConfigurationDetails.add_member(:latest_scan, Shapes::ShapeRef.new(shape: CodeScanSummary, location_name: "latestScan"))
    CodeConfigurationDetails.struct_class = Types::CodeConfigurationDetails

    CodeFindingSummaries.member = Shapes::ShapeRef.new(shape: FindingSummary)

    CodeIssueArtifactItems.member = Shapes::ShapeRef.new(shape: IssueArtifactItem)

    CodeIssueSummaries.member = Shapes::ShapeRef.new(shape: IssueSummary)

    CodeScanData.add_member(:scan_run_id, Shapes::ShapeRef.new(shape: ScanRunId, required: true, location_name: "scanRunId"))
    CodeScanData.add_member(:status, Shapes::ShapeRef.new(shape: ScanStatus, required: true, location_name: "status"))
    CodeScanData.add_member(:origin, Shapes::ShapeRef.new(shape: ScanOrigin, required: true, location_name: "origin"))
    CodeScanData.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    CodeScanData.add_member(:completed_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completedAt"))
    CodeScanData.add_member(:failure_message, Shapes::ShapeRef.new(shape: ScanRunFailureMessage, location_name: "failureMessage"))
    CodeScanData.add_member(:failure_stage, Shapes::ShapeRef.new(shape: ScanFailureStage, location_name: "failureStage"))
    CodeScanData.struct_class = Types::CodeScanData

    CodeScanSummaries.member = Shapes::ShapeRef.new(shape: CodeScanSummary)

    CodeScanSummary.add_member(:scan_run_id, Shapes::ShapeRef.new(shape: ScanRunId, required: true, location_name: "scanRunId"))
    CodeScanSummary.add_member(:status, Shapes::ShapeRef.new(shape: ScanStatus, required: true, location_name: "status"))
    CodeScanSummary.add_member(:origin, Shapes::ShapeRef.new(shape: ScanOrigin, required: true, location_name: "origin"))
    CodeScanSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    CodeScanSummary.add_member(:completed_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completedAt"))
    CodeScanSummary.add_member(:failure_message, Shapes::ShapeRef.new(shape: ScanRunFailureMessage, location_name: "failureMessage"))
    CodeScanSummary.add_member(:failure_stage, Shapes::ShapeRef.new(shape: ScanFailureStage, location_name: "failureStage"))
    CodeScanSummary.struct_class = Types::CodeScanSummary

    CollectorDetails.add_member(:collector_data_access_role_arn, Shapes::ShapeRef.new(shape: EnvironmentSourceRoleArn, location_name: "collectorDataAccessRoleArn"))
    CollectorDetails.struct_class = Types::CollectorDetails

    CollectorSummaries.member = Shapes::ShapeRef.new(shape: CollectorSummary)

    CollectorSummary.add_member(:collector_id, Shapes::ShapeRef.new(shape: CollectorId, required: true, location_name: "collectorId"))
    CollectorSummary.add_member(:collector_arn, Shapes::ShapeRef.new(shape: CollectorArn, required: true, location_name: "collectorArn"))
    CollectorSummary.add_member(:type, Shapes::ShapeRef.new(shape: CollectorType, required: true, location_name: "type"))
    CollectorSummary.add_member(:status, Shapes::ShapeRef.new(shape: CollectorStatus, required: true, location_name: "status"))
    CollectorSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    CollectorSummary.struct_class = Types::CollectorSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateCodeConfiguration.add_member(:source_configuration, Shapes::ShapeRef.new(shape: EnvironmentSourceConfiguration, location_name: "sourceConfiguration"))
    CreateCodeConfiguration.add_member(:environment_configuration, Shapes::ShapeRef.new(shape: EnvironmentConfiguration, location_name: "environmentConfiguration"))
    CreateCodeConfiguration.struct_class = Types::CreateCodeConfiguration

    CreateCodeFindingInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    CreateCodeFindingInput.add_member(:ocsf_document, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "ocsfDocument"))
    CreateCodeFindingInput.add_member(:client_token, Shapes::ShapeRef.new(shape: FindingClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateCodeFindingInput.struct_class = Types::CreateCodeFindingInput

    CreateCodeFindingOutput.add_member(:finding_id, Shapes::ShapeRef.new(shape: FindingId, required: true, location_name: "findingId"))
    CreateCodeFindingOutput.add_member(:finding_arn, Shapes::ShapeRef.new(shape: FindingArn, required: true, location_name: "findingArn"))
    CreateCodeFindingOutput.add_member(:title, Shapes::ShapeRef.new(shape: FindingTitle, required: true, location_name: "title"))
    CreateCodeFindingOutput.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    CreateCodeFindingOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    CreateCodeFindingOutput.struct_class = Types::CreateCodeFindingOutput

    CreateCodeScanInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    CreateCodeScanInput.add_member(:client_token, Shapes::ShapeRef.new(shape: ScanClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateCodeScanInput.struct_class = Types::CreateCodeScanInput

    CreateCodeScanOutput.add_member(:scan, Shapes::ShapeRef.new(shape: CodeScanSummary, required: true, location_name: "scan"))
    CreateCodeScanOutput.struct_class = Types::CreateCodeScanOutput

    CreateCollectorInput.add_member(:type, Shapes::ShapeRef.new(shape: CollectorType, location_name: "type"))
    CreateCollectorInput.add_member(:kubernetes_cluster_role, Shapes::ShapeRef.new(shape: KubernetesClusterRoleConfiguration, location_name: "k8ClusterRole"))
    CreateCollectorInput.add_member(:client_token, Shapes::ShapeRef.new(shape: CollectorClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateCollectorInput.struct_class = Types::CreateCollectorInput

    CreateCollectorOutput.add_member(:collector_id, Shapes::ShapeRef.new(shape: CollectorId, required: true, location_name: "collectorId"))
    CreateCollectorOutput.add_member(:collector_arn, Shapes::ShapeRef.new(shape: CollectorArn, required: true, location_name: "collectorArn"))
    CreateCollectorOutput.add_member(:type, Shapes::ShapeRef.new(shape: CollectorType, required: true, location_name: "type"))
    CreateCollectorOutput.add_member(:status, Shapes::ShapeRef.new(shape: CollectorStatus, required: true, location_name: "status"))
    CreateCollectorOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    CreateCollectorOutput.struct_class = Types::CreateCollectorOutput

    CreateEnvironmentConfiguration.add_member(:code_configuration, Shapes::ShapeRef.new(shape: CreateCodeConfiguration, location_name: "codeConfiguration"))
    CreateEnvironmentConfiguration.struct_class = Types::CreateEnvironmentConfiguration

    CreateEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    CreateEnvironmentInput.add_member(:configuration, Shapes::ShapeRef.new(shape: CreateEnvironmentConfiguration, location_name: "configuration"))
    CreateEnvironmentInput.struct_class = Types::CreateEnvironmentInput

    CreateEnvironmentOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    CreateEnvironmentOutput.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location_name: "environmentArn"))
    CreateEnvironmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, required: true, location_name: "status"))
    CreateEnvironmentOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    CreateEnvironmentOutput.struct_class = Types::CreateEnvironmentOutput

    CreateIntegrationInput.add_member(:client_token, Shapes::ShapeRef.new(shape: IntegrationClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateIntegrationInput.add_member(:name, Shapes::ShapeRef.new(shape: IntegrationName, required: true, location_name: "name"))
    CreateIntegrationInput.add_member(:provider_configuration, Shapes::ShapeRef.new(shape: ProviderConfiguration, required: true, location_name: "providerConfiguration"))
    CreateIntegrationInput.struct_class = Types::CreateIntegrationInput

    CreateIntegrationOutput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    CreateIntegrationOutput.add_member(:integration_arn, Shapes::ShapeRef.new(shape: IntegrationArn, required: true, location_name: "integrationArn"))
    CreateIntegrationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    CreateIntegrationOutput.struct_class = Types::CreateIntegrationOutput

    CweIdList.member = Shapes::ShapeRef.new(shape: CweId)

    DeleteCollectorInput.add_member(:collector_id, Shapes::ShapeRef.new(shape: CollectorId, required: true, location: "uri", location_name: "collectorId"))
    DeleteCollectorInput.struct_class = Types::DeleteCollectorInput

    DeleteEnvironmentInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    DeleteEnvironmentInput.struct_class = Types::DeleteEnvironmentInput

    DeleteIntegrationInput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location: "uri", location_name: "integrationId"))
    DeleteIntegrationInput.struct_class = Types::DeleteIntegrationInput

    DestinationTarget.add_member(:s3, Shapes::ShapeRef.new(shape: S3Target, location_name: "s3"))
    DestinationTarget.add_member(:github, Shapes::ShapeRef.new(shape: GitHubTarget, location_name: "github"))
    DestinationTarget.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DestinationTarget.add_member_subclass(:s3, Types::DestinationTarget::S3)
    DestinationTarget.add_member_subclass(:github, Types::DestinationTarget::Github)
    DestinationTarget.add_member_subclass(:unknown, Types::DestinationTarget::Unknown)
    DestinationTarget.struct_class = Types::DestinationTarget

    DisassociateCollectorInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    DisassociateCollectorInput.add_member(:collector_arn, Shapes::ShapeRef.new(shape: CollectorArn, required: true, location_name: "collectorArn"))
    DisassociateCollectorInput.struct_class = Types::DisassociateCollectorInput

    DomainNames.member = Shapes::ShapeRef.new(shape: DomainName)

    EnvironmentConfiguration.add_member(:network, Shapes::ShapeRef.new(shape: EnvironmentNetworkConfiguration, location_name: "network"))
    EnvironmentConfiguration.add_member(:scan_frequency, Shapes::ShapeRef.new(shape: ScanFrequency, location_name: "scanFrequency"))
    EnvironmentConfiguration.add_member(:patch_creation_policy, Shapes::ShapeRef.new(shape: PatchCreationPolicy, location_name: "patchCreationPolicy"))
    EnvironmentConfiguration.struct_class = Types::EnvironmentConfiguration

    EnvironmentConfigurationDetails.add_member(:code_configuration, Shapes::ShapeRef.new(shape: CodeConfigurationDetails, location_name: "codeConfiguration"))
    EnvironmentConfigurationDetails.struct_class = Types::EnvironmentConfigurationDetails

    EnvironmentListEntries.member = Shapes::ShapeRef.new(shape: EnvironmentListEntry)

    EnvironmentListEntry.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    EnvironmentListEntry.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location_name: "environmentArn"))
    EnvironmentListEntry.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    EnvironmentListEntry.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, required: true, location_name: "status"))
    EnvironmentListEntry.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    EnvironmentListEntry.struct_class = Types::EnvironmentListEntry

    EnvironmentNetworkConfiguration.add_member(:allowed_domains, Shapes::ShapeRef.new(shape: DomainNames, location_name: "allowedDomains"))
    EnvironmentNetworkConfiguration.struct_class = Types::EnvironmentNetworkConfiguration

    EnvironmentRepositorySource.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    EnvironmentRepositorySource.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repository"))
    EnvironmentRepositorySource.add_member(:default_branch, Shapes::ShapeRef.new(shape: RepositoryBranch, location_name: "defaultBranch"))
    EnvironmentRepositorySource.struct_class = Types::EnvironmentRepositorySource

    EnvironmentRepositorySources.member = Shapes::ShapeRef.new(shape: EnvironmentRepositorySource)

    EnvironmentS3IntegrationSource.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    EnvironmentS3IntegrationSource.add_member(:code_prefix, Shapes::ShapeRef.new(shape: EnvironmentSourcePrefix, location_name: "codePrefix"))
    EnvironmentS3IntegrationSource.add_member(:context_prefix, Shapes::ShapeRef.new(shape: EnvironmentSourcePrefix, location_name: "contextPrefix"))
    EnvironmentS3IntegrationSource.struct_class = Types::EnvironmentS3IntegrationSource

    EnvironmentS3Sources.member = Shapes::ShapeRef.new(shape: EnvironmentS3IntegrationSource)

    EnvironmentSourceConfiguration.add_member(:s3_sources, Shapes::ShapeRef.new(shape: EnvironmentS3Sources, location_name: "s3Sources"))
    EnvironmentSourceConfiguration.add_member(:repository_sources, Shapes::ShapeRef.new(shape: EnvironmentRepositorySources, location_name: "repositorySources"))
    EnvironmentSourceConfiguration.struct_class = Types::EnvironmentSourceConfiguration

    FindingComplianceCheck.add_member(:uid, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "uid"))
    FindingComplianceCheck.add_member(:name, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "name"))
    FindingComplianceCheck.add_member(:description, Shapes::ShapeRef.new(shape: FindingDescription, location_name: "description"))
    FindingComplianceCheck.struct_class = Types::FindingComplianceCheck

    FindingComplianceCheckList.member = Shapes::ShapeRef.new(shape: FindingComplianceCheck)

    FindingEvidence.add_member(:file, Shapes::ShapeRef.new(shape: FindingFilePath, location_name: "file"))
    FindingEvidence.add_member(:line, Shapes::ShapeRef.new(shape: Integer, location_name: "line"))
    FindingEvidence.add_member(:snippet, Shapes::ShapeRef.new(shape: FindingCodeSnippet, location_name: "snippet"))
    FindingEvidence.struct_class = Types::FindingEvidence

    FindingEvidenceList.member = Shapes::ShapeRef.new(shape: FindingEvidence)

    FindingLocation.add_member(:file_path, Shapes::ShapeRef.new(shape: FindingFilePath, location_name: "filePath"))
    FindingLocation.add_member(:start_line, Shapes::ShapeRef.new(shape: Integer, location_name: "startLine"))
    FindingLocation.add_member(:end_line, Shapes::ShapeRef.new(shape: Integer, location_name: "endLine"))
    FindingLocation.struct_class = Types::FindingLocation

    FindingLocationList.member = Shapes::ShapeRef.new(shape: FindingLocation)

    FindingPosture.add_member(:application, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "application"))
    FindingPosture.add_member(:application_uid, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "applicationUid"))
    FindingPosture.add_member(:application_version, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "applicationVersion"))
    FindingPosture.add_member(:control, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "control"))
    FindingPosture.add_member(:description, Shapes::ShapeRef.new(shape: FindingDescription, location_name: "description"))
    FindingPosture.add_member(:standards, Shapes::ShapeRef.new(shape: FindingStringList, location_name: "standards"))
    FindingPosture.add_member(:requirements, Shapes::ShapeRef.new(shape: FindingStringList, location_name: "requirements"))
    FindingPosture.add_member(:checks, Shapes::ShapeRef.new(shape: FindingComplianceCheckList, location_name: "checks"))
    FindingPosture.add_member(:status, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "status"))
    FindingPosture.add_member(:status_id, Shapes::ShapeRef.new(shape: Integer, location_name: "statusId"))
    FindingPosture.add_member(:remediation, Shapes::ShapeRef.new(shape: FindingDescription, location_name: "remediation"))
    FindingPosture.add_member(:remediation_references, Shapes::ShapeRef.new(shape: FindingStringList, location_name: "remediationReferences"))
    FindingPosture.struct_class = Types::FindingPosture

    FindingResource.add_member(:uid, Shapes::ShapeRef.new(shape: FindingResourceUid, location_name: "uid"))
    FindingResource.add_member(:name, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "name"))
    FindingResource.add_member(:type, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "type"))
    FindingResource.add_member(:region, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "region"))
    FindingResource.struct_class = Types::FindingResource

    FindingResourceList.member = Shapes::ShapeRef.new(shape: FindingResource)

    FindingStringList.member = Shapes::ShapeRef.new(shape: FindingListEntry)

    FindingSummary.add_member(:finding_id, Shapes::ShapeRef.new(shape: FindingId, required: true, location_name: "findingId"))
    FindingSummary.add_member(:finding_arn, Shapes::ShapeRef.new(shape: FindingArn, required: true, location_name: "findingArn"))
    FindingSummary.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    FindingSummary.add_member(:source, Shapes::ShapeRef.new(shape: FindingSource, required: true, location_name: "source"))
    FindingSummary.add_member(:source_finding_id, Shapes::ShapeRef.new(shape: SourceFindingId, required: true, location_name: "sourceFindingId"))
    FindingSummary.add_member(:reported_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "reportedAt"))
    FindingSummary.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    FindingSummary.add_member(:status_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "statusUpdatedAt"))
    FindingSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    FindingSummary.add_member(:scan_run_id, Shapes::ShapeRef.new(shape: ScanRunId, location_name: "scanRunId"))
    FindingSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: FindingStatusMessage, location_name: "statusMessage"))
    FindingSummary.add_member(:discard_reason, Shapes::ShapeRef.new(shape: FindingDiscardReason, location_name: "discardReason"))
    FindingSummary.add_member(:discard_reasoning, Shapes::ShapeRef.new(shape: FindingStatusMessage, location_name: "discardReasoning"))
    FindingSummary.add_member(:duplicate_of_issue_id, Shapes::ShapeRef.new(shape: IssueId, location_name: "duplicateOfIssueId"))
    FindingSummary.add_member(:created_issue_id, Shapes::ShapeRef.new(shape: IssueId, location_name: "createdIssueId"))
    FindingSummary.add_member(:completed_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completedAt"))
    FindingSummary.add_member(:type, Shapes::ShapeRef.new(shape: FindingType, required: true, location_name: "type"))
    FindingSummary.add_member(:title, Shapes::ShapeRef.new(shape: FindingTitle, required: true, location_name: "title"))
    FindingSummary.add_member(:severity, Shapes::ShapeRef.new(shape: FindingSeverityId, required: true, location_name: "severity"))
    FindingSummary.add_member(:category, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "category"))
    FindingSummary.add_member(:file_path, Shapes::ShapeRef.new(shape: FindingFilePath, location_name: "filePath"))
    FindingSummary.struct_class = Types::FindingSummary

    FindingValidation.add_member(:verdict, Shapes::ShapeRef.new(shape: FindingVerdict, required: true, location_name: "verdict"))
    FindingValidation.add_member(:blocking_reason, Shapes::ShapeRef.new(shape: FindingBlockingReason, location_name: "blockingReason"))
    FindingValidation.add_member(:confidence, Shapes::ShapeRef.new(shape: Double, location_name: "confidence"))
    FindingValidation.add_member(:rationale, Shapes::ShapeRef.new(shape: FindingDescription, location_name: "rationale"))
    FindingValidation.add_member(:severity_adjustment, Shapes::ShapeRef.new(shape: FindingSeverityAdjustment, location_name: "severityAdjustment"))
    FindingValidation.add_member(:mitigating_controls, Shapes::ShapeRef.new(shape: FindingStringList, location_name: "mitigatingControls"))
    FindingValidation.add_member(:preconditions, Shapes::ShapeRef.new(shape: FindingStringList, location_name: "preconditions"))
    FindingValidation.add_member(:evidence, Shapes::ShapeRef.new(shape: FindingEvidenceList, location_name: "evidence"))
    FindingValidation.struct_class = Types::FindingValidation

    FindingVulnerability.add_member(:title, Shapes::ShapeRef.new(shape: FindingTitle, location_name: "title"))
    FindingVulnerability.add_member(:description, Shapes::ShapeRef.new(shape: FindingDescription, location_name: "description"))
    FindingVulnerability.add_member(:cwe_id, Shapes::ShapeRef.new(shape: CweId, location_name: "cweId"))
    FindingVulnerability.add_member(:cwe_caption, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "cweCaption"))
    FindingVulnerability.add_member(:additional_cwe_ids, Shapes::ShapeRef.new(shape: CweIdList, location_name: "additionalCweIds"))
    FindingVulnerability.add_member(:cve_id, Shapes::ShapeRef.new(shape: CveId, location_name: "cveId"))
    FindingVulnerability.add_member(:cvss_base_score, Shapes::ShapeRef.new(shape: Double, location_name: "cvssBaseScore"))
    FindingVulnerability.add_member(:fix_coverage, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "fixCoverage"))
    FindingVulnerability.add_member(:fix_coverage_id, Shapes::ShapeRef.new(shape: Integer, location_name: "fixCoverageId"))
    FindingVulnerability.add_member(:locations, Shapes::ShapeRef.new(shape: FindingLocationList, location_name: "locations"))
    FindingVulnerability.add_member(:remediation, Shapes::ShapeRef.new(shape: FindingDescription, location_name: "remediation"))
    FindingVulnerability.add_member(:remediation_references, Shapes::ShapeRef.new(shape: FindingStringList, location_name: "remediationReferences"))
    FindingVulnerability.add_member(:code, Shapes::ShapeRef.new(shape: FindingCodeSnippet, location_name: "code"))
    FindingVulnerability.add_member(:details, Shapes::ShapeRef.new(shape: FindingDescription, location_name: "details"))
    FindingVulnerability.add_member(:affected_packages, Shapes::ShapeRef.new(shape: AffectedPackageList, location_name: "affectedPackages"))
    FindingVulnerability.struct_class = Types::FindingVulnerability

    FindingVulnerabilityList.member = Shapes::ShapeRef.new(shape: FindingVulnerability)

    FlowVerdict.add_member(:flow_id, Shapes::ShapeRef.new(shape: AttackFlowId, required: true, location_name: "flowId"))
    FlowVerdict.add_member(:verdict, Shapes::ShapeRef.new(shape: FlowVerdictValue, required: true, location_name: "verdict"))
    FlowVerdict.add_member(:confidence, Shapes::ShapeRef.new(shape: ValidationConfidence, location_name: "confidence"))
    FlowVerdict.add_member(:evidence, Shapes::ShapeRef.new(shape: ArtifactCitations, location_name: "evidence"))
    FlowVerdict.struct_class = Types::FlowVerdict

    FlowVerdicts.member = Shapes::ShapeRef.new(shape: FlowVerdict)

    GetCodeFindingInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    GetCodeFindingInput.add_member(:finding_id, Shapes::ShapeRef.new(shape: FindingId, required: true, location: "uri", location_name: "findingId"))
    GetCodeFindingInput.struct_class = Types::GetCodeFindingInput

    GetCodeFindingOutput.add_member(:type, Shapes::ShapeRef.new(shape: FindingType, required: true, location_name: "type"))
    GetCodeFindingOutput.add_member(:title, Shapes::ShapeRef.new(shape: FindingTitle, required: true, location_name: "title"))
    GetCodeFindingOutput.add_member(:severity, Shapes::ShapeRef.new(shape: FindingSeverityId, required: true, location_name: "severity"))
    GetCodeFindingOutput.add_member(:summary, Shapes::ShapeRef.new(shape: FindingDescription, location_name: "summary"))
    GetCodeFindingOutput.add_member(:detailed_description, Shapes::ShapeRef.new(shape: FindingDescription, location_name: "detailedDescription"))
    GetCodeFindingOutput.add_member(:category, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "category"))
    GetCodeFindingOutput.add_member(:sub_category, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "subCategory"))
    GetCodeFindingOutput.add_member(:cwe_ids, Shapes::ShapeRef.new(shape: CweIdList, location_name: "cweIds"))
    GetCodeFindingOutput.add_member(:owasp_category, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "owaspCategory"))
    GetCodeFindingOutput.add_member(:mitigation, Shapes::ShapeRef.new(shape: FindingDescription, location_name: "mitigation"))
    GetCodeFindingOutput.add_member(:file_path, Shapes::ShapeRef.new(shape: FindingFilePath, location_name: "filePath"))
    GetCodeFindingOutput.add_member(:line_number, Shapes::ShapeRef.new(shape: Integer, location_name: "lineNumber"))
    GetCodeFindingOutput.add_member(:cve_id, Shapes::ShapeRef.new(shape: CveId, location_name: "cveId"))
    GetCodeFindingOutput.add_member(:cvss_base_score, Shapes::ShapeRef.new(shape: Double, location_name: "cvssBaseScore"))
    GetCodeFindingOutput.add_member(:affected_packages, Shapes::ShapeRef.new(shape: AffectedPackageList, location_name: "affectedPackages"))
    GetCodeFindingOutput.add_member(:vulnerable_code, Shapes::ShapeRef.new(shape: FindingCodeSnippet, location_name: "vulnerableCode"))
    GetCodeFindingOutput.add_member(:relevant_inputs, Shapes::ShapeRef.new(shape: FindingStringList, location_name: "relevantInputs"))
    GetCodeFindingOutput.add_member(:steps_to_reproduce, Shapes::ShapeRef.new(shape: FindingStringList, location_name: "stepsToReproduce"))
    GetCodeFindingOutput.add_member(:validation, Shapes::ShapeRef.new(shape: FindingValidation, location_name: "validation"))
    GetCodeFindingOutput.add_member(:end_line, Shapes::ShapeRef.new(shape: Integer, location_name: "endLine"))
    GetCodeFindingOutput.add_member(:mitre_techniques, Shapes::ShapeRef.new(shape: FindingStringList, location_name: "mitreTechniques"))
    GetCodeFindingOutput.add_member(:remediation_references, Shapes::ShapeRef.new(shape: FindingStringList, location_name: "remediationReferences"))
    GetCodeFindingOutput.add_member(:ocsf_class, Shapes::ShapeRef.new(shape: FindingOcsfClass, location_name: "ocsfClass"))
    GetCodeFindingOutput.add_member(:ocsf_schema_version, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "ocsfSchemaVersion"))
    GetCodeFindingOutput.add_member(:product_name, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "productName"))
    GetCodeFindingOutput.add_member(:product_vendor_name, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "productVendorName"))
    GetCodeFindingOutput.add_member(:product_version, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "productVersion"))
    GetCodeFindingOutput.add_member(:source_status, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "sourceStatus"))
    GetCodeFindingOutput.add_member(:source_status_id, Shapes::ShapeRef.new(shape: Integer, location_name: "sourceStatusId"))
    GetCodeFindingOutput.add_member(:first_seen_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "firstSeenAt"))
    GetCodeFindingOutput.add_member(:finding_types, Shapes::ShapeRef.new(shape: FindingStringList, location_name: "findingTypes"))
    GetCodeFindingOutput.add_member(:vulnerabilities, Shapes::ShapeRef.new(shape: FindingVulnerabilityList, location_name: "vulnerabilities"))
    GetCodeFindingOutput.add_member(:resources, Shapes::ShapeRef.new(shape: FindingResourceList, location_name: "resources"))
    GetCodeFindingOutput.add_member(:posture, Shapes::ShapeRef.new(shape: FindingPosture, location_name: "posture"))
    GetCodeFindingOutput.add_member(:finding_id, Shapes::ShapeRef.new(shape: FindingId, required: true, location_name: "findingId"))
    GetCodeFindingOutput.add_member(:finding_arn, Shapes::ShapeRef.new(shape: FindingArn, required: true, location_name: "findingArn"))
    GetCodeFindingOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    GetCodeFindingOutput.add_member(:source, Shapes::ShapeRef.new(shape: FindingSource, required: true, location_name: "source"))
    GetCodeFindingOutput.add_member(:source_finding_id, Shapes::ShapeRef.new(shape: SourceFindingId, required: true, location_name: "sourceFindingId"))
    GetCodeFindingOutput.add_member(:reported_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "reportedAt"))
    GetCodeFindingOutput.add_member(:status, Shapes::ShapeRef.new(shape: FindingStatus, required: true, location_name: "status"))
    GetCodeFindingOutput.add_member(:status_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "statusUpdatedAt"))
    GetCodeFindingOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetCodeFindingOutput.add_member(:scan_run_id, Shapes::ShapeRef.new(shape: ScanRunId, location_name: "scanRunId"))
    GetCodeFindingOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: FindingStatusMessage, location_name: "statusMessage"))
    GetCodeFindingOutput.add_member(:discard_reason, Shapes::ShapeRef.new(shape: FindingDiscardReason, location_name: "discardReason"))
    GetCodeFindingOutput.add_member(:discard_reasoning, Shapes::ShapeRef.new(shape: FindingStatusMessage, location_name: "discardReasoning"))
    GetCodeFindingOutput.add_member(:duplicate_of_issue_id, Shapes::ShapeRef.new(shape: IssueId, location_name: "duplicateOfIssueId"))
    GetCodeFindingOutput.add_member(:created_issue_id, Shapes::ShapeRef.new(shape: IssueId, location_name: "createdIssueId"))
    GetCodeFindingOutput.add_member(:completed_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "completedAt"))
    GetCodeFindingOutput.struct_class = Types::GetCodeFindingOutput

    GetCodeIssueArtifactInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    GetCodeIssueArtifactInput.add_member(:issue_id, Shapes::ShapeRef.new(shape: IssueId, required: true, location: "uri", location_name: "issueId"))
    GetCodeIssueArtifactInput.add_member(:artifact_id, Shapes::ShapeRef.new(shape: IssueArtifactId, required: true, location: "uri", location_name: "artifactId"))
    GetCodeIssueArtifactInput.struct_class = Types::GetCodeIssueArtifactInput

    GetCodeIssueArtifactOutput.add_member(:artifact_id, Shapes::ShapeRef.new(shape: IssueArtifactId, required: true, location_name: "artifactId"))
    GetCodeIssueArtifactOutput.add_member(:artifact_type, Shapes::ShapeRef.new(shape: IssueArtifactType, required: true, location_name: "artifactType"))
    GetCodeIssueArtifactOutput.add_member(:media_type, Shapes::ShapeRef.new(shape: IssueArtifactMediaType, required: true, location_name: "mediaType"))
    GetCodeIssueArtifactOutput.add_member(:body, Shapes::ShapeRef.new(shape: IssueArtifactBody, required: true, location_name: "body"))
    GetCodeIssueArtifactOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: Document, location_name: "metadata"))
    GetCodeIssueArtifactOutput.add_member(:producer, Shapes::ShapeRef.new(shape: IssueArtifactProducerSummary, required: true, location_name: "producer"))
    GetCodeIssueArtifactOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetCodeIssueArtifactOutput.struct_class = Types::GetCodeIssueArtifactOutput

    GetCodeIssueInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    GetCodeIssueInput.add_member(:issue_id, Shapes::ShapeRef.new(shape: IssueId, required: true, location: "uri", location_name: "issueId"))
    GetCodeIssueInput.struct_class = Types::GetCodeIssueInput

    GetCodeIssueOutput.add_member(:issue_id, Shapes::ShapeRef.new(shape: IssueId, required: true, location_name: "issueId"))
    GetCodeIssueOutput.add_member(:issue_arn, Shapes::ShapeRef.new(shape: IssueArn, required: true, location_name: "issueArn"))
    GetCodeIssueOutput.add_member(:name, Shapes::ShapeRef.new(shape: IssueName, required: true, location_name: "name"))
    GetCodeIssueOutput.add_member(:synopsis, Shapes::ShapeRef.new(shape: IssueSynopsis, required: true, location_name: "synopsis"))
    GetCodeIssueOutput.add_member(:severity, Shapes::ShapeRef.new(shape: IssueSeverity, location_name: "severity"))
    GetCodeIssueOutput.add_member(:confidence, Shapes::ShapeRef.new(shape: IssueConfidence, location_name: "confidence"))
    GetCodeIssueOutput.add_member(:severity_reasoning, Shapes::ShapeRef.new(shape: IssueSeverityReasoning, location_name: "severityReasoning"))
    GetCodeIssueOutput.add_member(:summary, Shapes::ShapeRef.new(shape: IssueRemediationSummary, location_name: "summary"))
    GetCodeIssueOutput.add_member(:finding_ids, Shapes::ShapeRef.new(shape: IssueFindingIds, required: true, location_name: "findingIds"))
    GetCodeIssueOutput.add_member(:status, Shapes::ShapeRef.new(shape: IssueStatus, required: true, location_name: "status"))
    GetCodeIssueOutput.add_member(:phase, Shapes::ShapeRef.new(shape: IssuePhase, location_name: "phase"))
    GetCodeIssueOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: IssueStatusReason, location_name: "statusReason"))
    GetCodeIssueOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: IssueStatusMessage, location_name: "statusMessage"))
    GetCodeIssueOutput.add_member(:status_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "statusUpdatedAt"))
    GetCodeIssueOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetCodeIssueOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    GetCodeIssueOutput.add_member(:evidence_availability, Shapes::ShapeRef.new(shape: IssueEvidenceAvailability, location_name: "evidenceAvailability"))
    GetCodeIssueOutput.add_member(:patch_delivery, Shapes::ShapeRef.new(shape: IssuePatchDelivery, location_name: "patchDelivery"))
    GetCodeIssueOutput.struct_class = Types::GetCodeIssueOutput

    GetCodeScanInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    GetCodeScanInput.add_member(:scan_run_id, Shapes::ShapeRef.new(shape: ScanRunId, required: true, location: "uri", location_name: "scanRunId"))
    GetCodeScanInput.struct_class = Types::GetCodeScanInput

    GetCodeScanOutput.add_member(:scan, Shapes::ShapeRef.new(shape: CodeScanData, required: true, location_name: "scan"))
    GetCodeScanOutput.struct_class = Types::GetCodeScanOutput

    GetCollectorDataAccessAuthorizationInput.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "querystring", location_name: "accountId"))
    GetCollectorDataAccessAuthorizationInput.add_member(:collector_id, Shapes::ShapeRef.new(shape: CollectorId, required: true, location: "uri", location_name: "collectorId"))
    GetCollectorDataAccessAuthorizationInput.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location: "querystring", location_name: "environmentArn"))
    GetCollectorDataAccessAuthorizationInput.struct_class = Types::GetCollectorDataAccessAuthorizationInput

    GetCollectorDataAccessAuthorizationOutput.struct_class = Types::GetCollectorDataAccessAuthorizationOutput

    GetCollectorInput.add_member(:collector_id, Shapes::ShapeRef.new(shape: CollectorId, required: true, location: "uri", location_name: "collectorId"))
    GetCollectorInput.struct_class = Types::GetCollectorInput

    GetCollectorOutput.add_member(:collector_id, Shapes::ShapeRef.new(shape: CollectorId, required: true, location_name: "collectorId"))
    GetCollectorOutput.add_member(:collector_arn, Shapes::ShapeRef.new(shape: CollectorArn, required: true, location_name: "collectorArn"))
    GetCollectorOutput.add_member(:type, Shapes::ShapeRef.new(shape: CollectorType, required: true, location_name: "type"))
    GetCollectorOutput.add_member(:status, Shapes::ShapeRef.new(shape: CollectorStatus, required: true, location_name: "status"))
    GetCollectorOutput.add_member(:config_recorder_arn, Shapes::ShapeRef.new(shape: ConfigRecorderArn, location_name: "configRecorderArn"))
    GetCollectorOutput.add_member(:kubernetes_cluster_role_arn, Shapes::ShapeRef.new(shape: KubernetesClusterRoleArn, location_name: "k8ClusterRole"))
    GetCollectorOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetCollectorOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    GetCollectorOutput.struct_class = Types::GetCollectorOutput

    GetEnvironmentInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    GetEnvironmentInput.struct_class = Types::GetEnvironmentInput

    GetEnvironmentOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    GetEnvironmentOutput.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location_name: "environmentArn"))
    GetEnvironmentOutput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    GetEnvironmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, required: true, location_name: "status"))
    GetEnvironmentOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: EnvironmentStatusMessage, location_name: "statusMessage"))
    GetEnvironmentOutput.add_member(:status_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "statusUpdatedAt"))
    GetEnvironmentOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetEnvironmentOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    GetEnvironmentOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: EnvironmentConfigurationDetails, required: true, location_name: "configuration"))
    GetEnvironmentOutput.struct_class = Types::GetEnvironmentOutput

    GetIntegrationInput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location: "uri", location_name: "integrationId"))
    GetIntegrationInput.struct_class = Types::GetIntegrationInput

    GetIntegrationOutput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    GetIntegrationOutput.add_member(:integration_arn, Shapes::ShapeRef.new(shape: IntegrationArn, required: true, location_name: "integrationArn"))
    GetIntegrationOutput.add_member(:name, Shapes::ShapeRef.new(shape: IntegrationName, required: true, location_name: "name"))
    GetIntegrationOutput.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "integrationType"))
    GetIntegrationOutput.add_member(:provider_details, Shapes::ShapeRef.new(shape: ProviderDetails, required: true, location_name: "providerDetails"))
    GetIntegrationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetIntegrationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    GetIntegrationOutput.struct_class = Types::GetIntegrationOutput

    GetResourcePolicyInput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourcePolicyTargetArn, required: true, location: "querystring", location_name: "arn"))
    GetResourcePolicyInput.struct_class = Types::GetResourcePolicyInput

    GetResourcePolicyOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourcePolicyTargetArn, required: true, location_name: "arn"))
    GetResourcePolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, required: true, location_name: "policy"))
    GetResourcePolicyOutput.add_member(:revision_id, Shapes::ShapeRef.new(shape: ResourcePolicyRevisionId, required: true, location_name: "revisionId"))
    GetResourcePolicyOutput.struct_class = Types::GetResourcePolicyOutput

    GitHubAuthorizationConfiguration.add_member(:authorization_code, Shapes::ShapeRef.new(shape: AuthorizationCode, required: true, location_name: "authorizationCode"))
    GitHubAuthorizationConfiguration.add_member(:state, Shapes::ShapeRef.new(shape: OAuthState, required: true, location_name: "state"))
    GitHubAuthorizationConfiguration.add_member(:redirect_url, Shapes::ShapeRef.new(shape: RedirectUrl, location_name: "redirectUrl"))
    GitHubAuthorizationConfiguration.struct_class = Types::GitHubAuthorizationConfiguration

    GitHubConfiguration.add_member(:authorization, Shapes::ShapeRef.new(shape: GitHubAuthorizationConfiguration, required: true, location_name: "authorization"))
    GitHubConfiguration.add_member(:organization_name, Shapes::ShapeRef.new(shape: GitHubOrganizationName, location_name: "organizationName"))
    GitHubConfiguration.struct_class = Types::GitHubConfiguration

    GitHubDetails.add_member(:organization_name, Shapes::ShapeRef.new(shape: GitHubOrganizationName, location_name: "organizationName"))
    GitHubDetails.struct_class = Types::GitHubDetails

    GitHubTarget.add_member(:owner, Shapes::ShapeRef.new(shape: DeliveryGitHubName, required: true, location_name: "owner"))
    GitHubTarget.add_member(:repository, Shapes::ShapeRef.new(shape: DeliveryGitHubName, required: true, location_name: "repository"))
    GitHubTarget.add_member(:pull_request_number, Shapes::ShapeRef.new(shape: DeliveryPullRequestNumber, location_name: "pullRequestNumber"))
    GitHubTarget.add_member(:head_sha, Shapes::ShapeRef.new(shape: DeliveryGitCommitSha, location_name: "headSha"))
    GitHubTarget.struct_class = Types::GitHubTarget

    GitLabConfiguration.add_member(:instance_url, Shapes::ShapeRef.new(shape: GitLabInstanceUrl, required: true, location_name: "instanceUrl"))
    GitLabConfiguration.add_member(:target_type, Shapes::ShapeRef.new(shape: GitLabTargetType, required: true, location_name: "targetType"))
    GitLabConfiguration.add_member(:target_path, Shapes::ShapeRef.new(shape: GitLabTargetPath, required: true, location_name: "targetPath"))
    GitLabConfiguration.add_member(:access_token, Shapes::ShapeRef.new(shape: GitLabAccessToken, required: true, location_name: "accessToken"))
    GitLabConfiguration.struct_class = Types::GitLabConfiguration

    GitLabDetails.add_member(:instance_url, Shapes::ShapeRef.new(shape: GitLabInstanceUrl, required: true, location_name: "instanceUrl"))
    GitLabDetails.add_member(:target_type, Shapes::ShapeRef.new(shape: GitLabTargetType, required: true, location_name: "targetType"))
    GitLabDetails.add_member(:target_path, Shapes::ShapeRef.new(shape: GitLabTargetPath, required: true, location_name: "targetPath"))
    GitLabDetails.add_member(:token_rotation, Shapes::ShapeRef.new(shape: GitLabTokenRotation, required: true, location_name: "tokenRotation"))
    GitLabDetails.add_member(:expires_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "expiresAt"))
    GitLabDetails.struct_class = Types::GitLabDetails

    IntegrationSummaries.member = Shapes::ShapeRef.new(shape: IntegrationSummary)

    IntegrationSummary.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    IntegrationSummary.add_member(:integration_arn, Shapes::ShapeRef.new(shape: IntegrationArn, required: true, location_name: "integrationArn"))
    IntegrationSummary.add_member(:name, Shapes::ShapeRef.new(shape: IntegrationName, required: true, location_name: "name"))
    IntegrationSummary.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "integrationType"))
    IntegrationSummary.add_member(:provider_details, Shapes::ShapeRef.new(shape: ProviderDetails, required: true, location_name: "providerDetails"))
    IntegrationSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    IntegrationSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    IntegrationSummary.struct_class = Types::IntegrationSummary

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    IssueArtifactBody.add_member(:validation_evidence, Shapes::ShapeRef.new(shape: ValidationEvidenceBody, location_name: "validationEvidence"))
    IssueArtifactBody.add_member(:prevalidation_signals, Shapes::ShapeRef.new(shape: PrevalidationSignalsBody, location_name: "prevalidationSignals"))
    IssueArtifactBody.add_member(:remediation_proposal, Shapes::ShapeRef.new(shape: RemediationProposalBody, location_name: "remediationProposal"))
    IssueArtifactBody.add_member(:patch, Shapes::ShapeRef.new(shape: PatchBody, location_name: "patch"))
    IssueArtifactBody.add_member(:raw, Shapes::ShapeRef.new(shape: IssueArtifactContent, location_name: "raw"))
    IssueArtifactBody.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    IssueArtifactBody.add_member_subclass(:validation_evidence, Types::IssueArtifactBody::ValidationEvidence)
    IssueArtifactBody.add_member_subclass(:prevalidation_signals, Types::IssueArtifactBody::PrevalidationSignals)
    IssueArtifactBody.add_member_subclass(:remediation_proposal, Types::IssueArtifactBody::RemediationProposal)
    IssueArtifactBody.add_member_subclass(:patch, Types::IssueArtifactBody::Patch)
    IssueArtifactBody.add_member_subclass(:raw, Types::IssueArtifactBody::Raw)
    IssueArtifactBody.add_member_subclass(:unknown, Types::IssueArtifactBody::Unknown)
    IssueArtifactBody.struct_class = Types::IssueArtifactBody

    IssueArtifactItem.add_member(:artifact_id, Shapes::ShapeRef.new(shape: IssueArtifactId, required: true, location_name: "artifactId"))
    IssueArtifactItem.add_member(:artifact_type, Shapes::ShapeRef.new(shape: IssueArtifactType, required: true, location_name: "artifactType"))
    IssueArtifactItem.add_member(:media_type, Shapes::ShapeRef.new(shape: IssueArtifactMediaType, required: true, location_name: "mediaType"))
    IssueArtifactItem.add_member(:producer, Shapes::ShapeRef.new(shape: IssueArtifactProducerSummary, required: true, location_name: "producer"))
    IssueArtifactItem.add_member(:content_size_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "contentSizeBytes"))
    IssueArtifactItem.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    IssueArtifactItem.struct_class = Types::IssueArtifactItem

    IssueArtifactProducerSummary.add_member(:agent, Shapes::ShapeRef.new(shape: IssueArtifactProducerName, required: true, location_name: "agent"))
    IssueArtifactProducerSummary.struct_class = Types::IssueArtifactProducerSummary

    IssueFindingIds.member = Shapes::ShapeRef.new(shape: FindingId)

    IssuePatchDelivery.add_member(:status, Shapes::ShapeRef.new(shape: IssuePatchDeliveryStatus, required: true, location_name: "status"))
    IssuePatchDelivery.add_member(:patch_count, Shapes::ShapeRef.new(shape: IssuePatchDeliveryCount, required: true, location_name: "patchCount"))
    IssuePatchDelivery.add_member(:succeeded_count, Shapes::ShapeRef.new(shape: IssuePatchDeliveryCount, required: true, location_name: "succeededCount"))
    IssuePatchDelivery.add_member(:failed_count, Shapes::ShapeRef.new(shape: IssuePatchDeliveryCount, required: true, location_name: "failedCount"))
    IssuePatchDelivery.add_member(:failure_reasons, Shapes::ShapeRef.new(shape: IssuePatchDeliveryFailureReasons, location_name: "failureReasons"))
    IssuePatchDelivery.struct_class = Types::IssuePatchDelivery

    IssuePatchDeliveryFailureReasons.member = Shapes::ShapeRef.new(shape: DeliveryReason)

    IssueSummary.add_member(:issue_id, Shapes::ShapeRef.new(shape: IssueId, required: true, location_name: "issueId"))
    IssueSummary.add_member(:issue_arn, Shapes::ShapeRef.new(shape: IssueArn, required: true, location_name: "issueArn"))
    IssueSummary.add_member(:name, Shapes::ShapeRef.new(shape: IssueName, required: true, location_name: "name"))
    IssueSummary.add_member(:severity, Shapes::ShapeRef.new(shape: IssueSeverity, location_name: "severity"))
    IssueSummary.add_member(:confidence, Shapes::ShapeRef.new(shape: IssueConfidence, location_name: "confidence"))
    IssueSummary.add_member(:status, Shapes::ShapeRef.new(shape: IssueStatus, required: true, location_name: "status"))
    IssueSummary.add_member(:phase, Shapes::ShapeRef.new(shape: IssuePhase, location_name: "phase"))
    IssueSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: IssueStatusReason, location_name: "statusReason"))
    IssueSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: IssueStatusMessage, location_name: "statusMessage"))
    IssueSummary.add_member(:status_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "statusUpdatedAt"))
    IssueSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    IssueSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    IssueSummary.struct_class = Types::IssueSummary

    KubernetesClusterRoleConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: KubernetesClusterRoleArn, required: true, location_name: "roleArn"))
    KubernetesClusterRoleConfiguration.add_member(:external_id, Shapes::ShapeRef.new(shape: KubernetesClusterExternalId, location_name: "externalId"))
    KubernetesClusterRoleConfiguration.struct_class = Types::KubernetesClusterRoleConfiguration

    KubernetesClusterRoleUpdate.add_member(:set, Shapes::ShapeRef.new(shape: KubernetesClusterRoleConfiguration, location_name: "set"))
    KubernetesClusterRoleUpdate.add_member(:remove, Shapes::ShapeRef.new(shape: RemoveKubernetesClusterRole, location_name: "remove"))
    KubernetesClusterRoleUpdate.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    KubernetesClusterRoleUpdate.add_member_subclass(:set, Types::KubernetesClusterRoleUpdate::Set)
    KubernetesClusterRoleUpdate.add_member_subclass(:remove, Types::KubernetesClusterRoleUpdate::Remove)
    KubernetesClusterRoleUpdate.add_member_subclass(:unknown, Types::KubernetesClusterRoleUpdate::Unknown)
    KubernetesClusterRoleUpdate.struct_class = Types::KubernetesClusterRoleUpdate

    ListAssociatedCollectorsInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListAssociatedCollectorsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssociatedCollectorsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssociatedCollectorsInput.struct_class = Types::ListAssociatedCollectorsInput

    ListAssociatedCollectorsOutput.add_member(:associated_collectors, Shapes::ShapeRef.new(shape: AssociatedCollectors, required: true, location_name: "associatedCollectors"))
    ListAssociatedCollectorsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssociatedCollectorsOutput.struct_class = Types::ListAssociatedCollectorsOutput

    ListAssociatedEnvironmentsInput.add_member(:collector_id, Shapes::ShapeRef.new(shape: CollectorId, required: true, location: "uri", location_name: "collectorId"))
    ListAssociatedEnvironmentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAssociatedEnvironmentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListAssociatedEnvironmentsInput.struct_class = Types::ListAssociatedEnvironmentsInput

    ListAssociatedEnvironmentsOutput.add_member(:associated_environments, Shapes::ShapeRef.new(shape: AssociatedEnvironments, required: true, location_name: "associatedEnvironments"))
    ListAssociatedEnvironmentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListAssociatedEnvironmentsOutput.struct_class = Types::ListAssociatedEnvironmentsOutput

    ListCodeFindingsInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListCodeFindingsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCodeFindingsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCodeFindingsInput.struct_class = Types::ListCodeFindingsInput

    ListCodeFindingsOutput.add_member(:items, Shapes::ShapeRef.new(shape: CodeFindingSummaries, required: true, location_name: "items"))
    ListCodeFindingsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeFindingsOutput.struct_class = Types::ListCodeFindingsOutput

    ListCodeIssueArtifactsInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListCodeIssueArtifactsInput.add_member(:issue_id, Shapes::ShapeRef.new(shape: IssueId, required: true, location: "uri", location_name: "issueId"))
    ListCodeIssueArtifactsInput.add_member(:artifact_type, Shapes::ShapeRef.new(shape: IssueArtifactType, location: "querystring", location_name: "artifactType"))
    ListCodeIssueArtifactsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCodeIssueArtifactsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCodeIssueArtifactsInput.struct_class = Types::ListCodeIssueArtifactsInput

    ListCodeIssueArtifactsOutput.add_member(:items, Shapes::ShapeRef.new(shape: CodeIssueArtifactItems, required: true, location_name: "items"))
    ListCodeIssueArtifactsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeIssueArtifactsOutput.struct_class = Types::ListCodeIssueArtifactsOutput

    ListCodeIssuesInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListCodeIssuesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCodeIssuesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCodeIssuesInput.struct_class = Types::ListCodeIssuesInput

    ListCodeIssuesOutput.add_member(:items, Shapes::ShapeRef.new(shape: CodeIssueSummaries, required: true, location_name: "items"))
    ListCodeIssuesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeIssuesOutput.struct_class = Types::ListCodeIssuesOutput

    ListCodeScansInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    ListCodeScansInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListCodeScansInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCodeScansInput.struct_class = Types::ListCodeScansInput

    ListCodeScansOutput.add_member(:scans, Shapes::ShapeRef.new(shape: CodeScanSummaries, required: true, location_name: "scans"))
    ListCodeScansOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCodeScansOutput.struct_class = Types::ListCodeScansOutput

    ListCollectorsInput.struct_class = Types::ListCollectorsInput

    ListCollectorsOutput.add_member(:items, Shapes::ShapeRef.new(shape: CollectorSummaries, required: true, location_name: "items"))
    ListCollectorsOutput.struct_class = Types::ListCollectorsOutput

    ListEnvironmentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEnvironmentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEnvironmentsInput.struct_class = Types::ListEnvironmentsInput

    ListEnvironmentsOutput.add_member(:items, Shapes::ShapeRef.new(shape: EnvironmentListEntries, required: true, location_name: "items"))
    ListEnvironmentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListEnvironmentsOutput.struct_class = Types::ListEnvironmentsOutput

    ListIntegrationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListIntegrationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListIntegrationsInput.struct_class = Types::ListIntegrationsInput

    ListIntegrationsOutput.add_member(:items, Shapes::ShapeRef.new(shape: IntegrationSummaries, required: true, location_name: "items"))
    ListIntegrationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListIntegrationsOutput.struct_class = Types::ListIntegrationsOutput

    PatchBody.add_member(:patch, Shapes::ShapeRef.new(shape: IssueArtifactContent, required: true, location_name: "patch"))
    PatchBody.add_member(:format, Shapes::ShapeRef.new(shape: PatchFormat, location_name: "format"))
    PatchBody.add_member(:repository_name, Shapes::ShapeRef.new(shape: BuildRepositoryName, location_name: "repositoryName"))
    PatchBody.add_member(:patch_sha_256, Shapes::ShapeRef.new(shape: ArtifactSha256, required: true, location_name: "patchSha256"))
    PatchBody.add_member(:size_bytes, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "sizeBytes"))
    PatchBody.add_member(:delivery, Shapes::ShapeRef.new(shape: PatchDelivery, location_name: "delivery"))
    PatchBody.struct_class = Types::PatchBody

    PatchDelivery.add_member(:status, Shapes::ShapeRef.new(shape: DeliveryStatus, required: true, location_name: "status"))
    PatchDelivery.add_member(:target, Shapes::ShapeRef.new(shape: DestinationTarget, location_name: "target"))
    PatchDelivery.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    PatchDelivery.struct_class = Types::PatchDelivery

    PerFindingResult.add_member(:finding_id, Shapes::ShapeRef.new(shape: FindingId, required: true, location_name: "findingId"))
    PerFindingResult.add_member(:exploitable, Shapes::ShapeRef.new(shape: ExploitabilityVerdict, required: true, location_name: "exploitable"))
    PerFindingResult.add_member(:confidence, Shapes::ShapeRef.new(shape: ValidationConfidence, location_name: "confidence"))
    PerFindingResult.add_member(:flow_verdicts, Shapes::ShapeRef.new(shape: FlowVerdicts, location_name: "flowVerdicts"))
    PerFindingResult.add_member(:reasoning_chain, Shapes::ShapeRef.new(shape: ReasoningSteps, location_name: "reasoningChain"))
    PerFindingResult.add_member(:exploit_artifact, Shapes::ShapeRef.new(shape: ValidationExploitArtifact, location_name: "exploitArtifact"))
    PerFindingResult.struct_class = Types::PerFindingResult

    PerFindingResults.member = Shapes::ShapeRef.new(shape: PerFindingResult)

    PrevalidationSignal.add_member(:subject_ref, Shapes::ShapeRef.new(shape: ArtifactCitation, location_name: "subjectRef"))
    PrevalidationSignal.add_member(:dimension, Shapes::ShapeRef.new(shape: SignalDimension, location_name: "dimension"))
    PrevalidationSignal.add_member(:signal_strength, Shapes::ShapeRef.new(shape: SignalStrength, location_name: "signalStrength"))
    PrevalidationSignal.add_member(:conclusion, Shapes::ShapeRef.new(shape: ArtifactText, location_name: "conclusion"))
    PrevalidationSignal.add_member(:producer_id, Shapes::ShapeRef.new(shape: IssueArtifactProducerName, location_name: "producerId"))
    PrevalidationSignal.add_member(:producer_version, Shapes::ShapeRef.new(shape: ArtifactCitation, location_name: "producerVersion"))
    PrevalidationSignal.add_member(:confidence, Shapes::ShapeRef.new(shape: ValidationConfidence, location_name: "confidence"))
    PrevalidationSignal.add_member(:confidence_reasoning, Shapes::ShapeRef.new(shape: SignalConfidenceReasoning, location_name: "confidenceReasoning"))
    PrevalidationSignal.add_member(:computed, Shapes::ShapeRef.new(shape: SignalComputation, location_name: "computed"))
    PrevalidationSignal.add_member(:preconditions, Shapes::ShapeRef.new(shape: SignalPreconditions, location_name: "preconditions"))
    PrevalidationSignal.add_member(:impact_dimensions, Shapes::ShapeRef.new(shape: SignalImpactDimensions, location_name: "impactDimensions"))
    PrevalidationSignal.add_member(:exploitability, Shapes::ShapeRef.new(shape: SignalExploitability, location_name: "exploitability"))
    PrevalidationSignal.struct_class = Types::PrevalidationSignal

    PrevalidationSignals.member = Shapes::ShapeRef.new(shape: PrevalidationSignal)

    PrevalidationSignalsBody.add_member(:produced_by, Shapes::ShapeRef.new(shape: IssueArtifactProducerName, location_name: "producedBy"))
    PrevalidationSignalsBody.add_member(:signals, Shapes::ShapeRef.new(shape: PrevalidationSignals, location_name: "signals"))
    PrevalidationSignalsBody.struct_class = Types::PrevalidationSignalsBody

    ProviderConfiguration.add_member(:github, Shapes::ShapeRef.new(shape: GitHubConfiguration, location_name: "github"))
    ProviderConfiguration.add_member(:gitlab, Shapes::ShapeRef.new(shape: GitLabConfiguration, location_name: "gitlab"))
    ProviderConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3Configuration, location_name: "s3"))
    ProviderConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProviderConfiguration.add_member_subclass(:github, Types::ProviderConfiguration::Github)
    ProviderConfiguration.add_member_subclass(:gitlab, Types::ProviderConfiguration::Gitlab)
    ProviderConfiguration.add_member_subclass(:s3, Types::ProviderConfiguration::S3)
    ProviderConfiguration.add_member_subclass(:unknown, Types::ProviderConfiguration::Unknown)
    ProviderConfiguration.struct_class = Types::ProviderConfiguration

    ProviderDetails.add_member(:github, Shapes::ShapeRef.new(shape: GitHubDetails, location_name: "github"))
    ProviderDetails.add_member(:gitlab, Shapes::ShapeRef.new(shape: GitLabDetails, location_name: "gitlab"))
    ProviderDetails.add_member(:s3, Shapes::ShapeRef.new(shape: S3Details, location_name: "s3"))
    ProviderDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ProviderDetails.add_member_subclass(:github, Types::ProviderDetails::Github)
    ProviderDetails.add_member_subclass(:gitlab, Types::ProviderDetails::Gitlab)
    ProviderDetails.add_member_subclass(:s3, Types::ProviderDetails::S3)
    ProviderDetails.add_member_subclass(:unknown, Types::ProviderDetails::Unknown)
    ProviderDetails.struct_class = Types::ProviderDetails

    PutResourcePolicyInput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourcePolicyTargetArn, required: true, location_name: "arn"))
    PutResourcePolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyInputDocument, location_name: "policy"))
    PutResourcePolicyInput.add_member(:expected_revision_id, Shapes::ShapeRef.new(shape: ResourcePolicyRevisionId, location_name: "expectedRevisionId"))
    PutResourcePolicyInput.struct_class = Types::PutResourcePolicyInput

    PutResourcePolicyOutput.add_member(:arn, Shapes::ShapeRef.new(shape: ResourcePolicyTargetArn, required: true, location_name: "arn"))
    PutResourcePolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, required: true, location_name: "policy"))
    PutResourcePolicyOutput.add_member(:revision_id, Shapes::ShapeRef.new(shape: ResourcePolicyRevisionId, required: true, location_name: "revisionId"))
    PutResourcePolicyOutput.struct_class = Types::PutResourcePolicyOutput

    ReasoningStep.add_member(:step, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "step"))
    ReasoningStep.add_member(:claim, Shapes::ShapeRef.new(shape: ArtifactText, required: true, location_name: "claim"))
    ReasoningStep.add_member(:source, Shapes::ShapeRef.new(shape: ArtifactCitation, required: true, location_name: "source"))
    ReasoningStep.add_member(:confidence, Shapes::ShapeRef.new(shape: ValidationConfidence, location_name: "confidence"))
    ReasoningStep.struct_class = Types::ReasoningStep

    ReasoningSteps.member = Shapes::ShapeRef.new(shape: ReasoningStep)

    RemediationProposalBody.add_member(:patch, Shapes::ShapeRef.new(shape: IssueArtifactContent, required: true, location_name: "patch"))
    RemediationProposalBody.add_member(:format, Shapes::ShapeRef.new(shape: PatchFormat, location_name: "format"))
    RemediationProposalBody.add_member(:filename, Shapes::ShapeRef.new(shape: ArtifactCitation, location_name: "filename"))
    RemediationProposalBody.add_member(:patch_sha_256, Shapes::ShapeRef.new(shape: ArtifactSha256, location_name: "patchSha256"))
    RemediationProposalBody.struct_class = Types::RemediationProposalBody

    RemoveKubernetesClusterRole.struct_class = Types::RemoveKubernetesClusterRole

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Configuration.add_member(:bucket, Shapes::ShapeRef.new(shape: IntegrationS3BucketName, required: true, location_name: "bucket"))
    S3Configuration.add_member(:role_arn, Shapes::ShapeRef.new(shape: IntegrationS3RoleArn, required: true, location_name: "roleArn"))
    S3Configuration.add_member(:external_id, Shapes::ShapeRef.new(shape: IntegrationS3ExternalId, required: true, location_name: "externalId"))
    S3Configuration.struct_class = Types::S3Configuration

    S3Details.add_member(:bucket, Shapes::ShapeRef.new(shape: IntegrationS3BucketName, required: true, location_name: "bucket"))
    S3Details.add_member(:role_arn, Shapes::ShapeRef.new(shape: IntegrationS3RoleArn, required: true, location_name: "roleArn"))
    S3Details.struct_class = Types::S3Details

    S3Target.add_member(:bucket, Shapes::ShapeRef.new(shape: EnvironmentSourceBucketName, required: true, location_name: "bucket"))
    S3Target.add_member(:key, Shapes::ShapeRef.new(shape: DeliveryObjectKey, required: true, location_name: "key"))
    S3Target.add_member(:version, Shapes::ShapeRef.new(shape: DeliveryVersionId, location_name: "version"))
    S3Target.struct_class = Types::S3Target

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SignalAccessPrecondition.add_member(:value, Shapes::ShapeRef.new(shape: SignalAccessLevel, location_name: "value"))
    SignalAccessPrecondition.add_member(:basis, Shapes::ShapeRef.new(shape: SignalBasis, location_name: "basis"))
    SignalAccessPrecondition.add_member(:reason, Shapes::ShapeRef.new(shape: ArtifactText, location_name: "reason"))
    SignalAccessPrecondition.add_member(:missing_info, Shapes::ShapeRef.new(shape: ArtifactText, location_name: "missingInfo"))
    SignalAccessPrecondition.struct_class = Types::SignalAccessPrecondition

    SignalAttackerGainsDimension.add_member(:value, Shapes::ShapeRef.new(shape: SignalAttackerGains, location_name: "value"))
    SignalAttackerGainsDimension.add_member(:basis, Shapes::ShapeRef.new(shape: SignalBasis, location_name: "basis"))
    SignalAttackerGainsDimension.add_member(:reason, Shapes::ShapeRef.new(shape: ArtifactText, location_name: "reason"))
    SignalAttackerGainsDimension.add_member(:missing_info, Shapes::ShapeRef.new(shape: ArtifactText, location_name: "missingInfo"))
    SignalAttackerGainsDimension.struct_class = Types::SignalAttackerGainsDimension

    SignalBlastRadiusDimension.add_member(:value, Shapes::ShapeRef.new(shape: SignalBlastRadius, location_name: "value"))
    SignalBlastRadiusDimension.add_member(:basis, Shapes::ShapeRef.new(shape: SignalBasis, location_name: "basis"))
    SignalBlastRadiusDimension.add_member(:reason, Shapes::ShapeRef.new(shape: ArtifactText, location_name: "reason"))
    SignalBlastRadiusDimension.add_member(:missing_info, Shapes::ShapeRef.new(shape: ArtifactText, location_name: "missingInfo"))
    SignalBlastRadiusDimension.struct_class = Types::SignalBlastRadiusDimension

    SignalComputation.add_member(:likelihood_band, Shapes::ShapeRef.new(shape: SignalBand, location_name: "likelihoodBand"))
    SignalComputation.add_member(:impact_band, Shapes::ShapeRef.new(shape: SignalBand, location_name: "impactBand"))
    SignalComputation.add_member(:barriers, Shapes::ShapeRef.new(shape: Integer, location_name: "barriers"))
    SignalComputation.struct_class = Types::SignalComputation

    SignalConfidenceReasoning.add_member(:summary, Shapes::ShapeRef.new(shape: ArtifactText, required: true, location_name: "summary"))
    SignalConfidenceReasoning.add_member(:factors, Shapes::ShapeRef.new(shape: ArtifactCitations, location_name: "factors"))
    SignalConfidenceReasoning.struct_class = Types::SignalConfidenceReasoning

    SignalExploitability.add_member(:verdict, Shapes::ShapeRef.new(shape: ExploitabilityVerdict, location_name: "verdict"))
    SignalExploitability.add_member(:reached_crown_jewels, Shapes::ShapeRef.new(shape: Boolean, location_name: "reachedCrownJewels"))
    SignalExploitability.add_member(:highest_layer_reached, Shapes::ShapeRef.new(shape: Integer, location_name: "highestLayerReached"))
    SignalExploitability.add_member(:confidence_tier, Shapes::ShapeRef.new(shape: ValidationConfidenceTier, location_name: "confidenceTier"))
    SignalExploitability.add_member(:scriptable, Shapes::ShapeRef.new(shape: Boolean, location_name: "scriptable"))
    SignalExploitability.add_member(:source_validation_artifact_id, Shapes::ShapeRef.new(shape: IssueArtifactId, location_name: "sourceValidationArtifactId"))
    SignalExploitability.struct_class = Types::SignalExploitability

    SignalImpactDimensions.add_member(:attacker_gains, Shapes::ShapeRef.new(shape: SignalAttackerGainsDimension, location_name: "attackerGains"))
    SignalImpactDimensions.add_member(:blast_radius, Shapes::ShapeRef.new(shape: SignalBlastRadiusDimension, location_name: "blastRadius"))
    SignalImpactDimensions.add_member(:target_value, Shapes::ShapeRef.new(shape: SignalTargetValueDimension, location_name: "targetValue"))
    SignalImpactDimensions.struct_class = Types::SignalImpactDimensions

    SignalPrecondition.add_member(:value, Shapes::ShapeRef.new(shape: Boolean, location_name: "value"))
    SignalPrecondition.add_member(:basis, Shapes::ShapeRef.new(shape: SignalBasis, location_name: "basis"))
    SignalPrecondition.add_member(:reason, Shapes::ShapeRef.new(shape: ArtifactText, location_name: "reason"))
    SignalPrecondition.add_member(:missing_info, Shapes::ShapeRef.new(shape: ArtifactText, location_name: "missingInfo"))
    SignalPrecondition.struct_class = Types::SignalPrecondition

    SignalPreconditions.add_member(:reachable_from_attacker, Shapes::ShapeRef.new(shape: SignalPrecondition, location_name: "reachableFromAttacker"))
    SignalPreconditions.add_member(:configuration_needed, Shapes::ShapeRef.new(shape: SignalPrecondition, location_name: "configurationNeeded"))
    SignalPreconditions.add_member(:access_level, Shapes::ShapeRef.new(shape: SignalAccessPrecondition, location_name: "accessLevel"))
    SignalPreconditions.add_member(:user_interaction_required, Shapes::ShapeRef.new(shape: SignalPrecondition, location_name: "userInteractionRequired"))
    SignalPreconditions.struct_class = Types::SignalPreconditions

    SignalTargetValueDimension.add_member(:value, Shapes::ShapeRef.new(shape: SignalTargetValue, location_name: "value"))
    SignalTargetValueDimension.add_member(:basis, Shapes::ShapeRef.new(shape: SignalBasis, location_name: "basis"))
    SignalTargetValueDimension.add_member(:reason, Shapes::ShapeRef.new(shape: ArtifactText, location_name: "reason"))
    SignalTargetValueDimension.add_member(:missing_info, Shapes::ShapeRef.new(shape: ArtifactText, location_name: "missingInfo"))
    SignalTargetValueDimension.struct_class = Types::SignalTargetValueDimension

    StartIntegrationAuthorizationInput.add_member(:provider_type, Shapes::ShapeRef.new(shape: IntegrationAuthorizationProviderType, required: true, location_name: "providerType"))
    StartIntegrationAuthorizationInput.add_member(:name, Shapes::ShapeRef.new(shape: IntegrationName, location_name: "name"))
    StartIntegrationAuthorizationInput.struct_class = Types::StartIntegrationAuthorizationInput

    StartIntegrationAuthorizationOutput.add_member(:state, Shapes::ShapeRef.new(shape: OAuthState, required: true, location_name: "state"))
    StartIntegrationAuthorizationOutput.add_member(:code_challenge, Shapes::ShapeRef.new(shape: OAuthCodeChallenge, required: true, location_name: "codeChallenge"))
    StartIntegrationAuthorizationOutput.add_member(:code_challenge_method, Shapes::ShapeRef.new(shape: OAuthCodeChallengeMethod, required: true, location_name: "codeChallengeMethod"))
    StartIntegrationAuthorizationOutput.add_member(:expires_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "expiresAt"))
    StartIntegrationAuthorizationOutput.struct_class = Types::StartIntegrationAuthorizationOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateCodeConfiguration.add_member(:source_configuration, Shapes::ShapeRef.new(shape: EnvironmentSourceConfiguration, location_name: "sourceConfiguration"))
    UpdateCodeConfiguration.add_member(:environment_configuration, Shapes::ShapeRef.new(shape: EnvironmentConfiguration, location_name: "environmentConfiguration"))
    UpdateCodeConfiguration.struct_class = Types::UpdateCodeConfiguration

    UpdateCollectorInput.add_member(:collector_id, Shapes::ShapeRef.new(shape: CollectorId, required: true, location: "uri", location_name: "collectorId"))
    UpdateCollectorInput.add_member(:name, Shapes::ShapeRef.new(shape: CollectorName, location_name: "name"))
    UpdateCollectorInput.add_member(:kubernetes_cluster_role, Shapes::ShapeRef.new(shape: KubernetesClusterRoleUpdate, location_name: "k8ClusterRole"))
    UpdateCollectorInput.struct_class = Types::UpdateCollectorInput

    UpdateCollectorOutput.add_member(:collector_id, Shapes::ShapeRef.new(shape: CollectorId, required: true, location_name: "collectorId"))
    UpdateCollectorOutput.add_member(:collector_arn, Shapes::ShapeRef.new(shape: CollectorArn, required: true, location_name: "collectorArn"))
    UpdateCollectorOutput.add_member(:type, Shapes::ShapeRef.new(shape: CollectorType, required: true, location_name: "type"))
    UpdateCollectorOutput.add_member(:status, Shapes::ShapeRef.new(shape: CollectorStatus, required: true, location_name: "status"))
    UpdateCollectorOutput.add_member(:config_recorder_arn, Shapes::ShapeRef.new(shape: ConfigRecorderArn, location_name: "configRecorderArn"))
    UpdateCollectorOutput.add_member(:kubernetes_cluster_role_arn, Shapes::ShapeRef.new(shape: KubernetesClusterRoleArn, location_name: "k8ClusterRole"))
    UpdateCollectorOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    UpdateCollectorOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    UpdateCollectorOutput.struct_class = Types::UpdateCollectorOutput

    UpdateEnvironmentConfiguration.add_member(:code_configuration, Shapes::ShapeRef.new(shape: UpdateCodeConfiguration, location_name: "codeConfiguration"))
    UpdateEnvironmentConfiguration.struct_class = Types::UpdateEnvironmentConfiguration

    UpdateEnvironmentInput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location: "uri", location_name: "environmentId"))
    UpdateEnvironmentInput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "name"))
    UpdateEnvironmentInput.add_member(:configuration, Shapes::ShapeRef.new(shape: UpdateEnvironmentConfiguration, location_name: "configuration"))
    UpdateEnvironmentInput.struct_class = Types::UpdateEnvironmentInput

    UpdateEnvironmentOutput.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, required: true, location_name: "environmentId"))
    UpdateEnvironmentOutput.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location_name: "environmentArn"))
    UpdateEnvironmentOutput.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    UpdateEnvironmentOutput.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, required: true, location_name: "status"))
    UpdateEnvironmentOutput.add_member(:status_message, Shapes::ShapeRef.new(shape: EnvironmentStatusMessage, location_name: "statusMessage"))
    UpdateEnvironmentOutput.add_member(:status_updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "statusUpdatedAt"))
    UpdateEnvironmentOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    UpdateEnvironmentOutput.add_member(:configuration, Shapes::ShapeRef.new(shape: EnvironmentConfigurationDetails, required: true, location_name: "configuration"))
    UpdateEnvironmentOutput.struct_class = Types::UpdateEnvironmentOutput

    UpdateIntegrationInput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location: "uri", location_name: "integrationId"))
    UpdateIntegrationInput.add_member(:provider_configuration, Shapes::ShapeRef.new(shape: UpdateProviderConfiguration, required: true, location_name: "providerConfiguration"))
    UpdateIntegrationInput.struct_class = Types::UpdateIntegrationInput

    UpdateIntegrationOutput.add_member(:integration_id, Shapes::ShapeRef.new(shape: IntegrationId, required: true, location_name: "integrationId"))
    UpdateIntegrationOutput.add_member(:integration_arn, Shapes::ShapeRef.new(shape: IntegrationArn, required: true, location_name: "integrationArn"))
    UpdateIntegrationOutput.add_member(:name, Shapes::ShapeRef.new(shape: IntegrationName, required: true, location_name: "name"))
    UpdateIntegrationOutput.add_member(:integration_type, Shapes::ShapeRef.new(shape: IntegrationType, required: true, location_name: "integrationType"))
    UpdateIntegrationOutput.add_member(:provider_details, Shapes::ShapeRef.new(shape: ProviderDetails, required: true, location_name: "providerDetails"))
    UpdateIntegrationOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    UpdateIntegrationOutput.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "updatedAt"))
    UpdateIntegrationOutput.struct_class = Types::UpdateIntegrationOutput

    UpdateProviderConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: UpdateS3Configuration, location_name: "s3"))
    UpdateProviderConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UpdateProviderConfiguration.add_member_subclass(:s3, Types::UpdateProviderConfiguration::S3)
    UpdateProviderConfiguration.add_member_subclass(:unknown, Types::UpdateProviderConfiguration::Unknown)
    UpdateProviderConfiguration.struct_class = Types::UpdateProviderConfiguration

    UpdateS3Configuration.add_member(:role_arn, Shapes::ShapeRef.new(shape: IntegrationS3RoleArn, required: true, location_name: "roleArn"))
    UpdateS3Configuration.add_member(:external_id, Shapes::ShapeRef.new(shape: IntegrationS3ExternalId, location_name: "externalId"))
    UpdateS3Configuration.struct_class = Types::UpdateS3Configuration

    ValidationEvidenceBody.add_member(:exploitable, Shapes::ShapeRef.new(shape: ExploitabilityVerdict, required: true, location_name: "exploitable"))
    ValidationEvidenceBody.add_member(:terminal_status, Shapes::ShapeRef.new(shape: ValidationTerminalStatus, location_name: "terminalStatus"))
    ValidationEvidenceBody.add_member(:flow_verdicts, Shapes::ShapeRef.new(shape: FlowVerdicts, location_name: "flowVerdicts"))
    ValidationEvidenceBody.add_member(:attack_flows_confirmed, Shapes::ShapeRef.new(shape: AttackFlowIds, location_name: "attackFlowsConfirmed"))
    ValidationEvidenceBody.add_member(:exploit_artifact, Shapes::ShapeRef.new(shape: ValidationExploitArtifact, location_name: "exploitArtifact"))
    ValidationEvidenceBody.add_member(:executed_proof, Shapes::ShapeRef.new(shape: ValidationExecutedProof, location_name: "executedProof"))
    ValidationEvidenceBody.add_member(:source_analysis, Shapes::ShapeRef.new(shape: ValidationSourceAnalysis, location_name: "sourceAnalysis"))
    ValidationEvidenceBody.add_member(:per_finding_results, Shapes::ShapeRef.new(shape: PerFindingResults, location_name: "perFindingResults"))
    ValidationEvidenceBody.struct_class = Types::ValidationEvidenceBody

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:path, Shapes::ShapeRef.new(shape: String, required: true, location_name: "path"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    ValidationExecutedProof.add_member(:code, Shapes::ShapeRef.new(shape: ValidationProofCode, required: true, location_name: "code"))
    ValidationExecutedProof.add_member(:output, Shapes::ShapeRef.new(shape: ValidationProofOutput, location_name: "output"))
    ValidationExecutedProof.add_member(:observed_effect, Shapes::ShapeRef.new(shape: ExploitEffect, location_name: "observedEffect"))
    ValidationExecutedProof.struct_class = Types::ValidationExecutedProof

    ValidationExploitArtifact.add_member(:payload, Shapes::ShapeRef.new(shape: ArtifactText, required: true, location_name: "payload"))
    ValidationExploitArtifact.add_member(:target_url, Shapes::ShapeRef.new(shape: ArtifactCitation, required: true, location_name: "targetUrl"))
    ValidationExploitArtifact.add_member(:http_method, Shapes::ShapeRef.new(shape: ArtifactHttpMethod, required: true, location_name: "httpMethod"))
    ValidationExploitArtifact.add_member(:headers, Shapes::ShapeRef.new(shape: ArtifactHeaders, location_name: "headers"))
    ValidationExploitArtifact.add_member(:response_status, Shapes::ShapeRef.new(shape: Integer, location_name: "responseStatus"))
    ValidationExploitArtifact.add_member(:response_snippet, Shapes::ShapeRef.new(shape: ArtifactProofBody, location_name: "responseSnippet"))
    ValidationExploitArtifact.add_member(:effect, Shapes::ShapeRef.new(shape: ExploitEffect, required: true, location_name: "effect"))
    ValidationExploitArtifact.struct_class = Types::ValidationExploitArtifact

    ValidationProofCode.add_member(:proof_code, Shapes::ShapeRef.new(shape: ValidationProofMaterials, required: true, location_name: "proofCode"))
    ValidationProofCode.struct_class = Types::ValidationProofCode

    ValidationProofMaterial.add_member(:content, Shapes::ShapeRef.new(shape: ValidationProofMaterialText, required: true, location_name: "content"))
    ValidationProofMaterial.struct_class = Types::ValidationProofMaterial

    ValidationProofMaterials.member = Shapes::ShapeRef.new(shape: ValidationProofMaterial)

    ValidationProofOutput.add_member(:console_output, Shapes::ShapeRef.new(shape: ValidationProofConsoleOutput, required: true, location_name: "consoleOutput"))
    ValidationProofOutput.struct_class = Types::ValidationProofOutput

    ValidationSourceAnalysis.add_member(:summary, Shapes::ShapeRef.new(shape: ValidationProofSummary, required: true, location_name: "summary"))
    ValidationSourceAnalysis.add_member(:inferred_effect, Shapes::ShapeRef.new(shape: ExploitEffect, location_name: "inferredEffect"))
    ValidationSourceAnalysis.struct_class = Types::ValidationSourceAnalysis


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-07-26"

      api.metadata = {
        "apiVersion" => "2022-07-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "continuum",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Continuum",
        "serviceId" => "Continuum",
        "signatureVersion" => "v4",
        "signingName" => "continuum",
        "uid" => "continuum-2022-07-26",
      }

      api.add_operation(:associate_collector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateCollector"
        o.http_method = "POST"
        o.http_request_uri = "/environments/{environmentId}/collectors"
        o.input = Shapes::ShapeRef.new(shape: AssociateCollectorInput)
        o.output = Shapes::ShapeRef.new(shape: AssociateCollectorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_code_finding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCodeFinding"
        o.http_method = "POST"
        o.http_request_uri = "/environments/{environmentId}/code-findings"
        o.input = Shapes::ShapeRef.new(shape: CreateCodeFindingInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCodeFindingOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_code_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCodeScan"
        o.http_method = "POST"
        o.http_request_uri = "/environments/{environmentId}/code-scans"
        o.input = Shapes::ShapeRef.new(shape: CreateCodeScanInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCodeScanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_collector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCollector"
        o.http_method = "POST"
        o.http_request_uri = "/collectors"
        o.input = Shapes::ShapeRef.new(shape: CreateCollectorInput)
        o.output = Shapes::ShapeRef.new(shape: CreateCollectorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/environments"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/integrations"
        o.input = Shapes::ShapeRef.new(shape: CreateIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: CreateIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_collector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCollector"
        o.http_method = "DELETE"
        o.http_request_uri = "/collectors/{collectorId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCollectorInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/environments/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegration"
        o.http_method = "DELETE"
        o.http_request_uri = "/integrations/{integrationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_collector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateCollector"
        o.http_method = "POST"
        o.http_request_uri = "/environments/{environmentId}/collectors/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateCollectorInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_code_finding, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeFinding"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{environmentId}/code-findings/{findingId}"
        o.input = Shapes::ShapeRef.new(shape: GetCodeFindingInput)
        o.output = Shapes::ShapeRef.new(shape: GetCodeFindingOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_code_issue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeIssue"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{environmentId}/code-issues/{issueId}"
        o.input = Shapes::ShapeRef.new(shape: GetCodeIssueInput)
        o.output = Shapes::ShapeRef.new(shape: GetCodeIssueOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_code_issue_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeIssueArtifact"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{environmentId}/code-issues/{issueId}/artifacts/{artifactId}"
        o.input = Shapes::ShapeRef.new(shape: GetCodeIssueArtifactInput)
        o.output = Shapes::ShapeRef.new(shape: GetCodeIssueArtifactOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_code_scan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCodeScan"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{environmentId}/code-scans/{scanRunId}"
        o.input = Shapes::ShapeRef.new(shape: GetCodeScanInput)
        o.output = Shapes::ShapeRef.new(shape: GetCodeScanOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_collector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollector"
        o.http_method = "GET"
        o.http_request_uri = "/collectors/{collectorId}"
        o.input = Shapes::ShapeRef.new(shape: GetCollectorInput)
        o.output = Shapes::ShapeRef.new(shape: GetCollectorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_collector_data_access_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCollectorDataAccessAuthorization"
        o.http_method = "GET"
        o.http_request_uri = "/collectors/{collectorId}/data-access-authorization"
        o.input = Shapes::ShapeRef.new(shape: GetCollectorDataAccessAuthorizationInput)
        o.output = Shapes::ShapeRef.new(shape: GetCollectorDataAccessAuthorizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegration"
        o.http_method = "GET"
        o.http_request_uri = "/integrations/{integrationId}"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourcePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/resourcepolicy"
        o.input = Shapes::ShapeRef.new(shape: GetResourcePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourcePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_associated_collectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedCollectors"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{environmentId}/collectors"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedCollectorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedCollectorsOutput)
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

      api.add_operation(:list_associated_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/collectors/{collectorId}/environments"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedEnvironmentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedEnvironmentsOutput)
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

      api.add_operation(:list_code_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeFindings"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{environmentId}/code-findings"
        o.input = Shapes::ShapeRef.new(shape: ListCodeFindingsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCodeFindingsOutput)
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

      api.add_operation(:list_code_issue_artifacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeIssueArtifacts"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{environmentId}/code-issues/{issueId}/artifacts"
        o.input = Shapes::ShapeRef.new(shape: ListCodeIssueArtifactsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCodeIssueArtifactsOutput)
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

      api.add_operation(:list_code_issues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeIssues"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{environmentId}/code-issues"
        o.input = Shapes::ShapeRef.new(shape: ListCodeIssuesInput)
        o.output = Shapes::ShapeRef.new(shape: ListCodeIssuesOutput)
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

      api.add_operation(:list_code_scans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCodeScans"
        o.http_method = "GET"
        o.http_request_uri = "/environments/{environmentId}/code-scans"
        o.input = Shapes::ShapeRef.new(shape: ListCodeScansInput)
        o.output = Shapes::ShapeRef.new(shape: ListCodeScansOutput)
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

      api.add_operation(:list_collectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollectors"
        o.http_method = "GET"
        o.http_request_uri = "/collectors"
        o.input = Shapes::ShapeRef.new(shape: ListCollectorsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCollectorsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/environments"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsOutput)
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

      api.add_operation(:list_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIntegrations"
        o.http_method = "GET"
        o.http_request_uri = "/integrations"
        o.input = Shapes::ShapeRef.new(shape: ListIntegrationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListIntegrationsOutput)
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

      api.add_operation(:put_resource_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourcePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/resourcepolicy"
        o.input = Shapes::ShapeRef.new(shape: PutResourcePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutResourcePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:start_integration_authorization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartIntegrationAuthorization"
        o.http_method = "POST"
        o.http_request_uri = "/integration-authorizations"
        o.input = Shapes::ShapeRef.new(shape: StartIntegrationAuthorizationInput)
        o.output = Shapes::ShapeRef.new(shape: StartIntegrationAuthorizationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_collector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCollector"
        o.http_method = "PATCH"
        o.http_request_uri = "/collectors/{collectorId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCollectorInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateCollectorOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironment"
        o.http_method = "PATCH"
        o.http_request_uri = "/environments/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIntegration"
        o.http_method = "PATCH"
        o.http_request_uri = "/integrations/{integrationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIntegrationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateIntegrationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
