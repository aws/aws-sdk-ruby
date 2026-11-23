# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AgentRegistryControl
  # @api private
  module ClientApi

    include Seahorse::Model

    A2aAgentCardDescriptor = Shapes::StructureShape.new(name: 'A2aAgentCardDescriptor')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AgUiDescriptor = Shapes::StructureShape.new(name: 'AgUiDescriptor')
    AgentCoreGatewayProtocolType = Shapes::StringShape.new(name: 'AgentCoreGatewayProtocolType')
    AgentCoreGatewaySourceDetails = Shapes::StructureShape.new(name: 'AgentCoreGatewaySourceDetails')
    AgentCoreRuntimeProtocolConfiguration = Shapes::StructureShape.new(name: 'AgentCoreRuntimeProtocolConfiguration')
    AgentCoreRuntimeServerProtocol = Shapes::StringShape.new(name: 'AgentCoreRuntimeServerProtocol')
    AgentCoreRuntimeSourceDetails = Shapes::StructureShape.new(name: 'AgentCoreRuntimeSourceDetails')
    AgentSkillsAdditionalData = Shapes::StructureShape.new(name: 'AgentSkillsAdditionalData')
    AgentSkillsDefinitionDescriptor = Shapes::StructureShape.new(name: 'AgentSkillsDefinitionDescriptor')
    AgentSkillsMdDescriptor = Shapes::StructureShape.new(name: 'AgentSkillsMdDescriptor')
    AgentSkillsPackageDescriptor = Shapes::StructureShape.new(name: 'AgentSkillsPackageDescriptor')
    AgentSkillsRepositoryProvider = Shapes::StringShape.new(name: 'AgentSkillsRepositoryProvider')
    AgentSkillsSourceConfiguration = Shapes::UnionShape.new(name: 'AgentSkillsSourceConfiguration')
    AllowedAudience = Shapes::StringShape.new(name: 'AllowedAudience')
    AllowedAudienceList = Shapes::ListShape.new(name: 'AllowedAudienceList')
    AllowedClient = Shapes::StringShape.new(name: 'AllowedClient')
    AllowedClientsList = Shapes::ListShape.new(name: 'AllowedClientsList')
    AllowedScopeType = Shapes::StringShape.new(name: 'AllowedScopeType')
    AllowedScopesType = Shapes::ListShape.new(name: 'AllowedScopesType')
    ApprovalConfiguration = Shapes::StructureShape.new(name: 'ApprovalConfiguration')
    ArtifactContent = Shapes::BlobShape.new(name: 'ArtifactContent')
    AssociatePublisherRequest = Shapes::StructureShape.new(name: 'AssociatePublisherRequest')
    AssociatePublisherResponse = Shapes::StructureShape.new(name: 'AssociatePublisherResponse')
    AssociationApprovalStatus = Shapes::StringShape.new(name: 'AssociationApprovalStatus')
    AssociationStatus = Shapes::StringShape.new(name: 'AssociationStatus')
    AuthorizationAttemptId = Shapes::StringShape.new(name: 'AuthorizationAttemptId')
    AuthorizationData = Shapes::UnionShape.new(name: 'AuthorizationData')
    AuthorizerConfiguration = Shapes::UnionShape.new(name: 'AuthorizerConfiguration')
    AuthorizingClaimMatchValueType = Shapes::StructureShape.new(name: 'AuthorizingClaimMatchValueType')
    AutoApprovalRule = Shapes::StringShape.new(name: 'AutoApprovalRule')
    AutoApprovalRuleList = Shapes::ListShape.new(name: 'AutoApprovalRuleList')
    AutoDetection = Shapes::StructureShape.new(name: 'AutoDetection')
    AutoDetectionConfiguration = Shapes::StructureShape.new(name: 'AutoDetectionConfiguration')
    AutoDetectionScope = Shapes::StringShape.new(name: 'AutoDetectionScope')
    AutoDetectionStatus = Shapes::StringShape.new(name: 'AutoDetectionStatus')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BotCategory = Shapes::StringShape.new(name: 'BotCategory')
    Category = Shapes::StringShape.new(name: 'Category')
    CategoryList = Shapes::ListShape.new(name: 'CategoryList')
    ChallengeRecordName = Shapes::StringShape.new(name: 'ChallengeRecordName')
    ChallengeRecordValue = Shapes::StringShape.new(name: 'ChallengeRecordValue')
    ClaimMatchOperatorType = Shapes::StringShape.new(name: 'ClaimMatchOperatorType')
    ClaimMatchValueType = Shapes::UnionShape.new(name: 'ClaimMatchValueType')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreatePublisherRequest = Shapes::StructureShape.new(name: 'CreatePublisherRequest')
    CreatePublisherResponse = Shapes::StructureShape.new(name: 'CreatePublisherResponse')
    CreateRegistryRecordRequest = Shapes::StructureShape.new(name: 'CreateRegistryRecordRequest')
    CreateRegistryRecordResponse = Shapes::StructureShape.new(name: 'CreateRegistryRecordResponse')
    CreateRegistryRequest = Shapes::StructureShape.new(name: 'CreateRegistryRequest')
    CreateRegistryResponse = Shapes::StructureShape.new(name: 'CreateRegistryResponse')
    CreatorAccountId = Shapes::StringShape.new(name: 'CreatorAccountId')
    CredentialProviderArn = Shapes::StringShape.new(name: 'CredentialProviderArn')
    CustomClaimValidationType = Shapes::StructureShape.new(name: 'CustomClaimValidationType')
    CustomClaimValidationsType = Shapes::ListShape.new(name: 'CustomClaimValidationsType')
    CustomDescriptor = Shapes::StructureShape.new(name: 'CustomDescriptor')
    CustomJWTAuthorizerConfiguration = Shapes::StructureShape.new(name: 'CustomJWTAuthorizerConfiguration')
    CustomMetadataDocument = Shapes::DocumentShape.new(name: 'CustomMetadataDocument', document: true)
    CustomMetadataSchemaComplianceStatus = Shapes::StringShape.new(name: 'CustomMetadataSchemaComplianceStatus')
    CustomMetadataSchemaConfiguration = Shapes::StructureShape.new(name: 'CustomMetadataSchemaConfiguration')
    CustomMetadataSchemaDefinition = Shapes::StringShape.new(name: 'CustomMetadataSchemaDefinition')
    CustomParameterMap = Shapes::MapShape.new(name: 'CustomParameterMap')
    DataSchemaVersion = Shapes::StringShape.new(name: 'DataSchemaVersion')
    DateTimestamp = Shapes::TimestampShape.new(name: 'DateTimestamp', timestampFormat: "iso8601")
    DeletePublisherRequest = Shapes::StructureShape.new(name: 'DeletePublisherRequest')
    DeleteRegistryRecordRequest = Shapes::StructureShape.new(name: 'DeleteRegistryRecordRequest')
    DeleteRegistryRecordResponse = Shapes::StructureShape.new(name: 'DeleteRegistryRecordResponse')
    DeleteRegistryRequest = Shapes::StructureShape.new(name: 'DeleteRegistryRequest')
    DeleteRegistryResponse = Shapes::StructureShape.new(name: 'DeleteRegistryResponse')
    DependencyException = Shapes::StructureShape.new(name: 'DependencyException')
    Description = Shapes::StringShape.new(name: 'Description')
    DescriptorData = Shapes::StringShape.new(name: 'DescriptorData')
    DescriptorSource = Shapes::StructureShape.new(name: 'DescriptorSource')
    DescriptorSourceFromUrl = Shapes::StructureShape.new(name: 'DescriptorSourceFromUrl')
    DescriptorSourceUrl = Shapes::StringShape.new(name: 'DescriptorSourceUrl')
    Descriptors = Shapes::StructureShape.new(name: 'Descriptors')
    DisassociatePublisherRequest = Shapes::StructureShape.new(name: 'DisassociatePublisherRequest')
    DiscoveryConfiguration = Shapes::StructureShape.new(name: 'DiscoveryConfiguration')
    DiscoveryUrl = Shapes::StringShape.new(name: 'DiscoveryUrl')
    DomainChallenge = Shapes::StructureShape.new(name: 'DomainChallenge')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    EncryptionConfiguration = Shapes::StructureShape.new(name: 'EncryptionConfiguration')
    EndpointIpAddressType = Shapes::StringShape.new(name: 'EndpointIpAddressType')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    GetPublisherRequest = Shapes::StructureShape.new(name: 'GetPublisherRequest')
    GetRegistryRecordRequest = Shapes::StructureShape.new(name: 'GetRegistryRecordRequest')
    GetRegistryRecordResponse = Shapes::StructureShape.new(name: 'GetRegistryRecordResponse')
    GetRegistryRequest = Shapes::StructureShape.new(name: 'GetRegistryRequest')
    GetRegistryResponse = Shapes::StructureShape.new(name: 'GetRegistryResponse')
    GitCommitId = Shapes::StringShape.new(name: 'GitCommitId')
    GitHubSynchronizedSource = Shapes::StructureShape.new(name: 'GitHubSynchronizedSource')
    HttpDescriptor = Shapes::StructureShape.new(name: 'HttpDescriptor')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    IamSigningRegion = Shapes::StringShape.new(name: 'IamSigningRegion')
    IamSigningServiceName = Shapes::StringShape.new(name: 'IamSigningServiceName')
    Identifier = Shapes::UnionShape.new(name: 'Identifier')
    IdentifierType = Shapes::StringShape.new(name: 'IdentifierType')
    InboundTokenClaimNameType = Shapes::StringShape.new(name: 'InboundTokenClaimNameType')
    InboundTokenClaimValueType = Shapes::StringShape.new(name: 'InboundTokenClaimValueType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListPublisherAssociationsRequest = Shapes::StructureShape.new(name: 'ListPublisherAssociationsRequest')
    ListPublisherAssociationsResponse = Shapes::StructureShape.new(name: 'ListPublisherAssociationsResponse')
    ListPublishersRequest = Shapes::StructureShape.new(name: 'ListPublishersRequest')
    ListPublishersResponse = Shapes::StructureShape.new(name: 'ListPublishersResponse')
    ListRegistriesRequest = Shapes::StructureShape.new(name: 'ListRegistriesRequest')
    ListRegistriesResponse = Shapes::StructureShape.new(name: 'ListRegistriesResponse')
    ListRegistryRecordsRequest = Shapes::StructureShape.new(name: 'ListRegistryRecordsRequest')
    ListRegistryRecordsResponse = Shapes::StructureShape.new(name: 'ListRegistryRecordsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ManagedVpcResource = Shapes::StructureShape.new(name: 'ManagedVpcResource')
    MatchValueString = Shapes::StringShape.new(name: 'MatchValueString')
    MatchValueStringList = Shapes::ListShape.new(name: 'MatchValueStringList')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    McpServerAdditionalData = Shapes::StructureShape.new(name: 'McpServerAdditionalData')
    McpServerDescriptor = Shapes::StructureShape.new(name: 'McpServerDescriptor')
    McpToolsDescriptor = Shapes::StructureShape.new(name: 'McpToolsDescriptor')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    OAuth2AuthorizationData = Shapes::StructureShape.new(name: 'OAuth2AuthorizationData')
    OAuthAuthorizationUrl = Shapes::StringShape.new(name: 'OAuthAuthorizationUrl')
    OAuthReturnUrl = Shapes::StringShape.new(name: 'OAuthReturnUrl')
    OAuthUserId = Shapes::StringShape.new(name: 'OAuthUserId')
    PresignedDownloadUrl = Shapes::StringShape.new(name: 'PresignedDownloadUrl')
    PrivateEndpoint = Shapes::UnionShape.new(name: 'PrivateEndpoint')
    PrivateEndpointOverride = Shapes::StructureShape.new(name: 'PrivateEndpointOverride')
    PrivateEndpointOverrideDomain = Shapes::StringShape.new(name: 'PrivateEndpointOverrideDomain')
    PrivateEndpointOverrides = Shapes::ListShape.new(name: 'PrivateEndpointOverrides')
    Provenance = Shapes::StructureShape.new(name: 'Provenance')
    ProvenanceList = Shapes::ListShape.new(name: 'ProvenanceList')
    ProvenanceRelation = Shapes::StringShape.new(name: 'ProvenanceRelation')
    ProvenanceSummary = Shapes::StructureShape.new(name: 'ProvenanceSummary')
    ProvenanceSummaryList = Shapes::ListShape.new(name: 'ProvenanceSummaryList')
    PublicIdentifier = Shapes::StringShape.new(name: 'PublicIdentifier')
    Publisher = Shapes::StructureShape.new(name: 'Publisher')
    PublisherAssociation = Shapes::StructureShape.new(name: 'PublisherAssociation')
    PublisherAssociationList = Shapes::ListShape.new(name: 'PublisherAssociationList')
    PublisherIdentifierArn = Shapes::StringShape.new(name: 'PublisherIdentifierArn')
    PublisherSummary = Shapes::StructureShape.new(name: 'PublisherSummary')
    PublisherSummaryAssociationCountInteger = Shapes::IntegerShape.new(name: 'PublisherSummaryAssociationCountInteger')
    PublisherSummaryList = Shapes::ListShape.new(name: 'PublisherSummaryList')
    PublisherSummaryPendingAssociationApprovalCountInteger = Shapes::IntegerShape.new(name: 'PublisherSummaryPendingAssociationApprovalCountInteger')
    RecordIdentifier = Shapes::StringShape.new(name: 'RecordIdentifier')
    RecordType = Shapes::StringShape.new(name: 'RecordType')
    RecordTypeSchemaOverride = Shapes::StructureShape.new(name: 'RecordTypeSchemaOverride')
    RecordTypeSchemaOverrideList = Shapes::ListShape.new(name: 'RecordTypeSchemaOverrideList')
    RegistryArn = Shapes::StringShape.new(name: 'RegistryArn')
    RegistryAuthorizerType = Shapes::StringShape.new(name: 'RegistryAuthorizerType')
    RegistryFilter = Shapes::StructureShape.new(name: 'RegistryFilter')
    RegistryFilterList = Shapes::ListShape.new(name: 'RegistryFilterList')
    RegistryFilterName = Shapes::StringShape.new(name: 'RegistryFilterName')
    RegistryId = Shapes::StringShape.new(name: 'RegistryId')
    RegistryIdentifier = Shapes::StringShape.new(name: 'RegistryIdentifier')
    RegistryName = Shapes::StringShape.new(name: 'RegistryName')
    RegistryRecordArn = Shapes::StringShape.new(name: 'RegistryRecordArn')
    RegistryRecordArtifactDownload = Shapes::StructureShape.new(name: 'RegistryRecordArtifactDownload')
    RegistryRecordArtifactUpload = Shapes::StructureShape.new(name: 'RegistryRecordArtifactUpload')
    RegistryRecordCredentialProviderConfiguration = Shapes::StructureShape.new(name: 'RegistryRecordCredentialProviderConfiguration')
    RegistryRecordCredentialProviderConfigurationList = Shapes::ListShape.new(name: 'RegistryRecordCredentialProviderConfigurationList')
    RegistryRecordCredentialProviderType = Shapes::StringShape.new(name: 'RegistryRecordCredentialProviderType')
    RegistryRecordCredentialProviderUnion = Shapes::UnionShape.new(name: 'RegistryRecordCredentialProviderUnion')
    RegistryRecordDisplayName = Shapes::StringShape.new(name: 'RegistryRecordDisplayName')
    RegistryRecordFilter = Shapes::StructureShape.new(name: 'RegistryRecordFilter')
    RegistryRecordFilterList = Shapes::ListShape.new(name: 'RegistryRecordFilterList')
    RegistryRecordFilterName = Shapes::StringShape.new(name: 'RegistryRecordFilterName')
    RegistryRecordIamCredentialProvider = Shapes::StructureShape.new(name: 'RegistryRecordIamCredentialProvider')
    RegistryRecordId = Shapes::StringShape.new(name: 'RegistryRecordId')
    RegistryRecordName = Shapes::StringShape.new(name: 'RegistryRecordName')
    RegistryRecordOAuthCredentialProvider = Shapes::StructureShape.new(name: 'RegistryRecordOAuthCredentialProvider')
    RegistryRecordOAuthGrantType = Shapes::StringShape.new(name: 'RegistryRecordOAuthGrantType')
    RegistryRecordStatus = Shapes::StringShape.new(name: 'RegistryRecordStatus')
    RegistryRecordSummary = Shapes::StructureShape.new(name: 'RegistryRecordSummary')
    RegistryRecordSummaryList = Shapes::ListShape.new(name: 'RegistryRecordSummaryList')
    RegistryRecordSynchronizedSource = Shapes::UnionShape.new(name: 'RegistryRecordSynchronizedSource')
    RegistryRecordVersion = Shapes::StringShape.new(name: 'RegistryRecordVersion')
    RegistryStatus = Shapes::StringShape.new(name: 'RegistryStatus')
    RegistrySummary = Shapes::StructureShape.new(name: 'RegistrySummary')
    RegistrySummaryList = Shapes::ListShape.new(name: 'RegistrySummaryList')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceConfigurationIdentifier = Shapes::StringShape.new(name: 'ResourceConfigurationIdentifier')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTagsMap = Shapes::MapShape.new(name: 'ResourceTagsMap')
    RoutingDomain = Shapes::StringShape.new(name: 'RoutingDomain')
    S3BucketOwnerAccountId = Shapes::StringShape.new(name: 'S3BucketOwnerAccountId')
    S3ObjectETag = Shapes::StringShape.new(name: 'S3ObjectETag')
    S3ObjectVersionId = Shapes::StringShape.new(name: 'S3ObjectVersionId')
    S3SourceConfiguration = Shapes::StructureShape.new(name: 'S3SourceConfiguration')
    S3SynchronizedSource = Shapes::StructureShape.new(name: 'S3SynchronizedSource')
    ScopeList = Shapes::ListShape.new(name: 'ScopeList')
    SecurityGroupIdentifier = Shapes::StringShape.new(name: 'SecurityGroupIdentifier')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SelfManagedLatticeResource = Shapes::UnionShape.new(name: 'SelfManagedLatticeResource')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Sha256Hash = Shapes::StringShape.new(name: 'Sha256Hash')
    SignatureAgentCardAdditionalData = Shapes::StructureShape.new(name: 'SignatureAgentCardAdditionalData')
    SignatureAgentCardDescriptor = Shapes::StructureShape.new(name: 'SignatureAgentCardDescriptor')
    SourceDetails = Shapes::UnionShape.new(name: 'SourceDetails')
    SourceId = Shapes::StringShape.new(name: 'SourceId')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StatusReason = Shapes::StringShape.new(name: 'StatusReason')
    String = Shapes::StringShape.new(name: 'String')
    Subdomain = Shapes::StringShape.new(name: 'Subdomain')
    SubmitRegistryRecordForApprovalRequest = Shapes::StructureShape.new(name: 'SubmitRegistryRecordForApprovalRequest')
    SubmitRegistryRecordForApprovalResponse = Shapes::StructureShape.new(name: 'SubmitRegistryRecordForApprovalResponse')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    SynchronizedSourceUrl = Shapes::StringShape.new(name: 'SynchronizedSourceUrl')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdatePublisherAssociationApprovalStatusRequest = Shapes::StructureShape.new(name: 'UpdatePublisherAssociationApprovalStatusRequest')
    UpdatePublisherAssociationApprovalStatusResponse = Shapes::StructureShape.new(name: 'UpdatePublisherAssociationApprovalStatusResponse')
    UpdateRegistryRecordRequest = Shapes::StructureShape.new(name: 'UpdateRegistryRecordRequest')
    UpdateRegistryRecordResponse = Shapes::StructureShape.new(name: 'UpdateRegistryRecordResponse')
    UpdateRegistryRecordStatusRequest = Shapes::StructureShape.new(name: 'UpdateRegistryRecordStatusRequest')
    UpdateRegistryRecordStatusRequestStatusReasonString = Shapes::StringShape.new(name: 'UpdateRegistryRecordStatusRequestStatusReasonString')
    UpdateRegistryRecordStatusResponse = Shapes::StructureShape.new(name: 'UpdateRegistryRecordStatusResponse')
    UpdateRegistryRequest = Shapes::StructureShape.new(name: 'UpdateRegistryRequest')
    UpdateRegistryResponse = Shapes::StructureShape.new(name: 'UpdateRegistryResponse')
    UpdatedA2aAgentCardDescriptor = Shapes::StructureShape.new(name: 'UpdatedA2aAgentCardDescriptor')
    UpdatedA2aAgentCardDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedA2aAgentCardDescriptorFields')
    UpdatedAgUiDescriptor = Shapes::StructureShape.new(name: 'UpdatedAgUiDescriptor')
    UpdatedAgUiDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedAgUiDescriptorFields')
    UpdatedAgentSkillsAdditionalData = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsAdditionalData')
    UpdatedAgentSkillsAdditionalDataFields = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsAdditionalDataFields')
    UpdatedAgentSkillsDefinitionDescriptor = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsDefinitionDescriptor')
    UpdatedAgentSkillsDefinitionDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsDefinitionDescriptorFields')
    UpdatedAgentSkillsMdDescriptor = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsMdDescriptor')
    UpdatedAgentSkillsMdDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsMdDescriptorFields')
    UpdatedAgentSkillsPackageDescriptor = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsPackageDescriptor')
    UpdatedAgentSkillsRepositoryProvider = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsRepositoryProvider')
    UpdatedAgentSkillsSourceConfiguration = Shapes::StructureShape.new(name: 'UpdatedAgentSkillsSourceConfiguration')
    UpdatedApprovalConfiguration = Shapes::StructureShape.new(name: 'UpdatedApprovalConfiguration')
    UpdatedAuthorizerConfiguration = Shapes::StructureShape.new(name: 'UpdatedAuthorizerConfiguration')
    UpdatedAutoDetectionConfiguration = Shapes::StructureShape.new(name: 'UpdatedAutoDetectionConfiguration')
    UpdatedBotCategory = Shapes::StructureShape.new(name: 'UpdatedBotCategory')
    UpdatedCustomDescriptor = Shapes::StructureShape.new(name: 'UpdatedCustomDescriptor')
    UpdatedCustomDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedCustomDescriptorFields')
    UpdatedCustomMetadataMap = Shapes::StructureShape.new(name: 'UpdatedCustomMetadataMap')
    UpdatedCustomMetadataSchemaConfiguration = Shapes::StructureShape.new(name: 'UpdatedCustomMetadataSchemaConfiguration')
    UpdatedDataSchemaVersion = Shapes::StructureShape.new(name: 'UpdatedDataSchemaVersion')
    UpdatedDescription = Shapes::StructureShape.new(name: 'UpdatedDescription')
    UpdatedDescriptorData = Shapes::StructureShape.new(name: 'UpdatedDescriptorData')
    UpdatedDescriptorSource = Shapes::StructureShape.new(name: 'UpdatedDescriptorSource')
    UpdatedDescriptors = Shapes::StructureShape.new(name: 'UpdatedDescriptors')
    UpdatedDescriptorsFields = Shapes::StructureShape.new(name: 'UpdatedDescriptorsFields')
    UpdatedDiscoveryConfiguration = Shapes::StructureShape.new(name: 'UpdatedDiscoveryConfiguration')
    UpdatedDisplayName = Shapes::StructureShape.new(name: 'UpdatedDisplayName')
    UpdatedHttpDescriptor = Shapes::StructureShape.new(name: 'UpdatedHttpDescriptor')
    UpdatedHttpDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedHttpDescriptorFields')
    UpdatedMcpServerAdditionalData = Shapes::StructureShape.new(name: 'UpdatedMcpServerAdditionalData')
    UpdatedMcpServerAdditionalDataFields = Shapes::StructureShape.new(name: 'UpdatedMcpServerAdditionalDataFields')
    UpdatedMcpServerDescriptor = Shapes::StructureShape.new(name: 'UpdatedMcpServerDescriptor')
    UpdatedMcpServerDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedMcpServerDescriptorFields')
    UpdatedMcpToolsDescriptor = Shapes::StructureShape.new(name: 'UpdatedMcpToolsDescriptor')
    UpdatedMcpToolsDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedMcpToolsDescriptorFields')
    UpdatedRegistryRecordArtifact = Shapes::StructureShape.new(name: 'UpdatedRegistryRecordArtifact')
    UpdatedSignatureAgentCardAdditionalData = Shapes::StructureShape.new(name: 'UpdatedSignatureAgentCardAdditionalData')
    UpdatedSignatureAgentCardAdditionalDataFields = Shapes::StructureShape.new(name: 'UpdatedSignatureAgentCardAdditionalDataFields')
    UpdatedSignatureAgentCardDescriptor = Shapes::StructureShape.new(name: 'UpdatedSignatureAgentCardDescriptor')
    UpdatedSignatureAgentCardDescriptorFields = Shapes::StructureShape.new(name: 'UpdatedSignatureAgentCardDescriptorFields')
    ValidatePublisherRequest = Shapes::StructureShape.new(name: 'ValidatePublisherRequest')
    ValidatePublisherResponse = Shapes::StructureShape.new(name: 'ValidatePublisherResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VerificationStatus = Shapes::StringShape.new(name: 'VerificationStatus')
    VpcIdentifier = Shapes::StringShape.new(name: 'VpcIdentifier')
    WorkloadIdentityDetails = Shapes::StructureShape.new(name: 'WorkloadIdentityDetails')
    WorkloadIdentityDetailsWorkloadIdentityArnString = Shapes::StringShape.new(name: 'WorkloadIdentityDetailsWorkloadIdentityArnString')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    A2aAgentCardDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    A2aAgentCardDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    A2aAgentCardDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    A2aAgentCardDescriptor.struct_class = Types::A2aAgentCardDescriptor

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AgUiDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    AgUiDescriptor.struct_class = Types::AgUiDescriptor

    AgentCoreGatewaySourceDetails.add_member(:protocol_type, Shapes::ShapeRef.new(shape: AgentCoreGatewayProtocolType, location_name: "protocolType"))
    AgentCoreGatewaySourceDetails.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: String, location_name: "authorizerType"))
    AgentCoreGatewaySourceDetails.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    AgentCoreGatewaySourceDetails.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    AgentCoreGatewaySourceDetails.struct_class = Types::AgentCoreGatewaySourceDetails

    AgentCoreRuntimeProtocolConfiguration.add_member(:server_protocol, Shapes::ShapeRef.new(shape: AgentCoreRuntimeServerProtocol, location_name: "serverProtocol"))
    AgentCoreRuntimeProtocolConfiguration.struct_class = Types::AgentCoreRuntimeProtocolConfiguration

    AgentCoreRuntimeSourceDetails.add_member(:protocol_configuration, Shapes::ShapeRef.new(shape: AgentCoreRuntimeProtocolConfiguration, location_name: "protocolConfiguration"))
    AgentCoreRuntimeSourceDetails.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    AgentCoreRuntimeSourceDetails.add_member(:workload_identity_details, Shapes::ShapeRef.new(shape: WorkloadIdentityDetails, location_name: "workloadIdentityDetails"))
    AgentCoreRuntimeSourceDetails.struct_class = Types::AgentCoreRuntimeSourceDetails

    AgentSkillsAdditionalData.add_member(:skill_md, Shapes::ShapeRef.new(shape: AgentSkillsMdDescriptor, location_name: "skillMd"))
    AgentSkillsAdditionalData.add_member(:skill_package, Shapes::ShapeRef.new(shape: AgentSkillsPackageDescriptor, location_name: "skillPackage"))
    AgentSkillsAdditionalData.add_member(:repository_provider, Shapes::ShapeRef.new(shape: AgentSkillsRepositoryProvider, location_name: "repositoryProvider"))
    AgentSkillsAdditionalData.add_member(:source_configuration, Shapes::ShapeRef.new(shape: AgentSkillsSourceConfiguration, location_name: "sourceConfiguration"))
    AgentSkillsAdditionalData.struct_class = Types::AgentSkillsAdditionalData

    AgentSkillsDefinitionDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    AgentSkillsDefinitionDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    AgentSkillsDefinitionDescriptor.add_member(:additional_data, Shapes::ShapeRef.new(shape: AgentSkillsAdditionalData, location_name: "additionalData"))
    AgentSkillsDefinitionDescriptor.struct_class = Types::AgentSkillsDefinitionDescriptor

    AgentSkillsMdDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    AgentSkillsMdDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    AgentSkillsMdDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    AgentSkillsMdDescriptor.struct_class = Types::AgentSkillsMdDescriptor

    AgentSkillsPackageDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    AgentSkillsPackageDescriptor.struct_class = Types::AgentSkillsPackageDescriptor

    AgentSkillsSourceConfiguration.add_member(:s3, Shapes::ShapeRef.new(shape: S3SourceConfiguration, location_name: "s3"))
    AgentSkillsSourceConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AgentSkillsSourceConfiguration.add_member_subclass(:s3, Types::AgentSkillsSourceConfiguration::S3)
    AgentSkillsSourceConfiguration.add_member_subclass(:unknown, Types::AgentSkillsSourceConfiguration::Unknown)
    AgentSkillsSourceConfiguration.struct_class = Types::AgentSkillsSourceConfiguration

    AllowedAudienceList.member = Shapes::ShapeRef.new(shape: AllowedAudience)

    AllowedClientsList.member = Shapes::ShapeRef.new(shape: AllowedClient)

    AllowedScopesType.member = Shapes::ShapeRef.new(shape: AllowedScopeType)

    ApprovalConfiguration.add_member(:auto_approval_rules, Shapes::ShapeRef.new(shape: AutoApprovalRuleList, location_name: "autoApprovalRules"))
    ApprovalConfiguration.struct_class = Types::ApprovalConfiguration

    AssociatePublisherRequest.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    AssociatePublisherRequest.add_member(:publisher_arn, Shapes::ShapeRef.new(shape: PublisherIdentifierArn, required: true, location_name: "publisherArn"))
    AssociatePublisherRequest.add_member(:subdomain, Shapes::ShapeRef.new(shape: Subdomain, location_name: "subdomain"))
    AssociatePublisherRequest.add_member(:categories, Shapes::ShapeRef.new(shape: CategoryList, location_name: "categories"))
    AssociatePublisherRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    AssociatePublisherRequest.struct_class = Types::AssociatePublisherRequest

    AssociatePublisherResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    AssociatePublisherResponse.add_member(:public_identifier, Shapes::ShapeRef.new(shape: PublicIdentifier, required: true, location_name: "publicIdentifier"))
    AssociatePublisherResponse.add_member(:publisher, Shapes::ShapeRef.new(shape: PublisherIdentifierArn, required: true, location_name: "publisher"))
    AssociatePublisherResponse.add_member(:status, Shapes::ShapeRef.new(shape: AssociationStatus, required: true, location_name: "status"))
    AssociatePublisherResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    AssociatePublisherResponse.struct_class = Types::AssociatePublisherResponse

    AuthorizationData.add_member(:oauth2, Shapes::ShapeRef.new(shape: OAuth2AuthorizationData, location_name: "oauth2"))
    AuthorizationData.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AuthorizationData.add_member_subclass(:oauth2, Types::AuthorizationData::Oauth2)
    AuthorizationData.add_member_subclass(:unknown, Types::AuthorizationData::Unknown)
    AuthorizationData.struct_class = Types::AuthorizationData

    AuthorizerConfiguration.add_member(:custom_jwt_authorizer, Shapes::ShapeRef.new(shape: CustomJWTAuthorizerConfiguration, location_name: "customJWTAuthorizer"))
    AuthorizerConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AuthorizerConfiguration.add_member_subclass(:custom_jwt_authorizer, Types::AuthorizerConfiguration::CustomJwtAuthorizer)
    AuthorizerConfiguration.add_member_subclass(:unknown, Types::AuthorizerConfiguration::Unknown)
    AuthorizerConfiguration.struct_class = Types::AuthorizerConfiguration

    AuthorizingClaimMatchValueType.add_member(:claim_match_value, Shapes::ShapeRef.new(shape: ClaimMatchValueType, required: true, location_name: "claimMatchValue"))
    AuthorizingClaimMatchValueType.add_member(:claim_match_operator, Shapes::ShapeRef.new(shape: ClaimMatchOperatorType, required: true, location_name: "claimMatchOperator"))
    AuthorizingClaimMatchValueType.struct_class = Types::AuthorizingClaimMatchValueType

    AutoApprovalRuleList.member = Shapes::ShapeRef.new(shape: AutoApprovalRule)

    AutoDetection.add_member(:configuration, Shapes::ShapeRef.new(shape: AutoDetectionConfiguration, required: true, location_name: "configuration"))
    AutoDetection.add_member(:status, Shapes::ShapeRef.new(shape: AutoDetectionStatus, required: true, location_name: "status"))
    AutoDetection.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    AutoDetection.struct_class = Types::AutoDetection

    AutoDetectionConfiguration.add_member(:scope, Shapes::ShapeRef.new(shape: AutoDetectionScope, required: true, location_name: "scope"))
    AutoDetectionConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    AutoDetectionConfiguration.struct_class = Types::AutoDetectionConfiguration

    CategoryList.member = Shapes::ShapeRef.new(shape: Category)

    ClaimMatchValueType.add_member(:match_value_string, Shapes::ShapeRef.new(shape: MatchValueString, location_name: "matchValueString"))
    ClaimMatchValueType.add_member(:match_value_string_list, Shapes::ShapeRef.new(shape: MatchValueStringList, location_name: "matchValueStringList"))
    ClaimMatchValueType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ClaimMatchValueType.add_member_subclass(:match_value_string, Types::ClaimMatchValueType::MatchValueString)
    ClaimMatchValueType.add_member_subclass(:match_value_string_list, Types::ClaimMatchValueType::MatchValueStringList)
    ClaimMatchValueType.add_member_subclass(:unknown, Types::ClaimMatchValueType::Unknown)
    ClaimMatchValueType.struct_class = Types::ClaimMatchValueType

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreatePublisherRequest.add_member(:value, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "value"))
    CreatePublisherRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePublisherRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreatePublisherRequest.struct_class = Types::CreatePublisherRequest

    CreatePublisherResponse.add_member(:value, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "value"))
    CreatePublisherResponse.add_member(:identifier_type, Shapes::ShapeRef.new(shape: IdentifierType, location_name: "identifierType"))
    CreatePublisherResponse.add_member(:status, Shapes::ShapeRef.new(shape: VerificationStatus, required: true, location_name: "status"))
    CreatePublisherResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    CreatePublisherResponse.add_member(:domain_challenge, Shapes::ShapeRef.new(shape: DomainChallenge, location_name: "domainChallenge"))
    CreatePublisherResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreatePublisherResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreatePublisherResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    CreatePublisherResponse.add_member(:publisher_arn, Shapes::ShapeRef.new(shape: PublisherIdentifierArn, required: true, location_name: "publisherArn"))
    CreatePublisherResponse.struct_class = Types::CreatePublisherResponse

    CreateRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    CreateRegistryRecordRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    CreateRegistryRecordRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "displayName"))
    CreateRegistryRecordRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateRegistryRecordRequest.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    CreateRegistryRecordRequest.add_member(:descriptors, Shapes::ShapeRef.new(shape: Descriptors, required: true, location_name: "descriptors"))
    CreateRegistryRecordRequest.add_member(:artifact, Shapes::ShapeRef.new(shape: RegistryRecordArtifactUpload, location_name: "artifact"))
    CreateRegistryRecordRequest.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    CreateRegistryRecordRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRegistryRecordRequest.add_member(:provenance, Shapes::ShapeRef.new(shape: ProvenanceList, location_name: "provenance"))
    CreateRegistryRecordRequest.add_member(:custom_metadata, Shapes::ShapeRef.new(shape: CustomMetadataDocument, location_name: "customMetadata"))
    CreateRegistryRecordRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateRegistryRecordRequest.struct_class = Types::CreateRegistryRecordRequest

    CreateRegistryRecordResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    CreateRegistryRecordResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    CreateRegistryRecordResponse.add_member(:authorization_data, Shapes::ShapeRef.new(shape: AuthorizationData, location_name: "authorizationData"))
    CreateRegistryRecordResponse.struct_class = Types::CreateRegistryRecordResponse

    CreateRegistryRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    CreateRegistryRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateRegistryRequest.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    CreateRegistryRequest.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: DiscoveryConfiguration, location_name: "discoveryConfiguration"))
    CreateRegistryRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateRegistryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    CreateRegistryRequest.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "approvalConfiguration"))
    CreateRegistryRequest.add_member(:custom_metadata_schema_configuration, Shapes::ShapeRef.new(shape: CustomMetadataSchemaConfiguration, location_name: "customMetadataSchemaConfiguration"))
    CreateRegistryRequest.add_member(:auto_detection_configuration, Shapes::ShapeRef.new(shape: AutoDetectionConfiguration, location_name: "autoDetectionConfiguration"))
    CreateRegistryRequest.struct_class = Types::CreateRegistryRequest

    CreateRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    CreateRegistryResponse.struct_class = Types::CreateRegistryResponse

    CustomClaimValidationType.add_member(:inbound_token_claim_name, Shapes::ShapeRef.new(shape: InboundTokenClaimNameType, required: true, location_name: "inboundTokenClaimName"))
    CustomClaimValidationType.add_member(:inbound_token_claim_value_type, Shapes::ShapeRef.new(shape: InboundTokenClaimValueType, required: true, location_name: "inboundTokenClaimValueType"))
    CustomClaimValidationType.add_member(:authorizing_claim_match_value, Shapes::ShapeRef.new(shape: AuthorizingClaimMatchValueType, required: true, location_name: "authorizingClaimMatchValue"))
    CustomClaimValidationType.struct_class = Types::CustomClaimValidationType

    CustomClaimValidationsType.member = Shapes::ShapeRef.new(shape: CustomClaimValidationType)

    CustomDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    CustomDescriptor.struct_class = Types::CustomDescriptor

    CustomJWTAuthorizerConfiguration.add_member(:discovery_url, Shapes::ShapeRef.new(shape: DiscoveryUrl, required: true, location_name: "discoveryUrl"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_audience, Shapes::ShapeRef.new(shape: AllowedAudienceList, location_name: "allowedAudience"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_clients, Shapes::ShapeRef.new(shape: AllowedClientsList, location_name: "allowedClients"))
    CustomJWTAuthorizerConfiguration.add_member(:allowed_scopes, Shapes::ShapeRef.new(shape: AllowedScopesType, location_name: "allowedScopes"))
    CustomJWTAuthorizerConfiguration.add_member(:custom_claims, Shapes::ShapeRef.new(shape: CustomClaimValidationsType, location_name: "customClaims"))
    CustomJWTAuthorizerConfiguration.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, location_name: "privateEndpoint"))
    CustomJWTAuthorizerConfiguration.add_member(:private_endpoint_overrides, Shapes::ShapeRef.new(shape: PrivateEndpointOverrides, location_name: "privateEndpointOverrides"))
    CustomJWTAuthorizerConfiguration.struct_class = Types::CustomJWTAuthorizerConfiguration

    CustomMetadataSchemaConfiguration.add_member(:default_schema, Shapes::ShapeRef.new(shape: CustomMetadataSchemaDefinition, location_name: "defaultSchema"))
    CustomMetadataSchemaConfiguration.add_member(:record_type_schema_overrides, Shapes::ShapeRef.new(shape: RecordTypeSchemaOverrideList, location_name: "recordTypeSchemaOverrides"))
    CustomMetadataSchemaConfiguration.struct_class = Types::CustomMetadataSchemaConfiguration

    CustomParameterMap.key = Shapes::ShapeRef.new(shape: String)
    CustomParameterMap.value = Shapes::ShapeRef.new(shape: String)

    DeletePublisherRequest.add_member(:publisher_arn, Shapes::ShapeRef.new(shape: PublisherIdentifierArn, required: true, location: "uri", location_name: "publisherArn"))
    DeletePublisherRequest.struct_class = Types::DeletePublisherRequest

    DeleteRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    DeleteRegistryRecordRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    DeleteRegistryRecordRequest.struct_class = Types::DeleteRegistryRecordRequest

    DeleteRegistryRecordResponse.struct_class = Types::DeleteRegistryRecordResponse

    DeleteRegistryRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    DeleteRegistryRequest.struct_class = Types::DeleteRegistryRequest

    DeleteRegistryResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    DeleteRegistryResponse.struct_class = Types::DeleteRegistryResponse

    DependencyException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    DependencyException.struct_class = Types::DependencyException

    DescriptorSource.add_member(:from_url, Shapes::ShapeRef.new(shape: DescriptorSourceFromUrl, location_name: "fromUrl"))
    DescriptorSource.struct_class = Types::DescriptorSource

    DescriptorSourceFromUrl.add_member(:url, Shapes::ShapeRef.new(shape: DescriptorSourceUrl, required: true, location_name: "url"))
    DescriptorSourceFromUrl.add_member(:credential_provider_configurations, Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderConfigurationList, location_name: "credentialProviderConfigurations"))
    DescriptorSourceFromUrl.struct_class = Types::DescriptorSourceFromUrl

    Descriptors.add_member(:mcp_server, Shapes::ShapeRef.new(shape: McpServerDescriptor, location_name: "mcpServer"))
    Descriptors.add_member(:a2a_agent_card, Shapes::ShapeRef.new(shape: A2aAgentCardDescriptor, location_name: "a2aAgentCard"))
    Descriptors.add_member(:agent_skills_definition, Shapes::ShapeRef.new(shape: AgentSkillsDefinitionDescriptor, location_name: "agentSkillsDefinition"))
    Descriptors.add_member(:custom, Shapes::ShapeRef.new(shape: CustomDescriptor, location_name: "custom"))
    Descriptors.add_member(:http, Shapes::ShapeRef.new(shape: HttpDescriptor, location_name: "http"))
    Descriptors.add_member(:agui, Shapes::ShapeRef.new(shape: AgUiDescriptor, location_name: "agui"))
    Descriptors.add_member(:signature_agent_card, Shapes::ShapeRef.new(shape: SignatureAgentCardDescriptor, location_name: "signatureAgentCard"))
    Descriptors.struct_class = Types::Descriptors

    DisassociatePublisherRequest.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location: "uri", location_name: "recordArn"))
    DisassociatePublisherRequest.struct_class = Types::DisassociatePublisherRequest

    DiscoveryConfiguration.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "authorizerConfiguration"))
    DiscoveryConfiguration.add_member(:authorizer_type, Shapes::ShapeRef.new(shape: RegistryAuthorizerType, location_name: "authorizerType"))
    DiscoveryConfiguration.struct_class = Types::DiscoveryConfiguration

    DomainChallenge.add_member(:record_name, Shapes::ShapeRef.new(shape: ChallengeRecordName, required: true, location_name: "recordName"))
    DomainChallenge.add_member(:record_value, Shapes::ShapeRef.new(shape: ChallengeRecordValue, required: true, location_name: "recordValue"))
    DomainChallenge.struct_class = Types::DomainChallenge

    EncryptionConfiguration.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, required: true, location_name: "kmsKeyArn"))
    EncryptionConfiguration.struct_class = Types::EncryptionConfiguration

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    GetPublisherRequest.add_member(:publisher_arn, Shapes::ShapeRef.new(shape: PublisherIdentifierArn, required: true, location: "uri", location_name: "publisherArn"))
    GetPublisherRequest.struct_class = Types::GetPublisherRequest

    GetRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    GetRegistryRecordRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    GetRegistryRecordRequest.struct_class = Types::GetRegistryRecordRequest

    GetRegistryRecordResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    GetRegistryRecordResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    GetRegistryRecordResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    GetRegistryRecordResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    GetRegistryRecordResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "displayName"))
    GetRegistryRecordResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetRegistryRecordResponse.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    GetRegistryRecordResponse.add_member(:descriptors, Shapes::ShapeRef.new(shape: Descriptors, location_name: "descriptors"))
    GetRegistryRecordResponse.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    GetRegistryRecordResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    GetRegistryRecordResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetRegistryRecordResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetRegistryRecordResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetRegistryRecordResponse.add_member(:provenance, Shapes::ShapeRef.new(shape: ProvenanceList, location_name: "provenance"))
    GetRegistryRecordResponse.add_member(:created_by_auto_detection, Shapes::ShapeRef.new(shape: Boolean, location_name: "createdByAutoDetection"))
    GetRegistryRecordResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatorAccountId, location_name: "createdBy"))
    GetRegistryRecordResponse.add_member(:custom_metadata, Shapes::ShapeRef.new(shape: CustomMetadataDocument, location_name: "customMetadata"))
    GetRegistryRecordResponse.add_member(:custom_metadata_schema_compliance_status, Shapes::ShapeRef.new(shape: CustomMetadataSchemaComplianceStatus, location_name: "customMetadataSchemaComplianceStatus"))
    GetRegistryRecordResponse.add_member(:artifact, Shapes::ShapeRef.new(shape: RegistryRecordArtifactDownload, location_name: "artifact"))
    GetRegistryRecordResponse.add_member(:synchronized_source, Shapes::ShapeRef.new(shape: RegistryRecordSynchronizedSource, location_name: "synchronizedSource"))
    GetRegistryRecordResponse.struct_class = Types::GetRegistryRecordResponse

    GetRegistryRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    GetRegistryRequest.struct_class = Types::GetRegistryRequest

    GetRegistryResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    GetRegistryResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    GetRegistryResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "registryId"))
    GetRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    GetRegistryResponse.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: DiscoveryConfiguration, location_name: "discoveryConfiguration"))
    GetRegistryResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    GetRegistryResponse.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "approvalConfiguration"))
    GetRegistryResponse.add_member(:custom_metadata_schema_configuration, Shapes::ShapeRef.new(shape: CustomMetadataSchemaConfiguration, location_name: "customMetadataSchemaConfiguration"))
    GetRegistryResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    GetRegistryResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetRegistryResponse.add_member(:auto_detection, Shapes::ShapeRef.new(shape: AutoDetection, location_name: "autoDetection"))
    GetRegistryResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    GetRegistryResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    GetRegistryResponse.struct_class = Types::GetRegistryResponse

    GitHubSynchronizedSource.add_member(:url, Shapes::ShapeRef.new(shape: SynchronizedSourceUrl, required: true, location_name: "url"))
    GitHubSynchronizedSource.add_member(:synchronized_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "synchronizedAt"))
    GitHubSynchronizedSource.add_member(:commit_id, Shapes::ShapeRef.new(shape: GitCommitId, required: true, location_name: "commitId"))
    GitHubSynchronizedSource.struct_class = Types::GitHubSynchronizedSource

    HttpDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    HttpDescriptor.struct_class = Types::HttpDescriptor

    Identifier.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, location_name: "domain"))
    Identifier.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Identifier.add_member_subclass(:domain, Types::Identifier::Domain)
    Identifier.add_member_subclass(:unknown, Types::Identifier::Unknown)
    Identifier.struct_class = Types::Identifier

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListPublisherAssociationsRequest.add_member(:publisher_arn, Shapes::ShapeRef.new(shape: PublisherIdentifierArn, location: "querystring", location_name: "publisherArn"))
    ListPublisherAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPublisherAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPublisherAssociationsRequest.struct_class = Types::ListPublisherAssociationsRequest

    ListPublisherAssociationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: PublisherAssociationList, required: true, location_name: "items"))
    ListPublisherAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPublisherAssociationsResponse.struct_class = Types::ListPublisherAssociationsResponse

    ListPublishersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListPublishersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListPublishersRequest.struct_class = Types::ListPublishersRequest

    ListPublishersResponse.add_member(:items, Shapes::ShapeRef.new(shape: PublisherSummaryList, required: true, location_name: "items"))
    ListPublishersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListPublishersResponse.struct_class = Types::ListPublishersResponse

    ListRegistriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListRegistriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRegistriesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RegistryFilterList, location_name: "filters"))
    ListRegistriesRequest.struct_class = Types::ListRegistriesRequest

    ListRegistriesResponse.add_member(:registries, Shapes::ShapeRef.new(shape: RegistrySummaryList, required: true, location_name: "registries"))
    ListRegistriesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRegistriesResponse.struct_class = Types::ListRegistriesResponse

    ListRegistryRecordsRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    ListRegistryRecordsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListRegistryRecordsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRegistryRecordsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: RegistryRecordFilterList, location_name: "filters"))
    ListRegistryRecordsRequest.struct_class = Types::ListRegistryRecordsRequest

    ListRegistryRecordsResponse.add_member(:registry_records, Shapes::ShapeRef.new(shape: RegistryRecordSummaryList, required: true, location_name: "registryRecords"))
    ListRegistryRecordsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListRegistryRecordsResponse.struct_class = Types::ListRegistryRecordsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: ResourceTagsMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManagedVpcResource.add_member(:vpc_identifier, Shapes::ShapeRef.new(shape: VpcIdentifier, required: true, location_name: "vpcIdentifier"))
    ManagedVpcResource.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, required: true, location_name: "subnetIds"))
    ManagedVpcResource.add_member(:endpoint_ip_address_type, Shapes::ShapeRef.new(shape: EndpointIpAddressType, required: true, location_name: "endpointIpAddressType"))
    ManagedVpcResource.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    ManagedVpcResource.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    ManagedVpcResource.add_member(:routing_domain, Shapes::ShapeRef.new(shape: RoutingDomain, location_name: "routingDomain"))
    ManagedVpcResource.struct_class = Types::ManagedVpcResource

    MatchValueStringList.member = Shapes::ShapeRef.new(shape: MatchValueString)

    McpServerAdditionalData.add_member(:tools, Shapes::ShapeRef.new(shape: McpToolsDescriptor, location_name: "tools"))
    McpServerAdditionalData.struct_class = Types::McpServerAdditionalData

    McpServerDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    McpServerDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    McpServerDescriptor.add_member(:additional_data, Shapes::ShapeRef.new(shape: McpServerAdditionalData, location_name: "additionalData"))
    McpServerDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    McpServerDescriptor.struct_class = Types::McpServerDescriptor

    McpToolsDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    McpToolsDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    McpToolsDescriptor.struct_class = Types::McpToolsDescriptor

    OAuth2AuthorizationData.add_member(:authorization_url, Shapes::ShapeRef.new(shape: OAuthAuthorizationUrl, required: true, location_name: "authorizationUrl"))
    OAuth2AuthorizationData.add_member(:user_id, Shapes::ShapeRef.new(shape: OAuthUserId, location_name: "userId"))
    OAuth2AuthorizationData.add_member(:authorization_attempt_id, Shapes::ShapeRef.new(shape: AuthorizationAttemptId, location_name: "authorizationAttemptId"))
    OAuth2AuthorizationData.add_member(:expires_at, Shapes::ShapeRef.new(shape: DateTimestamp, location_name: "expiresAt"))
    OAuth2AuthorizationData.struct_class = Types::OAuth2AuthorizationData

    PrivateEndpoint.add_member(:self_managed_lattice_resource, Shapes::ShapeRef.new(shape: SelfManagedLatticeResource, location_name: "selfManagedLatticeResource"))
    PrivateEndpoint.add_member(:managed_vpc_resource, Shapes::ShapeRef.new(shape: ManagedVpcResource, location_name: "managedVpcResource"))
    PrivateEndpoint.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    PrivateEndpoint.add_member_subclass(:self_managed_lattice_resource, Types::PrivateEndpoint::SelfManagedLatticeResource)
    PrivateEndpoint.add_member_subclass(:managed_vpc_resource, Types::PrivateEndpoint::ManagedVpcResource)
    PrivateEndpoint.add_member_subclass(:unknown, Types::PrivateEndpoint::Unknown)
    PrivateEndpoint.struct_class = Types::PrivateEndpoint

    PrivateEndpointOverride.add_member(:domain, Shapes::ShapeRef.new(shape: PrivateEndpointOverrideDomain, required: true, location_name: "domain"))
    PrivateEndpointOverride.add_member(:private_endpoint, Shapes::ShapeRef.new(shape: PrivateEndpoint, required: true, location_name: "privateEndpoint"))
    PrivateEndpointOverride.struct_class = Types::PrivateEndpointOverride

    PrivateEndpointOverrides.member = Shapes::ShapeRef.new(shape: PrivateEndpointOverride)

    Provenance.add_member(:relation, Shapes::ShapeRef.new(shape: ProvenanceRelation, required: true, location_name: "relation"))
    Provenance.add_member(:source_id, Shapes::ShapeRef.new(shape: SourceId, required: true, location_name: "sourceId"))
    Provenance.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "sourceType"))
    Provenance.add_member(:source_details, Shapes::ShapeRef.new(shape: SourceDetails, location_name: "sourceDetails"))
    Provenance.struct_class = Types::Provenance

    ProvenanceList.member = Shapes::ShapeRef.new(shape: Provenance)

    ProvenanceSummary.add_member(:relation, Shapes::ShapeRef.new(shape: ProvenanceRelation, required: true, location_name: "relation"))
    ProvenanceSummary.add_member(:source_id, Shapes::ShapeRef.new(shape: SourceId, required: true, location_name: "sourceId"))
    ProvenanceSummary.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "sourceType"))
    ProvenanceSummary.struct_class = Types::ProvenanceSummary

    ProvenanceSummaryList.member = Shapes::ShapeRef.new(shape: ProvenanceSummary)

    Publisher.add_member(:value, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "value"))
    Publisher.add_member(:identifier_type, Shapes::ShapeRef.new(shape: IdentifierType, location_name: "identifierType"))
    Publisher.add_member(:status, Shapes::ShapeRef.new(shape: VerificationStatus, required: true, location_name: "status"))
    Publisher.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    Publisher.add_member(:domain_challenge, Shapes::ShapeRef.new(shape: DomainChallenge, location_name: "domainChallenge"))
    Publisher.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Publisher.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    Publisher.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    Publisher.add_member(:publisher_arn, Shapes::ShapeRef.new(shape: PublisherIdentifierArn, required: true, location_name: "publisherArn"))
    Publisher.struct_class = Types::Publisher

    PublisherAssociation.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    PublisherAssociation.add_member(:public_identifier, Shapes::ShapeRef.new(shape: PublicIdentifier, required: true, location_name: "publicIdentifier"))
    PublisherAssociation.add_member(:publisher, Shapes::ShapeRef.new(shape: PublisherIdentifierArn, required: true, location_name: "publisher"))
    PublisherAssociation.add_member(:status, Shapes::ShapeRef.new(shape: AssociationStatus, required: true, location_name: "status"))
    PublisherAssociation.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    PublisherAssociation.struct_class = Types::PublisherAssociation

    PublisherAssociationList.member = Shapes::ShapeRef.new(shape: PublisherAssociation)

    PublisherSummary.add_member(:value, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "value"))
    PublisherSummary.add_member(:identifier_type, Shapes::ShapeRef.new(shape: IdentifierType, location_name: "identifierType"))
    PublisherSummary.add_member(:status, Shapes::ShapeRef.new(shape: VerificationStatus, required: true, location_name: "status"))
    PublisherSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    PublisherSummary.add_member(:publisher_arn, Shapes::ShapeRef.new(shape: PublisherIdentifierArn, required: true, location_name: "publisherArn"))
    PublisherSummary.add_member(:association_count, Shapes::ShapeRef.new(shape: PublisherSummaryAssociationCountInteger, location_name: "associationCount"))
    PublisherSummary.add_member(:pending_association_approval_count, Shapes::ShapeRef.new(shape: PublisherSummaryPendingAssociationApprovalCountInteger, location_name: "pendingAssociationApprovalCount"))
    PublisherSummary.struct_class = Types::PublisherSummary

    PublisherSummaryList.member = Shapes::ShapeRef.new(shape: PublisherSummary)

    RecordTypeSchemaOverride.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    RecordTypeSchemaOverride.add_member(:schema, Shapes::ShapeRef.new(shape: CustomMetadataSchemaDefinition, required: true, location_name: "schema"))
    RecordTypeSchemaOverride.struct_class = Types::RecordTypeSchemaOverride

    RecordTypeSchemaOverrideList.member = Shapes::ShapeRef.new(shape: RecordTypeSchemaOverride)

    RegistryFilter.add_member(:name, Shapes::ShapeRef.new(shape: RegistryFilterName, required: true, location_name: "name"))
    RegistryFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    RegistryFilter.struct_class = Types::RegistryFilter

    RegistryFilterList.member = Shapes::ShapeRef.new(shape: RegistryFilter)

    RegistryRecordArtifactDownload.add_member(:sha256, Shapes::ShapeRef.new(shape: Sha256Hash, location_name: "sha256"))
    RegistryRecordArtifactDownload.add_member(:download_url, Shapes::ShapeRef.new(shape: PresignedDownloadUrl, location_name: "downloadUrl"))
    RegistryRecordArtifactDownload.struct_class = Types::RegistryRecordArtifactDownload

    RegistryRecordArtifactUpload.add_member(:content, Shapes::ShapeRef.new(shape: ArtifactContent, required: true, location_name: "content"))
    RegistryRecordArtifactUpload.add_member(:sha256, Shapes::ShapeRef.new(shape: Sha256Hash, location_name: "sha256"))
    RegistryRecordArtifactUpload.struct_class = Types::RegistryRecordArtifactUpload

    RegistryRecordCredentialProviderConfiguration.add_member(:credential_provider_type, Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderType, required: true, location_name: "credentialProviderType"))
    RegistryRecordCredentialProviderConfiguration.add_member(:credential_provider, Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderUnion, required: true, location_name: "credentialProvider"))
    RegistryRecordCredentialProviderConfiguration.struct_class = Types::RegistryRecordCredentialProviderConfiguration

    RegistryRecordCredentialProviderConfigurationList.member = Shapes::ShapeRef.new(shape: RegistryRecordCredentialProviderConfiguration)

    RegistryRecordCredentialProviderUnion.add_member(:oauth_credential_provider, Shapes::ShapeRef.new(shape: RegistryRecordOAuthCredentialProvider, location_name: "oauthCredentialProvider"))
    RegistryRecordCredentialProviderUnion.add_member(:iam_credential_provider, Shapes::ShapeRef.new(shape: RegistryRecordIamCredentialProvider, location_name: "iamCredentialProvider"))
    RegistryRecordCredentialProviderUnion.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RegistryRecordCredentialProviderUnion.add_member_subclass(:oauth_credential_provider, Types::RegistryRecordCredentialProviderUnion::OauthCredentialProvider)
    RegistryRecordCredentialProviderUnion.add_member_subclass(:iam_credential_provider, Types::RegistryRecordCredentialProviderUnion::IamCredentialProvider)
    RegistryRecordCredentialProviderUnion.add_member_subclass(:unknown, Types::RegistryRecordCredentialProviderUnion::Unknown)
    RegistryRecordCredentialProviderUnion.struct_class = Types::RegistryRecordCredentialProviderUnion

    RegistryRecordFilter.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordFilterName, required: true, location_name: "name"))
    RegistryRecordFilter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, required: true, location_name: "values"))
    RegistryRecordFilter.struct_class = Types::RegistryRecordFilter

    RegistryRecordFilterList.member = Shapes::ShapeRef.new(shape: RegistryRecordFilter)

    RegistryRecordIamCredentialProvider.add_member(:role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "roleArn"))
    RegistryRecordIamCredentialProvider.add_member(:service, Shapes::ShapeRef.new(shape: IamSigningServiceName, location_name: "service"))
    RegistryRecordIamCredentialProvider.add_member(:region, Shapes::ShapeRef.new(shape: IamSigningRegion, location_name: "region"))
    RegistryRecordIamCredentialProvider.struct_class = Types::RegistryRecordIamCredentialProvider

    RegistryRecordOAuthCredentialProvider.add_member(:provider_arn, Shapes::ShapeRef.new(shape: CredentialProviderArn, required: true, location_name: "providerArn"))
    RegistryRecordOAuthCredentialProvider.add_member(:grant_type, Shapes::ShapeRef.new(shape: RegistryRecordOAuthGrantType, location_name: "grantType"))
    RegistryRecordOAuthCredentialProvider.add_member(:scopes, Shapes::ShapeRef.new(shape: ScopeList, location_name: "scopes"))
    RegistryRecordOAuthCredentialProvider.add_member(:custom_parameters, Shapes::ShapeRef.new(shape: CustomParameterMap, location_name: "customParameters"))
    RegistryRecordOAuthCredentialProvider.add_member(:return_url, Shapes::ShapeRef.new(shape: OAuthReturnUrl, location_name: "returnUrl"))
    RegistryRecordOAuthCredentialProvider.struct_class = Types::RegistryRecordOAuthCredentialProvider

    RegistryRecordSummary.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    RegistryRecordSummary.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    RegistryRecordSummary.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    RegistryRecordSummary.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    RegistryRecordSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "displayName"))
    RegistryRecordSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegistryRecordSummary.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    RegistryRecordSummary.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, required: true, location_name: "recordVersion"))
    RegistryRecordSummary.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    RegistryRecordSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    RegistryRecordSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    RegistryRecordSummary.add_member(:created_by_auto_detection, Shapes::ShapeRef.new(shape: Boolean, location_name: "createdByAutoDetection"))
    RegistryRecordSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatorAccountId, location_name: "createdBy"))
    RegistryRecordSummary.add_member(:provenance_summary_list, Shapes::ShapeRef.new(shape: ProvenanceSummaryList, location_name: "provenanceSummaryList"))
    RegistryRecordSummary.add_member(:custom_metadata_schema_compliance_status, Shapes::ShapeRef.new(shape: CustomMetadataSchemaComplianceStatus, location_name: "customMetadataSchemaComplianceStatus"))
    RegistryRecordSummary.struct_class = Types::RegistryRecordSummary

    RegistryRecordSummaryList.member = Shapes::ShapeRef.new(shape: RegistryRecordSummary)

    RegistryRecordSynchronizedSource.add_member(:s3, Shapes::ShapeRef.new(shape: S3SynchronizedSource, location_name: "s3"))
    RegistryRecordSynchronizedSource.add_member(:git_hub, Shapes::ShapeRef.new(shape: GitHubSynchronizedSource, location_name: "gitHub"))
    RegistryRecordSynchronizedSource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    RegistryRecordSynchronizedSource.add_member_subclass(:s3, Types::RegistryRecordSynchronizedSource::S3)
    RegistryRecordSynchronizedSource.add_member_subclass(:git_hub, Types::RegistryRecordSynchronizedSource::GitHub)
    RegistryRecordSynchronizedSource.add_member_subclass(:unknown, Types::RegistryRecordSynchronizedSource::Unknown)
    RegistryRecordSynchronizedSource.struct_class = Types::RegistryRecordSynchronizedSource

    RegistrySummary.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    RegistrySummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RegistrySummary.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "registryId"))
    RegistrySummary.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    RegistrySummary.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: DiscoveryConfiguration, location_name: "discoveryConfiguration"))
    RegistrySummary.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    RegistrySummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    RegistrySummary.add_member(:auto_detection, Shapes::ShapeRef.new(shape: AutoDetection, location_name: "autoDetection"))
    RegistrySummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    RegistrySummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    RegistrySummary.struct_class = Types::RegistrySummary

    RegistrySummaryList.member = Shapes::ShapeRef.new(shape: RegistrySummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    ResourceTagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    S3SourceConfiguration.add_member(:bucket_owner_account_id, Shapes::ShapeRef.new(shape: S3BucketOwnerAccountId, location_name: "bucketOwnerAccountId"))
    S3SourceConfiguration.struct_class = Types::S3SourceConfiguration

    S3SynchronizedSource.add_member(:url, Shapes::ShapeRef.new(shape: SynchronizedSourceUrl, required: true, location_name: "url"))
    S3SynchronizedSource.add_member(:synchronized_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "synchronizedAt"))
    S3SynchronizedSource.add_member(:version_id, Shapes::ShapeRef.new(shape: S3ObjectVersionId, location_name: "versionId"))
    S3SynchronizedSource.add_member(:e_tag, Shapes::ShapeRef.new(shape: S3ObjectETag, location_name: "eTag"))
    S3SynchronizedSource.struct_class = Types::S3SynchronizedSource

    ScopeList.member = Shapes::ShapeRef.new(shape: String)

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupIdentifier)

    SelfManagedLatticeResource.add_member(:resource_configuration_identifier, Shapes::ShapeRef.new(shape: ResourceConfigurationIdentifier, location_name: "resourceConfigurationIdentifier"))
    SelfManagedLatticeResource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SelfManagedLatticeResource.add_member_subclass(:resource_configuration_identifier, Types::SelfManagedLatticeResource::ResourceConfigurationIdentifier)
    SelfManagedLatticeResource.add_member_subclass(:unknown, Types::SelfManagedLatticeResource::Unknown)
    SelfManagedLatticeResource.struct_class = Types::SelfManagedLatticeResource

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SignatureAgentCardAdditionalData.add_member(:category, Shapes::ShapeRef.new(shape: BotCategory, location_name: "category"))
    SignatureAgentCardAdditionalData.struct_class = Types::SignatureAgentCardAdditionalData

    SignatureAgentCardDescriptor.add_member(:data, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "data"))
    SignatureAgentCardDescriptor.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "dataSchemaVersion"))
    SignatureAgentCardDescriptor.add_member(:source, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "source"))
    SignatureAgentCardDescriptor.add_member(:additional_data, Shapes::ShapeRef.new(shape: SignatureAgentCardAdditionalData, location_name: "additionalData"))
    SignatureAgentCardDescriptor.struct_class = Types::SignatureAgentCardDescriptor

    SourceDetails.add_member(:agentcore_runtime, Shapes::ShapeRef.new(shape: AgentCoreRuntimeSourceDetails, location_name: "agentcoreRuntime"))
    SourceDetails.add_member(:agentcore_gateway, Shapes::ShapeRef.new(shape: AgentCoreGatewaySourceDetails, location_name: "agentcoreGateway"))
    SourceDetails.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SourceDetails.add_member_subclass(:agentcore_runtime, Types::SourceDetails::AgentcoreRuntime)
    SourceDetails.add_member_subclass(:agentcore_gateway, Types::SourceDetails::AgentcoreGateway)
    SourceDetails.add_member_subclass(:unknown, Types::SourceDetails::Unknown)
    SourceDetails.struct_class = Types::SourceDetails

    SubmitRegistryRecordForApprovalRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    SubmitRegistryRecordForApprovalRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    SubmitRegistryRecordForApprovalRequest.struct_class = Types::SubmitRegistryRecordForApprovalRequest

    SubmitRegistryRecordForApprovalResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    SubmitRegistryRecordForApprovalResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    SubmitRegistryRecordForApprovalResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    SubmitRegistryRecordForApprovalResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    SubmitRegistryRecordForApprovalResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    SubmitRegistryRecordForApprovalResponse.struct_class = Types::SubmitRegistryRecordForApprovalResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: NonBlankString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdatePublisherAssociationApprovalStatusRequest.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location: "uri", location_name: "recordArn"))
    UpdatePublisherAssociationApprovalStatusRequest.add_member(:approval_status, Shapes::ShapeRef.new(shape: AssociationApprovalStatus, required: true, location_name: "approvalStatus"))
    UpdatePublisherAssociationApprovalStatusRequest.add_member(:approval_status_reason, Shapes::ShapeRef.new(shape: StatusReason, required: true, location_name: "approvalStatusReason"))
    UpdatePublisherAssociationApprovalStatusRequest.struct_class = Types::UpdatePublisherAssociationApprovalStatusRequest

    UpdatePublisherAssociationApprovalStatusResponse.struct_class = Types::UpdatePublisherAssociationApprovalStatusResponse

    UpdateRegistryRecordRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    UpdateRegistryRecordRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    UpdateRegistryRecordRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, location_name: "name"))
    UpdateRegistryRecordRequest.add_member(:display_name, Shapes::ShapeRef.new(shape: UpdatedDisplayName, location_name: "displayName"))
    UpdateRegistryRecordRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdatedDescription, location_name: "description"))
    UpdateRegistryRecordRequest.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, location_name: "recordType"))
    UpdateRegistryRecordRequest.add_member(:descriptors, Shapes::ShapeRef.new(shape: UpdatedDescriptors, location_name: "descriptors"))
    UpdateRegistryRecordRequest.add_member(:artifact, Shapes::ShapeRef.new(shape: UpdatedRegistryRecordArtifact, location_name: "artifact"))
    UpdateRegistryRecordRequest.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    UpdateRegistryRecordRequest.add_member(:custom_metadata, Shapes::ShapeRef.new(shape: UpdatedCustomMetadataMap, location_name: "customMetadata"))
    UpdateRegistryRecordRequest.add_member(:trigger_synchronization, Shapes::ShapeRef.new(shape: Boolean, location_name: "triggerSynchronization"))
    UpdateRegistryRecordRequest.add_member(:force_authentication, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceAuthentication"))
    UpdateRegistryRecordRequest.add_member(:provenance, Shapes::ShapeRef.new(shape: ProvenanceList, location_name: "provenance"))
    UpdateRegistryRecordRequest.struct_class = Types::UpdateRegistryRecordRequest

    UpdateRegistryRecordResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    UpdateRegistryRecordResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    UpdateRegistryRecordResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    UpdateRegistryRecordResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryRecordName, required: true, location_name: "name"))
    UpdateRegistryRecordResponse.add_member(:display_name, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "displayName"))
    UpdateRegistryRecordResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateRegistryRecordResponse.add_member(:record_type, Shapes::ShapeRef.new(shape: RecordType, required: true, location_name: "recordType"))
    UpdateRegistryRecordResponse.add_member(:descriptors, Shapes::ShapeRef.new(shape: Descriptors, location_name: "descriptors"))
    UpdateRegistryRecordResponse.add_member(:record_version, Shapes::ShapeRef.new(shape: RegistryRecordVersion, location_name: "recordVersion"))
    UpdateRegistryRecordResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    UpdateRegistryRecordResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateRegistryRecordResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateRegistryRecordResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateRegistryRecordResponse.add_member(:provenance, Shapes::ShapeRef.new(shape: ProvenanceList, location_name: "provenance"))
    UpdateRegistryRecordResponse.add_member(:created_by_auto_detection, Shapes::ShapeRef.new(shape: Boolean, location_name: "createdByAutoDetection"))
    UpdateRegistryRecordResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: CreatorAccountId, location_name: "createdBy"))
    UpdateRegistryRecordResponse.add_member(:custom_metadata, Shapes::ShapeRef.new(shape: CustomMetadataDocument, location_name: "customMetadata"))
    UpdateRegistryRecordResponse.add_member(:custom_metadata_schema_compliance_status, Shapes::ShapeRef.new(shape: CustomMetadataSchemaComplianceStatus, location_name: "customMetadataSchemaComplianceStatus"))
    UpdateRegistryRecordResponse.add_member(:authorization_data, Shapes::ShapeRef.new(shape: AuthorizationData, location_name: "authorizationData"))
    UpdateRegistryRecordResponse.struct_class = Types::UpdateRegistryRecordResponse

    UpdateRegistryRecordStatusRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    UpdateRegistryRecordStatusRequest.add_member(:record_id, Shapes::ShapeRef.new(shape: RecordIdentifier, required: true, location: "uri", location_name: "recordId"))
    UpdateRegistryRecordStatusRequest.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    UpdateRegistryRecordStatusRequest.add_member(:status_reason, Shapes::ShapeRef.new(shape: UpdateRegistryRecordStatusRequestStatusReasonString, required: true, location_name: "statusReason"))
    UpdateRegistryRecordStatusRequest.struct_class = Types::UpdateRegistryRecordStatusRequest

    UpdateRegistryRecordStatusResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    UpdateRegistryRecordStatusResponse.add_member(:record_arn, Shapes::ShapeRef.new(shape: RegistryRecordArn, required: true, location_name: "recordArn"))
    UpdateRegistryRecordStatusResponse.add_member(:record_id, Shapes::ShapeRef.new(shape: RegistryRecordId, required: true, location_name: "recordId"))
    UpdateRegistryRecordStatusResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryRecordStatus, required: true, location_name: "status"))
    UpdateRegistryRecordStatusResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, required: true, location_name: "statusReason"))
    UpdateRegistryRecordStatusResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateRegistryRecordStatusResponse.struct_class = Types::UpdateRegistryRecordStatusResponse

    UpdateRegistryRequest.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryIdentifier, required: true, location: "uri", location_name: "registryId"))
    UpdateRegistryRequest.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, location_name: "name"))
    UpdateRegistryRequest.add_member(:description, Shapes::ShapeRef.new(shape: UpdatedDescription, location_name: "description"))
    UpdateRegistryRequest.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: UpdatedDiscoveryConfiguration, location_name: "discoveryConfiguration"))
    UpdateRegistryRequest.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: UpdatedApprovalConfiguration, location_name: "approvalConfiguration"))
    UpdateRegistryRequest.add_member(:custom_metadata_schema_configuration, Shapes::ShapeRef.new(shape: UpdatedCustomMetadataSchemaConfiguration, location_name: "customMetadataSchemaConfiguration"))
    UpdateRegistryRequest.add_member(:auto_detection_configuration, Shapes::ShapeRef.new(shape: UpdatedAutoDetectionConfiguration, location_name: "autoDetectionConfiguration"))
    UpdateRegistryRequest.struct_class = Types::UpdateRegistryRequest

    UpdateRegistryResponse.add_member(:name, Shapes::ShapeRef.new(shape: RegistryName, required: true, location_name: "name"))
    UpdateRegistryResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateRegistryResponse.add_member(:registry_id, Shapes::ShapeRef.new(shape: RegistryId, required: true, location_name: "registryId"))
    UpdateRegistryResponse.add_member(:registry_arn, Shapes::ShapeRef.new(shape: RegistryArn, required: true, location_name: "registryArn"))
    UpdateRegistryResponse.add_member(:discovery_configuration, Shapes::ShapeRef.new(shape: DiscoveryConfiguration, location_name: "discoveryConfiguration"))
    UpdateRegistryResponse.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: EncryptionConfiguration, location_name: "encryptionConfiguration"))
    UpdateRegistryResponse.add_member(:approval_configuration, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "approvalConfiguration"))
    UpdateRegistryResponse.add_member(:custom_metadata_schema_configuration, Shapes::ShapeRef.new(shape: CustomMetadataSchemaConfiguration, location_name: "customMetadataSchemaConfiguration"))
    UpdateRegistryResponse.add_member(:status, Shapes::ShapeRef.new(shape: RegistryStatus, required: true, location_name: "status"))
    UpdateRegistryResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    UpdateRegistryResponse.add_member(:auto_detection, Shapes::ShapeRef.new(shape: AutoDetection, location_name: "autoDetection"))
    UpdateRegistryResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "createdAt"))
    UpdateRegistryResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimestamp, required: true, location_name: "updatedAt"))
    UpdateRegistryResponse.struct_class = Types::UpdateRegistryResponse

    UpdatedA2aAgentCardDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedA2aAgentCardDescriptorFields, location_name: "optionalValue"))
    UpdatedA2aAgentCardDescriptor.struct_class = Types::UpdatedA2aAgentCardDescriptor

    UpdatedA2aAgentCardDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedA2aAgentCardDescriptorFields.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: UpdatedDataSchemaVersion, location_name: "dataSchemaVersion"))
    UpdatedA2aAgentCardDescriptorFields.add_member(:source, Shapes::ShapeRef.new(shape: UpdatedDescriptorSource, location_name: "source"))
    UpdatedA2aAgentCardDescriptorFields.struct_class = Types::UpdatedA2aAgentCardDescriptorFields

    UpdatedAgUiDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedAgUiDescriptorFields, location_name: "optionalValue"))
    UpdatedAgUiDescriptor.struct_class = Types::UpdatedAgUiDescriptor

    UpdatedAgUiDescriptorFields.add_member(:source, Shapes::ShapeRef.new(shape: UpdatedDescriptorSource, location_name: "source"))
    UpdatedAgUiDescriptorFields.struct_class = Types::UpdatedAgUiDescriptorFields

    UpdatedAgentSkillsAdditionalData.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsAdditionalDataFields, location_name: "optionalValue"))
    UpdatedAgentSkillsAdditionalData.struct_class = Types::UpdatedAgentSkillsAdditionalData

    UpdatedAgentSkillsAdditionalDataFields.add_member(:skill_md, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsMdDescriptor, location_name: "skillMd"))
    UpdatedAgentSkillsAdditionalDataFields.add_member(:skill_package, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsPackageDescriptor, location_name: "skillPackage"))
    UpdatedAgentSkillsAdditionalDataFields.add_member(:repository_provider, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsRepositoryProvider, location_name: "repositoryProvider"))
    UpdatedAgentSkillsAdditionalDataFields.add_member(:source_configuration, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsSourceConfiguration, location_name: "sourceConfiguration"))
    UpdatedAgentSkillsAdditionalDataFields.struct_class = Types::UpdatedAgentSkillsAdditionalDataFields

    UpdatedAgentSkillsDefinitionDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsDefinitionDescriptorFields, location_name: "optionalValue"))
    UpdatedAgentSkillsDefinitionDescriptor.struct_class = Types::UpdatedAgentSkillsDefinitionDescriptor

    UpdatedAgentSkillsDefinitionDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedAgentSkillsDefinitionDescriptorFields.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: UpdatedDataSchemaVersion, location_name: "dataSchemaVersion"))
    UpdatedAgentSkillsDefinitionDescriptorFields.add_member(:additional_data, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsAdditionalData, location_name: "additionalData"))
    UpdatedAgentSkillsDefinitionDescriptorFields.struct_class = Types::UpdatedAgentSkillsDefinitionDescriptorFields

    UpdatedAgentSkillsMdDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsMdDescriptorFields, location_name: "optionalValue"))
    UpdatedAgentSkillsMdDescriptor.struct_class = Types::UpdatedAgentSkillsMdDescriptor

    UpdatedAgentSkillsMdDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedAgentSkillsMdDescriptorFields.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: UpdatedDataSchemaVersion, location_name: "dataSchemaVersion"))
    UpdatedAgentSkillsMdDescriptorFields.add_member(:source, Shapes::ShapeRef.new(shape: UpdatedDescriptorSource, location_name: "source"))
    UpdatedAgentSkillsMdDescriptorFields.struct_class = Types::UpdatedAgentSkillsMdDescriptorFields

    UpdatedAgentSkillsPackageDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: AgentSkillsPackageDescriptor, location_name: "optionalValue"))
    UpdatedAgentSkillsPackageDescriptor.struct_class = Types::UpdatedAgentSkillsPackageDescriptor

    UpdatedAgentSkillsRepositoryProvider.add_member(:optional_value, Shapes::ShapeRef.new(shape: AgentSkillsRepositoryProvider, location_name: "optionalValue"))
    UpdatedAgentSkillsRepositoryProvider.struct_class = Types::UpdatedAgentSkillsRepositoryProvider

    UpdatedAgentSkillsSourceConfiguration.add_member(:optional_value, Shapes::ShapeRef.new(shape: AgentSkillsSourceConfiguration, location_name: "optionalValue"))
    UpdatedAgentSkillsSourceConfiguration.struct_class = Types::UpdatedAgentSkillsSourceConfiguration

    UpdatedApprovalConfiguration.add_member(:optional_value, Shapes::ShapeRef.new(shape: ApprovalConfiguration, location_name: "optionalValue"))
    UpdatedApprovalConfiguration.struct_class = Types::UpdatedApprovalConfiguration

    UpdatedAuthorizerConfiguration.add_member(:optional_value, Shapes::ShapeRef.new(shape: AuthorizerConfiguration, location_name: "optionalValue"))
    UpdatedAuthorizerConfiguration.struct_class = Types::UpdatedAuthorizerConfiguration

    UpdatedAutoDetectionConfiguration.add_member(:optional_value, Shapes::ShapeRef.new(shape: AutoDetectionConfiguration, location_name: "optionalValue"))
    UpdatedAutoDetectionConfiguration.struct_class = Types::UpdatedAutoDetectionConfiguration

    UpdatedBotCategory.add_member(:optional_value, Shapes::ShapeRef.new(shape: BotCategory, location_name: "optionalValue"))
    UpdatedBotCategory.struct_class = Types::UpdatedBotCategory

    UpdatedCustomDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedCustomDescriptorFields, location_name: "optionalValue"))
    UpdatedCustomDescriptor.struct_class = Types::UpdatedCustomDescriptor

    UpdatedCustomDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedCustomDescriptorFields.struct_class = Types::UpdatedCustomDescriptorFields

    UpdatedCustomMetadataMap.add_member(:optional_value, Shapes::ShapeRef.new(shape: CustomMetadataDocument, location_name: "optionalValue"))
    UpdatedCustomMetadataMap.struct_class = Types::UpdatedCustomMetadataMap

    UpdatedCustomMetadataSchemaConfiguration.add_member(:optional_value, Shapes::ShapeRef.new(shape: CustomMetadataSchemaConfiguration, location_name: "optionalValue"))
    UpdatedCustomMetadataSchemaConfiguration.struct_class = Types::UpdatedCustomMetadataSchemaConfiguration

    UpdatedDataSchemaVersion.add_member(:optional_value, Shapes::ShapeRef.new(shape: DataSchemaVersion, location_name: "optionalValue"))
    UpdatedDataSchemaVersion.struct_class = Types::UpdatedDataSchemaVersion

    UpdatedDescription.add_member(:optional_value, Shapes::ShapeRef.new(shape: Description, location_name: "optionalValue"))
    UpdatedDescription.struct_class = Types::UpdatedDescription

    UpdatedDescriptorData.add_member(:optional_value, Shapes::ShapeRef.new(shape: DescriptorData, location_name: "optionalValue"))
    UpdatedDescriptorData.struct_class = Types::UpdatedDescriptorData

    UpdatedDescriptorSource.add_member(:optional_value, Shapes::ShapeRef.new(shape: DescriptorSource, location_name: "optionalValue"))
    UpdatedDescriptorSource.struct_class = Types::UpdatedDescriptorSource

    UpdatedDescriptors.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedDescriptorsFields, location_name: "optionalValue"))
    UpdatedDescriptors.struct_class = Types::UpdatedDescriptors

    UpdatedDescriptorsFields.add_member(:mcp_server, Shapes::ShapeRef.new(shape: UpdatedMcpServerDescriptor, location_name: "mcpServer"))
    UpdatedDescriptorsFields.add_member(:a2a_agent_card, Shapes::ShapeRef.new(shape: UpdatedA2aAgentCardDescriptor, location_name: "a2aAgentCard"))
    UpdatedDescriptorsFields.add_member(:agent_skills_definition, Shapes::ShapeRef.new(shape: UpdatedAgentSkillsDefinitionDescriptor, location_name: "agentSkillsDefinition"))
    UpdatedDescriptorsFields.add_member(:custom, Shapes::ShapeRef.new(shape: UpdatedCustomDescriptor, location_name: "custom"))
    UpdatedDescriptorsFields.add_member(:http, Shapes::ShapeRef.new(shape: UpdatedHttpDescriptor, location_name: "http"))
    UpdatedDescriptorsFields.add_member(:agui, Shapes::ShapeRef.new(shape: UpdatedAgUiDescriptor, location_name: "agui"))
    UpdatedDescriptorsFields.add_member(:signature_agent_card, Shapes::ShapeRef.new(shape: UpdatedSignatureAgentCardDescriptor, location_name: "signatureAgentCard"))
    UpdatedDescriptorsFields.struct_class = Types::UpdatedDescriptorsFields

    UpdatedDiscoveryConfiguration.add_member(:authorizer_configuration, Shapes::ShapeRef.new(shape: UpdatedAuthorizerConfiguration, location_name: "authorizerConfiguration"))
    UpdatedDiscoveryConfiguration.struct_class = Types::UpdatedDiscoveryConfiguration

    UpdatedDisplayName.add_member(:optional_value, Shapes::ShapeRef.new(shape: RegistryRecordDisplayName, location_name: "optionalValue"))
    UpdatedDisplayName.struct_class = Types::UpdatedDisplayName

    UpdatedHttpDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedHttpDescriptorFields, location_name: "optionalValue"))
    UpdatedHttpDescriptor.struct_class = Types::UpdatedHttpDescriptor

    UpdatedHttpDescriptorFields.add_member(:source, Shapes::ShapeRef.new(shape: UpdatedDescriptorSource, location_name: "source"))
    UpdatedHttpDescriptorFields.struct_class = Types::UpdatedHttpDescriptorFields

    UpdatedMcpServerAdditionalData.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedMcpServerAdditionalDataFields, location_name: "optionalValue"))
    UpdatedMcpServerAdditionalData.struct_class = Types::UpdatedMcpServerAdditionalData

    UpdatedMcpServerAdditionalDataFields.add_member(:tools, Shapes::ShapeRef.new(shape: UpdatedMcpToolsDescriptor, location_name: "tools"))
    UpdatedMcpServerAdditionalDataFields.struct_class = Types::UpdatedMcpServerAdditionalDataFields

    UpdatedMcpServerDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedMcpServerDescriptorFields, location_name: "optionalValue"))
    UpdatedMcpServerDescriptor.struct_class = Types::UpdatedMcpServerDescriptor

    UpdatedMcpServerDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedMcpServerDescriptorFields.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: UpdatedDataSchemaVersion, location_name: "dataSchemaVersion"))
    UpdatedMcpServerDescriptorFields.add_member(:source, Shapes::ShapeRef.new(shape: UpdatedDescriptorSource, location_name: "source"))
    UpdatedMcpServerDescriptorFields.add_member(:additional_data, Shapes::ShapeRef.new(shape: UpdatedMcpServerAdditionalData, location_name: "additionalData"))
    UpdatedMcpServerDescriptorFields.struct_class = Types::UpdatedMcpServerDescriptorFields

    UpdatedMcpToolsDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedMcpToolsDescriptorFields, location_name: "optionalValue"))
    UpdatedMcpToolsDescriptor.struct_class = Types::UpdatedMcpToolsDescriptor

    UpdatedMcpToolsDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedMcpToolsDescriptorFields.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: UpdatedDataSchemaVersion, location_name: "dataSchemaVersion"))
    UpdatedMcpToolsDescriptorFields.struct_class = Types::UpdatedMcpToolsDescriptorFields

    UpdatedRegistryRecordArtifact.add_member(:optional_value, Shapes::ShapeRef.new(shape: RegistryRecordArtifactUpload, location_name: "optionalValue"))
    UpdatedRegistryRecordArtifact.struct_class = Types::UpdatedRegistryRecordArtifact

    UpdatedSignatureAgentCardAdditionalData.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedSignatureAgentCardAdditionalDataFields, location_name: "optionalValue"))
    UpdatedSignatureAgentCardAdditionalData.struct_class = Types::UpdatedSignatureAgentCardAdditionalData

    UpdatedSignatureAgentCardAdditionalDataFields.add_member(:category, Shapes::ShapeRef.new(shape: UpdatedBotCategory, location_name: "category"))
    UpdatedSignatureAgentCardAdditionalDataFields.struct_class = Types::UpdatedSignatureAgentCardAdditionalDataFields

    UpdatedSignatureAgentCardDescriptor.add_member(:optional_value, Shapes::ShapeRef.new(shape: UpdatedSignatureAgentCardDescriptorFields, location_name: "optionalValue"))
    UpdatedSignatureAgentCardDescriptor.struct_class = Types::UpdatedSignatureAgentCardDescriptor

    UpdatedSignatureAgentCardDescriptorFields.add_member(:data, Shapes::ShapeRef.new(shape: UpdatedDescriptorData, location_name: "data"))
    UpdatedSignatureAgentCardDescriptorFields.add_member(:data_schema_version, Shapes::ShapeRef.new(shape: UpdatedDataSchemaVersion, location_name: "dataSchemaVersion"))
    UpdatedSignatureAgentCardDescriptorFields.add_member(:source, Shapes::ShapeRef.new(shape: UpdatedDescriptorSource, location_name: "source"))
    UpdatedSignatureAgentCardDescriptorFields.add_member(:additional_data, Shapes::ShapeRef.new(shape: UpdatedSignatureAgentCardAdditionalData, location_name: "additionalData"))
    UpdatedSignatureAgentCardDescriptorFields.struct_class = Types::UpdatedSignatureAgentCardDescriptorFields

    ValidatePublisherRequest.add_member(:publisher_arn, Shapes::ShapeRef.new(shape: PublisherIdentifierArn, required: true, location: "uri", location_name: "publisherArn"))
    ValidatePublisherRequest.struct_class = Types::ValidatePublisherRequest

    ValidatePublisherResponse.add_member(:value, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "value"))
    ValidatePublisherResponse.add_member(:identifier_type, Shapes::ShapeRef.new(shape: IdentifierType, location_name: "identifierType"))
    ValidatePublisherResponse.add_member(:status, Shapes::ShapeRef.new(shape: VerificationStatus, required: true, location_name: "status"))
    ValidatePublisherResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: StatusReason, location_name: "statusReason"))
    ValidatePublisherResponse.add_member(:domain_challenge, Shapes::ShapeRef.new(shape: DomainChallenge, location_name: "domainChallenge"))
    ValidatePublisherResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ValidatePublisherResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    ValidatePublisherResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "updatedAt"))
    ValidatePublisherResponse.add_member(:publisher_arn, Shapes::ShapeRef.new(shape: PublisherIdentifierArn, required: true, location_name: "publisherArn"))
    ValidatePublisherResponse.struct_class = Types::ValidatePublisherResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    WorkloadIdentityDetails.add_member(:workload_identity_arn, Shapes::ShapeRef.new(shape: WorkloadIdentityDetailsWorkloadIdentityArnString, required: true, location_name: "workloadIdentityArn"))
    WorkloadIdentityDetails.struct_class = Types::WorkloadIdentityDetails


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-12-01"

      api.metadata = {
        "apiVersion" => "2025-12-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "agent-registry-control",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "Agent Registry Control",
        "serviceId" => "Agent Registry Control",
        "signatureVersion" => "v4",
        "signingName" => "agent-registry",
        "uid" => "agent-registry-control-2025-12-01",
      }

      api.add_operation(:associate_publisher, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociatePublisher"
        o.http_method = "POST"
        o.http_request_uri = "/associations"
        o.input = Shapes::ShapeRef.new(shape: AssociatePublisherRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociatePublisherResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_publisher, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePublisher"
        o.http_method = "POST"
        o.http_request_uri = "/publishers"
        o.input = Shapes::ShapeRef.new(shape: CreatePublisherRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePublisherResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistry"
        o.http_method = "POST"
        o.http_request_uri = "/registries"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRegistryRecord"
        o.http_method = "POST"
        o.http_request_uri = "/registries/{registryId}/records"
        o.input = Shapes::ShapeRef.new(shape: CreateRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_publisher, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePublisher"
        o.http_method = "DELETE"
        o.http_request_uri = "/publishers/{publisherArn}"
        o.input = Shapes::ShapeRef.new(shape: DeletePublisherRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistry"
        o.http_method = "DELETE"
        o.http_request_uri = "/registries/{registryId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRegistryRecord"
        o.http_method = "DELETE"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_publisher, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociatePublisher"
        o.http_method = "DELETE"
        o.http_request_uri = "/associations/{recordArn+}"
        o.input = Shapes::ShapeRef.new(shape: DisassociatePublisherRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_publisher, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPublisher"
        o.http_method = "GET"
        o.http_request_uri = "/publishers/{publisherArn}"
        o.input = Shapes::ShapeRef.new(shape: GetPublisherRequest)
        o.output = Shapes::ShapeRef.new(shape: Publisher)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegistry"
        o.http_method = "GET"
        o.http_request_uri = "/registries/{registryId}"
        o.input = Shapes::ShapeRef.new(shape: GetRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRegistryRecord"
        o.http_method = "GET"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}"
        o.input = Shapes::ShapeRef.new(shape: GetRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_publisher_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPublisherAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/associations"
        o.input = Shapes::ShapeRef.new(shape: ListPublisherAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPublisherAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_publishers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPublishers"
        o.http_method = "GET"
        o.http_request_uri = "/publishers"
        o.input = Shapes::ShapeRef.new(shape: ListPublishersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPublishersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_registries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegistries"
        o.http_method = "POST"
        o.http_request_uri = "/registries-list"
        o.input = Shapes::ShapeRef.new(shape: ListRegistriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegistriesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_registry_records, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRegistryRecords"
        o.http_method = "POST"
        o.http_request_uri = "/registries/{registryId}/records-list"
        o.input = Shapes::ShapeRef.new(shape: ListRegistryRecordsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRegistryRecordsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.http_request_uri = "/tags/{resourceArn+}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:submit_registry_record_for_approval, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitRegistryRecordForApproval"
        o.http_method = "POST"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}/submit-for-approval"
        o.input = Shapes::ShapeRef.new(shape: SubmitRegistryRecordForApprovalRequest)
        o.output = Shapes::ShapeRef.new(shape: SubmitRegistryRecordForApprovalResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn+}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn+}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_publisher_association_approval_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePublisherAssociationApprovalStatus"
        o.http_method = "PATCH"
        o.http_request_uri = "/associations/{recordArn+}"
        o.input = Shapes::ShapeRef.new(shape: UpdatePublisherAssociationApprovalStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePublisherAssociationApprovalStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_registry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistry"
        o.http_method = "PATCH"
        o.http_request_uri = "/registries/{registryId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_registry_record, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistryRecord"
        o.http_method = "PATCH"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistryRecordRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistryRecordResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_registry_record_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRegistryRecordStatus"
        o.http_method = "PATCH"
        o.http_request_uri = "/registries/{registryId}/records/{recordId}/status"
        o.input = Shapes::ShapeRef.new(shape: UpdateRegistryRecordStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRegistryRecordStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:validate_publisher, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidatePublisher"
        o.http_method = "POST"
        o.http_request_uri = "/publishers/{publisherArn}/verification"
        o.input = Shapes::ShapeRef.new(shape: ValidatePublisherRequest)
        o.output = Shapes::ShapeRef.new(shape: ValidatePublisherResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
