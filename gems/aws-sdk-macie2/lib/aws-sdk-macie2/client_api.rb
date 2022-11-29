# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Macie2
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptInvitationRequest = Shapes::StructureShape.new(name: 'AcceptInvitationRequest')
    AcceptInvitationResponse = Shapes::StructureShape.new(name: 'AcceptInvitationResponse')
    AccessControlList = Shapes::StructureShape.new(name: 'AccessControlList')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountDetail = Shapes::StructureShape.new(name: 'AccountDetail')
    AccountLevelPermissions = Shapes::StructureShape.new(name: 'AccountLevelPermissions')
    AdminAccount = Shapes::StructureShape.new(name: 'AdminAccount')
    AdminStatus = Shapes::StringShape.new(name: 'AdminStatus')
    AllowListCriteria = Shapes::StructureShape.new(name: 'AllowListCriteria')
    AllowListStatus = Shapes::StructureShape.new(name: 'AllowListStatus')
    AllowListStatusCode = Shapes::StringShape.new(name: 'AllowListStatusCode')
    AllowListSummary = Shapes::StructureShape.new(name: 'AllowListSummary')
    AllowsUnencryptedObjectUploads = Shapes::StringShape.new(name: 'AllowsUnencryptedObjectUploads')
    ApiCallDetails = Shapes::StructureShape.new(name: 'ApiCallDetails')
    AssumedRole = Shapes::StructureShape.new(name: 'AssumedRole')
    AutomatedDiscoveryStatus = Shapes::StringShape.new(name: 'AutomatedDiscoveryStatus')
    AvailabilityCode = Shapes::StringShape.new(name: 'AvailabilityCode')
    AwsAccount = Shapes::StructureShape.new(name: 'AwsAccount')
    AwsService = Shapes::StructureShape.new(name: 'AwsService')
    BatchGetCustomDataIdentifierSummary = Shapes::StructureShape.new(name: 'BatchGetCustomDataIdentifierSummary')
    BatchGetCustomDataIdentifiersRequest = Shapes::StructureShape.new(name: 'BatchGetCustomDataIdentifiersRequest')
    BatchGetCustomDataIdentifiersResponse = Shapes::StructureShape.new(name: 'BatchGetCustomDataIdentifiersResponse')
    BlockPublicAccess = Shapes::StructureShape.new(name: 'BlockPublicAccess')
    BucketCountByEffectivePermission = Shapes::StructureShape.new(name: 'BucketCountByEffectivePermission')
    BucketCountByEncryptionType = Shapes::StructureShape.new(name: 'BucketCountByEncryptionType')
    BucketCountBySharedAccessType = Shapes::StructureShape.new(name: 'BucketCountBySharedAccessType')
    BucketCountPolicyAllowsUnencryptedObjectUploads = Shapes::StructureShape.new(name: 'BucketCountPolicyAllowsUnencryptedObjectUploads')
    BucketCriteria = Shapes::MapShape.new(name: 'BucketCriteria')
    BucketCriteriaAdditionalProperties = Shapes::StructureShape.new(name: 'BucketCriteriaAdditionalProperties')
    BucketLevelPermissions = Shapes::StructureShape.new(name: 'BucketLevelPermissions')
    BucketMetadata = Shapes::StructureShape.new(name: 'BucketMetadata')
    BucketMetadataErrorCode = Shapes::StringShape.new(name: 'BucketMetadataErrorCode')
    BucketPermissionConfiguration = Shapes::StructureShape.new(name: 'BucketPermissionConfiguration')
    BucketPolicy = Shapes::StructureShape.new(name: 'BucketPolicy')
    BucketPublicAccess = Shapes::StructureShape.new(name: 'BucketPublicAccess')
    BucketServerSideEncryption = Shapes::StructureShape.new(name: 'BucketServerSideEncryption')
    BucketSortCriteria = Shapes::StructureShape.new(name: 'BucketSortCriteria')
    BucketStatisticsBySensitivity = Shapes::StructureShape.new(name: 'BucketStatisticsBySensitivity')
    Cell = Shapes::StructureShape.new(name: 'Cell')
    Cells = Shapes::ListShape.new(name: 'Cells')
    ClassificationDetails = Shapes::StructureShape.new(name: 'ClassificationDetails')
    ClassificationExportConfiguration = Shapes::StructureShape.new(name: 'ClassificationExportConfiguration')
    ClassificationResult = Shapes::StructureShape.new(name: 'ClassificationResult')
    ClassificationResultStatus = Shapes::StructureShape.new(name: 'ClassificationResultStatus')
    ClassificationScopeId = Shapes::StringShape.new(name: 'ClassificationScopeId')
    ClassificationScopeName = Shapes::StringShape.new(name: 'ClassificationScopeName')
    ClassificationScopeSummary = Shapes::StructureShape.new(name: 'ClassificationScopeSummary')
    ClassificationScopeUpdateOperation = Shapes::StringShape.new(name: 'ClassificationScopeUpdateOperation')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAllowListRequest = Shapes::StructureShape.new(name: 'CreateAllowListRequest')
    CreateAllowListResponse = Shapes::StructureShape.new(name: 'CreateAllowListResponse')
    CreateClassificationJobRequest = Shapes::StructureShape.new(name: 'CreateClassificationJobRequest')
    CreateClassificationJobResponse = Shapes::StructureShape.new(name: 'CreateClassificationJobResponse')
    CreateCustomDataIdentifierRequest = Shapes::StructureShape.new(name: 'CreateCustomDataIdentifierRequest')
    CreateCustomDataIdentifierResponse = Shapes::StructureShape.new(name: 'CreateCustomDataIdentifierResponse')
    CreateFindingsFilterRequest = Shapes::StructureShape.new(name: 'CreateFindingsFilterRequest')
    CreateFindingsFilterResponse = Shapes::StructureShape.new(name: 'CreateFindingsFilterResponse')
    CreateInvitationsRequest = Shapes::StructureShape.new(name: 'CreateInvitationsRequest')
    CreateInvitationsResponse = Shapes::StructureShape.new(name: 'CreateInvitationsResponse')
    CreateMemberRequest = Shapes::StructureShape.new(name: 'CreateMemberRequest')
    CreateMemberResponse = Shapes::StructureShape.new(name: 'CreateMemberResponse')
    CreateSampleFindingsRequest = Shapes::StructureShape.new(name: 'CreateSampleFindingsRequest')
    CreateSampleFindingsResponse = Shapes::StructureShape.new(name: 'CreateSampleFindingsResponse')
    CriteriaBlockForJob = Shapes::StructureShape.new(name: 'CriteriaBlockForJob')
    CriteriaForJob = Shapes::StructureShape.new(name: 'CriteriaForJob')
    Criterion = Shapes::MapShape.new(name: 'Criterion')
    CriterionAdditionalProperties = Shapes::StructureShape.new(name: 'CriterionAdditionalProperties')
    Currency = Shapes::StringShape.new(name: 'Currency')
    CustomDataIdentifierSummary = Shapes::StructureShape.new(name: 'CustomDataIdentifierSummary')
    CustomDataIdentifiers = Shapes::StructureShape.new(name: 'CustomDataIdentifiers')
    CustomDetection = Shapes::StructureShape.new(name: 'CustomDetection')
    CustomDetections = Shapes::ListShape.new(name: 'CustomDetections')
    DailySchedule = Shapes::StructureShape.new(name: 'DailySchedule')
    DataIdentifierSeverity = Shapes::StringShape.new(name: 'DataIdentifierSeverity')
    DataIdentifierType = Shapes::StringShape.new(name: 'DataIdentifierType')
    DayOfWeek = Shapes::StringShape.new(name: 'DayOfWeek')
    DeclineInvitationsRequest = Shapes::StructureShape.new(name: 'DeclineInvitationsRequest')
    DeclineInvitationsResponse = Shapes::StructureShape.new(name: 'DeclineInvitationsResponse')
    DefaultDetection = Shapes::StructureShape.new(name: 'DefaultDetection')
    DefaultDetections = Shapes::ListShape.new(name: 'DefaultDetections')
    DeleteAllowListRequest = Shapes::StructureShape.new(name: 'DeleteAllowListRequest')
    DeleteAllowListResponse = Shapes::StructureShape.new(name: 'DeleteAllowListResponse')
    DeleteCustomDataIdentifierRequest = Shapes::StructureShape.new(name: 'DeleteCustomDataIdentifierRequest')
    DeleteCustomDataIdentifierResponse = Shapes::StructureShape.new(name: 'DeleteCustomDataIdentifierResponse')
    DeleteFindingsFilterRequest = Shapes::StructureShape.new(name: 'DeleteFindingsFilterRequest')
    DeleteFindingsFilterResponse = Shapes::StructureShape.new(name: 'DeleteFindingsFilterResponse')
    DeleteInvitationsRequest = Shapes::StructureShape.new(name: 'DeleteInvitationsRequest')
    DeleteInvitationsResponse = Shapes::StructureShape.new(name: 'DeleteInvitationsResponse')
    DeleteMemberRequest = Shapes::StructureShape.new(name: 'DeleteMemberRequest')
    DeleteMemberResponse = Shapes::StructureShape.new(name: 'DeleteMemberResponse')
    DescribeBucketsRequest = Shapes::StructureShape.new(name: 'DescribeBucketsRequest')
    DescribeBucketsResponse = Shapes::StructureShape.new(name: 'DescribeBucketsResponse')
    DescribeClassificationJobRequest = Shapes::StructureShape.new(name: 'DescribeClassificationJobRequest')
    DescribeClassificationJobResponse = Shapes::StructureShape.new(name: 'DescribeClassificationJobResponse')
    DescribeOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationRequest')
    DescribeOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeOrganizationConfigurationResponse')
    DetectedDataDetails = Shapes::StructureShape.new(name: 'DetectedDataDetails')
    Detection = Shapes::StructureShape.new(name: 'Detection')
    DisableMacieRequest = Shapes::StructureShape.new(name: 'DisableMacieRequest')
    DisableMacieResponse = Shapes::StructureShape.new(name: 'DisableMacieResponse')
    DisableOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'DisableOrganizationAdminAccountRequest')
    DisableOrganizationAdminAccountResponse = Shapes::StructureShape.new(name: 'DisableOrganizationAdminAccountResponse')
    DisassociateFromAdministratorAccountRequest = Shapes::StructureShape.new(name: 'DisassociateFromAdministratorAccountRequest')
    DisassociateFromAdministratorAccountResponse = Shapes::StructureShape.new(name: 'DisassociateFromAdministratorAccountResponse')
    DisassociateFromMasterAccountRequest = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountRequest')
    DisassociateFromMasterAccountResponse = Shapes::StructureShape.new(name: 'DisassociateFromMasterAccountResponse')
    DisassociateMemberRequest = Shapes::StructureShape.new(name: 'DisassociateMemberRequest')
    DisassociateMemberResponse = Shapes::StructureShape.new(name: 'DisassociateMemberResponse')
    DomainDetails = Shapes::StructureShape.new(name: 'DomainDetails')
    EffectivePermission = Shapes::StringShape.new(name: 'EffectivePermission')
    Empty = Shapes::StructureShape.new(name: 'Empty')
    EnableMacieRequest = Shapes::StructureShape.new(name: 'EnableMacieRequest')
    EnableMacieResponse = Shapes::StructureShape.new(name: 'EnableMacieResponse')
    EnableOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'EnableOrganizationAdminAccountRequest')
    EnableOrganizationAdminAccountResponse = Shapes::StructureShape.new(name: 'EnableOrganizationAdminAccountResponse')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    FederatedUser = Shapes::StructureShape.new(name: 'FederatedUser')
    Finding = Shapes::StructureShape.new(name: 'Finding')
    FindingAction = Shapes::StructureShape.new(name: 'FindingAction')
    FindingActionType = Shapes::StringShape.new(name: 'FindingActionType')
    FindingActor = Shapes::StructureShape.new(name: 'FindingActor')
    FindingCategory = Shapes::StringShape.new(name: 'FindingCategory')
    FindingCriteria = Shapes::StructureShape.new(name: 'FindingCriteria')
    FindingPublishingFrequency = Shapes::StringShape.new(name: 'FindingPublishingFrequency')
    FindingStatisticsSortAttributeName = Shapes::StringShape.new(name: 'FindingStatisticsSortAttributeName')
    FindingStatisticsSortCriteria = Shapes::StructureShape.new(name: 'FindingStatisticsSortCriteria')
    FindingType = Shapes::StringShape.new(name: 'FindingType')
    FindingsFilterAction = Shapes::StringShape.new(name: 'FindingsFilterAction')
    FindingsFilterListItem = Shapes::StructureShape.new(name: 'FindingsFilterListItem')
    GetAdministratorAccountRequest = Shapes::StructureShape.new(name: 'GetAdministratorAccountRequest')
    GetAdministratorAccountResponse = Shapes::StructureShape.new(name: 'GetAdministratorAccountResponse')
    GetAllowListRequest = Shapes::StructureShape.new(name: 'GetAllowListRequest')
    GetAllowListResponse = Shapes::StructureShape.new(name: 'GetAllowListResponse')
    GetAutomatedDiscoveryConfigurationRequest = Shapes::StructureShape.new(name: 'GetAutomatedDiscoveryConfigurationRequest')
    GetAutomatedDiscoveryConfigurationResponse = Shapes::StructureShape.new(name: 'GetAutomatedDiscoveryConfigurationResponse')
    GetBucketStatisticsRequest = Shapes::StructureShape.new(name: 'GetBucketStatisticsRequest')
    GetBucketStatisticsResponse = Shapes::StructureShape.new(name: 'GetBucketStatisticsResponse')
    GetClassificationExportConfigurationRequest = Shapes::StructureShape.new(name: 'GetClassificationExportConfigurationRequest')
    GetClassificationExportConfigurationResponse = Shapes::StructureShape.new(name: 'GetClassificationExportConfigurationResponse')
    GetClassificationScopeRequest = Shapes::StructureShape.new(name: 'GetClassificationScopeRequest')
    GetClassificationScopeResponse = Shapes::StructureShape.new(name: 'GetClassificationScopeResponse')
    GetCustomDataIdentifierRequest = Shapes::StructureShape.new(name: 'GetCustomDataIdentifierRequest')
    GetCustomDataIdentifierResponse = Shapes::StructureShape.new(name: 'GetCustomDataIdentifierResponse')
    GetFindingStatisticsRequest = Shapes::StructureShape.new(name: 'GetFindingStatisticsRequest')
    GetFindingStatisticsResponse = Shapes::StructureShape.new(name: 'GetFindingStatisticsResponse')
    GetFindingsFilterRequest = Shapes::StructureShape.new(name: 'GetFindingsFilterRequest')
    GetFindingsFilterResponse = Shapes::StructureShape.new(name: 'GetFindingsFilterResponse')
    GetFindingsPublicationConfigurationRequest = Shapes::StructureShape.new(name: 'GetFindingsPublicationConfigurationRequest')
    GetFindingsPublicationConfigurationResponse = Shapes::StructureShape.new(name: 'GetFindingsPublicationConfigurationResponse')
    GetFindingsRequest = Shapes::StructureShape.new(name: 'GetFindingsRequest')
    GetFindingsResponse = Shapes::StructureShape.new(name: 'GetFindingsResponse')
    GetInvitationsCountRequest = Shapes::StructureShape.new(name: 'GetInvitationsCountRequest')
    GetInvitationsCountResponse = Shapes::StructureShape.new(name: 'GetInvitationsCountResponse')
    GetMacieSessionRequest = Shapes::StructureShape.new(name: 'GetMacieSessionRequest')
    GetMacieSessionResponse = Shapes::StructureShape.new(name: 'GetMacieSessionResponse')
    GetMasterAccountRequest = Shapes::StructureShape.new(name: 'GetMasterAccountRequest')
    GetMasterAccountResponse = Shapes::StructureShape.new(name: 'GetMasterAccountResponse')
    GetMemberRequest = Shapes::StructureShape.new(name: 'GetMemberRequest')
    GetMemberResponse = Shapes::StructureShape.new(name: 'GetMemberResponse')
    GetResourceProfileRequest = Shapes::StructureShape.new(name: 'GetResourceProfileRequest')
    GetResourceProfileResponse = Shapes::StructureShape.new(name: 'GetResourceProfileResponse')
    GetRevealConfigurationRequest = Shapes::StructureShape.new(name: 'GetRevealConfigurationRequest')
    GetRevealConfigurationResponse = Shapes::StructureShape.new(name: 'GetRevealConfigurationResponse')
    GetSensitiveDataOccurrencesAvailabilityRequest = Shapes::StructureShape.new(name: 'GetSensitiveDataOccurrencesAvailabilityRequest')
    GetSensitiveDataOccurrencesAvailabilityResponse = Shapes::StructureShape.new(name: 'GetSensitiveDataOccurrencesAvailabilityResponse')
    GetSensitiveDataOccurrencesRequest = Shapes::StructureShape.new(name: 'GetSensitiveDataOccurrencesRequest')
    GetSensitiveDataOccurrencesResponse = Shapes::StructureShape.new(name: 'GetSensitiveDataOccurrencesResponse')
    GetSensitivityInspectionTemplateRequest = Shapes::StructureShape.new(name: 'GetSensitivityInspectionTemplateRequest')
    GetSensitivityInspectionTemplateResponse = Shapes::StructureShape.new(name: 'GetSensitivityInspectionTemplateResponse')
    GetUsageStatisticsRequest = Shapes::StructureShape.new(name: 'GetUsageStatisticsRequest')
    GetUsageStatisticsResponse = Shapes::StructureShape.new(name: 'GetUsageStatisticsResponse')
    GetUsageTotalsRequest = Shapes::StructureShape.new(name: 'GetUsageTotalsRequest')
    GetUsageTotalsResponse = Shapes::StructureShape.new(name: 'GetUsageTotalsResponse')
    GroupBy = Shapes::StringShape.new(name: 'GroupBy')
    GroupCount = Shapes::StructureShape.new(name: 'GroupCount')
    IamUser = Shapes::StructureShape.new(name: 'IamUser')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Invitation = Shapes::StructureShape.new(name: 'Invitation')
    IpAddressDetails = Shapes::StructureShape.new(name: 'IpAddressDetails')
    IpCity = Shapes::StructureShape.new(name: 'IpCity')
    IpCountry = Shapes::StructureShape.new(name: 'IpCountry')
    IpGeoLocation = Shapes::StructureShape.new(name: 'IpGeoLocation')
    IpOwner = Shapes::StructureShape.new(name: 'IpOwner')
    IsDefinedInJob = Shapes::StringShape.new(name: 'IsDefinedInJob')
    IsMonitoredByJob = Shapes::StringShape.new(name: 'IsMonitoredByJob')
    JobComparator = Shapes::StringShape.new(name: 'JobComparator')
    JobDetails = Shapes::StructureShape.new(name: 'JobDetails')
    JobScheduleFrequency = Shapes::StructureShape.new(name: 'JobScheduleFrequency')
    JobScopeTerm = Shapes::StructureShape.new(name: 'JobScopeTerm')
    JobScopingBlock = Shapes::StructureShape.new(name: 'JobScopingBlock')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    JobType = Shapes::StringShape.new(name: 'JobType')
    KeyValuePair = Shapes::StructureShape.new(name: 'KeyValuePair')
    KeyValuePairList = Shapes::ListShape.new(name: 'KeyValuePairList')
    LastRunErrorStatus = Shapes::StructureShape.new(name: 'LastRunErrorStatus')
    LastRunErrorStatusCode = Shapes::StringShape.new(name: 'LastRunErrorStatusCode')
    ListAllowListsRequest = Shapes::StructureShape.new(name: 'ListAllowListsRequest')
    ListAllowListsResponse = Shapes::StructureShape.new(name: 'ListAllowListsResponse')
    ListClassificationJobsRequest = Shapes::StructureShape.new(name: 'ListClassificationJobsRequest')
    ListClassificationJobsResponse = Shapes::StructureShape.new(name: 'ListClassificationJobsResponse')
    ListClassificationScopesRequest = Shapes::StructureShape.new(name: 'ListClassificationScopesRequest')
    ListClassificationScopesResponse = Shapes::StructureShape.new(name: 'ListClassificationScopesResponse')
    ListCustomDataIdentifiersRequest = Shapes::StructureShape.new(name: 'ListCustomDataIdentifiersRequest')
    ListCustomDataIdentifiersResponse = Shapes::StructureShape.new(name: 'ListCustomDataIdentifiersResponse')
    ListFindingsFiltersRequest = Shapes::StructureShape.new(name: 'ListFindingsFiltersRequest')
    ListFindingsFiltersResponse = Shapes::StructureShape.new(name: 'ListFindingsFiltersResponse')
    ListFindingsRequest = Shapes::StructureShape.new(name: 'ListFindingsRequest')
    ListFindingsResponse = Shapes::StructureShape.new(name: 'ListFindingsResponse')
    ListInvitationsRequest = Shapes::StructureShape.new(name: 'ListInvitationsRequest')
    ListInvitationsResponse = Shapes::StructureShape.new(name: 'ListInvitationsResponse')
    ListJobsFilterCriteria = Shapes::StructureShape.new(name: 'ListJobsFilterCriteria')
    ListJobsFilterKey = Shapes::StringShape.new(name: 'ListJobsFilterKey')
    ListJobsFilterTerm = Shapes::StructureShape.new(name: 'ListJobsFilterTerm')
    ListJobsSortAttributeName = Shapes::StringShape.new(name: 'ListJobsSortAttributeName')
    ListJobsSortCriteria = Shapes::StructureShape.new(name: 'ListJobsSortCriteria')
    ListManagedDataIdentifiersRequest = Shapes::StructureShape.new(name: 'ListManagedDataIdentifiersRequest')
    ListManagedDataIdentifiersResponse = Shapes::StructureShape.new(name: 'ListManagedDataIdentifiersResponse')
    ListMembersRequest = Shapes::StructureShape.new(name: 'ListMembersRequest')
    ListMembersResponse = Shapes::StructureShape.new(name: 'ListMembersResponse')
    ListOrganizationAdminAccountsRequest = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsRequest')
    ListOrganizationAdminAccountsResponse = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsResponse')
    ListResourceProfileArtifactsRequest = Shapes::StructureShape.new(name: 'ListResourceProfileArtifactsRequest')
    ListResourceProfileArtifactsResponse = Shapes::StructureShape.new(name: 'ListResourceProfileArtifactsResponse')
    ListResourceProfileDetectionsRequest = Shapes::StructureShape.new(name: 'ListResourceProfileDetectionsRequest')
    ListResourceProfileDetectionsResponse = Shapes::StructureShape.new(name: 'ListResourceProfileDetectionsResponse')
    ListSensitivityInspectionTemplatesRequest = Shapes::StructureShape.new(name: 'ListSensitivityInspectionTemplatesRequest')
    ListSensitivityInspectionTemplatesResponse = Shapes::StructureShape.new(name: 'ListSensitivityInspectionTemplatesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MacieStatus = Shapes::StringShape.new(name: 'MacieStatus')
    ManagedDataIdentifierSelector = Shapes::StringShape.new(name: 'ManagedDataIdentifierSelector')
    ManagedDataIdentifierSummary = Shapes::StructureShape.new(name: 'ManagedDataIdentifierSummary')
    MatchingBucket = Shapes::StructureShape.new(name: 'MatchingBucket')
    MatchingResource = Shapes::StructureShape.new(name: 'MatchingResource')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Member = Shapes::StructureShape.new(name: 'Member')
    MonthlySchedule = Shapes::StructureShape.new(name: 'MonthlySchedule')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ObjectCountByEncryptionType = Shapes::StructureShape.new(name: 'ObjectCountByEncryptionType')
    ObjectLevelStatistics = Shapes::StructureShape.new(name: 'ObjectLevelStatistics')
    Occurrences = Shapes::StructureShape.new(name: 'Occurrences')
    OrderBy = Shapes::StringShape.new(name: 'OrderBy')
    OriginType = Shapes::StringShape.new(name: 'OriginType')
    Page = Shapes::StructureShape.new(name: 'Page')
    Pages = Shapes::ListShape.new(name: 'Pages')
    PolicyDetails = Shapes::StructureShape.new(name: 'PolicyDetails')
    PutClassificationExportConfigurationRequest = Shapes::StructureShape.new(name: 'PutClassificationExportConfigurationRequest')
    PutClassificationExportConfigurationResponse = Shapes::StructureShape.new(name: 'PutClassificationExportConfigurationResponse')
    PutFindingsPublicationConfigurationRequest = Shapes::StructureShape.new(name: 'PutFindingsPublicationConfigurationRequest')
    PutFindingsPublicationConfigurationResponse = Shapes::StructureShape.new(name: 'PutFindingsPublicationConfigurationResponse')
    Range = Shapes::StructureShape.new(name: 'Range')
    Ranges = Shapes::ListShape.new(name: 'Ranges')
    Record = Shapes::StructureShape.new(name: 'Record')
    Records = Shapes::ListShape.new(name: 'Records')
    RelationshipStatus = Shapes::StringShape.new(name: 'RelationshipStatus')
    ReplicationDetails = Shapes::StructureShape.new(name: 'ReplicationDetails')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceProfileArtifact = Shapes::StructureShape.new(name: 'ResourceProfileArtifact')
    ResourceStatistics = Shapes::StructureShape.new(name: 'ResourceStatistics')
    ResourcesAffected = Shapes::StructureShape.new(name: 'ResourcesAffected')
    RevealConfiguration = Shapes::StructureShape.new(name: 'RevealConfiguration')
    RevealRequestStatus = Shapes::StringShape.new(name: 'RevealRequestStatus')
    RevealStatus = Shapes::StringShape.new(name: 'RevealStatus')
    S3Bucket = Shapes::StructureShape.new(name: 'S3Bucket')
    S3BucketCriteriaForJob = Shapes::StructureShape.new(name: 'S3BucketCriteriaForJob')
    S3BucketDefinitionForJob = Shapes::StructureShape.new(name: 'S3BucketDefinitionForJob')
    S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
    S3BucketOwner = Shapes::StructureShape.new(name: 'S3BucketOwner')
    S3ClassificationScope = Shapes::StructureShape.new(name: 'S3ClassificationScope')
    S3ClassificationScopeExclusion = Shapes::StructureShape.new(name: 'S3ClassificationScopeExclusion')
    S3ClassificationScopeExclusionUpdate = Shapes::StructureShape.new(name: 'S3ClassificationScopeExclusionUpdate')
    S3ClassificationScopeUpdate = Shapes::StructureShape.new(name: 'S3ClassificationScopeUpdate')
    S3Destination = Shapes::StructureShape.new(name: 'S3Destination')
    S3JobDefinition = Shapes::StructureShape.new(name: 'S3JobDefinition')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    S3WordsList = Shapes::StructureShape.new(name: 'S3WordsList')
    ScopeFilterKey = Shapes::StringShape.new(name: 'ScopeFilterKey')
    Scoping = Shapes::StructureShape.new(name: 'Scoping')
    SearchResourcesBucketCriteria = Shapes::StructureShape.new(name: 'SearchResourcesBucketCriteria')
    SearchResourcesComparator = Shapes::StringShape.new(name: 'SearchResourcesComparator')
    SearchResourcesCriteria = Shapes::StructureShape.new(name: 'SearchResourcesCriteria')
    SearchResourcesCriteriaBlock = Shapes::StructureShape.new(name: 'SearchResourcesCriteriaBlock')
    SearchResourcesRequest = Shapes::StructureShape.new(name: 'SearchResourcesRequest')
    SearchResourcesResponse = Shapes::StructureShape.new(name: 'SearchResourcesResponse')
    SearchResourcesSimpleCriterion = Shapes::StructureShape.new(name: 'SearchResourcesSimpleCriterion')
    SearchResourcesSimpleCriterionKey = Shapes::StringShape.new(name: 'SearchResourcesSimpleCriterionKey')
    SearchResourcesSortAttributeName = Shapes::StringShape.new(name: 'SearchResourcesSortAttributeName')
    SearchResourcesSortCriteria = Shapes::StructureShape.new(name: 'SearchResourcesSortCriteria')
    SearchResourcesTagCriterion = Shapes::StructureShape.new(name: 'SearchResourcesTagCriterion')
    SearchResourcesTagCriterionPair = Shapes::StructureShape.new(name: 'SearchResourcesTagCriterionPair')
    SecurityHubConfiguration = Shapes::StructureShape.new(name: 'SecurityHubConfiguration')
    SensitiveData = Shapes::ListShape.new(name: 'SensitiveData')
    SensitiveDataItem = Shapes::StructureShape.new(name: 'SensitiveDataItem')
    SensitiveDataItemCategory = Shapes::StringShape.new(name: 'SensitiveDataItemCategory')
    SensitiveDataOccurrences = Shapes::MapShape.new(name: 'SensitiveDataOccurrences')
    SensitivityAggregations = Shapes::StructureShape.new(name: 'SensitivityAggregations')
    SensitivityInspectionTemplateExcludes = Shapes::StructureShape.new(name: 'SensitivityInspectionTemplateExcludes')
    SensitivityInspectionTemplateId = Shapes::StringShape.new(name: 'SensitivityInspectionTemplateId')
    SensitivityInspectionTemplateIncludes = Shapes::StructureShape.new(name: 'SensitivityInspectionTemplateIncludes')
    SensitivityInspectionTemplatesEntry = Shapes::StructureShape.new(name: 'SensitivityInspectionTemplatesEntry')
    ServerSideEncryption = Shapes::StructureShape.new(name: 'ServerSideEncryption')
    ServiceLimit = Shapes::StructureShape.new(name: 'ServiceLimit')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionContext = Shapes::StructureShape.new(name: 'SessionContext')
    SessionContextAttributes = Shapes::StructureShape.new(name: 'SessionContextAttributes')
    SessionIssuer = Shapes::StructureShape.new(name: 'SessionIssuer')
    Severity = Shapes::StructureShape.new(name: 'Severity')
    SeverityDescription = Shapes::StringShape.new(name: 'SeverityDescription')
    SeverityLevel = Shapes::StructureShape.new(name: 'SeverityLevel')
    SeverityLevelList = Shapes::ListShape.new(name: 'SeverityLevelList')
    SharedAccess = Shapes::StringShape.new(name: 'SharedAccess')
    SimpleCriterionForJob = Shapes::StructureShape.new(name: 'SimpleCriterionForJob')
    SimpleCriterionKeyForJob = Shapes::StringShape.new(name: 'SimpleCriterionKeyForJob')
    SimpleScopeTerm = Shapes::StructureShape.new(name: 'SimpleScopeTerm')
    SortCriteria = Shapes::StructureShape.new(name: 'SortCriteria')
    Statistics = Shapes::StructureShape.new(name: 'Statistics')
    StorageClass = Shapes::StringShape.new(name: 'StorageClass')
    SuppressDataIdentifier = Shapes::StructureShape.new(name: 'SuppressDataIdentifier')
    TagCriterionForJob = Shapes::StructureShape.new(name: 'TagCriterionForJob')
    TagCriterionPairForJob = Shapes::StructureShape.new(name: 'TagCriterionPairForJob')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagScopeTerm = Shapes::StructureShape.new(name: 'TagScopeTerm')
    TagTarget = Shapes::StringShape.new(name: 'TagTarget')
    TagValuePair = Shapes::StructureShape.new(name: 'TagValuePair')
    TestCustomDataIdentifierRequest = Shapes::StructureShape.new(name: 'TestCustomDataIdentifierRequest')
    TestCustomDataIdentifierResponse = Shapes::StructureShape.new(name: 'TestCustomDataIdentifierResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeRange = Shapes::StringShape.new(name: 'TimeRange')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    Type = Shapes::StringShape.new(name: 'Type')
    UnavailabilityReasonCode = Shapes::StringShape.new(name: 'UnavailabilityReasonCode')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UnprocessableEntityException = Shapes::StructureShape.new(name: 'UnprocessableEntityException')
    UnprocessedAccount = Shapes::StructureShape.new(name: 'UnprocessedAccount')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAllowListRequest = Shapes::StructureShape.new(name: 'UpdateAllowListRequest')
    UpdateAllowListResponse = Shapes::StructureShape.new(name: 'UpdateAllowListResponse')
    UpdateAutomatedDiscoveryConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateAutomatedDiscoveryConfigurationRequest')
    UpdateAutomatedDiscoveryConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateAutomatedDiscoveryConfigurationResponse')
    UpdateClassificationJobRequest = Shapes::StructureShape.new(name: 'UpdateClassificationJobRequest')
    UpdateClassificationJobResponse = Shapes::StructureShape.new(name: 'UpdateClassificationJobResponse')
    UpdateClassificationScopeRequest = Shapes::StructureShape.new(name: 'UpdateClassificationScopeRequest')
    UpdateClassificationScopeResponse = Shapes::StructureShape.new(name: 'UpdateClassificationScopeResponse')
    UpdateFindingsFilterRequest = Shapes::StructureShape.new(name: 'UpdateFindingsFilterRequest')
    UpdateFindingsFilterResponse = Shapes::StructureShape.new(name: 'UpdateFindingsFilterResponse')
    UpdateMacieSessionRequest = Shapes::StructureShape.new(name: 'UpdateMacieSessionRequest')
    UpdateMacieSessionResponse = Shapes::StructureShape.new(name: 'UpdateMacieSessionResponse')
    UpdateMemberSessionRequest = Shapes::StructureShape.new(name: 'UpdateMemberSessionRequest')
    UpdateMemberSessionResponse = Shapes::StructureShape.new(name: 'UpdateMemberSessionResponse')
    UpdateOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationRequest')
    UpdateOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationResponse')
    UpdateResourceProfileDetectionsRequest = Shapes::StructureShape.new(name: 'UpdateResourceProfileDetectionsRequest')
    UpdateResourceProfileDetectionsResponse = Shapes::StructureShape.new(name: 'UpdateResourceProfileDetectionsResponse')
    UpdateResourceProfileRequest = Shapes::StructureShape.new(name: 'UpdateResourceProfileRequest')
    UpdateResourceProfileResponse = Shapes::StructureShape.new(name: 'UpdateResourceProfileResponse')
    UpdateRevealConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateRevealConfigurationRequest')
    UpdateRevealConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateRevealConfigurationResponse')
    UpdateSensitivityInspectionTemplateRequest = Shapes::StructureShape.new(name: 'UpdateSensitivityInspectionTemplateRequest')
    UpdateSensitivityInspectionTemplateResponse = Shapes::StructureShape.new(name: 'UpdateSensitivityInspectionTemplateResponse')
    UsageByAccount = Shapes::StructureShape.new(name: 'UsageByAccount')
    UsageRecord = Shapes::StructureShape.new(name: 'UsageRecord')
    UsageStatisticsFilter = Shapes::StructureShape.new(name: 'UsageStatisticsFilter')
    UsageStatisticsFilterComparator = Shapes::StringShape.new(name: 'UsageStatisticsFilterComparator')
    UsageStatisticsFilterKey = Shapes::StringShape.new(name: 'UsageStatisticsFilterKey')
    UsageStatisticsSortBy = Shapes::StructureShape.new(name: 'UsageStatisticsSortBy')
    UsageStatisticsSortKey = Shapes::StringShape.new(name: 'UsageStatisticsSortKey')
    UsageTotal = Shapes::StructureShape.new(name: 'UsageTotal')
    UsageType = Shapes::StringShape.new(name: 'UsageType')
    UserIdentity = Shapes::StructureShape.new(name: 'UserIdentity')
    UserIdentityRoot = Shapes::StructureShape.new(name: 'UserIdentityRoot')
    UserIdentityType = Shapes::StringShape.new(name: 'UserIdentityType')
    UserPausedDetails = Shapes::StructureShape.new(name: 'UserPausedDetails')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WeeklySchedule = Shapes::StructureShape.new(name: 'WeeklySchedule')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOfAdminAccount = Shapes::ListShape.new(name: '__listOfAdminAccount')
    __listOfAllowListSummary = Shapes::ListShape.new(name: '__listOfAllowListSummary')
    __listOfBatchGetCustomDataIdentifierSummary = Shapes::ListShape.new(name: '__listOfBatchGetCustomDataIdentifierSummary')
    __listOfBucketMetadata = Shapes::ListShape.new(name: '__listOfBucketMetadata')
    __listOfClassificationScopeSummary = Shapes::ListShape.new(name: '__listOfClassificationScopeSummary')
    __listOfCriteriaForJob = Shapes::ListShape.new(name: '__listOfCriteriaForJob')
    __listOfCustomDataIdentifierSummary = Shapes::ListShape.new(name: '__listOfCustomDataIdentifierSummary')
    __listOfDetectedDataDetails = Shapes::ListShape.new(name: '__listOfDetectedDataDetails')
    __listOfDetection = Shapes::ListShape.new(name: '__listOfDetection')
    __listOfFinding = Shapes::ListShape.new(name: '__listOfFinding')
    __listOfFindingType = Shapes::ListShape.new(name: '__listOfFindingType')
    __listOfFindingsFilterListItem = Shapes::ListShape.new(name: '__listOfFindingsFilterListItem')
    __listOfGroupCount = Shapes::ListShape.new(name: '__listOfGroupCount')
    __listOfInvitation = Shapes::ListShape.new(name: '__listOfInvitation')
    __listOfJobScopeTerm = Shapes::ListShape.new(name: '__listOfJobScopeTerm')
    __listOfJobSummary = Shapes::ListShape.new(name: '__listOfJobSummary')
    __listOfKeyValuePair = Shapes::ListShape.new(name: '__listOfKeyValuePair')
    __listOfListJobsFilterTerm = Shapes::ListShape.new(name: '__listOfListJobsFilterTerm')
    __listOfManagedDataIdentifierSummary = Shapes::ListShape.new(name: '__listOfManagedDataIdentifierSummary')
    __listOfMatchingResource = Shapes::ListShape.new(name: '__listOfMatchingResource')
    __listOfMember = Shapes::ListShape.new(name: '__listOfMember')
    __listOfResourceProfileArtifact = Shapes::ListShape.new(name: '__listOfResourceProfileArtifact')
    __listOfS3BucketDefinitionForJob = Shapes::ListShape.new(name: '__listOfS3BucketDefinitionForJob')
    __listOfS3BucketName = Shapes::ListShape.new(name: '__listOfS3BucketName')
    __listOfSearchResourcesCriteria = Shapes::ListShape.new(name: '__listOfSearchResourcesCriteria')
    __listOfSearchResourcesTagCriterionPair = Shapes::ListShape.new(name: '__listOfSearchResourcesTagCriterionPair')
    __listOfSensitivityInspectionTemplatesEntry = Shapes::ListShape.new(name: '__listOfSensitivityInspectionTemplatesEntry')
    __listOfSuppressDataIdentifier = Shapes::ListShape.new(name: '__listOfSuppressDataIdentifier')
    __listOfTagCriterionPairForJob = Shapes::ListShape.new(name: '__listOfTagCriterionPairForJob')
    __listOfTagValuePair = Shapes::ListShape.new(name: '__listOfTagValuePair')
    __listOfUnavailabilityReasonCode = Shapes::ListShape.new(name: '__listOfUnavailabilityReasonCode')
    __listOfUnprocessedAccount = Shapes::ListShape.new(name: '__listOfUnprocessedAccount')
    __listOfUsageByAccount = Shapes::ListShape.new(name: '__listOfUsageByAccount')
    __listOfUsageRecord = Shapes::ListShape.new(name: '__listOfUsageRecord')
    __listOfUsageStatisticsFilter = Shapes::ListShape.new(name: '__listOfUsageStatisticsFilter')
    __listOfUsageTotal = Shapes::ListShape.new(name: '__listOfUsageTotal')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __stringMin1Max1024PatternSS = Shapes::StringShape.new(name: '__stringMin1Max1024PatternSS')
    __stringMin1Max128 = Shapes::StringShape.new(name: '__stringMin1Max128')
    __stringMin1Max128Pattern = Shapes::StringShape.new(name: '__stringMin1Max128Pattern')
    __stringMin1Max2048 = Shapes::StringShape.new(name: '__stringMin1Max2048')
    __stringMin1Max512PatternSS = Shapes::StringShape.new(name: '__stringMin1Max512PatternSS')
    __stringMin22Max22PatternAZ0922 = Shapes::StringShape.new(name: '__stringMin22Max22PatternAZ0922')
    __stringMin3Max255PatternAZaZ093255 = Shapes::StringShape.new(name: '__stringMin3Max255PatternAZaZ093255')
    __stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922 = Shapes::StringShape.new(name: '__stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    AcceptInvitationRequest.add_member(:administrator_account_id, Shapes::ShapeRef.new(shape: __string, location_name: "administratorAccountId"))
    AcceptInvitationRequest.add_member(:invitation_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "invitationId"))
    AcceptInvitationRequest.add_member(:master_account, Shapes::ShapeRef.new(shape: __string, location_name: "masterAccount"))
    AcceptInvitationRequest.struct_class = Types::AcceptInvitationRequest

    AcceptInvitationResponse.struct_class = Types::AcceptInvitationResponse

    AccessControlList.add_member(:allows_public_read_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "allowsPublicReadAccess"))
    AccessControlList.add_member(:allows_public_write_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "allowsPublicWriteAccess"))
    AccessControlList.struct_class = Types::AccessControlList

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountDetail.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "accountId"))
    AccountDetail.add_member(:email, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "email"))
    AccountDetail.struct_class = Types::AccountDetail

    AccountLevelPermissions.add_member(:block_public_access, Shapes::ShapeRef.new(shape: BlockPublicAccess, location_name: "blockPublicAccess"))
    AccountLevelPermissions.struct_class = Types::AccountLevelPermissions

    AdminAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    AdminAccount.add_member(:status, Shapes::ShapeRef.new(shape: AdminStatus, location_name: "status"))
    AdminAccount.struct_class = Types::AdminAccount

    AllowListCriteria.add_member(:regex, Shapes::ShapeRef.new(shape: __stringMin1Max512PatternSS, location_name: "regex"))
    AllowListCriteria.add_member(:s3_words_list, Shapes::ShapeRef.new(shape: S3WordsList, location_name: "s3WordsList"))
    AllowListCriteria.struct_class = Types::AllowListCriteria

    AllowListStatus.add_member(:code, Shapes::ShapeRef.new(shape: AllowListStatusCode, required: true, location_name: "code"))
    AllowListStatus.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin1Max1024PatternSS, location_name: "description"))
    AllowListStatus.struct_class = Types::AllowListStatus

    AllowListSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922, location_name: "arn"))
    AllowListSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    AllowListSummary.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin1Max512PatternSS, location_name: "description"))
    AllowListSummary.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin22Max22PatternAZ0922, location_name: "id"))
    AllowListSummary.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max128Pattern, location_name: "name"))
    AllowListSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "updatedAt"))
    AllowListSummary.struct_class = Types::AllowListSummary

    ApiCallDetails.add_member(:api, Shapes::ShapeRef.new(shape: __string, location_name: "api"))
    ApiCallDetails.add_member(:api_service_name, Shapes::ShapeRef.new(shape: __string, location_name: "apiServiceName"))
    ApiCallDetails.add_member(:first_seen, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "firstSeen"))
    ApiCallDetails.add_member(:last_seen, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastSeen"))
    ApiCallDetails.struct_class = Types::ApiCallDetails

    AssumedRole.add_member(:access_key_id, Shapes::ShapeRef.new(shape: __string, location_name: "accessKeyId"))
    AssumedRole.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    AssumedRole.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    AssumedRole.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, location_name: "principalId"))
    AssumedRole.add_member(:session_context, Shapes::ShapeRef.new(shape: SessionContext, location_name: "sessionContext"))
    AssumedRole.struct_class = Types::AssumedRole

    AwsAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    AwsAccount.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, location_name: "principalId"))
    AwsAccount.struct_class = Types::AwsAccount

    AwsService.add_member(:invoked_by, Shapes::ShapeRef.new(shape: __string, location_name: "invokedBy"))
    AwsService.struct_class = Types::AwsService

    BatchGetCustomDataIdentifierSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    BatchGetCustomDataIdentifierSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    BatchGetCustomDataIdentifierSummary.add_member(:deleted, Shapes::ShapeRef.new(shape: __boolean, location_name: "deleted"))
    BatchGetCustomDataIdentifierSummary.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    BatchGetCustomDataIdentifierSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    BatchGetCustomDataIdentifierSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    BatchGetCustomDataIdentifierSummary.struct_class = Types::BatchGetCustomDataIdentifierSummary

    BatchGetCustomDataIdentifiersRequest.add_member(:ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "ids"))
    BatchGetCustomDataIdentifiersRequest.struct_class = Types::BatchGetCustomDataIdentifiersRequest

    BatchGetCustomDataIdentifiersResponse.add_member(:custom_data_identifiers, Shapes::ShapeRef.new(shape: __listOfBatchGetCustomDataIdentifierSummary, location_name: "customDataIdentifiers"))
    BatchGetCustomDataIdentifiersResponse.add_member(:not_found_identifier_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "notFoundIdentifierIds"))
    BatchGetCustomDataIdentifiersResponse.struct_class = Types::BatchGetCustomDataIdentifiersResponse

    BlockPublicAccess.add_member(:block_public_acls, Shapes::ShapeRef.new(shape: __boolean, location_name: "blockPublicAcls"))
    BlockPublicAccess.add_member(:block_public_policy, Shapes::ShapeRef.new(shape: __boolean, location_name: "blockPublicPolicy"))
    BlockPublicAccess.add_member(:ignore_public_acls, Shapes::ShapeRef.new(shape: __boolean, location_name: "ignorePublicAcls"))
    BlockPublicAccess.add_member(:restrict_public_buckets, Shapes::ShapeRef.new(shape: __boolean, location_name: "restrictPublicBuckets"))
    BlockPublicAccess.struct_class = Types::BlockPublicAccess

    BucketCountByEffectivePermission.add_member(:publicly_accessible, Shapes::ShapeRef.new(shape: __long, location_name: "publiclyAccessible"))
    BucketCountByEffectivePermission.add_member(:publicly_readable, Shapes::ShapeRef.new(shape: __long, location_name: "publiclyReadable"))
    BucketCountByEffectivePermission.add_member(:publicly_writable, Shapes::ShapeRef.new(shape: __long, location_name: "publiclyWritable"))
    BucketCountByEffectivePermission.add_member(:unknown, Shapes::ShapeRef.new(shape: __long, location_name: "unknown"))
    BucketCountByEffectivePermission.struct_class = Types::BucketCountByEffectivePermission

    BucketCountByEncryptionType.add_member(:kms_managed, Shapes::ShapeRef.new(shape: __long, location_name: "kmsManaged"))
    BucketCountByEncryptionType.add_member(:s3_managed, Shapes::ShapeRef.new(shape: __long, location_name: "s3Managed"))
    BucketCountByEncryptionType.add_member(:unencrypted, Shapes::ShapeRef.new(shape: __long, location_name: "unencrypted"))
    BucketCountByEncryptionType.add_member(:unknown, Shapes::ShapeRef.new(shape: __long, location_name: "unknown"))
    BucketCountByEncryptionType.struct_class = Types::BucketCountByEncryptionType

    BucketCountBySharedAccessType.add_member(:external, Shapes::ShapeRef.new(shape: __long, location_name: "external"))
    BucketCountBySharedAccessType.add_member(:internal, Shapes::ShapeRef.new(shape: __long, location_name: "internal"))
    BucketCountBySharedAccessType.add_member(:not_shared, Shapes::ShapeRef.new(shape: __long, location_name: "notShared"))
    BucketCountBySharedAccessType.add_member(:unknown, Shapes::ShapeRef.new(shape: __long, location_name: "unknown"))
    BucketCountBySharedAccessType.struct_class = Types::BucketCountBySharedAccessType

    BucketCountPolicyAllowsUnencryptedObjectUploads.add_member(:allows_unencrypted_object_uploads, Shapes::ShapeRef.new(shape: __long, location_name: "allowsUnencryptedObjectUploads"))
    BucketCountPolicyAllowsUnencryptedObjectUploads.add_member(:denies_unencrypted_object_uploads, Shapes::ShapeRef.new(shape: __long, location_name: "deniesUnencryptedObjectUploads"))
    BucketCountPolicyAllowsUnencryptedObjectUploads.add_member(:unknown, Shapes::ShapeRef.new(shape: __long, location_name: "unknown"))
    BucketCountPolicyAllowsUnencryptedObjectUploads.struct_class = Types::BucketCountPolicyAllowsUnencryptedObjectUploads

    BucketCriteria.key = Shapes::ShapeRef.new(shape: __string)
    BucketCriteria.value = Shapes::ShapeRef.new(shape: BucketCriteriaAdditionalProperties)

    BucketCriteriaAdditionalProperties.add_member(:eq, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "eq"))
    BucketCriteriaAdditionalProperties.add_member(:gt, Shapes::ShapeRef.new(shape: __long, location_name: "gt"))
    BucketCriteriaAdditionalProperties.add_member(:gte, Shapes::ShapeRef.new(shape: __long, location_name: "gte"))
    BucketCriteriaAdditionalProperties.add_member(:lt, Shapes::ShapeRef.new(shape: __long, location_name: "lt"))
    BucketCriteriaAdditionalProperties.add_member(:lte, Shapes::ShapeRef.new(shape: __long, location_name: "lte"))
    BucketCriteriaAdditionalProperties.add_member(:neq, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "neq"))
    BucketCriteriaAdditionalProperties.add_member(:prefix, Shapes::ShapeRef.new(shape: __string, location_name: "prefix"))
    BucketCriteriaAdditionalProperties.struct_class = Types::BucketCriteriaAdditionalProperties

    BucketLevelPermissions.add_member(:access_control_list, Shapes::ShapeRef.new(shape: AccessControlList, location_name: "accessControlList"))
    BucketLevelPermissions.add_member(:block_public_access, Shapes::ShapeRef.new(shape: BlockPublicAccess, location_name: "blockPublicAccess"))
    BucketLevelPermissions.add_member(:bucket_policy, Shapes::ShapeRef.new(shape: BucketPolicy, location_name: "bucketPolicy"))
    BucketLevelPermissions.struct_class = Types::BucketLevelPermissions

    BucketMetadata.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    BucketMetadata.add_member(:allows_unencrypted_object_uploads, Shapes::ShapeRef.new(shape: AllowsUnencryptedObjectUploads, location_name: "allowsUnencryptedObjectUploads"))
    BucketMetadata.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bucketArn"))
    BucketMetadata.add_member(:bucket_created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "bucketCreatedAt"))
    BucketMetadata.add_member(:bucket_name, Shapes::ShapeRef.new(shape: __string, location_name: "bucketName"))
    BucketMetadata.add_member(:classifiable_object_count, Shapes::ShapeRef.new(shape: __long, location_name: "classifiableObjectCount"))
    BucketMetadata.add_member(:classifiable_size_in_bytes, Shapes::ShapeRef.new(shape: __long, location_name: "classifiableSizeInBytes"))
    BucketMetadata.add_member(:error_code, Shapes::ShapeRef.new(shape: BucketMetadataErrorCode, location_name: "errorCode"))
    BucketMetadata.add_member(:error_message, Shapes::ShapeRef.new(shape: __string, location_name: "errorMessage"))
    BucketMetadata.add_member(:job_details, Shapes::ShapeRef.new(shape: JobDetails, location_name: "jobDetails"))
    BucketMetadata.add_member(:last_automated_discovery_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastAutomatedDiscoveryTime"))
    BucketMetadata.add_member(:last_updated, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastUpdated"))
    BucketMetadata.add_member(:object_count, Shapes::ShapeRef.new(shape: __long, location_name: "objectCount"))
    BucketMetadata.add_member(:object_count_by_encryption_type, Shapes::ShapeRef.new(shape: ObjectCountByEncryptionType, location_name: "objectCountByEncryptionType"))
    BucketMetadata.add_member(:public_access, Shapes::ShapeRef.new(shape: BucketPublicAccess, location_name: "publicAccess"))
    BucketMetadata.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    BucketMetadata.add_member(:replication_details, Shapes::ShapeRef.new(shape: ReplicationDetails, location_name: "replicationDetails"))
    BucketMetadata.add_member(:sensitivity_score, Shapes::ShapeRef.new(shape: __integer, location_name: "sensitivityScore"))
    BucketMetadata.add_member(:server_side_encryption, Shapes::ShapeRef.new(shape: BucketServerSideEncryption, location_name: "serverSideEncryption"))
    BucketMetadata.add_member(:shared_access, Shapes::ShapeRef.new(shape: SharedAccess, location_name: "sharedAccess"))
    BucketMetadata.add_member(:size_in_bytes, Shapes::ShapeRef.new(shape: __long, location_name: "sizeInBytes"))
    BucketMetadata.add_member(:size_in_bytes_compressed, Shapes::ShapeRef.new(shape: __long, location_name: "sizeInBytesCompressed"))
    BucketMetadata.add_member(:tags, Shapes::ShapeRef.new(shape: __listOfKeyValuePair, location_name: "tags"))
    BucketMetadata.add_member(:unclassifiable_object_count, Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: "unclassifiableObjectCount"))
    BucketMetadata.add_member(:unclassifiable_object_size_in_bytes, Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: "unclassifiableObjectSizeInBytes"))
    BucketMetadata.add_member(:versioning, Shapes::ShapeRef.new(shape: __boolean, location_name: "versioning"))
    BucketMetadata.struct_class = Types::BucketMetadata

    BucketPermissionConfiguration.add_member(:account_level_permissions, Shapes::ShapeRef.new(shape: AccountLevelPermissions, location_name: "accountLevelPermissions"))
    BucketPermissionConfiguration.add_member(:bucket_level_permissions, Shapes::ShapeRef.new(shape: BucketLevelPermissions, location_name: "bucketLevelPermissions"))
    BucketPermissionConfiguration.struct_class = Types::BucketPermissionConfiguration

    BucketPolicy.add_member(:allows_public_read_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "allowsPublicReadAccess"))
    BucketPolicy.add_member(:allows_public_write_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "allowsPublicWriteAccess"))
    BucketPolicy.struct_class = Types::BucketPolicy

    BucketPublicAccess.add_member(:effective_permission, Shapes::ShapeRef.new(shape: EffectivePermission, location_name: "effectivePermission"))
    BucketPublicAccess.add_member(:permission_configuration, Shapes::ShapeRef.new(shape: BucketPermissionConfiguration, location_name: "permissionConfiguration"))
    BucketPublicAccess.struct_class = Types::BucketPublicAccess

    BucketServerSideEncryption.add_member(:kms_master_key_id, Shapes::ShapeRef.new(shape: __string, location_name: "kmsMasterKeyId"))
    BucketServerSideEncryption.add_member(:type, Shapes::ShapeRef.new(shape: Type, location_name: "type"))
    BucketServerSideEncryption.struct_class = Types::BucketServerSideEncryption

    BucketSortCriteria.add_member(:attribute_name, Shapes::ShapeRef.new(shape: __string, location_name: "attributeName"))
    BucketSortCriteria.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    BucketSortCriteria.struct_class = Types::BucketSortCriteria

    BucketStatisticsBySensitivity.add_member(:classification_error, Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: "classificationError"))
    BucketStatisticsBySensitivity.add_member(:not_classified, Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: "notClassified"))
    BucketStatisticsBySensitivity.add_member(:not_sensitive, Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: "notSensitive"))
    BucketStatisticsBySensitivity.add_member(:sensitive, Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: "sensitive"))
    BucketStatisticsBySensitivity.struct_class = Types::BucketStatisticsBySensitivity

    Cell.add_member(:cell_reference, Shapes::ShapeRef.new(shape: __string, location_name: "cellReference"))
    Cell.add_member(:column, Shapes::ShapeRef.new(shape: __long, location_name: "column"))
    Cell.add_member(:column_name, Shapes::ShapeRef.new(shape: __string, location_name: "columnName"))
    Cell.add_member(:row, Shapes::ShapeRef.new(shape: __long, location_name: "row"))
    Cell.struct_class = Types::Cell

    Cells.member = Shapes::ShapeRef.new(shape: Cell)

    ClassificationDetails.add_member(:detailed_results_location, Shapes::ShapeRef.new(shape: __string, location_name: "detailedResultsLocation"))
    ClassificationDetails.add_member(:job_arn, Shapes::ShapeRef.new(shape: __string, location_name: "jobArn"))
    ClassificationDetails.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    ClassificationDetails.add_member(:origin_type, Shapes::ShapeRef.new(shape: OriginType, location_name: "originType"))
    ClassificationDetails.add_member(:result, Shapes::ShapeRef.new(shape: ClassificationResult, location_name: "result"))
    ClassificationDetails.struct_class = Types::ClassificationDetails

    ClassificationExportConfiguration.add_member(:s3_destination, Shapes::ShapeRef.new(shape: S3Destination, location_name: "s3Destination"))
    ClassificationExportConfiguration.struct_class = Types::ClassificationExportConfiguration

    ClassificationResult.add_member(:additional_occurrences, Shapes::ShapeRef.new(shape: __boolean, location_name: "additionalOccurrences"))
    ClassificationResult.add_member(:custom_data_identifiers, Shapes::ShapeRef.new(shape: CustomDataIdentifiers, location_name: "customDataIdentifiers"))
    ClassificationResult.add_member(:mime_type, Shapes::ShapeRef.new(shape: __string, location_name: "mimeType"))
    ClassificationResult.add_member(:sensitive_data, Shapes::ShapeRef.new(shape: SensitiveData, location_name: "sensitiveData"))
    ClassificationResult.add_member(:size_classified, Shapes::ShapeRef.new(shape: __long, location_name: "sizeClassified"))
    ClassificationResult.add_member(:status, Shapes::ShapeRef.new(shape: ClassificationResultStatus, location_name: "status"))
    ClassificationResult.struct_class = Types::ClassificationResult

    ClassificationResultStatus.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    ClassificationResultStatus.add_member(:reason, Shapes::ShapeRef.new(shape: __string, location_name: "reason"))
    ClassificationResultStatus.struct_class = Types::ClassificationResultStatus

    ClassificationScopeSummary.add_member(:id, Shapes::ShapeRef.new(shape: ClassificationScopeId, location_name: "id"))
    ClassificationScopeSummary.add_member(:name, Shapes::ShapeRef.new(shape: ClassificationScopeName, location_name: "name"))
    ClassificationScopeSummary.struct_class = Types::ClassificationScopeSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateAllowListRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateAllowListRequest.add_member(:criteria, Shapes::ShapeRef.new(shape: AllowListCriteria, required: true, location_name: "criteria"))
    CreateAllowListRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin1Max512PatternSS, location_name: "description"))
    CreateAllowListRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max128Pattern, required: true, location_name: "name"))
    CreateAllowListRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateAllowListRequest.struct_class = Types::CreateAllowListRequest

    CreateAllowListResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922, location_name: "arn"))
    CreateAllowListResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin22Max22PatternAZ0922, location_name: "id"))
    CreateAllowListResponse.struct_class = Types::CreateAllowListResponse

    CreateClassificationJobRequest.add_member(:allow_list_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "allowListIds"))
    CreateClassificationJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateClassificationJobRequest.add_member(:custom_data_identifier_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "customDataIdentifierIds"))
    CreateClassificationJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateClassificationJobRequest.add_member(:initial_run, Shapes::ShapeRef.new(shape: __boolean, location_name: "initialRun"))
    CreateClassificationJobRequest.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, required: true, location_name: "jobType"))
    CreateClassificationJobRequest.add_member(:managed_data_identifier_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "managedDataIdentifierIds"))
    CreateClassificationJobRequest.add_member(:managed_data_identifier_selector, Shapes::ShapeRef.new(shape: ManagedDataIdentifierSelector, location_name: "managedDataIdentifierSelector"))
    CreateClassificationJobRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateClassificationJobRequest.add_member(:s3_job_definition, Shapes::ShapeRef.new(shape: S3JobDefinition, required: true, location_name: "s3JobDefinition"))
    CreateClassificationJobRequest.add_member(:sampling_percentage, Shapes::ShapeRef.new(shape: __integer, location_name: "samplingPercentage"))
    CreateClassificationJobRequest.add_member(:schedule_frequency, Shapes::ShapeRef.new(shape: JobScheduleFrequency, location_name: "scheduleFrequency"))
    CreateClassificationJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateClassificationJobRequest.struct_class = Types::CreateClassificationJobRequest

    CreateClassificationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: __string, location_name: "jobArn"))
    CreateClassificationJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    CreateClassificationJobResponse.struct_class = Types::CreateClassificationJobResponse

    CreateCustomDataIdentifierRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __string, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateCustomDataIdentifierRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateCustomDataIdentifierRequest.add_member(:ignore_words, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "ignoreWords"))
    CreateCustomDataIdentifierRequest.add_member(:keywords, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "keywords"))
    CreateCustomDataIdentifierRequest.add_member(:maximum_match_distance, Shapes::ShapeRef.new(shape: __integer, location_name: "maximumMatchDistance"))
    CreateCustomDataIdentifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateCustomDataIdentifierRequest.add_member(:regex, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "regex"))
    CreateCustomDataIdentifierRequest.add_member(:severity_levels, Shapes::ShapeRef.new(shape: SeverityLevelList, location_name: "severityLevels"))
    CreateCustomDataIdentifierRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateCustomDataIdentifierRequest.struct_class = Types::CreateCustomDataIdentifierRequest

    CreateCustomDataIdentifierResponse.add_member(:custom_data_identifier_id, Shapes::ShapeRef.new(shape: __string, location_name: "customDataIdentifierId"))
    CreateCustomDataIdentifierResponse.struct_class = Types::CreateCustomDataIdentifierResponse

    CreateFindingsFilterRequest.add_member(:action, Shapes::ShapeRef.new(shape: FindingsFilterAction, required: true, location_name: "action"))
    CreateFindingsFilterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __string, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateFindingsFilterRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateFindingsFilterRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, required: true, location_name: "findingCriteria"))
    CreateFindingsFilterRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateFindingsFilterRequest.add_member(:position, Shapes::ShapeRef.new(shape: __integer, location_name: "position"))
    CreateFindingsFilterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateFindingsFilterRequest.struct_class = Types::CreateFindingsFilterRequest

    CreateFindingsFilterResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateFindingsFilterResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CreateFindingsFilterResponse.struct_class = Types::CreateFindingsFilterResponse

    CreateInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "accountIds"))
    CreateInvitationsRequest.add_member(:disable_email_notification, Shapes::ShapeRef.new(shape: __boolean, location_name: "disableEmailNotification"))
    CreateInvitationsRequest.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    CreateInvitationsRequest.struct_class = Types::CreateInvitationsRequest

    CreateInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: __listOfUnprocessedAccount, location_name: "unprocessedAccounts"))
    CreateInvitationsResponse.struct_class = Types::CreateInvitationsResponse

    CreateMemberRequest.add_member(:account, Shapes::ShapeRef.new(shape: AccountDetail, required: true, location_name: "account"))
    CreateMemberRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateMemberRequest.struct_class = Types::CreateMemberRequest

    CreateMemberResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CreateMemberResponse.struct_class = Types::CreateMemberResponse

    CreateSampleFindingsRequest.add_member(:finding_types, Shapes::ShapeRef.new(shape: __listOfFindingType, location_name: "findingTypes"))
    CreateSampleFindingsRequest.struct_class = Types::CreateSampleFindingsRequest

    CreateSampleFindingsResponse.struct_class = Types::CreateSampleFindingsResponse

    CriteriaBlockForJob.add_member(:and, Shapes::ShapeRef.new(shape: __listOfCriteriaForJob, location_name: "and"))
    CriteriaBlockForJob.struct_class = Types::CriteriaBlockForJob

    CriteriaForJob.add_member(:simple_criterion, Shapes::ShapeRef.new(shape: SimpleCriterionForJob, location_name: "simpleCriterion"))
    CriteriaForJob.add_member(:tag_criterion, Shapes::ShapeRef.new(shape: TagCriterionForJob, location_name: "tagCriterion"))
    CriteriaForJob.struct_class = Types::CriteriaForJob

    Criterion.key = Shapes::ShapeRef.new(shape: __string)
    Criterion.value = Shapes::ShapeRef.new(shape: CriterionAdditionalProperties)

    CriterionAdditionalProperties.add_member(:eq, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "eq"))
    CriterionAdditionalProperties.add_member(:eq_exact_match, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "eqExactMatch"))
    CriterionAdditionalProperties.add_member(:gt, Shapes::ShapeRef.new(shape: __long, location_name: "gt"))
    CriterionAdditionalProperties.add_member(:gte, Shapes::ShapeRef.new(shape: __long, location_name: "gte"))
    CriterionAdditionalProperties.add_member(:lt, Shapes::ShapeRef.new(shape: __long, location_name: "lt"))
    CriterionAdditionalProperties.add_member(:lte, Shapes::ShapeRef.new(shape: __long, location_name: "lte"))
    CriterionAdditionalProperties.add_member(:neq, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "neq"))
    CriterionAdditionalProperties.struct_class = Types::CriterionAdditionalProperties

    CustomDataIdentifierSummary.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CustomDataIdentifierSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    CustomDataIdentifierSummary.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CustomDataIdentifierSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    CustomDataIdentifierSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CustomDataIdentifierSummary.struct_class = Types::CustomDataIdentifierSummary

    CustomDataIdentifiers.add_member(:detections, Shapes::ShapeRef.new(shape: CustomDetections, location_name: "detections"))
    CustomDataIdentifiers.add_member(:total_count, Shapes::ShapeRef.new(shape: __long, location_name: "totalCount"))
    CustomDataIdentifiers.struct_class = Types::CustomDataIdentifiers

    CustomDetection.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    CustomDetection.add_member(:count, Shapes::ShapeRef.new(shape: __long, location_name: "count"))
    CustomDetection.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CustomDetection.add_member(:occurrences, Shapes::ShapeRef.new(shape: Occurrences, location_name: "occurrences"))
    CustomDetection.struct_class = Types::CustomDetection

    CustomDetections.member = Shapes::ShapeRef.new(shape: CustomDetection)

    DailySchedule.struct_class = Types::DailySchedule

    DeclineInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "accountIds"))
    DeclineInvitationsRequest.struct_class = Types::DeclineInvitationsRequest

    DeclineInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: __listOfUnprocessedAccount, location_name: "unprocessedAccounts"))
    DeclineInvitationsResponse.struct_class = Types::DeclineInvitationsResponse

    DefaultDetection.add_member(:count, Shapes::ShapeRef.new(shape: __long, location_name: "count"))
    DefaultDetection.add_member(:occurrences, Shapes::ShapeRef.new(shape: Occurrences, location_name: "occurrences"))
    DefaultDetection.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "type"))
    DefaultDetection.struct_class = Types::DefaultDetection

    DefaultDetections.member = Shapes::ShapeRef.new(shape: DefaultDetection)

    DeleteAllowListRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DeleteAllowListRequest.add_member(:ignore_job_checks, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "ignoreJobChecks"))
    DeleteAllowListRequest.struct_class = Types::DeleteAllowListRequest

    DeleteAllowListResponse.struct_class = Types::DeleteAllowListResponse

    DeleteCustomDataIdentifierRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DeleteCustomDataIdentifierRequest.struct_class = Types::DeleteCustomDataIdentifierRequest

    DeleteCustomDataIdentifierResponse.struct_class = Types::DeleteCustomDataIdentifierResponse

    DeleteFindingsFilterRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DeleteFindingsFilterRequest.struct_class = Types::DeleteFindingsFilterRequest

    DeleteFindingsFilterResponse.struct_class = Types::DeleteFindingsFilterResponse

    DeleteInvitationsRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "accountIds"))
    DeleteInvitationsRequest.struct_class = Types::DeleteInvitationsRequest

    DeleteInvitationsResponse.add_member(:unprocessed_accounts, Shapes::ShapeRef.new(shape: __listOfUnprocessedAccount, location_name: "unprocessedAccounts"))
    DeleteInvitationsResponse.struct_class = Types::DeleteInvitationsResponse

    DeleteMemberRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DeleteMemberRequest.struct_class = Types::DeleteMemberRequest

    DeleteMemberResponse.struct_class = Types::DeleteMemberResponse

    DescribeBucketsRequest.add_member(:criteria, Shapes::ShapeRef.new(shape: BucketCriteria, location_name: "criteria"))
    DescribeBucketsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    DescribeBucketsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    DescribeBucketsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: BucketSortCriteria, location_name: "sortCriteria"))
    DescribeBucketsRequest.struct_class = Types::DescribeBucketsRequest

    DescribeBucketsResponse.add_member(:buckets, Shapes::ShapeRef.new(shape: __listOfBucketMetadata, location_name: "buckets"))
    DescribeBucketsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    DescribeBucketsResponse.struct_class = Types::DescribeBucketsResponse

    DescribeClassificationJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "jobId"))
    DescribeClassificationJobRequest.struct_class = Types::DescribeClassificationJobRequest

    DescribeClassificationJobResponse.add_member(:allow_list_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "allowListIds"))
    DescribeClassificationJobResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: __string, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DescribeClassificationJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    DescribeClassificationJobResponse.add_member(:custom_data_identifier_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "customDataIdentifierIds"))
    DescribeClassificationJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeClassificationJobResponse.add_member(:initial_run, Shapes::ShapeRef.new(shape: __boolean, location_name: "initialRun"))
    DescribeClassificationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: __string, location_name: "jobArn"))
    DescribeClassificationJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    DescribeClassificationJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "jobStatus"))
    DescribeClassificationJobResponse.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "jobType"))
    DescribeClassificationJobResponse.add_member(:last_run_error_status, Shapes::ShapeRef.new(shape: LastRunErrorStatus, location_name: "lastRunErrorStatus"))
    DescribeClassificationJobResponse.add_member(:last_run_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastRunTime"))
    DescribeClassificationJobResponse.add_member(:managed_data_identifier_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "managedDataIdentifierIds"))
    DescribeClassificationJobResponse.add_member(:managed_data_identifier_selector, Shapes::ShapeRef.new(shape: ManagedDataIdentifierSelector, location_name: "managedDataIdentifierSelector"))
    DescribeClassificationJobResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    DescribeClassificationJobResponse.add_member(:s3_job_definition, Shapes::ShapeRef.new(shape: S3JobDefinition, location_name: "s3JobDefinition"))
    DescribeClassificationJobResponse.add_member(:sampling_percentage, Shapes::ShapeRef.new(shape: __integer, location_name: "samplingPercentage"))
    DescribeClassificationJobResponse.add_member(:schedule_frequency, Shapes::ShapeRef.new(shape: JobScheduleFrequency, location_name: "scheduleFrequency"))
    DescribeClassificationJobResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: Statistics, location_name: "statistics"))
    DescribeClassificationJobResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeClassificationJobResponse.add_member(:user_paused_details, Shapes::ShapeRef.new(shape: UserPausedDetails, location_name: "userPausedDetails"))
    DescribeClassificationJobResponse.struct_class = Types::DescribeClassificationJobResponse

    DescribeOrganizationConfigurationRequest.struct_class = Types::DescribeOrganizationConfigurationRequest

    DescribeOrganizationConfigurationResponse.add_member(:auto_enable, Shapes::ShapeRef.new(shape: __boolean, location_name: "autoEnable"))
    DescribeOrganizationConfigurationResponse.add_member(:max_account_limit_reached, Shapes::ShapeRef.new(shape: __boolean, location_name: "maxAccountLimitReached"))
    DescribeOrganizationConfigurationResponse.struct_class = Types::DescribeOrganizationConfigurationResponse

    DetectedDataDetails.add_member(:value, Shapes::ShapeRef.new(shape: __stringMin1Max128, required: true, location_name: "value"))
    DetectedDataDetails.struct_class = Types::DetectedDataDetails

    Detection.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Detection.add_member(:count, Shapes::ShapeRef.new(shape: __long, location_name: "count"))
    Detection.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Detection.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    Detection.add_member(:suppressed, Shapes::ShapeRef.new(shape: __boolean, location_name: "suppressed"))
    Detection.add_member(:type, Shapes::ShapeRef.new(shape: DataIdentifierType, location_name: "type"))
    Detection.struct_class = Types::Detection

    DisableMacieRequest.struct_class = Types::DisableMacieRequest

    DisableMacieResponse.struct_class = Types::DisableMacieResponse

    DisableOrganizationAdminAccountRequest.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "adminAccountId"))
    DisableOrganizationAdminAccountRequest.struct_class = Types::DisableOrganizationAdminAccountRequest

    DisableOrganizationAdminAccountResponse.struct_class = Types::DisableOrganizationAdminAccountResponse

    DisassociateFromAdministratorAccountRequest.struct_class = Types::DisassociateFromAdministratorAccountRequest

    DisassociateFromAdministratorAccountResponse.struct_class = Types::DisassociateFromAdministratorAccountResponse

    DisassociateFromMasterAccountRequest.struct_class = Types::DisassociateFromMasterAccountRequest

    DisassociateFromMasterAccountResponse.struct_class = Types::DisassociateFromMasterAccountResponse

    DisassociateMemberRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    DisassociateMemberRequest.struct_class = Types::DisassociateMemberRequest

    DisassociateMemberResponse.struct_class = Types::DisassociateMemberResponse

    DomainDetails.add_member(:domain_name, Shapes::ShapeRef.new(shape: __string, location_name: "domainName"))
    DomainDetails.struct_class = Types::DomainDetails

    Empty.struct_class = Types::Empty

    EnableMacieRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __string, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    EnableMacieRequest.add_member(:finding_publishing_frequency, Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: "findingPublishingFrequency"))
    EnableMacieRequest.add_member(:status, Shapes::ShapeRef.new(shape: MacieStatus, location_name: "status"))
    EnableMacieRequest.struct_class = Types::EnableMacieRequest

    EnableMacieResponse.struct_class = Types::EnableMacieResponse

    EnableOrganizationAdminAccountRequest.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "adminAccountId"))
    EnableOrganizationAdminAccountRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __string, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    EnableOrganizationAdminAccountRequest.struct_class = Types::EnableOrganizationAdminAccountRequest

    EnableOrganizationAdminAccountResponse.struct_class = Types::EnableOrganizationAdminAccountResponse

    FederatedUser.add_member(:access_key_id, Shapes::ShapeRef.new(shape: __string, location_name: "accessKeyId"))
    FederatedUser.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    FederatedUser.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    FederatedUser.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, location_name: "principalId"))
    FederatedUser.add_member(:session_context, Shapes::ShapeRef.new(shape: SessionContext, location_name: "sessionContext"))
    FederatedUser.struct_class = Types::FederatedUser

    Finding.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    Finding.add_member(:archived, Shapes::ShapeRef.new(shape: __boolean, location_name: "archived"))
    Finding.add_member(:category, Shapes::ShapeRef.new(shape: FindingCategory, location_name: "category"))
    Finding.add_member(:classification_details, Shapes::ShapeRef.new(shape: ClassificationDetails, location_name: "classificationDetails"))
    Finding.add_member(:count, Shapes::ShapeRef.new(shape: __long, location_name: "count"))
    Finding.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    Finding.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Finding.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    Finding.add_member(:partition, Shapes::ShapeRef.new(shape: __string, location_name: "partition"))
    Finding.add_member(:policy_details, Shapes::ShapeRef.new(shape: PolicyDetails, location_name: "policyDetails"))
    Finding.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    Finding.add_member(:resources_affected, Shapes::ShapeRef.new(shape: ResourcesAffected, location_name: "resourcesAffected"))
    Finding.add_member(:sample, Shapes::ShapeRef.new(shape: __boolean, location_name: "sample"))
    Finding.add_member(:schema_version, Shapes::ShapeRef.new(shape: __string, location_name: "schemaVersion"))
    Finding.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    Finding.add_member(:title, Shapes::ShapeRef.new(shape: __string, location_name: "title"))
    Finding.add_member(:type, Shapes::ShapeRef.new(shape: FindingType, location_name: "type"))
    Finding.add_member(:updated_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "updatedAt"))
    Finding.struct_class = Types::Finding

    FindingAction.add_member(:action_type, Shapes::ShapeRef.new(shape: FindingActionType, location_name: "actionType"))
    FindingAction.add_member(:api_call_details, Shapes::ShapeRef.new(shape: ApiCallDetails, location_name: "apiCallDetails"))
    FindingAction.struct_class = Types::FindingAction

    FindingActor.add_member(:domain_details, Shapes::ShapeRef.new(shape: DomainDetails, location_name: "domainDetails"))
    FindingActor.add_member(:ip_address_details, Shapes::ShapeRef.new(shape: IpAddressDetails, location_name: "ipAddressDetails"))
    FindingActor.add_member(:user_identity, Shapes::ShapeRef.new(shape: UserIdentity, location_name: "userIdentity"))
    FindingActor.struct_class = Types::FindingActor

    FindingCriteria.add_member(:criterion, Shapes::ShapeRef.new(shape: Criterion, location_name: "criterion"))
    FindingCriteria.struct_class = Types::FindingCriteria

    FindingStatisticsSortCriteria.add_member(:attribute_name, Shapes::ShapeRef.new(shape: FindingStatisticsSortAttributeName, location_name: "attributeName"))
    FindingStatisticsSortCriteria.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    FindingStatisticsSortCriteria.struct_class = Types::FindingStatisticsSortCriteria

    FindingsFilterListItem.add_member(:action, Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: "action"))
    FindingsFilterListItem.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    FindingsFilterListItem.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    FindingsFilterListItem.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    FindingsFilterListItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    FindingsFilterListItem.struct_class = Types::FindingsFilterListItem

    GetAdministratorAccountRequest.struct_class = Types::GetAdministratorAccountRequest

    GetAdministratorAccountResponse.add_member(:administrator, Shapes::ShapeRef.new(shape: Invitation, location_name: "administrator"))
    GetAdministratorAccountResponse.struct_class = Types::GetAdministratorAccountResponse

    GetAllowListRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    GetAllowListRequest.struct_class = Types::GetAllowListRequest

    GetAllowListResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922, location_name: "arn"))
    GetAllowListResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    GetAllowListResponse.add_member(:criteria, Shapes::ShapeRef.new(shape: AllowListCriteria, location_name: "criteria"))
    GetAllowListResponse.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin1Max512PatternSS, location_name: "description"))
    GetAllowListResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin22Max22PatternAZ0922, location_name: "id"))
    GetAllowListResponse.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max128Pattern, location_name: "name"))
    GetAllowListResponse.add_member(:status, Shapes::ShapeRef.new(shape: AllowListStatus, location_name: "status"))
    GetAllowListResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetAllowListResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "updatedAt"))
    GetAllowListResponse.struct_class = Types::GetAllowListResponse

    GetAutomatedDiscoveryConfigurationRequest.struct_class = Types::GetAutomatedDiscoveryConfigurationRequest

    GetAutomatedDiscoveryConfigurationResponse.add_member(:classification_scope_id, Shapes::ShapeRef.new(shape: ClassificationScopeId, location_name: "classificationScopeId"))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:disabled_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "disabledAt"))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:first_enabled_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "firstEnabledAt"))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:sensitivity_inspection_template_id, Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateId, location_name: "sensitivityInspectionTemplateId"))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: AutomatedDiscoveryStatus, location_name: "status"))
    GetAutomatedDiscoveryConfigurationResponse.struct_class = Types::GetAutomatedDiscoveryConfigurationResponse

    GetBucketStatisticsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    GetBucketStatisticsRequest.struct_class = Types::GetBucketStatisticsRequest

    GetBucketStatisticsResponse.add_member(:bucket_count, Shapes::ShapeRef.new(shape: __long, location_name: "bucketCount"))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_effective_permission, Shapes::ShapeRef.new(shape: BucketCountByEffectivePermission, location_name: "bucketCountByEffectivePermission"))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_encryption_type, Shapes::ShapeRef.new(shape: BucketCountByEncryptionType, location_name: "bucketCountByEncryptionType"))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_object_encryption_requirement, Shapes::ShapeRef.new(shape: BucketCountPolicyAllowsUnencryptedObjectUploads, location_name: "bucketCountByObjectEncryptionRequirement"))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_shared_access_type, Shapes::ShapeRef.new(shape: BucketCountBySharedAccessType, location_name: "bucketCountBySharedAccessType"))
    GetBucketStatisticsResponse.add_member(:bucket_statistics_by_sensitivity, Shapes::ShapeRef.new(shape: BucketStatisticsBySensitivity, location_name: "bucketStatisticsBySensitivity"))
    GetBucketStatisticsResponse.add_member(:classifiable_object_count, Shapes::ShapeRef.new(shape: __long, location_name: "classifiableObjectCount"))
    GetBucketStatisticsResponse.add_member(:classifiable_size_in_bytes, Shapes::ShapeRef.new(shape: __long, location_name: "classifiableSizeInBytes"))
    GetBucketStatisticsResponse.add_member(:last_updated, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastUpdated"))
    GetBucketStatisticsResponse.add_member(:object_count, Shapes::ShapeRef.new(shape: __long, location_name: "objectCount"))
    GetBucketStatisticsResponse.add_member(:size_in_bytes, Shapes::ShapeRef.new(shape: __long, location_name: "sizeInBytes"))
    GetBucketStatisticsResponse.add_member(:size_in_bytes_compressed, Shapes::ShapeRef.new(shape: __long, location_name: "sizeInBytesCompressed"))
    GetBucketStatisticsResponse.add_member(:unclassifiable_object_count, Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: "unclassifiableObjectCount"))
    GetBucketStatisticsResponse.add_member(:unclassifiable_object_size_in_bytes, Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: "unclassifiableObjectSizeInBytes"))
    GetBucketStatisticsResponse.struct_class = Types::GetBucketStatisticsResponse

    GetClassificationExportConfigurationRequest.struct_class = Types::GetClassificationExportConfigurationRequest

    GetClassificationExportConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: ClassificationExportConfiguration, location_name: "configuration"))
    GetClassificationExportConfigurationResponse.struct_class = Types::GetClassificationExportConfigurationResponse

    GetClassificationScopeRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    GetClassificationScopeRequest.struct_class = Types::GetClassificationScopeRequest

    GetClassificationScopeResponse.add_member(:id, Shapes::ShapeRef.new(shape: ClassificationScopeId, location_name: "id"))
    GetClassificationScopeResponse.add_member(:name, Shapes::ShapeRef.new(shape: ClassificationScopeName, location_name: "name"))
    GetClassificationScopeResponse.add_member(:s3, Shapes::ShapeRef.new(shape: S3ClassificationScope, location_name: "s3"))
    GetClassificationScopeResponse.struct_class = Types::GetClassificationScopeResponse

    GetCustomDataIdentifierRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    GetCustomDataIdentifierRequest.struct_class = Types::GetCustomDataIdentifierRequest

    GetCustomDataIdentifierResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    GetCustomDataIdentifierResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    GetCustomDataIdentifierResponse.add_member(:deleted, Shapes::ShapeRef.new(shape: __boolean, location_name: "deleted"))
    GetCustomDataIdentifierResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    GetCustomDataIdentifierResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    GetCustomDataIdentifierResponse.add_member(:ignore_words, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "ignoreWords"))
    GetCustomDataIdentifierResponse.add_member(:keywords, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "keywords"))
    GetCustomDataIdentifierResponse.add_member(:maximum_match_distance, Shapes::ShapeRef.new(shape: __integer, location_name: "maximumMatchDistance"))
    GetCustomDataIdentifierResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    GetCustomDataIdentifierResponse.add_member(:regex, Shapes::ShapeRef.new(shape: __string, location_name: "regex"))
    GetCustomDataIdentifierResponse.add_member(:severity_levels, Shapes::ShapeRef.new(shape: SeverityLevelList, location_name: "severityLevels"))
    GetCustomDataIdentifierResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetCustomDataIdentifierResponse.struct_class = Types::GetCustomDataIdentifierResponse

    GetFindingStatisticsRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    GetFindingStatisticsRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupBy, required: true, location_name: "groupBy"))
    GetFindingStatisticsRequest.add_member(:size, Shapes::ShapeRef.new(shape: __integer, location_name: "size"))
    GetFindingStatisticsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: FindingStatisticsSortCriteria, location_name: "sortCriteria"))
    GetFindingStatisticsRequest.struct_class = Types::GetFindingStatisticsRequest

    GetFindingStatisticsResponse.add_member(:counts_by_group, Shapes::ShapeRef.new(shape: __listOfGroupCount, location_name: "countsByGroup"))
    GetFindingStatisticsResponse.struct_class = Types::GetFindingStatisticsResponse

    GetFindingsFilterRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    GetFindingsFilterRequest.struct_class = Types::GetFindingsFilterRequest

    GetFindingsFilterResponse.add_member(:action, Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: "action"))
    GetFindingsFilterResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    GetFindingsFilterResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    GetFindingsFilterResponse.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    GetFindingsFilterResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    GetFindingsFilterResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    GetFindingsFilterResponse.add_member(:position, Shapes::ShapeRef.new(shape: __integer, location_name: "position"))
    GetFindingsFilterResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetFindingsFilterResponse.struct_class = Types::GetFindingsFilterResponse

    GetFindingsPublicationConfigurationRequest.struct_class = Types::GetFindingsPublicationConfigurationRequest

    GetFindingsPublicationConfigurationResponse.add_member(:security_hub_configuration, Shapes::ShapeRef.new(shape: SecurityHubConfiguration, location_name: "securityHubConfiguration"))
    GetFindingsPublicationConfigurationResponse.struct_class = Types::GetFindingsPublicationConfigurationResponse

    GetFindingsRequest.add_member(:finding_ids, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "findingIds"))
    GetFindingsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sortCriteria"))
    GetFindingsRequest.struct_class = Types::GetFindingsRequest

    GetFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: __listOfFinding, location_name: "findings"))
    GetFindingsResponse.struct_class = Types::GetFindingsResponse

    GetInvitationsCountRequest.struct_class = Types::GetInvitationsCountRequest

    GetInvitationsCountResponse.add_member(:invitations_count, Shapes::ShapeRef.new(shape: __long, location_name: "invitationsCount"))
    GetInvitationsCountResponse.struct_class = Types::GetInvitationsCountResponse

    GetMacieSessionRequest.struct_class = Types::GetMacieSessionRequest

    GetMacieSessionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    GetMacieSessionResponse.add_member(:finding_publishing_frequency, Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: "findingPublishingFrequency"))
    GetMacieSessionResponse.add_member(:service_role, Shapes::ShapeRef.new(shape: __string, location_name: "serviceRole"))
    GetMacieSessionResponse.add_member(:status, Shapes::ShapeRef.new(shape: MacieStatus, location_name: "status"))
    GetMacieSessionResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "updatedAt"))
    GetMacieSessionResponse.struct_class = Types::GetMacieSessionResponse

    GetMasterAccountRequest.struct_class = Types::GetMasterAccountRequest

    GetMasterAccountResponse.add_member(:master, Shapes::ShapeRef.new(shape: Invitation, location_name: "master"))
    GetMasterAccountResponse.struct_class = Types::GetMasterAccountResponse

    GetMemberRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    GetMemberRequest.struct_class = Types::GetMemberRequest

    GetMemberResponse.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    GetMemberResponse.add_member(:administrator_account_id, Shapes::ShapeRef.new(shape: __string, location_name: "administratorAccountId"))
    GetMemberResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    GetMemberResponse.add_member(:email, Shapes::ShapeRef.new(shape: __string, location_name: "email"))
    GetMemberResponse.add_member(:invited_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "invitedAt"))
    GetMemberResponse.add_member(:master_account_id, Shapes::ShapeRef.new(shape: __string, location_name: "masterAccountId"))
    GetMemberResponse.add_member(:relationship_status, Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: "relationshipStatus"))
    GetMemberResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetMemberResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "updatedAt"))
    GetMemberResponse.struct_class = Types::GetMemberResponse

    GetResourceProfileRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "resourceArn"))
    GetResourceProfileRequest.struct_class = Types::GetResourceProfileRequest

    GetResourceProfileResponse.add_member(:profile_updated_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "profileUpdatedAt"))
    GetResourceProfileResponse.add_member(:sensitivity_score, Shapes::ShapeRef.new(shape: __integer, location_name: "sensitivityScore"))
    GetResourceProfileResponse.add_member(:sensitivity_score_overridden, Shapes::ShapeRef.new(shape: __boolean, location_name: "sensitivityScoreOverridden"))
    GetResourceProfileResponse.add_member(:statistics, Shapes::ShapeRef.new(shape: ResourceStatistics, location_name: "statistics"))
    GetResourceProfileResponse.struct_class = Types::GetResourceProfileResponse

    GetRevealConfigurationRequest.struct_class = Types::GetRevealConfigurationRequest

    GetRevealConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: RevealConfiguration, location_name: "configuration"))
    GetRevealConfigurationResponse.struct_class = Types::GetRevealConfigurationResponse

    GetSensitiveDataOccurrencesAvailabilityRequest.add_member(:finding_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "findingId"))
    GetSensitiveDataOccurrencesAvailabilityRequest.struct_class = Types::GetSensitiveDataOccurrencesAvailabilityRequest

    GetSensitiveDataOccurrencesAvailabilityResponse.add_member(:code, Shapes::ShapeRef.new(shape: AvailabilityCode, location_name: "code"))
    GetSensitiveDataOccurrencesAvailabilityResponse.add_member(:reasons, Shapes::ShapeRef.new(shape: __listOfUnavailabilityReasonCode, location_name: "reasons"))
    GetSensitiveDataOccurrencesAvailabilityResponse.struct_class = Types::GetSensitiveDataOccurrencesAvailabilityResponse

    GetSensitiveDataOccurrencesRequest.add_member(:finding_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "findingId"))
    GetSensitiveDataOccurrencesRequest.struct_class = Types::GetSensitiveDataOccurrencesRequest

    GetSensitiveDataOccurrencesResponse.add_member(:error, Shapes::ShapeRef.new(shape: __string, location_name: "error"))
    GetSensitiveDataOccurrencesResponse.add_member(:sensitive_data_occurrences, Shapes::ShapeRef.new(shape: SensitiveDataOccurrences, location_name: "sensitiveDataOccurrences"))
    GetSensitiveDataOccurrencesResponse.add_member(:status, Shapes::ShapeRef.new(shape: RevealRequestStatus, location_name: "status"))
    GetSensitiveDataOccurrencesResponse.struct_class = Types::GetSensitiveDataOccurrencesResponse

    GetSensitivityInspectionTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    GetSensitivityInspectionTemplateRequest.struct_class = Types::GetSensitivityInspectionTemplateRequest

    GetSensitivityInspectionTemplateResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    GetSensitivityInspectionTemplateResponse.add_member(:excludes, Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateExcludes, location_name: "excludes"))
    GetSensitivityInspectionTemplateResponse.add_member(:includes, Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateIncludes, location_name: "includes"))
    GetSensitivityInspectionTemplateResponse.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    GetSensitivityInspectionTemplateResponse.add_member(:sensitivity_inspection_template_id, Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateId, location_name: "sensitivityInspectionTemplateId"))
    GetSensitivityInspectionTemplateResponse.struct_class = Types::GetSensitivityInspectionTemplateResponse

    GetUsageStatisticsRequest.add_member(:filter_by, Shapes::ShapeRef.new(shape: __listOfUsageStatisticsFilter, location_name: "filterBy"))
    GetUsageStatisticsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    GetUsageStatisticsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    GetUsageStatisticsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: UsageStatisticsSortBy, location_name: "sortBy"))
    GetUsageStatisticsRequest.add_member(:time_range, Shapes::ShapeRef.new(shape: TimeRange, location_name: "timeRange"))
    GetUsageStatisticsRequest.struct_class = Types::GetUsageStatisticsRequest

    GetUsageStatisticsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    GetUsageStatisticsResponse.add_member(:records, Shapes::ShapeRef.new(shape: __listOfUsageRecord, location_name: "records"))
    GetUsageStatisticsResponse.add_member(:time_range, Shapes::ShapeRef.new(shape: TimeRange, location_name: "timeRange"))
    GetUsageStatisticsResponse.struct_class = Types::GetUsageStatisticsResponse

    GetUsageTotalsRequest.add_member(:time_range, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "timeRange"))
    GetUsageTotalsRequest.struct_class = Types::GetUsageTotalsRequest

    GetUsageTotalsResponse.add_member(:time_range, Shapes::ShapeRef.new(shape: TimeRange, location_name: "timeRange"))
    GetUsageTotalsResponse.add_member(:usage_totals, Shapes::ShapeRef.new(shape: __listOfUsageTotal, location_name: "usageTotals"))
    GetUsageTotalsResponse.struct_class = Types::GetUsageTotalsResponse

    GroupCount.add_member(:count, Shapes::ShapeRef.new(shape: __long, location_name: "count"))
    GroupCount.add_member(:group_key, Shapes::ShapeRef.new(shape: __string, location_name: "groupKey"))
    GroupCount.struct_class = Types::GroupCount

    IamUser.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    IamUser.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    IamUser.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, location_name: "principalId"))
    IamUser.add_member(:user_name, Shapes::ShapeRef.new(shape: __string, location_name: "userName"))
    IamUser.struct_class = Types::IamUser

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    Invitation.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    Invitation.add_member(:invitation_id, Shapes::ShapeRef.new(shape: __string, location_name: "invitationId"))
    Invitation.add_member(:invited_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "invitedAt"))
    Invitation.add_member(:relationship_status, Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: "relationshipStatus"))
    Invitation.struct_class = Types::Invitation

    IpAddressDetails.add_member(:ip_address_v4, Shapes::ShapeRef.new(shape: __string, location_name: "ipAddressV4"))
    IpAddressDetails.add_member(:ip_city, Shapes::ShapeRef.new(shape: IpCity, location_name: "ipCity"))
    IpAddressDetails.add_member(:ip_country, Shapes::ShapeRef.new(shape: IpCountry, location_name: "ipCountry"))
    IpAddressDetails.add_member(:ip_geo_location, Shapes::ShapeRef.new(shape: IpGeoLocation, location_name: "ipGeoLocation"))
    IpAddressDetails.add_member(:ip_owner, Shapes::ShapeRef.new(shape: IpOwner, location_name: "ipOwner"))
    IpAddressDetails.struct_class = Types::IpAddressDetails

    IpCity.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    IpCity.struct_class = Types::IpCity

    IpCountry.add_member(:code, Shapes::ShapeRef.new(shape: __string, location_name: "code"))
    IpCountry.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    IpCountry.struct_class = Types::IpCountry

    IpGeoLocation.add_member(:lat, Shapes::ShapeRef.new(shape: __double, location_name: "lat"))
    IpGeoLocation.add_member(:lon, Shapes::ShapeRef.new(shape: __double, location_name: "lon"))
    IpGeoLocation.struct_class = Types::IpGeoLocation

    IpOwner.add_member(:asn, Shapes::ShapeRef.new(shape: __string, location_name: "asn"))
    IpOwner.add_member(:asn_org, Shapes::ShapeRef.new(shape: __string, location_name: "asnOrg"))
    IpOwner.add_member(:isp, Shapes::ShapeRef.new(shape: __string, location_name: "isp"))
    IpOwner.add_member(:org, Shapes::ShapeRef.new(shape: __string, location_name: "org"))
    IpOwner.struct_class = Types::IpOwner

    JobDetails.add_member(:is_defined_in_job, Shapes::ShapeRef.new(shape: IsDefinedInJob, location_name: "isDefinedInJob"))
    JobDetails.add_member(:is_monitored_by_job, Shapes::ShapeRef.new(shape: IsMonitoredByJob, location_name: "isMonitoredByJob"))
    JobDetails.add_member(:last_job_id, Shapes::ShapeRef.new(shape: __string, location_name: "lastJobId"))
    JobDetails.add_member(:last_job_run_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastJobRunTime"))
    JobDetails.struct_class = Types::JobDetails

    JobScheduleFrequency.add_member(:daily_schedule, Shapes::ShapeRef.new(shape: DailySchedule, location_name: "dailySchedule"))
    JobScheduleFrequency.add_member(:monthly_schedule, Shapes::ShapeRef.new(shape: MonthlySchedule, location_name: "monthlySchedule"))
    JobScheduleFrequency.add_member(:weekly_schedule, Shapes::ShapeRef.new(shape: WeeklySchedule, location_name: "weeklySchedule"))
    JobScheduleFrequency.struct_class = Types::JobScheduleFrequency

    JobScopeTerm.add_member(:simple_scope_term, Shapes::ShapeRef.new(shape: SimpleScopeTerm, location_name: "simpleScopeTerm"))
    JobScopeTerm.add_member(:tag_scope_term, Shapes::ShapeRef.new(shape: TagScopeTerm, location_name: "tagScopeTerm"))
    JobScopeTerm.struct_class = Types::JobScopeTerm

    JobScopingBlock.add_member(:and, Shapes::ShapeRef.new(shape: __listOfJobScopeTerm, location_name: "and"))
    JobScopingBlock.struct_class = Types::JobScopingBlock

    JobSummary.add_member(:bucket_criteria, Shapes::ShapeRef.new(shape: S3BucketCriteriaForJob, location_name: "bucketCriteria"))
    JobSummary.add_member(:bucket_definitions, Shapes::ShapeRef.new(shape: __listOfS3BucketDefinitionForJob, location_name: "bucketDefinitions"))
    JobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    JobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    JobSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "jobStatus"))
    JobSummary.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "jobType"))
    JobSummary.add_member(:last_run_error_status, Shapes::ShapeRef.new(shape: LastRunErrorStatus, location_name: "lastRunErrorStatus"))
    JobSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    JobSummary.add_member(:user_paused_details, Shapes::ShapeRef.new(shape: UserPausedDetails, location_name: "userPausedDetails"))
    JobSummary.struct_class = Types::JobSummary

    KeyValuePair.add_member(:key, Shapes::ShapeRef.new(shape: __string, location_name: "key"))
    KeyValuePair.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "value"))
    KeyValuePair.struct_class = Types::KeyValuePair

    KeyValuePairList.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    LastRunErrorStatus.add_member(:code, Shapes::ShapeRef.new(shape: LastRunErrorStatusCode, location_name: "code"))
    LastRunErrorStatus.struct_class = Types::LastRunErrorStatus

    ListAllowListsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListAllowListsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListAllowListsRequest.struct_class = Types::ListAllowListsRequest

    ListAllowListsResponse.add_member(:allow_lists, Shapes::ShapeRef.new(shape: __listOfAllowListSummary, location_name: "allowLists"))
    ListAllowListsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListAllowListsResponse.struct_class = Types::ListAllowListsResponse

    ListClassificationJobsRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: ListJobsFilterCriteria, location_name: "filterCriteria"))
    ListClassificationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    ListClassificationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListClassificationJobsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: ListJobsSortCriteria, location_name: "sortCriteria"))
    ListClassificationJobsRequest.struct_class = Types::ListClassificationJobsRequest

    ListClassificationJobsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfJobSummary, location_name: "items"))
    ListClassificationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListClassificationJobsResponse.struct_class = Types::ListClassificationJobsResponse

    ListClassificationScopesRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "name"))
    ListClassificationScopesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListClassificationScopesRequest.struct_class = Types::ListClassificationScopesRequest

    ListClassificationScopesResponse.add_member(:classification_scopes, Shapes::ShapeRef.new(shape: __listOfClassificationScopeSummary, location_name: "classificationScopes"))
    ListClassificationScopesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListClassificationScopesResponse.struct_class = Types::ListClassificationScopesResponse

    ListCustomDataIdentifiersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    ListCustomDataIdentifiersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListCustomDataIdentifiersRequest.struct_class = Types::ListCustomDataIdentifiersRequest

    ListCustomDataIdentifiersResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfCustomDataIdentifierSummary, location_name: "items"))
    ListCustomDataIdentifiersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListCustomDataIdentifiersResponse.struct_class = Types::ListCustomDataIdentifiersResponse

    ListFindingsFiltersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFindingsFiltersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListFindingsFiltersRequest.struct_class = Types::ListFindingsFiltersRequest

    ListFindingsFiltersResponse.add_member(:findings_filter_list_items, Shapes::ShapeRef.new(shape: __listOfFindingsFilterListItem, location_name: "findingsFilterListItems"))
    ListFindingsFiltersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListFindingsFiltersResponse.struct_class = Types::ListFindingsFiltersResponse

    ListFindingsRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    ListFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    ListFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListFindingsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SortCriteria, location_name: "sortCriteria"))
    ListFindingsRequest.struct_class = Types::ListFindingsRequest

    ListFindingsResponse.add_member(:finding_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "findingIds"))
    ListFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListFindingsResponse.struct_class = Types::ListFindingsResponse

    ListInvitationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListInvitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListInvitationsRequest.struct_class = Types::ListInvitationsRequest

    ListInvitationsResponse.add_member(:invitations, Shapes::ShapeRef.new(shape: __listOfInvitation, location_name: "invitations"))
    ListInvitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListInvitationsResponse.struct_class = Types::ListInvitationsResponse

    ListJobsFilterCriteria.add_member(:excludes, Shapes::ShapeRef.new(shape: __listOfListJobsFilterTerm, location_name: "excludes"))
    ListJobsFilterCriteria.add_member(:includes, Shapes::ShapeRef.new(shape: __listOfListJobsFilterTerm, location_name: "includes"))
    ListJobsFilterCriteria.struct_class = Types::ListJobsFilterCriteria

    ListJobsFilterTerm.add_member(:comparator, Shapes::ShapeRef.new(shape: JobComparator, location_name: "comparator"))
    ListJobsFilterTerm.add_member(:key, Shapes::ShapeRef.new(shape: ListJobsFilterKey, location_name: "key"))
    ListJobsFilterTerm.add_member(:values, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "values"))
    ListJobsFilterTerm.struct_class = Types::ListJobsFilterTerm

    ListJobsSortCriteria.add_member(:attribute_name, Shapes::ShapeRef.new(shape: ListJobsSortAttributeName, location_name: "attributeName"))
    ListJobsSortCriteria.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    ListJobsSortCriteria.struct_class = Types::ListJobsSortCriteria

    ListManagedDataIdentifiersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListManagedDataIdentifiersRequest.struct_class = Types::ListManagedDataIdentifiersRequest

    ListManagedDataIdentifiersResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfManagedDataIdentifierSummary, location_name: "items"))
    ListManagedDataIdentifiersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListManagedDataIdentifiersResponse.struct_class = Types::ListManagedDataIdentifiersResponse

    ListMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListMembersRequest.add_member(:only_associated, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "onlyAssociated"))
    ListMembersRequest.struct_class = Types::ListMembersRequest

    ListMembersResponse.add_member(:members, Shapes::ShapeRef.new(shape: __listOfMember, location_name: "members"))
    ListMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListMembersResponse.struct_class = Types::ListMembersResponse

    ListOrganizationAdminAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListOrganizationAdminAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListOrganizationAdminAccountsRequest.struct_class = Types::ListOrganizationAdminAccountsRequest

    ListOrganizationAdminAccountsResponse.add_member(:admin_accounts, Shapes::ShapeRef.new(shape: __listOfAdminAccount, location_name: "adminAccounts"))
    ListOrganizationAdminAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListOrganizationAdminAccountsResponse.struct_class = Types::ListOrganizationAdminAccountsResponse

    ListResourceProfileArtifactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListResourceProfileArtifactsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "resourceArn"))
    ListResourceProfileArtifactsRequest.struct_class = Types::ListResourceProfileArtifactsRequest

    ListResourceProfileArtifactsResponse.add_member(:artifacts, Shapes::ShapeRef.new(shape: __listOfResourceProfileArtifact, location_name: "artifacts"))
    ListResourceProfileArtifactsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListResourceProfileArtifactsResponse.struct_class = Types::ListResourceProfileArtifactsResponse

    ListResourceProfileDetectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListResourceProfileDetectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListResourceProfileDetectionsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "resourceArn"))
    ListResourceProfileDetectionsRequest.struct_class = Types::ListResourceProfileDetectionsRequest

    ListResourceProfileDetectionsResponse.add_member(:detections, Shapes::ShapeRef.new(shape: __listOfDetection, location_name: "detections"))
    ListResourceProfileDetectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListResourceProfileDetectionsResponse.struct_class = Types::ListResourceProfileDetectionsResponse

    ListSensitivityInspectionTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSensitivityInspectionTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListSensitivityInspectionTemplatesRequest.struct_class = Types::ListSensitivityInspectionTemplatesRequest

    ListSensitivityInspectionTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListSensitivityInspectionTemplatesResponse.add_member(:sensitivity_inspection_templates, Shapes::ShapeRef.new(shape: __listOfSensitivityInspectionTemplatesEntry, location_name: "sensitivityInspectionTemplates"))
    ListSensitivityInspectionTemplatesResponse.struct_class = Types::ListSensitivityInspectionTemplatesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ManagedDataIdentifierSummary.add_member(:category, Shapes::ShapeRef.new(shape: SensitiveDataItemCategory, location_name: "category"))
    ManagedDataIdentifierSummary.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    ManagedDataIdentifierSummary.struct_class = Types::ManagedDataIdentifierSummary

    MatchingBucket.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    MatchingBucket.add_member(:bucket_name, Shapes::ShapeRef.new(shape: __string, location_name: "bucketName"))
    MatchingBucket.add_member(:classifiable_object_count, Shapes::ShapeRef.new(shape: __long, location_name: "classifiableObjectCount"))
    MatchingBucket.add_member(:classifiable_size_in_bytes, Shapes::ShapeRef.new(shape: __long, location_name: "classifiableSizeInBytes"))
    MatchingBucket.add_member(:error_code, Shapes::ShapeRef.new(shape: BucketMetadataErrorCode, location_name: "errorCode"))
    MatchingBucket.add_member(:error_message, Shapes::ShapeRef.new(shape: __string, location_name: "errorMessage"))
    MatchingBucket.add_member(:job_details, Shapes::ShapeRef.new(shape: JobDetails, location_name: "jobDetails"))
    MatchingBucket.add_member(:last_automated_discovery_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastAutomatedDiscoveryTime"))
    MatchingBucket.add_member(:object_count, Shapes::ShapeRef.new(shape: __long, location_name: "objectCount"))
    MatchingBucket.add_member(:object_count_by_encryption_type, Shapes::ShapeRef.new(shape: ObjectCountByEncryptionType, location_name: "objectCountByEncryptionType"))
    MatchingBucket.add_member(:sensitivity_score, Shapes::ShapeRef.new(shape: __integer, location_name: "sensitivityScore"))
    MatchingBucket.add_member(:size_in_bytes, Shapes::ShapeRef.new(shape: __long, location_name: "sizeInBytes"))
    MatchingBucket.add_member(:size_in_bytes_compressed, Shapes::ShapeRef.new(shape: __long, location_name: "sizeInBytesCompressed"))
    MatchingBucket.add_member(:unclassifiable_object_count, Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: "unclassifiableObjectCount"))
    MatchingBucket.add_member(:unclassifiable_object_size_in_bytes, Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: "unclassifiableObjectSizeInBytes"))
    MatchingBucket.struct_class = Types::MatchingBucket

    MatchingResource.add_member(:matching_bucket, Shapes::ShapeRef.new(shape: MatchingBucket, location_name: "matchingBucket"))
    MatchingResource.struct_class = Types::MatchingResource

    Member.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    Member.add_member(:administrator_account_id, Shapes::ShapeRef.new(shape: __string, location_name: "administratorAccountId"))
    Member.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    Member.add_member(:email, Shapes::ShapeRef.new(shape: __string, location_name: "email"))
    Member.add_member(:invited_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "invitedAt"))
    Member.add_member(:master_account_id, Shapes::ShapeRef.new(shape: __string, location_name: "masterAccountId"))
    Member.add_member(:relationship_status, Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: "relationshipStatus"))
    Member.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Member.add_member(:updated_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "updatedAt"))
    Member.struct_class = Types::Member

    MonthlySchedule.add_member(:day_of_month, Shapes::ShapeRef.new(shape: __integer, location_name: "dayOfMonth"))
    MonthlySchedule.struct_class = Types::MonthlySchedule

    ObjectCountByEncryptionType.add_member(:customer_managed, Shapes::ShapeRef.new(shape: __long, location_name: "customerManaged"))
    ObjectCountByEncryptionType.add_member(:kms_managed, Shapes::ShapeRef.new(shape: __long, location_name: "kmsManaged"))
    ObjectCountByEncryptionType.add_member(:s3_managed, Shapes::ShapeRef.new(shape: __long, location_name: "s3Managed"))
    ObjectCountByEncryptionType.add_member(:unencrypted, Shapes::ShapeRef.new(shape: __long, location_name: "unencrypted"))
    ObjectCountByEncryptionType.add_member(:unknown, Shapes::ShapeRef.new(shape: __long, location_name: "unknown"))
    ObjectCountByEncryptionType.struct_class = Types::ObjectCountByEncryptionType

    ObjectLevelStatistics.add_member(:file_type, Shapes::ShapeRef.new(shape: __long, location_name: "fileType"))
    ObjectLevelStatistics.add_member(:storage_class, Shapes::ShapeRef.new(shape: __long, location_name: "storageClass"))
    ObjectLevelStatistics.add_member(:total, Shapes::ShapeRef.new(shape: __long, location_name: "total"))
    ObjectLevelStatistics.struct_class = Types::ObjectLevelStatistics

    Occurrences.add_member(:cells, Shapes::ShapeRef.new(shape: Cells, location_name: "cells"))
    Occurrences.add_member(:line_ranges, Shapes::ShapeRef.new(shape: Ranges, location_name: "lineRanges"))
    Occurrences.add_member(:offset_ranges, Shapes::ShapeRef.new(shape: Ranges, location_name: "offsetRanges"))
    Occurrences.add_member(:pages, Shapes::ShapeRef.new(shape: Pages, location_name: "pages"))
    Occurrences.add_member(:records, Shapes::ShapeRef.new(shape: Records, location_name: "records"))
    Occurrences.struct_class = Types::Occurrences

    Page.add_member(:line_range, Shapes::ShapeRef.new(shape: Range, location_name: "lineRange"))
    Page.add_member(:offset_range, Shapes::ShapeRef.new(shape: Range, location_name: "offsetRange"))
    Page.add_member(:page_number, Shapes::ShapeRef.new(shape: __long, location_name: "pageNumber"))
    Page.struct_class = Types::Page

    Pages.member = Shapes::ShapeRef.new(shape: Page)

    PolicyDetails.add_member(:action, Shapes::ShapeRef.new(shape: FindingAction, location_name: "action"))
    PolicyDetails.add_member(:actor, Shapes::ShapeRef.new(shape: FindingActor, location_name: "actor"))
    PolicyDetails.struct_class = Types::PolicyDetails

    PutClassificationExportConfigurationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ClassificationExportConfiguration, required: true, location_name: "configuration"))
    PutClassificationExportConfigurationRequest.struct_class = Types::PutClassificationExportConfigurationRequest

    PutClassificationExportConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: ClassificationExportConfiguration, location_name: "configuration"))
    PutClassificationExportConfigurationResponse.struct_class = Types::PutClassificationExportConfigurationResponse

    PutFindingsPublicationConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __string, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    PutFindingsPublicationConfigurationRequest.add_member(:security_hub_configuration, Shapes::ShapeRef.new(shape: SecurityHubConfiguration, location_name: "securityHubConfiguration"))
    PutFindingsPublicationConfigurationRequest.struct_class = Types::PutFindingsPublicationConfigurationRequest

    PutFindingsPublicationConfigurationResponse.struct_class = Types::PutFindingsPublicationConfigurationResponse

    Range.add_member(:end, Shapes::ShapeRef.new(shape: __long, location_name: "end"))
    Range.add_member(:start, Shapes::ShapeRef.new(shape: __long, location_name: "start"))
    Range.add_member(:start_column, Shapes::ShapeRef.new(shape: __long, location_name: "startColumn"))
    Range.struct_class = Types::Range

    Ranges.member = Shapes::ShapeRef.new(shape: Range)

    Record.add_member(:json_path, Shapes::ShapeRef.new(shape: __string, location_name: "jsonPath"))
    Record.add_member(:record_index, Shapes::ShapeRef.new(shape: __long, location_name: "recordIndex"))
    Record.struct_class = Types::Record

    Records.member = Shapes::ShapeRef.new(shape: Record)

    ReplicationDetails.add_member(:replicated, Shapes::ShapeRef.new(shape: __boolean, location_name: "replicated"))
    ReplicationDetails.add_member(:replicated_externally, Shapes::ShapeRef.new(shape: __boolean, location_name: "replicatedExternally"))
    ReplicationDetails.add_member(:replication_accounts, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "replicationAccounts"))
    ReplicationDetails.struct_class = Types::ReplicationDetails

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceProfileArtifact.add_member(:arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "arn"))
    ResourceProfileArtifact.add_member(:classification_result_status, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "classificationResultStatus"))
    ResourceProfileArtifact.add_member(:sensitive, Shapes::ShapeRef.new(shape: __boolean, location_name: "sensitive"))
    ResourceProfileArtifact.struct_class = Types::ResourceProfileArtifact

    ResourceStatistics.add_member(:total_bytes_classified, Shapes::ShapeRef.new(shape: __long, location_name: "totalBytesClassified"))
    ResourceStatistics.add_member(:total_detections, Shapes::ShapeRef.new(shape: __long, location_name: "totalDetections"))
    ResourceStatistics.add_member(:total_detections_suppressed, Shapes::ShapeRef.new(shape: __long, location_name: "totalDetectionsSuppressed"))
    ResourceStatistics.add_member(:total_items_classified, Shapes::ShapeRef.new(shape: __long, location_name: "totalItemsClassified"))
    ResourceStatistics.add_member(:total_items_sensitive, Shapes::ShapeRef.new(shape: __long, location_name: "totalItemsSensitive"))
    ResourceStatistics.add_member(:total_items_skipped, Shapes::ShapeRef.new(shape: __long, location_name: "totalItemsSkipped"))
    ResourceStatistics.add_member(:total_items_skipped_invalid_encryption, Shapes::ShapeRef.new(shape: __long, location_name: "totalItemsSkippedInvalidEncryption"))
    ResourceStatistics.add_member(:total_items_skipped_invalid_kms, Shapes::ShapeRef.new(shape: __long, location_name: "totalItemsSkippedInvalidKms"))
    ResourceStatistics.add_member(:total_items_skipped_permission_denied, Shapes::ShapeRef.new(shape: __long, location_name: "totalItemsSkippedPermissionDenied"))
    ResourceStatistics.struct_class = Types::ResourceStatistics

    ResourcesAffected.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    ResourcesAffected.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "s3Object"))
    ResourcesAffected.struct_class = Types::ResourcesAffected

    RevealConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: __stringMin1Max2048, location_name: "kmsKeyId"))
    RevealConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: RevealStatus, required: true, location_name: "status"))
    RevealConfiguration.struct_class = Types::RevealConfiguration

    S3Bucket.add_member(:allows_unencrypted_object_uploads, Shapes::ShapeRef.new(shape: AllowsUnencryptedObjectUploads, location_name: "allowsUnencryptedObjectUploads"))
    S3Bucket.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    S3Bucket.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    S3Bucket.add_member(:default_server_side_encryption, Shapes::ShapeRef.new(shape: ServerSideEncryption, location_name: "defaultServerSideEncryption"))
    S3Bucket.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    S3Bucket.add_member(:owner, Shapes::ShapeRef.new(shape: S3BucketOwner, location_name: "owner"))
    S3Bucket.add_member(:public_access, Shapes::ShapeRef.new(shape: BucketPublicAccess, location_name: "publicAccess"))
    S3Bucket.add_member(:tags, Shapes::ShapeRef.new(shape: KeyValuePairList, location_name: "tags"))
    S3Bucket.struct_class = Types::S3Bucket

    S3BucketCriteriaForJob.add_member(:excludes, Shapes::ShapeRef.new(shape: CriteriaBlockForJob, location_name: "excludes"))
    S3BucketCriteriaForJob.add_member(:includes, Shapes::ShapeRef.new(shape: CriteriaBlockForJob, location_name: "includes"))
    S3BucketCriteriaForJob.struct_class = Types::S3BucketCriteriaForJob

    S3BucketDefinitionForJob.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "accountId"))
    S3BucketDefinitionForJob.add_member(:buckets, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "buckets"))
    S3BucketDefinitionForJob.struct_class = Types::S3BucketDefinitionForJob

    S3BucketOwner.add_member(:display_name, Shapes::ShapeRef.new(shape: __string, location_name: "displayName"))
    S3BucketOwner.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    S3BucketOwner.struct_class = Types::S3BucketOwner

    S3ClassificationScope.add_member(:excludes, Shapes::ShapeRef.new(shape: S3ClassificationScopeExclusion, required: true, location_name: "excludes"))
    S3ClassificationScope.struct_class = Types::S3ClassificationScope

    S3ClassificationScopeExclusion.add_member(:bucket_names, Shapes::ShapeRef.new(shape: __listOfS3BucketName, required: true, location_name: "bucketNames"))
    S3ClassificationScopeExclusion.struct_class = Types::S3ClassificationScopeExclusion

    S3ClassificationScopeExclusionUpdate.add_member(:bucket_names, Shapes::ShapeRef.new(shape: __listOfS3BucketName, required: true, location_name: "bucketNames"))
    S3ClassificationScopeExclusionUpdate.add_member(:operation, Shapes::ShapeRef.new(shape: ClassificationScopeUpdateOperation, required: true, location_name: "operation"))
    S3ClassificationScopeExclusionUpdate.struct_class = Types::S3ClassificationScopeExclusionUpdate

    S3ClassificationScopeUpdate.add_member(:excludes, Shapes::ShapeRef.new(shape: S3ClassificationScopeExclusionUpdate, required: true, location_name: "excludes"))
    S3ClassificationScopeUpdate.struct_class = Types::S3ClassificationScopeUpdate

    S3Destination.add_member(:bucket_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "bucketName"))
    S3Destination.add_member(:key_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "keyPrefix"))
    S3Destination.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "kmsKeyArn"))
    S3Destination.struct_class = Types::S3Destination

    S3JobDefinition.add_member(:bucket_criteria, Shapes::ShapeRef.new(shape: S3BucketCriteriaForJob, location_name: "bucketCriteria"))
    S3JobDefinition.add_member(:bucket_definitions, Shapes::ShapeRef.new(shape: __listOfS3BucketDefinitionForJob, location_name: "bucketDefinitions"))
    S3JobDefinition.add_member(:scoping, Shapes::ShapeRef.new(shape: Scoping, location_name: "scoping"))
    S3JobDefinition.struct_class = Types::S3JobDefinition

    S3Object.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bucketArn"))
    S3Object.add_member(:e_tag, Shapes::ShapeRef.new(shape: __string, location_name: "eTag"))
    S3Object.add_member(:extension, Shapes::ShapeRef.new(shape: __string, location_name: "extension"))
    S3Object.add_member(:key, Shapes::ShapeRef.new(shape: __string, location_name: "key"))
    S3Object.add_member(:last_modified, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastModified"))
    S3Object.add_member(:path, Shapes::ShapeRef.new(shape: __string, location_name: "path"))
    S3Object.add_member(:public_access, Shapes::ShapeRef.new(shape: __boolean, location_name: "publicAccess"))
    S3Object.add_member(:server_side_encryption, Shapes::ShapeRef.new(shape: ServerSideEncryption, location_name: "serverSideEncryption"))
    S3Object.add_member(:size, Shapes::ShapeRef.new(shape: __long, location_name: "size"))
    S3Object.add_member(:storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "storageClass"))
    S3Object.add_member(:tags, Shapes::ShapeRef.new(shape: KeyValuePairList, location_name: "tags"))
    S3Object.add_member(:version_id, Shapes::ShapeRef.new(shape: __string, location_name: "versionId"))
    S3Object.struct_class = Types::S3Object

    S3WordsList.add_member(:bucket_name, Shapes::ShapeRef.new(shape: __stringMin3Max255PatternAZaZ093255, required: true, location_name: "bucketName"))
    S3WordsList.add_member(:object_key, Shapes::ShapeRef.new(shape: __stringMin1Max1024PatternSS, required: true, location_name: "objectKey"))
    S3WordsList.struct_class = Types::S3WordsList

    Scoping.add_member(:excludes, Shapes::ShapeRef.new(shape: JobScopingBlock, location_name: "excludes"))
    Scoping.add_member(:includes, Shapes::ShapeRef.new(shape: JobScopingBlock, location_name: "includes"))
    Scoping.struct_class = Types::Scoping

    SearchResourcesBucketCriteria.add_member(:excludes, Shapes::ShapeRef.new(shape: SearchResourcesCriteriaBlock, location_name: "excludes"))
    SearchResourcesBucketCriteria.add_member(:includes, Shapes::ShapeRef.new(shape: SearchResourcesCriteriaBlock, location_name: "includes"))
    SearchResourcesBucketCriteria.struct_class = Types::SearchResourcesBucketCriteria

    SearchResourcesCriteria.add_member(:simple_criterion, Shapes::ShapeRef.new(shape: SearchResourcesSimpleCriterion, location_name: "simpleCriterion"))
    SearchResourcesCriteria.add_member(:tag_criterion, Shapes::ShapeRef.new(shape: SearchResourcesTagCriterion, location_name: "tagCriterion"))
    SearchResourcesCriteria.struct_class = Types::SearchResourcesCriteria

    SearchResourcesCriteriaBlock.add_member(:and, Shapes::ShapeRef.new(shape: __listOfSearchResourcesCriteria, location_name: "and"))
    SearchResourcesCriteriaBlock.struct_class = Types::SearchResourcesCriteriaBlock

    SearchResourcesRequest.add_member(:bucket_criteria, Shapes::ShapeRef.new(shape: SearchResourcesBucketCriteria, location_name: "bucketCriteria"))
    SearchResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    SearchResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    SearchResourcesRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: SearchResourcesSortCriteria, location_name: "sortCriteria"))
    SearchResourcesRequest.struct_class = Types::SearchResourcesRequest

    SearchResourcesResponse.add_member(:matching_resources, Shapes::ShapeRef.new(shape: __listOfMatchingResource, location_name: "matchingResources"))
    SearchResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    SearchResourcesResponse.struct_class = Types::SearchResourcesResponse

    SearchResourcesSimpleCriterion.add_member(:comparator, Shapes::ShapeRef.new(shape: SearchResourcesComparator, location_name: "comparator"))
    SearchResourcesSimpleCriterion.add_member(:key, Shapes::ShapeRef.new(shape: SearchResourcesSimpleCriterionKey, location_name: "key"))
    SearchResourcesSimpleCriterion.add_member(:values, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "values"))
    SearchResourcesSimpleCriterion.struct_class = Types::SearchResourcesSimpleCriterion

    SearchResourcesSortCriteria.add_member(:attribute_name, Shapes::ShapeRef.new(shape: SearchResourcesSortAttributeName, location_name: "attributeName"))
    SearchResourcesSortCriteria.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    SearchResourcesSortCriteria.struct_class = Types::SearchResourcesSortCriteria

    SearchResourcesTagCriterion.add_member(:comparator, Shapes::ShapeRef.new(shape: SearchResourcesComparator, location_name: "comparator"))
    SearchResourcesTagCriterion.add_member(:tag_values, Shapes::ShapeRef.new(shape: __listOfSearchResourcesTagCriterionPair, location_name: "tagValues"))
    SearchResourcesTagCriterion.struct_class = Types::SearchResourcesTagCriterion

    SearchResourcesTagCriterionPair.add_member(:key, Shapes::ShapeRef.new(shape: __string, location_name: "key"))
    SearchResourcesTagCriterionPair.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "value"))
    SearchResourcesTagCriterionPair.struct_class = Types::SearchResourcesTagCriterionPair

    SecurityHubConfiguration.add_member(:publish_classification_findings, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "publishClassificationFindings"))
    SecurityHubConfiguration.add_member(:publish_policy_findings, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "publishPolicyFindings"))
    SecurityHubConfiguration.struct_class = Types::SecurityHubConfiguration

    SensitiveData.member = Shapes::ShapeRef.new(shape: SensitiveDataItem)

    SensitiveDataItem.add_member(:category, Shapes::ShapeRef.new(shape: SensitiveDataItemCategory, location_name: "category"))
    SensitiveDataItem.add_member(:detections, Shapes::ShapeRef.new(shape: DefaultDetections, location_name: "detections"))
    SensitiveDataItem.add_member(:total_count, Shapes::ShapeRef.new(shape: __long, location_name: "totalCount"))
    SensitiveDataItem.struct_class = Types::SensitiveDataItem

    SensitiveDataOccurrences.key = Shapes::ShapeRef.new(shape: __string)
    SensitiveDataOccurrences.value = Shapes::ShapeRef.new(shape: __listOfDetectedDataDetails)

    SensitivityAggregations.add_member(:classifiable_size_in_bytes, Shapes::ShapeRef.new(shape: __long, location_name: "classifiableSizeInBytes"))
    SensitivityAggregations.add_member(:publicly_accessible_count, Shapes::ShapeRef.new(shape: __long, location_name: "publiclyAccessibleCount"))
    SensitivityAggregations.add_member(:total_count, Shapes::ShapeRef.new(shape: __long, location_name: "totalCount"))
    SensitivityAggregations.add_member(:total_size_in_bytes, Shapes::ShapeRef.new(shape: __long, location_name: "totalSizeInBytes"))
    SensitivityAggregations.struct_class = Types::SensitivityAggregations

    SensitivityInspectionTemplateExcludes.add_member(:managed_data_identifier_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "managedDataIdentifierIds"))
    SensitivityInspectionTemplateExcludes.struct_class = Types::SensitivityInspectionTemplateExcludes

    SensitivityInspectionTemplateIncludes.add_member(:allow_list_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "allowListIds"))
    SensitivityInspectionTemplateIncludes.add_member(:custom_data_identifier_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "customDataIdentifierIds"))
    SensitivityInspectionTemplateIncludes.add_member(:managed_data_identifier_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "managedDataIdentifierIds"))
    SensitivityInspectionTemplateIncludes.struct_class = Types::SensitivityInspectionTemplateIncludes

    SensitivityInspectionTemplatesEntry.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    SensitivityInspectionTemplatesEntry.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    SensitivityInspectionTemplatesEntry.struct_class = Types::SensitivityInspectionTemplatesEntry

    ServerSideEncryption.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, location_name: "encryptionType"))
    ServerSideEncryption.add_member(:kms_master_key_id, Shapes::ShapeRef.new(shape: __string, location_name: "kmsMasterKeyId"))
    ServerSideEncryption.struct_class = Types::ServerSideEncryption

    ServiceLimit.add_member(:is_service_limited, Shapes::ShapeRef.new(shape: __boolean, location_name: "isServiceLimited"))
    ServiceLimit.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, location_name: "unit"))
    ServiceLimit.add_member(:value, Shapes::ShapeRef.new(shape: __long, location_name: "value"))
    ServiceLimit.struct_class = Types::ServiceLimit

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SessionContext.add_member(:attributes, Shapes::ShapeRef.new(shape: SessionContextAttributes, location_name: "attributes"))
    SessionContext.add_member(:session_issuer, Shapes::ShapeRef.new(shape: SessionIssuer, location_name: "sessionIssuer"))
    SessionContext.struct_class = Types::SessionContext

    SessionContextAttributes.add_member(:creation_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "creationDate"))
    SessionContextAttributes.add_member(:mfa_authenticated, Shapes::ShapeRef.new(shape: __boolean, location_name: "mfaAuthenticated"))
    SessionContextAttributes.struct_class = Types::SessionContextAttributes

    SessionIssuer.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    SessionIssuer.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    SessionIssuer.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, location_name: "principalId"))
    SessionIssuer.add_member(:type, Shapes::ShapeRef.new(shape: __string, location_name: "type"))
    SessionIssuer.add_member(:user_name, Shapes::ShapeRef.new(shape: __string, location_name: "userName"))
    SessionIssuer.struct_class = Types::SessionIssuer

    Severity.add_member(:description, Shapes::ShapeRef.new(shape: SeverityDescription, location_name: "description"))
    Severity.add_member(:score, Shapes::ShapeRef.new(shape: __long, location_name: "score"))
    Severity.struct_class = Types::Severity

    SeverityLevel.add_member(:occurrences_threshold, Shapes::ShapeRef.new(shape: __long, required: true, location_name: "occurrencesThreshold"))
    SeverityLevel.add_member(:severity, Shapes::ShapeRef.new(shape: DataIdentifierSeverity, required: true, location_name: "severity"))
    SeverityLevel.struct_class = Types::SeverityLevel

    SeverityLevelList.member = Shapes::ShapeRef.new(shape: SeverityLevel)

    SimpleCriterionForJob.add_member(:comparator, Shapes::ShapeRef.new(shape: JobComparator, location_name: "comparator"))
    SimpleCriterionForJob.add_member(:key, Shapes::ShapeRef.new(shape: SimpleCriterionKeyForJob, location_name: "key"))
    SimpleCriterionForJob.add_member(:values, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "values"))
    SimpleCriterionForJob.struct_class = Types::SimpleCriterionForJob

    SimpleScopeTerm.add_member(:comparator, Shapes::ShapeRef.new(shape: JobComparator, location_name: "comparator"))
    SimpleScopeTerm.add_member(:key, Shapes::ShapeRef.new(shape: ScopeFilterKey, location_name: "key"))
    SimpleScopeTerm.add_member(:values, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "values"))
    SimpleScopeTerm.struct_class = Types::SimpleScopeTerm

    SortCriteria.add_member(:attribute_name, Shapes::ShapeRef.new(shape: __string, location_name: "attributeName"))
    SortCriteria.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    SortCriteria.struct_class = Types::SortCriteria

    Statistics.add_member(:approximate_number_of_objects_to_process, Shapes::ShapeRef.new(shape: __double, location_name: "approximateNumberOfObjectsToProcess"))
    Statistics.add_member(:number_of_runs, Shapes::ShapeRef.new(shape: __double, location_name: "numberOfRuns"))
    Statistics.struct_class = Types::Statistics

    SuppressDataIdentifier.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    SuppressDataIdentifier.add_member(:type, Shapes::ShapeRef.new(shape: DataIdentifierType, location_name: "type"))
    SuppressDataIdentifier.struct_class = Types::SuppressDataIdentifier

    TagCriterionForJob.add_member(:comparator, Shapes::ShapeRef.new(shape: JobComparator, location_name: "comparator"))
    TagCriterionForJob.add_member(:tag_values, Shapes::ShapeRef.new(shape: __listOfTagCriterionPairForJob, location_name: "tagValues"))
    TagCriterionForJob.struct_class = Types::TagCriterionForJob

    TagCriterionPairForJob.add_member(:key, Shapes::ShapeRef.new(shape: __string, location_name: "key"))
    TagCriterionPairForJob.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "value"))
    TagCriterionPairForJob.struct_class = Types::TagCriterionPairForJob

    TagMap.key = Shapes::ShapeRef.new(shape: __string)
    TagMap.value = Shapes::ShapeRef.new(shape: __string)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagScopeTerm.add_member(:comparator, Shapes::ShapeRef.new(shape: JobComparator, location_name: "comparator"))
    TagScopeTerm.add_member(:key, Shapes::ShapeRef.new(shape: __string, location_name: "key"))
    TagScopeTerm.add_member(:tag_values, Shapes::ShapeRef.new(shape: __listOfTagValuePair, location_name: "tagValues"))
    TagScopeTerm.add_member(:target, Shapes::ShapeRef.new(shape: TagTarget, location_name: "target"))
    TagScopeTerm.struct_class = Types::TagScopeTerm

    TagValuePair.add_member(:key, Shapes::ShapeRef.new(shape: __string, location_name: "key"))
    TagValuePair.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "value"))
    TagValuePair.struct_class = Types::TagValuePair

    TestCustomDataIdentifierRequest.add_member(:ignore_words, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "ignoreWords"))
    TestCustomDataIdentifierRequest.add_member(:keywords, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "keywords"))
    TestCustomDataIdentifierRequest.add_member(:maximum_match_distance, Shapes::ShapeRef.new(shape: __integer, location_name: "maximumMatchDistance"))
    TestCustomDataIdentifierRequest.add_member(:regex, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "regex"))
    TestCustomDataIdentifierRequest.add_member(:sample_text, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "sampleText"))
    TestCustomDataIdentifierRequest.struct_class = Types::TestCustomDataIdentifierRequest

    TestCustomDataIdentifierResponse.add_member(:match_count, Shapes::ShapeRef.new(shape: __integer, location_name: "matchCount"))
    TestCustomDataIdentifierResponse.struct_class = Types::TestCustomDataIdentifierResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UnprocessableEntityException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    UnprocessableEntityException.struct_class = Types::UnprocessableEntityException

    UnprocessedAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    UnprocessedAccount.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    UnprocessedAccount.add_member(:error_message, Shapes::ShapeRef.new(shape: __string, location_name: "errorMessage"))
    UnprocessedAccount.struct_class = Types::UnprocessedAccount

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAllowListRequest.add_member(:criteria, Shapes::ShapeRef.new(shape: AllowListCriteria, required: true, location_name: "criteria"))
    UpdateAllowListRequest.add_member(:description, Shapes::ShapeRef.new(shape: __stringMin1Max512PatternSS, location_name: "description"))
    UpdateAllowListRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    UpdateAllowListRequest.add_member(:name, Shapes::ShapeRef.new(shape: __stringMin1Max128Pattern, required: true, location_name: "name"))
    UpdateAllowListRequest.struct_class = Types::UpdateAllowListRequest

    UpdateAllowListResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922, location_name: "arn"))
    UpdateAllowListResponse.add_member(:id, Shapes::ShapeRef.new(shape: __stringMin22Max22PatternAZ0922, location_name: "id"))
    UpdateAllowListResponse.struct_class = Types::UpdateAllowListResponse

    UpdateAutomatedDiscoveryConfigurationRequest.add_member(:status, Shapes::ShapeRef.new(shape: AutomatedDiscoveryStatus, required: true, location_name: "status"))
    UpdateAutomatedDiscoveryConfigurationRequest.struct_class = Types::UpdateAutomatedDiscoveryConfigurationRequest

    UpdateAutomatedDiscoveryConfigurationResponse.struct_class = Types::UpdateAutomatedDiscoveryConfigurationResponse

    UpdateClassificationJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "jobId"))
    UpdateClassificationJobRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "jobStatus"))
    UpdateClassificationJobRequest.struct_class = Types::UpdateClassificationJobRequest

    UpdateClassificationJobResponse.struct_class = Types::UpdateClassificationJobResponse

    UpdateClassificationScopeRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    UpdateClassificationScopeRequest.add_member(:s3, Shapes::ShapeRef.new(shape: S3ClassificationScopeUpdate, location_name: "s3"))
    UpdateClassificationScopeRequest.struct_class = Types::UpdateClassificationScopeRequest

    UpdateClassificationScopeResponse.struct_class = Types::UpdateClassificationScopeResponse

    UpdateFindingsFilterRequest.add_member(:action, Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: "action"))
    UpdateFindingsFilterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __string, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateFindingsFilterRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateFindingsFilterRequest.add_member(:finding_criteria, Shapes::ShapeRef.new(shape: FindingCriteria, location_name: "findingCriteria"))
    UpdateFindingsFilterRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    UpdateFindingsFilterRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    UpdateFindingsFilterRequest.add_member(:position, Shapes::ShapeRef.new(shape: __integer, location_name: "position"))
    UpdateFindingsFilterRequest.struct_class = Types::UpdateFindingsFilterRequest

    UpdateFindingsFilterResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UpdateFindingsFilterResponse.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    UpdateFindingsFilterResponse.struct_class = Types::UpdateFindingsFilterResponse

    UpdateMacieSessionRequest.add_member(:finding_publishing_frequency, Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: "findingPublishingFrequency"))
    UpdateMacieSessionRequest.add_member(:status, Shapes::ShapeRef.new(shape: MacieStatus, location_name: "status"))
    UpdateMacieSessionRequest.struct_class = Types::UpdateMacieSessionRequest

    UpdateMacieSessionResponse.struct_class = Types::UpdateMacieSessionResponse

    UpdateMemberSessionRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    UpdateMemberSessionRequest.add_member(:status, Shapes::ShapeRef.new(shape: MacieStatus, required: true, location_name: "status"))
    UpdateMemberSessionRequest.struct_class = Types::UpdateMemberSessionRequest

    UpdateMemberSessionResponse.struct_class = Types::UpdateMemberSessionResponse

    UpdateOrganizationConfigurationRequest.add_member(:auto_enable, Shapes::ShapeRef.new(shape: __boolean, required: true, location_name: "autoEnable"))
    UpdateOrganizationConfigurationRequest.struct_class = Types::UpdateOrganizationConfigurationRequest

    UpdateOrganizationConfigurationResponse.struct_class = Types::UpdateOrganizationConfigurationResponse

    UpdateResourceProfileDetectionsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "resourceArn"))
    UpdateResourceProfileDetectionsRequest.add_member(:suppress_data_identifiers, Shapes::ShapeRef.new(shape: __listOfSuppressDataIdentifier, location_name: "suppressDataIdentifiers"))
    UpdateResourceProfileDetectionsRequest.struct_class = Types::UpdateResourceProfileDetectionsRequest

    UpdateResourceProfileDetectionsResponse.struct_class = Types::UpdateResourceProfileDetectionsResponse

    UpdateResourceProfileRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "resourceArn"))
    UpdateResourceProfileRequest.add_member(:sensitivity_score_override, Shapes::ShapeRef.new(shape: __integer, location_name: "sensitivityScoreOverride"))
    UpdateResourceProfileRequest.struct_class = Types::UpdateResourceProfileRequest

    UpdateResourceProfileResponse.struct_class = Types::UpdateResourceProfileResponse

    UpdateRevealConfigurationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: RevealConfiguration, required: true, location_name: "configuration"))
    UpdateRevealConfigurationRequest.struct_class = Types::UpdateRevealConfigurationRequest

    UpdateRevealConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: RevealConfiguration, location_name: "configuration"))
    UpdateRevealConfigurationResponse.struct_class = Types::UpdateRevealConfigurationResponse

    UpdateSensitivityInspectionTemplateRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateSensitivityInspectionTemplateRequest.add_member(:excludes, Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateExcludes, location_name: "excludes"))
    UpdateSensitivityInspectionTemplateRequest.add_member(:id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "id"))
    UpdateSensitivityInspectionTemplateRequest.add_member(:includes, Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateIncludes, location_name: "includes"))
    UpdateSensitivityInspectionTemplateRequest.struct_class = Types::UpdateSensitivityInspectionTemplateRequest

    UpdateSensitivityInspectionTemplateResponse.struct_class = Types::UpdateSensitivityInspectionTemplateResponse

    UsageByAccount.add_member(:currency, Shapes::ShapeRef.new(shape: Currency, location_name: "currency"))
    UsageByAccount.add_member(:estimated_cost, Shapes::ShapeRef.new(shape: __string, location_name: "estimatedCost"))
    UsageByAccount.add_member(:service_limit, Shapes::ShapeRef.new(shape: ServiceLimit, location_name: "serviceLimit"))
    UsageByAccount.add_member(:type, Shapes::ShapeRef.new(shape: UsageType, location_name: "type"))
    UsageByAccount.struct_class = Types::UsageByAccount

    UsageRecord.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    UsageRecord.add_member(:automated_discovery_free_trial_start_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "automatedDiscoveryFreeTrialStartDate"))
    UsageRecord.add_member(:free_trial_start_date, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "freeTrialStartDate"))
    UsageRecord.add_member(:usage, Shapes::ShapeRef.new(shape: __listOfUsageByAccount, location_name: "usage"))
    UsageRecord.struct_class = Types::UsageRecord

    UsageStatisticsFilter.add_member(:comparator, Shapes::ShapeRef.new(shape: UsageStatisticsFilterComparator, location_name: "comparator"))
    UsageStatisticsFilter.add_member(:key, Shapes::ShapeRef.new(shape: UsageStatisticsFilterKey, location_name: "key"))
    UsageStatisticsFilter.add_member(:values, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "values"))
    UsageStatisticsFilter.struct_class = Types::UsageStatisticsFilter

    UsageStatisticsSortBy.add_member(:key, Shapes::ShapeRef.new(shape: UsageStatisticsSortKey, location_name: "key"))
    UsageStatisticsSortBy.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    UsageStatisticsSortBy.struct_class = Types::UsageStatisticsSortBy

    UsageTotal.add_member(:currency, Shapes::ShapeRef.new(shape: Currency, location_name: "currency"))
    UsageTotal.add_member(:estimated_cost, Shapes::ShapeRef.new(shape: __string, location_name: "estimatedCost"))
    UsageTotal.add_member(:type, Shapes::ShapeRef.new(shape: UsageType, location_name: "type"))
    UsageTotal.struct_class = Types::UsageTotal

    UserIdentity.add_member(:assumed_role, Shapes::ShapeRef.new(shape: AssumedRole, location_name: "assumedRole"))
    UserIdentity.add_member(:aws_account, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "awsAccount"))
    UserIdentity.add_member(:aws_service, Shapes::ShapeRef.new(shape: AwsService, location_name: "awsService"))
    UserIdentity.add_member(:federated_user, Shapes::ShapeRef.new(shape: FederatedUser, location_name: "federatedUser"))
    UserIdentity.add_member(:iam_user, Shapes::ShapeRef.new(shape: IamUser, location_name: "iamUser"))
    UserIdentity.add_member(:root, Shapes::ShapeRef.new(shape: UserIdentityRoot, location_name: "root"))
    UserIdentity.add_member(:type, Shapes::ShapeRef.new(shape: UserIdentityType, location_name: "type"))
    UserIdentity.struct_class = Types::UserIdentity

    UserIdentityRoot.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    UserIdentityRoot.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    UserIdentityRoot.add_member(:principal_id, Shapes::ShapeRef.new(shape: __string, location_name: "principalId"))
    UserIdentityRoot.struct_class = Types::UserIdentityRoot

    UserPausedDetails.add_member(:job_expires_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "jobExpiresAt"))
    UserPausedDetails.add_member(:job_imminent_expiration_health_event_arn, Shapes::ShapeRef.new(shape: __string, location_name: "jobImminentExpirationHealthEventArn"))
    UserPausedDetails.add_member(:job_paused_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "jobPausedAt"))
    UserPausedDetails.struct_class = Types::UserPausedDetails

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    WeeklySchedule.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "dayOfWeek"))
    WeeklySchedule.struct_class = Types::WeeklySchedule

    __listOfAdminAccount.member = Shapes::ShapeRef.new(shape: AdminAccount)

    __listOfAllowListSummary.member = Shapes::ShapeRef.new(shape: AllowListSummary)

    __listOfBatchGetCustomDataIdentifierSummary.member = Shapes::ShapeRef.new(shape: BatchGetCustomDataIdentifierSummary)

    __listOfBucketMetadata.member = Shapes::ShapeRef.new(shape: BucketMetadata)

    __listOfClassificationScopeSummary.member = Shapes::ShapeRef.new(shape: ClassificationScopeSummary)

    __listOfCriteriaForJob.member = Shapes::ShapeRef.new(shape: CriteriaForJob)

    __listOfCustomDataIdentifierSummary.member = Shapes::ShapeRef.new(shape: CustomDataIdentifierSummary)

    __listOfDetectedDataDetails.member = Shapes::ShapeRef.new(shape: DetectedDataDetails)

    __listOfDetection.member = Shapes::ShapeRef.new(shape: Detection)

    __listOfFinding.member = Shapes::ShapeRef.new(shape: Finding)

    __listOfFindingType.member = Shapes::ShapeRef.new(shape: FindingType)

    __listOfFindingsFilterListItem.member = Shapes::ShapeRef.new(shape: FindingsFilterListItem)

    __listOfGroupCount.member = Shapes::ShapeRef.new(shape: GroupCount)

    __listOfInvitation.member = Shapes::ShapeRef.new(shape: Invitation)

    __listOfJobScopeTerm.member = Shapes::ShapeRef.new(shape: JobScopeTerm)

    __listOfJobSummary.member = Shapes::ShapeRef.new(shape: JobSummary)

    __listOfKeyValuePair.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    __listOfListJobsFilterTerm.member = Shapes::ShapeRef.new(shape: ListJobsFilterTerm)

    __listOfManagedDataIdentifierSummary.member = Shapes::ShapeRef.new(shape: ManagedDataIdentifierSummary)

    __listOfMatchingResource.member = Shapes::ShapeRef.new(shape: MatchingResource)

    __listOfMember.member = Shapes::ShapeRef.new(shape: Member)

    __listOfResourceProfileArtifact.member = Shapes::ShapeRef.new(shape: ResourceProfileArtifact)

    __listOfS3BucketDefinitionForJob.member = Shapes::ShapeRef.new(shape: S3BucketDefinitionForJob)

    __listOfS3BucketName.member = Shapes::ShapeRef.new(shape: S3BucketName)

    __listOfSearchResourcesCriteria.member = Shapes::ShapeRef.new(shape: SearchResourcesCriteria)

    __listOfSearchResourcesTagCriterionPair.member = Shapes::ShapeRef.new(shape: SearchResourcesTagCriterionPair)

    __listOfSensitivityInspectionTemplatesEntry.member = Shapes::ShapeRef.new(shape: SensitivityInspectionTemplatesEntry)

    __listOfSuppressDataIdentifier.member = Shapes::ShapeRef.new(shape: SuppressDataIdentifier)

    __listOfTagCriterionPairForJob.member = Shapes::ShapeRef.new(shape: TagCriterionPairForJob)

    __listOfTagValuePair.member = Shapes::ShapeRef.new(shape: TagValuePair)

    __listOfUnavailabilityReasonCode.member = Shapes::ShapeRef.new(shape: UnavailabilityReasonCode)

    __listOfUnprocessedAccount.member = Shapes::ShapeRef.new(shape: UnprocessedAccount)

    __listOfUsageByAccount.member = Shapes::ShapeRef.new(shape: UsageByAccount)

    __listOfUsageRecord.member = Shapes::ShapeRef.new(shape: UsageRecord)

    __listOfUsageStatisticsFilter.member = Shapes::ShapeRef.new(shape: UsageStatisticsFilter)

    __listOfUsageTotal.member = Shapes::ShapeRef.new(shape: UsageTotal)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-01-01"

      api.metadata = {
        "apiVersion" => "2020-01-01",
        "endpointPrefix" => "macie2",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Macie 2",
        "serviceId" => "Macie2",
        "signatureVersion" => "v4",
        "signingName" => "macie2",
        "uid" => "macie2-2020-01-01",
      }

      api.add_operation(:accept_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/invitations/accept"
        o.input = Shapes::ShapeRef.new(shape: AcceptInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: AcceptInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:batch_get_custom_data_identifiers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetCustomDataIdentifiers"
        o.http_method = "POST"
        o.http_request_uri = "/custom-data-identifiers/get"
        o.input = Shapes::ShapeRef.new(shape: BatchGetCustomDataIdentifiersRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetCustomDataIdentifiersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_allow_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAllowList"
        o.http_method = "POST"
        o.http_request_uri = "/allow-lists"
        o.input = Shapes::ShapeRef.new(shape: CreateAllowListRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAllowListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_classification_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateClassificationJob"
        o.http_method = "POST"
        o.http_request_uri = "/jobs"
        o.input = Shapes::ShapeRef.new(shape: CreateClassificationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClassificationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_custom_data_identifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomDataIdentifier"
        o.http_method = "POST"
        o.http_request_uri = "/custom-data-identifiers"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomDataIdentifierRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomDataIdentifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_findings_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFindingsFilter"
        o.http_method = "POST"
        o.http_request_uri = "/findingsfilters"
        o.input = Shapes::ShapeRef.new(shape: CreateFindingsFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFindingsFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitations"
        o.input = Shapes::ShapeRef.new(shape: CreateInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMember"
        o.http_method = "POST"
        o.http_request_uri = "/members"
        o.input = Shapes::ShapeRef.new(shape: CreateMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:create_sample_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSampleFindings"
        o.http_method = "POST"
        o.http_request_uri = "/findings/sample"
        o.input = Shapes::ShapeRef.new(shape: CreateSampleFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSampleFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:decline_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeclineInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitations/decline"
        o.input = Shapes::ShapeRef.new(shape: DeclineInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeclineInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_allow_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAllowList"
        o.http_method = "DELETE"
        o.http_request_uri = "/allow-lists/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAllowListRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAllowListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_custom_data_identifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomDataIdentifier"
        o.http_method = "DELETE"
        o.http_request_uri = "/custom-data-identifiers/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomDataIdentifierRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomDataIdentifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_findings_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFindingsFilter"
        o.http_method = "DELETE"
        o.http_request_uri = "/findingsfilters/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFindingsFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFindingsFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/invitations/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:delete_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMember"
        o.http_method = "DELETE"
        o.http_request_uri = "/members/{id}"
        o.input = Shapes::ShapeRef.new(shape: DeleteMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_buckets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBuckets"
        o.http_method = "POST"
        o.http_request_uri = "/datasources/s3"
        o.input = Shapes::ShapeRef.new(shape: DescribeBucketsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBucketsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_classification_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeClassificationJob"
        o.http_method = "GET"
        o.http_request_uri = "/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeClassificationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClassificationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeOrganizationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/admin/configuration"
        o.input = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disable_macie, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableMacie"
        o.http_method = "DELETE"
        o.http_request_uri = "/macie"
        o.input = Shapes::ShapeRef.new(shape: DisableMacieRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableMacieResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disable_organization_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableOrganizationAdminAccount"
        o.http_method = "DELETE"
        o.http_request_uri = "/admin"
        o.input = Shapes::ShapeRef.new(shape: DisableOrganizationAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisableOrganizationAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_from_administrator_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFromAdministratorAccount"
        o.http_method = "POST"
        o.http_request_uri = "/administrator/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFromAdministratorAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFromAdministratorAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_from_master_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateFromMasterAccount"
        o.http_method = "POST"
        o.http_request_uri = "/master/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:disassociate_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMember"
        o.http_method = "POST"
        o.http_request_uri = "/members/disassociate/{id}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:enable_macie, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableMacie"
        o.http_method = "POST"
        o.http_request_uri = "/macie"
        o.input = Shapes::ShapeRef.new(shape: EnableMacieRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableMacieResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:enable_organization_admin_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableOrganizationAdminAccount"
        o.http_method = "POST"
        o.http_request_uri = "/admin"
        o.input = Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_administrator_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAdministratorAccount"
        o.http_method = "GET"
        o.http_request_uri = "/administrator"
        o.input = Shapes::ShapeRef.new(shape: GetAdministratorAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAdministratorAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_allow_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAllowList"
        o.http_method = "GET"
        o.http_request_uri = "/allow-lists/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetAllowListRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAllowListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_automated_discovery_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAutomatedDiscoveryConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/automated-discovery/configuration"
        o.input = Shapes::ShapeRef.new(shape: GetAutomatedDiscoveryConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAutomatedDiscoveryConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_bucket_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetBucketStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/datasources/s3/statistics"
        o.input = Shapes::ShapeRef.new(shape: GetBucketStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetBucketStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_classification_export_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetClassificationExportConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/classification-export-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetClassificationExportConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetClassificationExportConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_classification_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetClassificationScope"
        o.http_method = "GET"
        o.http_request_uri = "/classification-scopes/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetClassificationScopeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetClassificationScopeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_custom_data_identifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomDataIdentifier"
        o.http_method = "GET"
        o.http_request_uri = "/custom-data-identifiers/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetCustomDataIdentifierRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomDataIdentifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_finding_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/findings/statistics"
        o.input = Shapes::ShapeRef.new(shape: GetFindingStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindings"
        o.http_method = "POST"
        o.http_request_uri = "/findings/describe"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_findings_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingsFilter"
        o.http_method = "GET"
        o.http_request_uri = "/findingsfilters/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_findings_publication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetFindingsPublicationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/findings-publication-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetFindingsPublicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetFindingsPublicationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_invitations_count, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvitationsCount"
        o.http_method = "GET"
        o.http_request_uri = "/invitations/count"
        o.input = Shapes::ShapeRef.new(shape: GetInvitationsCountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvitationsCountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_macie_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMacieSession"
        o.http_method = "GET"
        o.http_request_uri = "/macie"
        o.input = Shapes::ShapeRef.new(shape: GetMacieSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMacieSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_master_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMasterAccount"
        o.http_method = "GET"
        o.http_request_uri = "/master"
        o.input = Shapes::ShapeRef.new(shape: GetMasterAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMasterAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_member, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMember"
        o.http_method = "GET"
        o.http_request_uri = "/members/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetMemberRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMemberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_resource_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceProfile"
        o.http_method = "GET"
        o.http_request_uri = "/resource-profiles"
        o.input = Shapes::ShapeRef.new(shape: GetResourceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_reveal_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRevealConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/reveal-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetRevealConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRevealConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_sensitive_data_occurrences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSensitiveDataOccurrences"
        o.http_method = "GET"
        o.http_request_uri = "/findings/{findingId}/reveal"
        o.input = Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_sensitive_data_occurrences_availability, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSensitiveDataOccurrencesAvailability"
        o.http_method = "GET"
        o.http_request_uri = "/findings/{findingId}/reveal/availability"
        o.input = Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesAvailabilityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesAvailabilityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_sensitivity_inspection_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSensitivityInspectionTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/templates/sensitivity-inspections/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetSensitivityInspectionTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSensitivityInspectionTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_usage_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUsageStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/usage/statistics"
        o.input = Shapes::ShapeRef.new(shape: GetUsageStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUsageStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_usage_totals, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetUsageTotals"
        o.http_method = "GET"
        o.http_request_uri = "/usage"
        o.input = Shapes::ShapeRef.new(shape: GetUsageTotalsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetUsageTotalsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_allow_lists, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAllowLists"
        o.http_method = "GET"
        o.http_request_uri = "/allow-lists"
        o.input = Shapes::ShapeRef.new(shape: ListAllowListsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAllowListsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_classification_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClassificationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/jobs/list"
        o.input = Shapes::ShapeRef.new(shape: ListClassificationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClassificationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_classification_scopes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClassificationScopes"
        o.http_method = "GET"
        o.http_request_uri = "/classification-scopes"
        o.input = Shapes::ShapeRef.new(shape: ListClassificationScopesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClassificationScopesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_custom_data_identifiers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomDataIdentifiers"
        o.http_method = "POST"
        o.http_request_uri = "/custom-data-identifiers/list"
        o.input = Shapes::ShapeRef.new(shape: ListCustomDataIdentifiersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomDataIdentifiersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.http_request_uri = "/findings"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_findings_filters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFindingsFilters"
        o.http_method = "GET"
        o.http_request_uri = "/findingsfilters"
        o.input = Shapes::ShapeRef.new(shape: ListFindingsFiltersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFindingsFiltersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvitations"
        o.http_method = "GET"
        o.http_request_uri = "/invitations"
        o.input = Shapes::ShapeRef.new(shape: ListInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_managed_data_identifiers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListManagedDataIdentifiers"
        o.http_method = "POST"
        o.http_request_uri = "/managed-data-identifiers/list"
        o.input = Shapes::ShapeRef.new(shape: ListManagedDataIdentifiersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListManagedDataIdentifiersResponse)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMembers"
        o.http_method = "GET"
        o.http_request_uri = "/members"
        o.input = Shapes::ShapeRef.new(shape: ListMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_organization_admin_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOrganizationAdminAccounts"
        o.http_method = "GET"
        o.http_request_uri = "/admin"
        o.input = Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_profile_artifacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceProfileArtifacts"
        o.http_method = "GET"
        o.http_request_uri = "/resource-profiles/artifacts"
        o.input = Shapes::ShapeRef.new(shape: ListResourceProfileArtifactsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceProfileArtifactsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_profile_detections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceProfileDetections"
        o.http_method = "GET"
        o.http_request_uri = "/resource-profiles/detections"
        o.input = Shapes::ShapeRef.new(shape: ListResourceProfileDetectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceProfileDetectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sensitivity_inspection_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSensitivityInspectionTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/templates/sensitivity-inspections"
        o.input = Shapes::ShapeRef.new(shape: ListSensitivityInspectionTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSensitivityInspectionTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
      end)

      api.add_operation(:put_classification_export_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutClassificationExportConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/classification-export-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutClassificationExportConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutClassificationExportConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:put_findings_publication_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutFindingsPublicationConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/findings-publication-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutFindingsPublicationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutFindingsPublicationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:search_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchResources"
        o.http_method = "POST"
        o.http_request_uri = "/datasources/search-resources"
        o.input = Shapes::ShapeRef.new(shape: SearchResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
      end)

      api.add_operation(:test_custom_data_identifier, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TestCustomDataIdentifier"
        o.http_method = "POST"
        o.http_request_uri = "/custom-data-identifiers/test"
        o.input = Shapes::ShapeRef.new(shape: TestCustomDataIdentifierRequest)
        o.output = Shapes::ShapeRef.new(shape: TestCustomDataIdentifierResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
      end)

      api.add_operation(:update_allow_list, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAllowList"
        o.http_method = "PUT"
        o.http_request_uri = "/allow-lists/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAllowListRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAllowListResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_automated_discovery_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAutomatedDiscoveryConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/automated-discovery/configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateAutomatedDiscoveryConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAutomatedDiscoveryConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_classification_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateClassificationJob"
        o.http_method = "PATCH"
        o.http_request_uri = "/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateClassificationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClassificationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_classification_scope, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateClassificationScope"
        o.http_method = "PATCH"
        o.http_request_uri = "/classification-scopes/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateClassificationScopeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClassificationScopeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_findings_filter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFindingsFilter"
        o.http_method = "PATCH"
        o.http_request_uri = "/findingsfilters/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFindingsFilterRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFindingsFilterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_macie_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMacieSession"
        o.http_method = "PATCH"
        o.http_request_uri = "/macie"
        o.input = Shapes::ShapeRef.new(shape: UpdateMacieSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMacieSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_member_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateMemberSession"
        o.http_method = "PATCH"
        o.http_request_uri = "/macie/members/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateMemberSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateMemberSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOrganizationConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/admin/configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:update_resource_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResourceProfile"
        o.http_method = "PATCH"
        o.http_request_uri = "/resource-profiles"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_resource_profile_detections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateResourceProfileDetections"
        o.http_method = "PATCH"
        o.http_request_uri = "/resource-profiles/detections"
        o.input = Shapes::ShapeRef.new(shape: UpdateResourceProfileDetectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateResourceProfileDetectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_reveal_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRevealConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/reveal-configuration"
        o.input = Shapes::ShapeRef.new(shape: UpdateRevealConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRevealConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_sensitivity_inspection_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSensitivityInspectionTemplate"
        o.http_method = "PUT"
        o.http_request_uri = "/templates/sensitivity-inspections/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSensitivityInspectionTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSensitivityInspectionTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
