# frozen_string_literal: true

# This is generated code!

module Aws::Macie2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptInvitationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AcceptInvitationRequest', name: 'AcceptInvitationRequest')
    AcceptInvitationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AcceptInvitationResponse', name: 'AcceptInvitationResponse')
    AccessControlList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AccessControlList', name: 'AccessControlList')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AccountDetail', name: 'AccountDetail')
    AccountLevelPermissions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AccountLevelPermissions', name: 'AccountLevelPermissions')
    AdminAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AdminAccount', name: 'AdminAccount')
    AdminStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AdminStatus', name: 'AdminStatus')
    AllowListCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AllowListCriteria', name: 'AllowListCriteria')
    AllowListStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AllowListStatus', name: 'AllowListStatus')
    AllowListStatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AllowListStatusCode', name: 'AllowListStatusCode')
    AllowListSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AllowListSummary', name: 'AllowListSummary')
    AllowsUnencryptedObjectUploads = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AllowsUnencryptedObjectUploads', name: 'AllowsUnencryptedObjectUploads')
    ApiCallDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ApiCallDetails', name: 'ApiCallDetails')
    AssumedRole = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AssumedRole', name: 'AssumedRole')
    AutoEnableMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AutoEnableMode', name: 'AutoEnableMode')
    AutomatedDiscoveryAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryAccount', name: 'AutomatedDiscoveryAccount')
    AutomatedDiscoveryAccountStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryAccountStatus', name: 'AutomatedDiscoveryAccountStatus')
    AutomatedDiscoveryAccountUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryAccountUpdate', name: 'AutomatedDiscoveryAccountUpdate')
    AutomatedDiscoveryAccountUpdateError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryAccountUpdateError', name: 'AutomatedDiscoveryAccountUpdateError')
    AutomatedDiscoveryAccountUpdateErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryAccountUpdateErrorCode', name: 'AutomatedDiscoveryAccountUpdateErrorCode')
    AutomatedDiscoveryMonitoringStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryMonitoringStatus', name: 'AutomatedDiscoveryMonitoringStatus')
    AutomatedDiscoveryStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryStatus', name: 'AutomatedDiscoveryStatus')
    AvailabilityCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AvailabilityCode', name: 'AvailabilityCode')
    AwsAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AwsAccount', name: 'AwsAccount')
    AwsService = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AwsService', name: 'AwsService')
    BatchGetCustomDataIdentifierSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BatchGetCustomDataIdentifierSummary', name: 'BatchGetCustomDataIdentifierSummary')
    BatchGetCustomDataIdentifiersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BatchGetCustomDataIdentifiersRequest', name: 'BatchGetCustomDataIdentifiersRequest')
    BatchGetCustomDataIdentifiersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BatchGetCustomDataIdentifiersResponse', name: 'BatchGetCustomDataIdentifiersResponse')
    BatchUpdateAutomatedDiscoveryAccountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BatchUpdateAutomatedDiscoveryAccountsRequest', name: 'BatchUpdateAutomatedDiscoveryAccountsRequest')
    BatchUpdateAutomatedDiscoveryAccountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BatchUpdateAutomatedDiscoveryAccountsResponse', name: 'BatchUpdateAutomatedDiscoveryAccountsResponse')
    BlockPublicAccess = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BlockPublicAccess', name: 'BlockPublicAccess')
    BucketCountByEffectivePermission = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketCountByEffectivePermission', name: 'BucketCountByEffectivePermission')
    BucketCountByEncryptionType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketCountByEncryptionType', name: 'BucketCountByEncryptionType')
    BucketCountBySharedAccessType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketCountBySharedAccessType', name: 'BucketCountBySharedAccessType')
    BucketCountPolicyAllowsUnencryptedObjectUploads = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketCountPolicyAllowsUnencryptedObjectUploads', name: 'BucketCountPolicyAllowsUnencryptedObjectUploads')
    BucketCriteria = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.macie2#BucketCriteria', name: 'BucketCriteria')
    BucketCriteriaAdditionalProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketCriteriaAdditionalProperties', name: 'BucketCriteriaAdditionalProperties')
    BucketLevelPermissions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketLevelPermissions', name: 'BucketLevelPermissions')
    BucketMetadata = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketMetadata', name: 'BucketMetadata')
    BucketMetadataErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#BucketMetadataErrorCode', name: 'BucketMetadataErrorCode')
    BucketPermissionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketPermissionConfiguration', name: 'BucketPermissionConfiguration')
    BucketPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketPolicy', name: 'BucketPolicy')
    BucketPublicAccess = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketPublicAccess', name: 'BucketPublicAccess')
    BucketServerSideEncryption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketServerSideEncryption', name: 'BucketServerSideEncryption')
    BucketSortCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketSortCriteria', name: 'BucketSortCriteria')
    BucketStatisticsBySensitivity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketStatisticsBySensitivity', name: 'BucketStatisticsBySensitivity')
    Cell = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Cell', name: 'Cell')
    Cells = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#Cells', name: 'Cells')
    ClassificationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ClassificationDetails', name: 'ClassificationDetails')
    ClassificationExportConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ClassificationExportConfiguration', name: 'ClassificationExportConfiguration')
    ClassificationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ClassificationResult', name: 'ClassificationResult')
    ClassificationResultStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ClassificationResultStatus', name: 'ClassificationResultStatus')
    ClassificationScopeId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#ClassificationScopeId', name: 'ClassificationScopeId', traits: {"smithy.api#pattern" => "^[0-9a-z]*$"})
    ClassificationScopeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#ClassificationScopeName', name: 'ClassificationScopeName', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z_\\\\-]*$"})
    ClassificationScopeSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ClassificationScopeSummary', name: 'ClassificationScopeSummary')
    ClassificationScopeUpdateOperation = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ClassificationScopeUpdateOperation', name: 'ClassificationScopeUpdateOperation')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAllowListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateAllowListRequest', name: 'CreateAllowListRequest')
    CreateAllowListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateAllowListResponse', name: 'CreateAllowListResponse')
    CreateClassificationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateClassificationJobRequest', name: 'CreateClassificationJobRequest')
    CreateClassificationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateClassificationJobResponse', name: 'CreateClassificationJobResponse')
    CreateCustomDataIdentifierRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateCustomDataIdentifierRequest', name: 'CreateCustomDataIdentifierRequest')
    CreateCustomDataIdentifierResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateCustomDataIdentifierResponse', name: 'CreateCustomDataIdentifierResponse')
    CreateFindingsFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateFindingsFilterRequest', name: 'CreateFindingsFilterRequest')
    CreateFindingsFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateFindingsFilterResponse', name: 'CreateFindingsFilterResponse')
    CreateInvitationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateInvitationsRequest', name: 'CreateInvitationsRequest')
    CreateInvitationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateInvitationsResponse', name: 'CreateInvitationsResponse')
    CreateMemberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateMemberRequest', name: 'CreateMemberRequest')
    CreateMemberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateMemberResponse', name: 'CreateMemberResponse')
    CreateSampleFindingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateSampleFindingsRequest', name: 'CreateSampleFindingsRequest')
    CreateSampleFindingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateSampleFindingsResponse', name: 'CreateSampleFindingsResponse')
    CriteriaBlockForJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CriteriaBlockForJob', name: 'CriteriaBlockForJob')
    CriteriaForJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CriteriaForJob', name: 'CriteriaForJob')
    Criterion = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.macie2#Criterion', name: 'Criterion')
    CriterionAdditionalProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CriterionAdditionalProperties', name: 'CriterionAdditionalProperties')
    Currency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#Currency', name: 'Currency')
    CustomDataIdentifierSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CustomDataIdentifierSummary', name: 'CustomDataIdentifierSummary')
    CustomDataIdentifiers = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CustomDataIdentifiers', name: 'CustomDataIdentifiers')
    CustomDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CustomDetection', name: 'CustomDetection')
    CustomDetections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#CustomDetections', name: 'CustomDetections')
    DailySchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DailySchedule', name: 'DailySchedule')
    DataIdentifierSeverity = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#DataIdentifierSeverity', name: 'DataIdentifierSeverity')
    DataIdentifierType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#DataIdentifierType', name: 'DataIdentifierType')
    DayOfWeek = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#DayOfWeek', name: 'DayOfWeek')
    DeclineInvitationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeclineInvitationsRequest', name: 'DeclineInvitationsRequest')
    DeclineInvitationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeclineInvitationsResponse', name: 'DeclineInvitationsResponse')
    DefaultDetection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DefaultDetection', name: 'DefaultDetection')
    DefaultDetections = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#DefaultDetections', name: 'DefaultDetections')
    DeleteAllowListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteAllowListRequest', name: 'DeleteAllowListRequest')
    DeleteAllowListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteAllowListResponse', name: 'DeleteAllowListResponse')
    DeleteCustomDataIdentifierRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteCustomDataIdentifierRequest', name: 'DeleteCustomDataIdentifierRequest')
    DeleteCustomDataIdentifierResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteCustomDataIdentifierResponse', name: 'DeleteCustomDataIdentifierResponse')
    DeleteFindingsFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteFindingsFilterRequest', name: 'DeleteFindingsFilterRequest')
    DeleteFindingsFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteFindingsFilterResponse', name: 'DeleteFindingsFilterResponse')
    DeleteInvitationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteInvitationsRequest', name: 'DeleteInvitationsRequest')
    DeleteInvitationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteInvitationsResponse', name: 'DeleteInvitationsResponse')
    DeleteMemberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteMemberRequest', name: 'DeleteMemberRequest')
    DeleteMemberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteMemberResponse', name: 'DeleteMemberResponse')
    DescribeBucketsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeBucketsRequest', name: 'DescribeBucketsRequest')
    DescribeBucketsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeBucketsResponse', name: 'DescribeBucketsResponse')
    DescribeClassificationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeClassificationJobRequest', name: 'DescribeClassificationJobRequest')
    DescribeClassificationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeClassificationJobResponse', name: 'DescribeClassificationJobResponse')
    DescribeOrganizationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeOrganizationConfigurationRequest', name: 'DescribeOrganizationConfigurationRequest')
    DescribeOrganizationConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeOrganizationConfigurationResponse', name: 'DescribeOrganizationConfigurationResponse')
    DetectedDataDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DetectedDataDetails', name: 'DetectedDataDetails')
    Detection = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Detection', name: 'Detection')
    DisableMacieRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisableMacieRequest', name: 'DisableMacieRequest')
    DisableMacieResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisableMacieResponse', name: 'DisableMacieResponse')
    DisableOrganizationAdminAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisableOrganizationAdminAccountRequest', name: 'DisableOrganizationAdminAccountRequest')
    DisableOrganizationAdminAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisableOrganizationAdminAccountResponse', name: 'DisableOrganizationAdminAccountResponse')
    DisassociateFromAdministratorAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateFromAdministratorAccountRequest', name: 'DisassociateFromAdministratorAccountRequest')
    DisassociateFromAdministratorAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateFromAdministratorAccountResponse', name: 'DisassociateFromAdministratorAccountResponse')
    DisassociateFromMasterAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateFromMasterAccountRequest', name: 'DisassociateFromMasterAccountRequest')
    DisassociateFromMasterAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateFromMasterAccountResponse', name: 'DisassociateFromMasterAccountResponse')
    DisassociateMemberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateMemberRequest', name: 'DisassociateMemberRequest')
    DisassociateMemberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateMemberResponse', name: 'DisassociateMemberResponse')
    DomainDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DomainDetails', name: 'DomainDetails')
    EffectivePermission = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#EffectivePermission', name: 'EffectivePermission')
    EnableMacieRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#EnableMacieRequest', name: 'EnableMacieRequest')
    EnableMacieResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#EnableMacieResponse', name: 'EnableMacieResponse')
    EnableOrganizationAdminAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#EnableOrganizationAdminAccountRequest', name: 'EnableOrganizationAdminAccountRequest')
    EnableOrganizationAdminAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#EnableOrganizationAdminAccountResponse', name: 'EnableOrganizationAdminAccountResponse')
    EncryptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#EncryptionType', name: 'EncryptionType')
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ErrorCode', name: 'ErrorCode')
    FederatedUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FederatedUser', name: 'FederatedUser')
    Finding = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Finding', name: 'Finding')
    FindingAction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FindingAction', name: 'FindingAction')
    FindingActionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingActionType', name: 'FindingActionType')
    FindingActor = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FindingActor', name: 'FindingActor')
    FindingCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingCategory', name: 'FindingCategory')
    FindingCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FindingCriteria', name: 'FindingCriteria')
    FindingPublishingFrequency = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingPublishingFrequency', name: 'FindingPublishingFrequency')
    FindingStatisticsSortAttributeName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingStatisticsSortAttributeName', name: 'FindingStatisticsSortAttributeName')
    FindingStatisticsSortCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FindingStatisticsSortCriteria', name: 'FindingStatisticsSortCriteria')
    FindingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingType', name: 'FindingType')
    FindingsFilterAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingsFilterAction', name: 'FindingsFilterAction')
    FindingsFilterListItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FindingsFilterListItem', name: 'FindingsFilterListItem')
    GetAdministratorAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAdministratorAccountRequest', name: 'GetAdministratorAccountRequest')
    GetAdministratorAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAdministratorAccountResponse', name: 'GetAdministratorAccountResponse')
    GetAllowListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAllowListRequest', name: 'GetAllowListRequest')
    GetAllowListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAllowListResponse', name: 'GetAllowListResponse')
    GetAutomatedDiscoveryConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAutomatedDiscoveryConfigurationRequest', name: 'GetAutomatedDiscoveryConfigurationRequest')
    GetAutomatedDiscoveryConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAutomatedDiscoveryConfigurationResponse', name: 'GetAutomatedDiscoveryConfigurationResponse')
    GetBucketStatisticsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetBucketStatisticsRequest', name: 'GetBucketStatisticsRequest')
    GetBucketStatisticsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetBucketStatisticsResponse', name: 'GetBucketStatisticsResponse')
    GetClassificationExportConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetClassificationExportConfigurationRequest', name: 'GetClassificationExportConfigurationRequest')
    GetClassificationExportConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetClassificationExportConfigurationResponse', name: 'GetClassificationExportConfigurationResponse')
    GetClassificationScopeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetClassificationScopeRequest', name: 'GetClassificationScopeRequest')
    GetClassificationScopeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetClassificationScopeResponse', name: 'GetClassificationScopeResponse')
    GetCustomDataIdentifierRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetCustomDataIdentifierRequest', name: 'GetCustomDataIdentifierRequest')
    GetCustomDataIdentifierResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetCustomDataIdentifierResponse', name: 'GetCustomDataIdentifierResponse')
    GetFindingStatisticsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingStatisticsRequest', name: 'GetFindingStatisticsRequest')
    GetFindingStatisticsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingStatisticsResponse', name: 'GetFindingStatisticsResponse')
    GetFindingsFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsFilterRequest', name: 'GetFindingsFilterRequest')
    GetFindingsFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsFilterResponse', name: 'GetFindingsFilterResponse')
    GetFindingsPublicationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsPublicationConfigurationRequest', name: 'GetFindingsPublicationConfigurationRequest')
    GetFindingsPublicationConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsPublicationConfigurationResponse', name: 'GetFindingsPublicationConfigurationResponse')
    GetFindingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsRequest', name: 'GetFindingsRequest')
    GetFindingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsResponse', name: 'GetFindingsResponse')
    GetInvitationsCountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetInvitationsCountRequest', name: 'GetInvitationsCountRequest')
    GetInvitationsCountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetInvitationsCountResponse', name: 'GetInvitationsCountResponse')
    GetMacieSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMacieSessionRequest', name: 'GetMacieSessionRequest')
    GetMacieSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMacieSessionResponse', name: 'GetMacieSessionResponse')
    GetMasterAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMasterAccountRequest', name: 'GetMasterAccountRequest')
    GetMasterAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMasterAccountResponse', name: 'GetMasterAccountResponse')
    GetMemberRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMemberRequest', name: 'GetMemberRequest')
    GetMemberResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMemberResponse', name: 'GetMemberResponse')
    GetResourceProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetResourceProfileRequest', name: 'GetResourceProfileRequest')
    GetResourceProfileResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetResourceProfileResponse', name: 'GetResourceProfileResponse')
    GetRevealConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetRevealConfigurationRequest', name: 'GetRevealConfigurationRequest')
    GetRevealConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetRevealConfigurationResponse', name: 'GetRevealConfigurationResponse')
    GetSensitiveDataOccurrencesAvailabilityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitiveDataOccurrencesAvailabilityRequest', name: 'GetSensitiveDataOccurrencesAvailabilityRequest')
    GetSensitiveDataOccurrencesAvailabilityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitiveDataOccurrencesAvailabilityResponse', name: 'GetSensitiveDataOccurrencesAvailabilityResponse')
    GetSensitiveDataOccurrencesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitiveDataOccurrencesRequest', name: 'GetSensitiveDataOccurrencesRequest')
    GetSensitiveDataOccurrencesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitiveDataOccurrencesResponse', name: 'GetSensitiveDataOccurrencesResponse')
    GetSensitivityInspectionTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitivityInspectionTemplateRequest', name: 'GetSensitivityInspectionTemplateRequest')
    GetSensitivityInspectionTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitivityInspectionTemplateResponse', name: 'GetSensitivityInspectionTemplateResponse')
    GetUsageStatisticsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetUsageStatisticsRequest', name: 'GetUsageStatisticsRequest')
    GetUsageStatisticsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetUsageStatisticsResponse', name: 'GetUsageStatisticsResponse')
    GetUsageTotalsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetUsageTotalsRequest', name: 'GetUsageTotalsRequest')
    GetUsageTotalsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetUsageTotalsResponse', name: 'GetUsageTotalsResponse')
    GroupBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#GroupBy', name: 'GroupBy')
    GroupCount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GroupCount', name: 'GroupCount')
    IamUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IamUser', name: 'IamUser')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Invitation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Invitation', name: 'Invitation')
    IpAddressDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IpAddressDetails', name: 'IpAddressDetails')
    IpCity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IpCity', name: 'IpCity')
    IpCountry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IpCountry', name: 'IpCountry')
    IpGeoLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IpGeoLocation', name: 'IpGeoLocation')
    IpOwner = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IpOwner', name: 'IpOwner')
    IsDefinedInJob = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#IsDefinedInJob', name: 'IsDefinedInJob')
    IsMonitoredByJob = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#IsMonitoredByJob', name: 'IsMonitoredByJob')
    JobComparator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#JobComparator', name: 'JobComparator')
    JobDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#JobDetails', name: 'JobDetails')
    JobScheduleFrequency = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#JobScheduleFrequency', name: 'JobScheduleFrequency')
    JobScopeTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#JobScopeTerm', name: 'JobScopeTerm')
    JobScopingBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#JobScopingBlock', name: 'JobScopingBlock')
    JobStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#JobStatus', name: 'JobStatus')
    JobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#JobSummary', name: 'JobSummary')
    JobType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#JobType', name: 'JobType')
    KeyValuePair = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#KeyValuePair', name: 'KeyValuePair')
    KeyValuePairList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#KeyValuePairList', name: 'KeyValuePairList')
    LastRunErrorStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#LastRunErrorStatus', name: 'LastRunErrorStatus')
    LastRunErrorStatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#LastRunErrorStatusCode', name: 'LastRunErrorStatusCode')
    ListAllowListsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListAllowListsRequest', name: 'ListAllowListsRequest')
    ListAllowListsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListAllowListsResponse', name: 'ListAllowListsResponse')
    ListAutomatedDiscoveryAccountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListAutomatedDiscoveryAccountsRequest', name: 'ListAutomatedDiscoveryAccountsRequest')
    ListAutomatedDiscoveryAccountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListAutomatedDiscoveryAccountsResponse', name: 'ListAutomatedDiscoveryAccountsResponse')
    ListClassificationJobsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListClassificationJobsRequest', name: 'ListClassificationJobsRequest')
    ListClassificationJobsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListClassificationJobsResponse', name: 'ListClassificationJobsResponse')
    ListClassificationScopesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListClassificationScopesRequest', name: 'ListClassificationScopesRequest')
    ListClassificationScopesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListClassificationScopesResponse', name: 'ListClassificationScopesResponse')
    ListCustomDataIdentifiersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListCustomDataIdentifiersRequest', name: 'ListCustomDataIdentifiersRequest')
    ListCustomDataIdentifiersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListCustomDataIdentifiersResponse', name: 'ListCustomDataIdentifiersResponse')
    ListFindingsFiltersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListFindingsFiltersRequest', name: 'ListFindingsFiltersRequest')
    ListFindingsFiltersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListFindingsFiltersResponse', name: 'ListFindingsFiltersResponse')
    ListFindingsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListFindingsRequest', name: 'ListFindingsRequest')
    ListFindingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListFindingsResponse', name: 'ListFindingsResponse')
    ListInvitationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListInvitationsRequest', name: 'ListInvitationsRequest')
    ListInvitationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListInvitationsResponse', name: 'ListInvitationsResponse')
    ListJobsFilterCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListJobsFilterCriteria', name: 'ListJobsFilterCriteria')
    ListJobsFilterKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ListJobsFilterKey', name: 'ListJobsFilterKey')
    ListJobsFilterTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListJobsFilterTerm', name: 'ListJobsFilterTerm')
    ListJobsSortAttributeName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ListJobsSortAttributeName', name: 'ListJobsSortAttributeName')
    ListJobsSortCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListJobsSortCriteria', name: 'ListJobsSortCriteria')
    ListManagedDataIdentifiersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListManagedDataIdentifiersRequest', name: 'ListManagedDataIdentifiersRequest')
    ListManagedDataIdentifiersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListManagedDataIdentifiersResponse', name: 'ListManagedDataIdentifiersResponse')
    ListMembersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListMembersRequest', name: 'ListMembersRequest')
    ListMembersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListMembersResponse', name: 'ListMembersResponse')
    ListOrganizationAdminAccountsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListOrganizationAdminAccountsRequest', name: 'ListOrganizationAdminAccountsRequest')
    ListOrganizationAdminAccountsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListOrganizationAdminAccountsResponse', name: 'ListOrganizationAdminAccountsResponse')
    ListResourceProfileArtifactsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListResourceProfileArtifactsRequest', name: 'ListResourceProfileArtifactsRequest')
    ListResourceProfileArtifactsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListResourceProfileArtifactsResponse', name: 'ListResourceProfileArtifactsResponse')
    ListResourceProfileDetectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListResourceProfileDetectionsRequest', name: 'ListResourceProfileDetectionsRequest')
    ListResourceProfileDetectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListResourceProfileDetectionsResponse', name: 'ListResourceProfileDetectionsResponse')
    ListSensitivityInspectionTemplatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListSensitivityInspectionTemplatesRequest', name: 'ListSensitivityInspectionTemplatesRequest')
    ListSensitivityInspectionTemplatesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListSensitivityInspectionTemplatesResponse', name: 'ListSensitivityInspectionTemplatesResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MacieStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#MacieStatus', name: 'MacieStatus')
    ManagedDataIdentifierSelector = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ManagedDataIdentifierSelector', name: 'ManagedDataIdentifierSelector')
    ManagedDataIdentifierSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ManagedDataIdentifierSummary', name: 'ManagedDataIdentifierSummary')
    MatchingBucket = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#MatchingBucket', name: 'MatchingBucket')
    MatchingResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#MatchingResource', name: 'MatchingResource')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.macie2#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    Member = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Member', name: 'Member')
    MonthlySchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#MonthlySchedule', name: 'MonthlySchedule')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#NextToken', name: 'NextToken', traits: {"smithy.api#pattern" => "^.*$"})
    ObjectCountByEncryptionType = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ObjectCountByEncryptionType', name: 'ObjectCountByEncryptionType')
    ObjectLevelStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ObjectLevelStatistics', name: 'ObjectLevelStatistics')
    Occurrences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Occurrences', name: 'Occurrences')
    OrderBy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#OrderBy', name: 'OrderBy')
    OriginType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#OriginType', name: 'OriginType')
    Page = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Page', name: 'Page')
    Pages = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#Pages', name: 'Pages')
    PolicyDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#PolicyDetails', name: 'PolicyDetails')
    PutClassificationExportConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#PutClassificationExportConfigurationRequest', name: 'PutClassificationExportConfigurationRequest')
    PutClassificationExportConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#PutClassificationExportConfigurationResponse', name: 'PutClassificationExportConfigurationResponse')
    PutFindingsPublicationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#PutFindingsPublicationConfigurationRequest', name: 'PutFindingsPublicationConfigurationRequest')
    PutFindingsPublicationConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#PutFindingsPublicationConfigurationResponse', name: 'PutFindingsPublicationConfigurationResponse')
    Range = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Range', name: 'Range')
    Ranges = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#Ranges', name: 'Ranges')
    Record = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Record', name: 'Record')
    Records = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#Records', name: 'Records')
    RelationshipStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#RelationshipStatus', name: 'RelationshipStatus')
    ReplicationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ReplicationDetails', name: 'ReplicationDetails')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceProfileArtifact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ResourceProfileArtifact', name: 'ResourceProfileArtifact')
    ResourceStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ResourceStatistics', name: 'ResourceStatistics')
    ResourcesAffected = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ResourcesAffected', name: 'ResourcesAffected')
    RetrievalConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#RetrievalConfiguration', name: 'RetrievalConfiguration')
    RetrievalMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#RetrievalMode', name: 'RetrievalMode')
    RevealConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#RevealConfiguration', name: 'RevealConfiguration')
    RevealRequestStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#RevealRequestStatus', name: 'RevealRequestStatus')
    RevealStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#RevealStatus', name: 'RevealStatus')
    S3Bucket = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3Bucket', name: 'S3Bucket')
    S3BucketCriteriaForJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3BucketCriteriaForJob', name: 'S3BucketCriteriaForJob')
    S3BucketDefinitionForJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3BucketDefinitionForJob', name: 'S3BucketDefinitionForJob')
    S3BucketName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#pattern" => "^[A-Za-z0-9.\\-_]{3,255}$"})
    S3BucketOwner = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3BucketOwner', name: 'S3BucketOwner')
    S3ClassificationScope = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3ClassificationScope', name: 'S3ClassificationScope')
    S3ClassificationScopeExclusion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3ClassificationScopeExclusion', name: 'S3ClassificationScopeExclusion')
    S3ClassificationScopeExclusionUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3ClassificationScopeExclusionUpdate', name: 'S3ClassificationScopeExclusionUpdate')
    S3ClassificationScopeUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3ClassificationScopeUpdate', name: 'S3ClassificationScopeUpdate')
    S3Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3Destination', name: 'S3Destination')
    S3JobDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3JobDefinition', name: 'S3JobDefinition')
    S3Object = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3Object', name: 'S3Object')
    S3WordsList = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3WordsList', name: 'S3WordsList')
    ScopeFilterKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ScopeFilterKey', name: 'ScopeFilterKey')
    Scoping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Scoping', name: 'Scoping')
    SearchResourcesBucketCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesBucketCriteria', name: 'SearchResourcesBucketCriteria')
    SearchResourcesComparator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SearchResourcesComparator', name: 'SearchResourcesComparator')
    SearchResourcesCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesCriteria', name: 'SearchResourcesCriteria')
    SearchResourcesCriteriaBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesCriteriaBlock', name: 'SearchResourcesCriteriaBlock')
    SearchResourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesRequest', name: 'SearchResourcesRequest')
    SearchResourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesResponse', name: 'SearchResourcesResponse')
    SearchResourcesSimpleCriterion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesSimpleCriterion', name: 'SearchResourcesSimpleCriterion')
    SearchResourcesSimpleCriterionKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SearchResourcesSimpleCriterionKey', name: 'SearchResourcesSimpleCriterionKey')
    SearchResourcesSortAttributeName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SearchResourcesSortAttributeName', name: 'SearchResourcesSortAttributeName')
    SearchResourcesSortCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesSortCriteria', name: 'SearchResourcesSortCriteria')
    SearchResourcesTagCriterion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesTagCriterion', name: 'SearchResourcesTagCriterion')
    SearchResourcesTagCriterionPair = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesTagCriterionPair', name: 'SearchResourcesTagCriterionPair')
    SecurityHubConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SecurityHubConfiguration', name: 'SecurityHubConfiguration')
    SensitiveData = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#SensitiveData', name: 'SensitiveData')
    SensitiveDataItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SensitiveDataItem', name: 'SensitiveDataItem')
    SensitiveDataItemCategory = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SensitiveDataItemCategory', name: 'SensitiveDataItemCategory')
    SensitiveDataOccurrences = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.macie2#SensitiveDataOccurrences', name: 'SensitiveDataOccurrences')
    SensitivityAggregations = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SensitivityAggregations', name: 'SensitivityAggregations')
    SensitivityInspectionTemplateExcludes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SensitivityInspectionTemplateExcludes', name: 'SensitivityInspectionTemplateExcludes')
    SensitivityInspectionTemplateId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#SensitivityInspectionTemplateId', name: 'SensitivityInspectionTemplateId')
    SensitivityInspectionTemplateIncludes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SensitivityInspectionTemplateIncludes', name: 'SensitivityInspectionTemplateIncludes')
    SensitivityInspectionTemplatesEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SensitivityInspectionTemplatesEntry', name: 'SensitivityInspectionTemplatesEntry')
    ServerSideEncryption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ServerSideEncryption', name: 'ServerSideEncryption')
    ServiceLimit = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ServiceLimit', name: 'ServiceLimit')
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionContext = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SessionContext', name: 'SessionContext')
    SessionContextAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SessionContextAttributes', name: 'SessionContextAttributes')
    SessionIssuer = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SessionIssuer', name: 'SessionIssuer')
    Severity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Severity', name: 'Severity')
    SeverityDescription = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SeverityDescription', name: 'SeverityDescription')
    SeverityLevel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SeverityLevel', name: 'SeverityLevel')
    SeverityLevelList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#SeverityLevelList', name: 'SeverityLevelList')
    SharedAccess = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SharedAccess', name: 'SharedAccess')
    SimpleCriterionForJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SimpleCriterionForJob', name: 'SimpleCriterionForJob')
    SimpleCriterionKeyForJob = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SimpleCriterionKeyForJob', name: 'SimpleCriterionKeyForJob')
    SimpleScopeTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SimpleScopeTerm', name: 'SimpleScopeTerm')
    SortCriteria = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SortCriteria', name: 'SortCriteria')
    Statistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Statistics', name: 'Statistics')
    StorageClass = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#StorageClass', name: 'StorageClass')
    SuppressDataIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SuppressDataIdentifier', name: 'SuppressDataIdentifier')
    TagCriterionForJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagCriterionForJob', name: 'TagCriterionForJob')
    TagCriterionPairForJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagCriterionPairForJob', name: 'TagCriterionPairForJob')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.macie2#TagMap', name: 'TagMap')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagResourceResponse', name: 'TagResourceResponse')
    TagScopeTerm = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagScopeTerm', name: 'TagScopeTerm')
    TagTarget = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#TagTarget', name: 'TagTarget')
    TagValuePair = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagValuePair', name: 'TagValuePair')
    TestCustomDataIdentifierRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TestCustomDataIdentifierRequest', name: 'TestCustomDataIdentifierRequest')
    TestCustomDataIdentifierResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TestCustomDataIdentifierResponse', name: 'TestCustomDataIdentifierResponse')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeRange = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#TimeRange', name: 'TimeRange')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.macie2#Timestamp', name: 'Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    Type = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#Type', name: 'Type')
    UnavailabilityReasonCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UnavailabilityReasonCode', name: 'UnavailabilityReasonCode')
    Unit = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#Unit', name: 'Unit')
    UnprocessableEntityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UnprocessableEntityException', name: 'UnprocessableEntityException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UnprocessedAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UnprocessedAccount', name: 'UnprocessedAccount')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAllowListRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateAllowListRequest', name: 'UpdateAllowListRequest')
    UpdateAllowListResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateAllowListResponse', name: 'UpdateAllowListResponse')
    UpdateAutomatedDiscoveryConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateAutomatedDiscoveryConfigurationRequest', name: 'UpdateAutomatedDiscoveryConfigurationRequest')
    UpdateAutomatedDiscoveryConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateAutomatedDiscoveryConfigurationResponse', name: 'UpdateAutomatedDiscoveryConfigurationResponse')
    UpdateClassificationJobRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateClassificationJobRequest', name: 'UpdateClassificationJobRequest')
    UpdateClassificationJobResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateClassificationJobResponse', name: 'UpdateClassificationJobResponse')
    UpdateClassificationScopeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateClassificationScopeRequest', name: 'UpdateClassificationScopeRequest')
    UpdateClassificationScopeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateClassificationScopeResponse', name: 'UpdateClassificationScopeResponse')
    UpdateFindingsFilterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateFindingsFilterRequest', name: 'UpdateFindingsFilterRequest')
    UpdateFindingsFilterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateFindingsFilterResponse', name: 'UpdateFindingsFilterResponse')
    UpdateMacieSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateMacieSessionRequest', name: 'UpdateMacieSessionRequest')
    UpdateMacieSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateMacieSessionResponse', name: 'UpdateMacieSessionResponse')
    UpdateMemberSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateMemberSessionRequest', name: 'UpdateMemberSessionRequest')
    UpdateMemberSessionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateMemberSessionResponse', name: 'UpdateMemberSessionResponse')
    UpdateOrganizationConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateOrganizationConfigurationRequest', name: 'UpdateOrganizationConfigurationRequest')
    UpdateOrganizationConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateOrganizationConfigurationResponse', name: 'UpdateOrganizationConfigurationResponse')
    UpdateResourceProfileDetectionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateResourceProfileDetectionsRequest', name: 'UpdateResourceProfileDetectionsRequest')
    UpdateResourceProfileDetectionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateResourceProfileDetectionsResponse', name: 'UpdateResourceProfileDetectionsResponse')
    UpdateResourceProfileRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateResourceProfileRequest', name: 'UpdateResourceProfileRequest')
    UpdateResourceProfileResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateResourceProfileResponse', name: 'UpdateResourceProfileResponse')
    UpdateRetrievalConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateRetrievalConfiguration', name: 'UpdateRetrievalConfiguration')
    UpdateRevealConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateRevealConfigurationRequest', name: 'UpdateRevealConfigurationRequest')
    UpdateRevealConfigurationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateRevealConfigurationResponse', name: 'UpdateRevealConfigurationResponse')
    UpdateSensitivityInspectionTemplateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateSensitivityInspectionTemplateRequest', name: 'UpdateSensitivityInspectionTemplateRequest')
    UpdateSensitivityInspectionTemplateResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateSensitivityInspectionTemplateResponse', name: 'UpdateSensitivityInspectionTemplateResponse')
    UsageByAccount = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UsageByAccount', name: 'UsageByAccount')
    UsageRecord = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UsageRecord', name: 'UsageRecord')
    UsageStatisticsFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UsageStatisticsFilter', name: 'UsageStatisticsFilter')
    UsageStatisticsFilterComparator = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UsageStatisticsFilterComparator', name: 'UsageStatisticsFilterComparator')
    UsageStatisticsFilterKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UsageStatisticsFilterKey', name: 'UsageStatisticsFilterKey')
    UsageStatisticsSortBy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UsageStatisticsSortBy', name: 'UsageStatisticsSortBy')
    UsageStatisticsSortKey = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UsageStatisticsSortKey', name: 'UsageStatisticsSortKey')
    UsageTotal = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UsageTotal', name: 'UsageTotal')
    UsageType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UsageType', name: 'UsageType')
    UserIdentity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UserIdentity', name: 'UserIdentity')
    UserIdentityRoot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UserIdentityRoot', name: 'UserIdentityRoot')
    UserIdentityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UserIdentityType', name: 'UserIdentityType')
    UserPausedDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UserPausedDetails', name: 'UserPausedDetails')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WeeklySchedule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#WeeklySchedule', name: 'WeeklySchedule')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.macie2#__boolean', name: 'Boolean')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.macie2#__double', name: 'Double')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.macie2#__integer', name: 'Integer')
    Listofadminaccount = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfAdminAccount', name: 'Listofadminaccount')
    Listofallowlistsummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfAllowListSummary', name: 'Listofallowlistsummary')
    Listofautomateddiscoveryaccount = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfAutomatedDiscoveryAccount', name: 'Listofautomateddiscoveryaccount')
    Listofautomateddiscoveryaccountupdate = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfAutomatedDiscoveryAccountUpdate', name: 'Listofautomateddiscoveryaccountupdate')
    Listofautomateddiscoveryaccountupdateerror = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfAutomatedDiscoveryAccountUpdateError', name: 'Listofautomateddiscoveryaccountupdateerror')
    Listofbatchgetcustomdataidentifiersummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfBatchGetCustomDataIdentifierSummary', name: 'Listofbatchgetcustomdataidentifiersummary')
    Listofbucketmetadata = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfBucketMetadata', name: 'Listofbucketmetadata')
    Listofclassificationscopesummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfClassificationScopeSummary', name: 'Listofclassificationscopesummary')
    Listofcriteriaforjob = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfCriteriaForJob', name: 'Listofcriteriaforjob')
    Listofcustomdataidentifiersummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfCustomDataIdentifierSummary', name: 'Listofcustomdataidentifiersummary')
    Listofdetecteddatadetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfDetectedDataDetails', name: 'Listofdetecteddatadetails')
    Listofdetection = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfDetection', name: 'Listofdetection')
    Listoffinding = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfFinding', name: 'Listoffinding')
    Listoffindingtype = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfFindingType', name: 'Listoffindingtype')
    Listoffindingsfilterlistitem = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfFindingsFilterListItem', name: 'Listoffindingsfilterlistitem')
    Listofgroupcount = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfGroupCount', name: 'Listofgroupcount')
    Listofinvitation = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfInvitation', name: 'Listofinvitation')
    Listofjobscopeterm = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfJobScopeTerm', name: 'Listofjobscopeterm')
    Listofjobsummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfJobSummary', name: 'Listofjobsummary')
    Listofkeyvaluepair = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfKeyValuePair', name: 'Listofkeyvaluepair')
    Listoflistjobsfilterterm = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfListJobsFilterTerm', name: 'Listoflistjobsfilterterm')
    Listofmanageddataidentifiersummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfManagedDataIdentifierSummary', name: 'Listofmanageddataidentifiersummary')
    Listofmatchingresource = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfMatchingResource', name: 'Listofmatchingresource')
    Listofmember = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfMember', name: 'Listofmember')
    Listofresourceprofileartifact = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfResourceProfileArtifact', name: 'Listofresourceprofileartifact')
    Listofs3bucketdefinitionforjob = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfS3BucketDefinitionForJob', name: 'Listofs3bucketdefinitionforjob')
    Listofs3bucketname = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfS3BucketName', name: 'Listofs3bucketname')
    Listofsearchresourcescriteria = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfSearchResourcesCriteria', name: 'Listofsearchresourcescriteria')
    Listofsearchresourcestagcriterionpair = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfSearchResourcesTagCriterionPair', name: 'Listofsearchresourcestagcriterionpair')
    Listofsensitivityinspectiontemplatesentry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfSensitivityInspectionTemplatesEntry', name: 'Listofsensitivityinspectiontemplatesentry')
    Listofsuppressdataidentifier = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfSuppressDataIdentifier', name: 'Listofsuppressdataidentifier')
    Listoftagcriterionpairforjob = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfTagCriterionPairForJob', name: 'Listoftagcriterionpairforjob')
    Listoftagvaluepair = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfTagValuePair', name: 'Listoftagvaluepair')
    Listofunavailabilityreasoncode = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUnavailabilityReasonCode', name: 'Listofunavailabilityreasoncode', traits: {"smithy.api#length" => {"min" => 0}})
    Listofunprocessedaccount = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUnprocessedAccount', name: 'Listofunprocessedaccount')
    Listofusagebyaccount = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUsageByAccount', name: 'Listofusagebyaccount')
    Listofusagerecord = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUsageRecord', name: 'Listofusagerecord')
    Listofusagestatisticsfilter = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUsageStatisticsFilter', name: 'Listofusagestatisticsfilter')
    Listofusagetotal = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUsageTotal', name: 'Listofusagetotal')
    ListofString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOf__string', name: 'ListofString')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.macie2#__long', name: 'Long')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__string', name: 'String')
    Stringmin1max1024patternss = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max1024PatternSS', name: 'Stringmin1max1024patternss', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    Stringmin1max128 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max128', name: 'Stringmin1max128', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Stringmin1max128pattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max128Pattern', name: 'Stringmin1max128pattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    Stringmin1max2048 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max2048', name: 'Stringmin1max2048', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Stringmin1max512patternss = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max512PatternSS', name: 'Stringmin1max512patternss', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    Stringmin1max64patternw = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max64PatternW', name: 'Stringmin1max64patternw', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w+=,.@-]*$"})
    Stringmin22max22patternaz0922 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin22Max22PatternAZ0922', name: 'Stringmin22max22patternaz0922', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-z0-9]{22}$"})
    Stringmin3max255patternazaz093255 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin3Max255PatternAZaZ093255', name: 'Stringmin3max255patternazaz093255', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9.\\-_]{3,255}$"})
    Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922', name: 'Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922', traits: {"smithy.api#length" => {"min" => 71, "max" => 89}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):macie2:[a-z1-9-]{9,20}:\\d{12}:allow-list\\/[a-z0-9]{22}$"})
    Timestampiso8601 = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.macie2#__timestampIso8601', name: 'Timestampiso8601', traits: {"smithy.api#timestampFormat" => "date-time"})

    AcceptInvitationRequest.add_member(:administrator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'administratorAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account that sent the invitation.</p>", "smithy.api#jsonName" => "administratorAccountId"}))
    AcceptInvitationRequest.add_member(:invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'invitationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the invitation to accept.</p>", "smithy.api#jsonName" => "invitationId", "smithy.api#required" => {}}))
    AcceptInvitationRequest.add_member(:master_account, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'masterAccount', traits: {"smithy.api#documentation" => "<p>(Deprecated) The Amazon Web Services account ID for the account that sent the invitation. This property has been replaced by the administratorAccountId property and is retained only for backward compatibility.</p>", "smithy.api#jsonName" => "masterAccount"}))
    AcceptInvitationRequest.type = Types::AcceptInvitationRequest
    AcceptInvitationResponse.type = Types::AcceptInvitationResponse
    AccessControlList.add_member(:allows_public_read_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowsPublicReadAccess', traits: {"smithy.api#documentation" => "<p>Specifies whether the ACL grants the general public with read access permissions for the bucket.</p>", "smithy.api#jsonName" => "allowsPublicReadAccess"}))
    AccessControlList.add_member(:allows_public_write_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowsPublicWriteAccess', traits: {"smithy.api#documentation" => "<p>Specifies whether the ACL grants the general public with write access permissions for the bucket.</p>", "smithy.api#jsonName" => "allowsPublicWriteAccess"}))
    AccessControlList.type = Types::AccessControlList
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The explanation of the error that occurred.</p>", "smithy.api#jsonName" => "message"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountDetail.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account.</p>", "smithy.api#jsonName" => "accountId", "smithy.api#required" => {}}))
    AccountDetail.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'email', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The email address for the account.</p>", "smithy.api#jsonName" => "email", "smithy.api#required" => {}}))
    AccountDetail.type = Types::AccountDetail
    AccountLevelPermissions.add_member(:block_public_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockPublicAccess, location_name: 'blockPublicAccess', traits: {"smithy.api#documentation" => "<p>The block public access settings for the Amazon Web Services account that owns the bucket.</p>", "smithy.api#jsonName" => "blockPublicAccess"}))
    AccountLevelPermissions.type = Types::AccountLevelPermissions
    AdminAccount.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account.</p>", "smithy.api#jsonName" => "accountId"}))
    AdminAccount.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AdminStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the account as the delegated Amazon Macie administrator account for the organization.</p>", "smithy.api#jsonName" => "status"}))
    AdminAccount.type = Types::AdminAccount
    AdminStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AdminStatus.add_member(:disabling_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DISABLING_IN_PROGRESS"}))
    AllowListCriteria.add_member(:regex, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max512patternss, location_name: 'regex', traits: {"smithy.api#documentation" => "<p>The regular expression (<i>regex</i>) that defines the text pattern to ignore. The expression can contain as many as 512 characters.</p>", "smithy.api#jsonName" => "regex"}))
    AllowListCriteria.add_member(:s3_words_list, Smithy::Schema::Shapes::ShapeRef.new(shape: S3WordsList, location_name: 's3WordsList', traits: {"smithy.api#documentation" => "<p>The location and name of the S3 object that lists specific text to ignore.</p>", "smithy.api#jsonName" => "s3WordsList"}))
    AllowListCriteria.type = Types::AllowListCriteria
    AllowListStatus.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListStatusCode, location_name: 'code', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The current status of the allow list. If the list's criteria specify a regular expression (regex), this value is typically OK. Amazon Macie can compile the expression.</p> <p>If the list's criteria specify an S3 object, possible values are:</p> <ul><li><p>OK - Macie can retrieve and parse the contents of the object.</p></li> <li><p>S3_OBJECT_ACCESS_DENIED - Macie isn't allowed to access the object or the object is encrypted with a customer managed KMS key that Macie isn't allowed to use. Check the bucket policy and other permissions settings for the bucket and the object. If the object is encrypted, also ensure that it's encrypted with a key that Macie is allowed to use.</p></li> <li><p>S3_OBJECT_EMPTY - Macie can retrieve the object but the object doesn't contain any content. Ensure that the object contains the correct entries. Also ensure that the list's criteria specify the correct bucket and object names.</p></li> <li><p>S3_OBJECT_NOT_FOUND - The object doesn't exist in Amazon S3. Ensure that the list's criteria specify the correct bucket and object names.</p></li> <li><p>S3_OBJECT_OVERSIZE - Macie can retrieve the object. However, the object contains too many entries or its storage size exceeds the quota for an allow list. Try breaking the list into multiple files and ensure that each file doesn't exceed any quotas. Then configure list settings in Macie for each file.</p></li> <li><p>S3_THROTTLED - Amazon S3 throttled the request to retrieve the object. Wait a few minutes and then try again.</p></li> <li><p>S3_USER_ACCESS_DENIED - Amazon S3 denied the request to retrieve the object. If the specified object exists, you're not allowed to access it or it's encrypted with an KMS key that you're not allowed to use. Work with your Amazon Web Services administrator to ensure that the list's criteria specify the correct bucket and object names, and you have read access to the bucket and the object. If the object is encrypted, also ensure that it's encrypted with a key that you're allowed to use.</p></li> <li><p>UNKNOWN_ERROR - A transient or internal error occurred when Macie attempted to retrieve or parse the object. Wait a few minutes and then try again. A list can also have this status if it's encrypted with a key that Amazon S3 and Macie can't access or use.</p></li></ul>", "smithy.api#jsonName" => "code", "smithy.api#required" => {}}))
    AllowListStatus.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max1024patternss, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A brief description of the status of the allow list. Amazon Macie uses this value to provide additional information about an error that occurred when Macie tried to access and use the list's criteria.</p>", "smithy.api#jsonName" => "description"}))
    AllowListStatus.type = Types::AllowListStatus
    AllowListStatusCode.add_member(:ok, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OK', traits: {"smithy.api#enumValue" => "OK"}))
    AllowListStatusCode.add_member(:s3_object_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT_NOT_FOUND', traits: {"smithy.api#enumValue" => "S3_OBJECT_NOT_FOUND"}))
    AllowListStatusCode.add_member(:s3_user_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_USER_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "S3_USER_ACCESS_DENIED"}))
    AllowListStatusCode.add_member(:s3_object_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "S3_OBJECT_ACCESS_DENIED"}))
    AllowListStatusCode.add_member(:s3_throttled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_THROTTLED', traits: {"smithy.api#enumValue" => "S3_THROTTLED"}))
    AllowListStatusCode.add_member(:s3_object_oversize, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT_OVERSIZE', traits: {"smithy.api#enumValue" => "S3_OBJECT_OVERSIZE"}))
    AllowListStatusCode.add_member(:s3_object_empty, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT_EMPTY', traits: {"smithy.api#enumValue" => "S3_OBJECT_EMPTY"}))
    AllowListStatusCode.add_member(:unknown_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_ERROR', traits: {"smithy.api#enumValue" => "UNKNOWN_ERROR"}))
    AllowListSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the allow list.</p>", "smithy.api#jsonName" => "arn"}))
    AllowListSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the allow list was created in Amazon Macie.</p>", "smithy.api#jsonName" => "createdAt"}))
    AllowListSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max512patternss, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The custom description of the allow list.</p>", "smithy.api#jsonName" => "description"}))
    AllowListSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin22max22patternaz0922, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the allow list.</p>", "smithy.api#jsonName" => "id"}))
    AllowListSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128pattern, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The custom name of the allow list.</p>", "smithy.api#jsonName" => "name"}))
    AllowListSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the allow list's settings were most recently changed in Amazon Macie.</p>", "smithy.api#jsonName" => "updatedAt"}))
    AllowListSummary.type = Types::AllowListSummary
    AllowsUnencryptedObjectUploads.add_member(:true, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    AllowsUnencryptedObjectUploads.add_member(:false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    AllowsUnencryptedObjectUploads.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ApiCallDetails.add_member(:api, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'api', traits: {"smithy.api#documentation" => "<p>The name of the operation that was invoked most recently and produced the finding.</p>", "smithy.api#jsonName" => "api"}))
    ApiCallDetails.add_member(:api_service_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiServiceName', traits: {"smithy.api#documentation" => "<p>The URL of the Amazon Web Services service that provides the operation, for example: s3.amazonaws.com.</p>", "smithy.api#jsonName" => "apiServiceName"}))
    ApiCallDetails.add_member(:first_seen, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'firstSeen', traits: {"smithy.api#documentation" => "<p>The first date and time, in UTC and extended ISO 8601 format, when any operation was invoked and produced the finding.</p>", "smithy.api#jsonName" => "firstSeen"}))
    ApiCallDetails.add_member(:last_seen, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastSeen', traits: {"smithy.api#documentation" => "<p>The most recent date and time, in UTC and extended ISO 8601 format, when the specified operation (api) was invoked and produced the finding.</p>", "smithy.api#jsonName" => "lastSeen"}))
    ApiCallDetails.type = Types::ApiCallDetails
    AssumedRole.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services access key ID that identifies the credentials.</p>", "smithy.api#jsonName" => "accessKeyId"}))
    AssumedRole.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account that owns the entity that was used to get the credentials.</p>", "smithy.api#jsonName" => "accountId"}))
    AssumedRole.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the entity that was used to get the credentials.</p>", "smithy.api#jsonName" => "arn"}))
    AssumedRole.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the entity that was used to get the credentials.</p>", "smithy.api#jsonName" => "principalId"}))
    AssumedRole.add_member(:session_context, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionContext, location_name: 'sessionContext', traits: {"smithy.api#documentation" => "<p>The details of the session that was created for the credentials, including the entity that issued the session.</p>", "smithy.api#jsonName" => "sessionContext"}))
    AssumedRole.type = Types::AssumedRole
    AutoEnableMode.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    AutoEnableMode.add_member(:new, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW', traits: {"smithy.api#enumValue" => "NEW"}))
    AutoEnableMode.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    AutomatedDiscoveryAccount.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account.</p>", "smithy.api#jsonName" => "accountId"}))
    AutomatedDiscoveryAccount.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccountStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of automated sensitive data discovery for the account. Possible values are: ENABLED, perform automated sensitive data discovery activities for the account; and, DISABLED, don't perform automated sensitive data discovery activities for the account.</p>", "smithy.api#jsonName" => "status"}))
    AutomatedDiscoveryAccount.type = Types::AutomatedDiscoveryAccount
    AutomatedDiscoveryAccountStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutomatedDiscoveryAccountStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutomatedDiscoveryAccountUpdate.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account.</p>", "smithy.api#jsonName" => "accountId"}))
    AutomatedDiscoveryAccountUpdate.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccountStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The new status of automated sensitive data discovery for the account. Valid values are: ENABLED, perform automated sensitive data discovery activities for the account; and, DISABLED, don't perform automated sensitive data discovery activities for the account.</p>", "smithy.api#jsonName" => "status"}))
    AutomatedDiscoveryAccountUpdate.type = Types::AutomatedDiscoveryAccountUpdate
    AutomatedDiscoveryAccountUpdateError.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account that the request applied to.</p>", "smithy.api#jsonName" => "accountId"}))
    AutomatedDiscoveryAccountUpdateError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccountUpdateErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The error code for the error that caused the request to fail for the account (accountId). Possible values are: ACCOUNT_NOT_FOUND, the account doesn’t exist or you're not the Amazon Macie administrator for the account; and, ACCOUNT_PAUSED, Macie isn’t enabled for the account in the current Amazon Web Services Region.</p>", "smithy.api#jsonName" => "errorCode"}))
    AutomatedDiscoveryAccountUpdateError.type = Types::AutomatedDiscoveryAccountUpdateError
    AutomatedDiscoveryAccountUpdateErrorCode.add_member(:account_paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_PAUSED', traits: {"smithy.api#enumValue" => "ACCOUNT_PAUSED"}))
    AutomatedDiscoveryAccountUpdateErrorCode.add_member(:account_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_NOT_FOUND', traits: {"smithy.api#enumValue" => "ACCOUNT_NOT_FOUND"}))
    AutomatedDiscoveryMonitoringStatus.add_member(:monitored, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONITORED', traits: {"smithy.api#enumValue" => "MONITORED"}))
    AutomatedDiscoveryMonitoringStatus.add_member(:not_monitored, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_MONITORED', traits: {"smithy.api#enumValue" => "NOT_MONITORED"}))
    AutomatedDiscoveryStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutomatedDiscoveryStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AvailabilityCode.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    AvailabilityCode.add_member(:unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNAVAILABLE', traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    AwsAccount.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account.</p>", "smithy.api#jsonName" => "accountId"}))
    AwsAccount.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the entity that performed the action.</p>", "smithy.api#jsonName" => "principalId"}))
    AwsAccount.type = Types::AwsAccount
    AwsService.add_member(:invoked_by, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'invokedBy', traits: {"smithy.api#documentation" => "<p>The name of the Amazon Web Service that performed the action.</p>", "smithy.api#jsonName" => "invokedBy"}))
    AwsService.type = Types::AwsService
    BatchGetCustomDataIdentifierSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom data identifier.</p>", "smithy.api#jsonName" => "arn"}))
    BatchGetCustomDataIdentifierSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>", "smithy.api#jsonName" => "createdAt"}))
    BatchGetCustomDataIdentifierSummary.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'deleted', traits: {"smithy.api#documentation" => "<p>Specifies whether the custom data identifier was deleted. If you delete a custom data identifier, Amazon Macie doesn't delete it permanently. Instead, it soft deletes the identifier.</p>", "smithy.api#jsonName" => "deleted"}))
    BatchGetCustomDataIdentifierSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The custom description of the custom data identifier.</p>", "smithy.api#jsonName" => "description"}))
    BatchGetCustomDataIdentifierSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the custom data identifier.</p>", "smithy.api#jsonName" => "id"}))
    BatchGetCustomDataIdentifierSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The custom name of the custom data identifier.</p>", "smithy.api#jsonName" => "name"}))
    BatchGetCustomDataIdentifierSummary.type = Types::BatchGetCustomDataIdentifierSummary
    BatchGetCustomDataIdentifiersRequest.add_member(:ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ids', traits: {"smithy.api#documentation" => "<p>An array of custom data identifier IDs, one for each custom data identifier to retrieve information about.</p>", "smithy.api#jsonName" => "ids"}))
    BatchGetCustomDataIdentifiersRequest.type = Types::BatchGetCustomDataIdentifiersRequest
    BatchGetCustomDataIdentifiersResponse.add_member(:custom_data_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofbatchgetcustomdataidentifiersummary, location_name: 'customDataIdentifiers', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each custom data identifier that matches the criteria specified in the request.</p>", "smithy.api#jsonName" => "customDataIdentifiers"}))
    BatchGetCustomDataIdentifiersResponse.add_member(:not_found_identifier_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'notFoundIdentifierIds', traits: {"smithy.api#documentation" => "<p>An array of custom data identifier IDs, one for each custom data identifier that was specified in the request but doesn't correlate to an existing custom data identifier.</p>", "smithy.api#jsonName" => "notFoundIdentifierIds"}))
    BatchGetCustomDataIdentifiersResponse.type = Types::BatchGetCustomDataIdentifiersResponse
    BatchUpdateAutomatedDiscoveryAccountsRequest.add_member(:accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofautomateddiscoveryaccountupdate, location_name: 'accounts', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each account to change the status of automated sensitive data discovery for. Each object specifies the Amazon Web Services account ID for an account and a new status for that account.</p>", "smithy.api#jsonName" => "accounts"}))
    BatchUpdateAutomatedDiscoveryAccountsRequest.type = Types::BatchUpdateAutomatedDiscoveryAccountsRequest
    BatchUpdateAutomatedDiscoveryAccountsResponse.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofautomateddiscoveryaccountupdateerror, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each account whose status wasn’t changed. Each object identifies the account and explains why the status of automated sensitive data discovery wasn’t changed for the account. This value is null if the request succeeded for all specified accounts.</p>", "smithy.api#jsonName" => "errors"}))
    BatchUpdateAutomatedDiscoveryAccountsResponse.type = Types::BatchUpdateAutomatedDiscoveryAccountsResponse
    BlockPublicAccess.add_member(:block_public_acls, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'blockPublicAcls', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon S3 blocks public access control lists (ACLs) for the bucket and objects in the bucket.</p>", "smithy.api#jsonName" => "blockPublicAcls"}))
    BlockPublicAccess.add_member(:block_public_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'blockPublicPolicy', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon S3 blocks public bucket policies for the bucket.</p>", "smithy.api#jsonName" => "blockPublicPolicy"}))
    BlockPublicAccess.add_member(:ignore_public_acls, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ignorePublicAcls', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon S3 ignores public ACLs for the bucket and objects in the bucket.</p>", "smithy.api#jsonName" => "ignorePublicAcls"}))
    BlockPublicAccess.add_member(:restrict_public_buckets, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'restrictPublicBuckets', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon S3 restricts public bucket policies for the bucket.</p>", "smithy.api#jsonName" => "restrictPublicBuckets"}))
    BlockPublicAccess.type = Types::BlockPublicAccess
    BucketCountByEffectivePermission.add_member(:publicly_accessible, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'publiclyAccessible', traits: {"smithy.api#documentation" => "<p>The total number of buckets that allow the general public to have read or write access to the bucket.</p>", "smithy.api#jsonName" => "publiclyAccessible"}))
    BucketCountByEffectivePermission.add_member(:publicly_readable, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'publiclyReadable', traits: {"smithy.api#documentation" => "<p>The total number of buckets that allow the general public to have read access to the bucket.</p>", "smithy.api#jsonName" => "publiclyReadable"}))
    BucketCountByEffectivePermission.add_member(:publicly_writable, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'publiclyWritable', traits: {"smithy.api#documentation" => "<p>The total number of buckets that allow the general public to have write access to the bucket.</p>", "smithy.api#jsonName" => "publiclyWritable"}))
    BucketCountByEffectivePermission.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unknown', traits: {"smithy.api#documentation" => "<p>The total number of buckets that Amazon Macie wasn't able to evaluate permissions settings for. For example, the buckets' policies or a quota prevented Macie from retrieving the requisite data. Macie can't determine whether the buckets are publicly accessible.</p>", "smithy.api#jsonName" => "unknown"}))
    BucketCountByEffectivePermission.type = Types::BucketCountByEffectivePermission
    BucketCountByEncryptionType.add_member(:kms_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'kmsManaged', traits: {"smithy.api#documentation" => "<p>The total number of buckets whose default encryption settings are configured to encrypt new objects with an KMS key, either an Amazon Web Services managed key or a customer managed key. By default, these buckets encrypt new objects automatically using DSSE-KMS or SSE-KMS encryption.</p>", "smithy.api#jsonName" => "kmsManaged"}))
    BucketCountByEncryptionType.add_member(:s3_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 's3Managed', traits: {"smithy.api#documentation" => "<p>The total number of buckets whose default encryption settings are configured to encrypt new objects with an Amazon S3 managed key. By default, these buckets encrypt new objects automatically using SSE-S3 encryption.</p>", "smithy.api#jsonName" => "s3Managed"}))
    BucketCountByEncryptionType.add_member(:unencrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unencrypted', traits: {"smithy.api#documentation" => "<p>The total number of buckets that don't specify default server-side encryption behavior for new objects. Default encryption settings aren't configured for these buckets.</p>", "smithy.api#jsonName" => "unencrypted"}))
    BucketCountByEncryptionType.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unknown', traits: {"smithy.api#documentation" => "<p>The total number of buckets that Amazon Macie doesn't have current encryption metadata for. For example, the buckets' permissions settings or a quota prevented Macie from retrieving the default encryption settings for the buckets.</p>", "smithy.api#jsonName" => "unknown"}))
    BucketCountByEncryptionType.type = Types::BucketCountByEncryptionType
    BucketCountBySharedAccessType.add_member(:external, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'external', traits: {"smithy.api#documentation" => "<p>The total number of buckets that are shared with one or more of the following or any combination of the following: an Amazon CloudFront OAI, a CloudFront OAC, or an Amazon Web Services account that isn't in the same Amazon Macie organization.</p>", "smithy.api#jsonName" => "external"}))
    BucketCountBySharedAccessType.add_member(:internal, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'internal', traits: {"smithy.api#documentation" => "<p>The total number of buckets that are shared with one or more Amazon Web Services accounts in the same Amazon Macie organization. These buckets aren't shared with Amazon CloudFront OAIs or OACs.</p>", "smithy.api#jsonName" => "internal"}))
    BucketCountBySharedAccessType.add_member(:not_shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'notShared', traits: {"smithy.api#documentation" => "<p>The total number of buckets that aren't shared with other Amazon Web Services accounts, Amazon CloudFront OAIs, or CloudFront OACs.</p>", "smithy.api#jsonName" => "notShared"}))
    BucketCountBySharedAccessType.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unknown', traits: {"smithy.api#documentation" => "<p>The total number of buckets that Amazon Macie wasn't able to evaluate shared access settings for. For example, the buckets' permissions settings or a quota prevented Macie from retrieving the requisite data. Macie can't determine whether the buckets are shared with other Amazon Web Services accounts, Amazon CloudFront OAIs, or CloudFront OACs.</p>", "smithy.api#jsonName" => "unknown"}))
    BucketCountBySharedAccessType.type = Types::BucketCountBySharedAccessType
    BucketCountPolicyAllowsUnencryptedObjectUploads.add_member(:allows_unencrypted_object_uploads, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'allowsUnencryptedObjectUploads', traits: {"smithy.api#documentation" => "<p>The total number of buckets that don't have a bucket policy or have a bucket policy that doesn't require server-side encryption of new objects. If a bucket policy exists, the policy doesn't require PutObject requests to include a valid server-side encryption header: the x-amz-server-side-encryption header with a value of AES256 or aws:kms, or the x-amz-server-side-encryption-customer-algorithm header with a value of AES256.</p>", "smithy.api#jsonName" => "allowsUnencryptedObjectUploads"}))
    BucketCountPolicyAllowsUnencryptedObjectUploads.add_member(:denies_unencrypted_object_uploads, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'deniesUnencryptedObjectUploads', traits: {"smithy.api#documentation" => "<p>The total number of buckets whose bucket policies require server-side encryption of new objects. PutObject requests for these buckets must include a valid server-side encryption header: the x-amz-server-side-encryption header with a value of AES256 or aws:kms, or the x-amz-server-side-encryption-customer-algorithm header with a value of AES256.</p>", "smithy.api#jsonName" => "deniesUnencryptedObjectUploads"}))
    BucketCountPolicyAllowsUnencryptedObjectUploads.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unknown', traits: {"smithy.api#documentation" => "<p>The total number of buckets that Amazon Macie wasn't able to evaluate server-side encryption requirements for. For example, the buckets' permissions settings or a quota prevented Macie from retrieving the requisite data. Macie can't determine whether bucket policies for the buckets require server-side encryption of new objects.</p>", "smithy.api#jsonName" => "unknown"}))
    BucketCountPolicyAllowsUnencryptedObjectUploads.type = Types::BucketCountPolicyAllowsUnencryptedObjectUploads
    BucketCriteria.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    BucketCriteria.value = Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCriteriaAdditionalProperties)
    BucketCriteriaAdditionalProperties.add_member(:eq, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'eq', traits: {"smithy.api#documentation" => "<p>The value for the property matches (equals) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.</p>", "smithy.api#jsonName" => "eq"}))
    BucketCriteriaAdditionalProperties.add_member(:gt, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'gt', traits: {"smithy.api#documentation" => "<p>The value for the property is greater than the specified value.</p>", "smithy.api#jsonName" => "gt"}))
    BucketCriteriaAdditionalProperties.add_member(:gte, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'gte', traits: {"smithy.api#documentation" => "<p>The value for the property is greater than or equal to the specified value.</p>", "smithy.api#jsonName" => "gte"}))
    BucketCriteriaAdditionalProperties.add_member(:lt, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'lt', traits: {"smithy.api#documentation" => "<p>The value for the property is less than the specified value.</p>", "smithy.api#jsonName" => "lt"}))
    BucketCriteriaAdditionalProperties.add_member(:lte, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'lte', traits: {"smithy.api#documentation" => "<p>The value for the property is less than or equal to the specified value.</p>", "smithy.api#jsonName" => "lte"}))
    BucketCriteriaAdditionalProperties.add_member(:neq, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'neq', traits: {"smithy.api#documentation" => "<p>The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.</p>", "smithy.api#jsonName" => "neq"}))
    BucketCriteriaAdditionalProperties.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>The name of the bucket begins with the specified value.</p>", "smithy.api#jsonName" => "prefix"}))
    BucketCriteriaAdditionalProperties.type = Types::BucketCriteriaAdditionalProperties
    BucketLevelPermissions.add_member(:access_control_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlList, location_name: 'accessControlList', traits: {"smithy.api#documentation" => "<p>The permissions settings of the access control list (ACL) for the bucket. This value is null if an ACL hasn't been defined for the bucket.</p>", "smithy.api#jsonName" => "accessControlList"}))
    BucketLevelPermissions.add_member(:block_public_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BlockPublicAccess, location_name: 'blockPublicAccess', traits: {"smithy.api#documentation" => "<p>The block public access settings for the bucket.</p>", "smithy.api#jsonName" => "blockPublicAccess"}))
    BucketLevelPermissions.add_member(:bucket_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketPolicy, location_name: 'bucketPolicy', traits: {"smithy.api#documentation" => "<p>The permissions settings of the bucket policy for the bucket. This value is null if a bucket policy hasn't been defined for the bucket.</p>", "smithy.api#jsonName" => "bucketPolicy"}))
    BucketLevelPermissions.type = Types::BucketLevelPermissions
    BucketMetadata.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account that owns the bucket.</p>", "smithy.api#jsonName" => "accountId"}))
    BucketMetadata.add_member(:allows_unencrypted_object_uploads, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowsUnencryptedObjectUploads, location_name: 'allowsUnencryptedObjectUploads', traits: {"smithy.api#documentation" => "<p>Specifies whether the bucket policy for the bucket requires server-side encryption of objects when objects are added to the bucket. Possible values are:</p> <ul><li><p>FALSE - The bucket policy requires server-side encryption of new objects. PutObject requests must include a valid server-side encryption header.</p></li> <li><p>TRUE - The bucket doesn't have a bucket policy or it has a bucket policy that doesn't require server-side encryption of new objects. If a bucket policy exists, it doesn't require PutObject requests to include a valid server-side encryption header.</p></li> <li><p>UNKNOWN - Amazon Macie can't determine whether the bucket policy requires server-side encryption of new objects.</p></li></ul> <p>Valid server-side encryption headers are: x-amz-server-side-encryption with a value of AES256 or aws:kms, and x-amz-server-side-encryption-customer-algorithm with a value of AES256.</p>", "smithy.api#jsonName" => "allowsUnencryptedObjectUploads"}))
    BucketMetadata.add_member(:automated_discovery_monitoring_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryMonitoringStatus, location_name: 'automatedDiscoveryMonitoringStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether automated sensitive data discovery is currently configured to analyze objects in the bucket. Possible values are: MONITORED, the bucket is included in analyses; and, NOT_MONITORED, the bucket is excluded from analyses. If automated sensitive data discovery is disabled for your account, this value is NOT_MONITORED.</p>", "smithy.api#jsonName" => "automatedDiscoveryMonitoringStatus"}))
    BucketMetadata.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the bucket.</p>", "smithy.api#jsonName" => "bucketArn"}))
    BucketMetadata.add_member(:bucket_created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'bucketCreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the bucket was created. This value can also indicate when changes such as edits to the bucket's policy were most recently made to the bucket.</p>", "smithy.api#jsonName" => "bucketCreatedAt"}))
    BucketMetadata.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the bucket.</p>", "smithy.api#jsonName" => "bucketName"}))
    BucketMetadata.add_member(:classifiable_object_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableObjectCount', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p>", "smithy.api#jsonName" => "classifiableObjectCount"}))
    BucketMetadata.add_member(:classifiable_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableSizeInBytes', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p> <p>If versioning is enabled for the bucket, Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>", "smithy.api#jsonName" => "classifiableSizeInBytes"}))
    BucketMetadata.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketMetadataErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The code for an error or issue that prevented Amazon Macie from retrieving and processing information about the bucket and the bucket's objects. Possible values are:</p> <ul><li><p>ACCESS_DENIED - Macie doesn't have permission to retrieve the information. For example, the bucket has a restrictive bucket policy and Amazon S3 denied the request.</p></li> <li><p>BUCKET_COUNT_EXCEEDS_QUOTA - Retrieving and processing the information would exceed the quota for the number of buckets that Macie monitors for an account (10,000).</p></li></ul> <p>If this value is null, Macie was able to retrieve and process the information.</p>", "smithy.api#jsonName" => "errorCode"}))
    BucketMetadata.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>A brief description of the error or issue (errorCode) that prevented Amazon Macie from retrieving and processing information about the bucket and the bucket's objects. This value is null if Macie was able to retrieve and process the information.</p>", "smithy.api#jsonName" => "errorMessage"}))
    BucketMetadata.add_member(:job_details, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetails, location_name: 'jobDetails', traits: {"smithy.api#documentation" => "<p>Specifies whether any one-time or recurring classification jobs are configured to analyze objects in the bucket, and, if so, the details of the job that ran most recently.</p>", "smithy.api#jsonName" => "jobDetails"}))
    BucketMetadata.add_member(:last_automated_discovery_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastAutomatedDiscoveryTime', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie most recently analyzed objects in the bucket while performing automated sensitive data discovery. This value is null if this analysis hasn't occurred.</p>", "smithy.api#jsonName" => "lastAutomatedDiscoveryTime"}))
    BucketMetadata.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie most recently retrieved bucket or object metadata from Amazon S3 for the bucket.</p>", "smithy.api#jsonName" => "lastUpdated"}))
    BucketMetadata.add_member(:object_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'objectCount', traits: {"smithy.api#documentation" => "<p>The total number of objects in the bucket.</p>", "smithy.api#jsonName" => "objectCount"}))
    BucketMetadata.add_member(:object_count_by_encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectCountByEncryptionType, location_name: 'objectCountByEncryptionType', traits: {"smithy.api#documentation" => "<p>The total number of objects in the bucket, grouped by server-side encryption type. This includes a grouping that reports the total number of objects that aren't encrypted or use client-side encryption.</p>", "smithy.api#jsonName" => "objectCountByEncryptionType"}))
    BucketMetadata.add_member(:public_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketPublicAccess, location_name: 'publicAccess', traits: {"smithy.api#documentation" => "<p>Specifies whether the bucket is publicly accessible due to the combination of permissions settings that apply to the bucket, and provides information about those settings.</p>", "smithy.api#jsonName" => "publicAccess"}))
    BucketMetadata.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region that hosts the bucket.</p>", "smithy.api#jsonName" => "region"}))
    BucketMetadata.add_member(:replication_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationDetails, location_name: 'replicationDetails', traits: {"smithy.api#documentation" => "<p>Specifies whether the bucket is configured to replicate one or more objects to buckets for other Amazon Web Services accounts and, if so, which accounts.</p>", "smithy.api#jsonName" => "replicationDetails"}))
    BucketMetadata.add_member(:sensitivity_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sensitivityScore', traits: {"smithy.api#documentation" => "<p>The sensitivity score for the bucket, ranging from -1 (classification error) to 100 (sensitive).</p><p>If automated sensitive data discovery has never been enabled for your account or it's been disabled for your organization or standalone account for more than 30 days, possible values are: 1, the bucket is empty; or, 50, the bucket stores objects but it's been excluded from recent analyses.</p>", "smithy.api#jsonName" => "sensitivityScore"}))
    BucketMetadata.add_member(:server_side_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketServerSideEncryption, location_name: 'serverSideEncryption', traits: {"smithy.api#documentation" => "<p>The default server-side encryption settings for the bucket.</p>", "smithy.api#jsonName" => "serverSideEncryption"}))
    BucketMetadata.add_member(:shared_access, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedAccess, location_name: 'sharedAccess', traits: {"smithy.api#documentation" => "<p>Specifies whether the bucket is shared with another Amazon Web Services account, an Amazon CloudFront origin access identity (OAI), or a CloudFront origin access control (OAC). Possible values are:</p> <ul><li><p>EXTERNAL - The bucket is shared with one or more of the following or any combination of the following: a CloudFront OAI, a CloudFront OAC, or an Amazon Web Services account that isn't part of your Amazon Macie organization.</p></li> <li><p>INTERNAL - The bucket is shared with one or more Amazon Web Services accounts that are part of your Amazon Macie organization. It isn't shared with a CloudFront OAI or OAC.</p></li> <li><p>NOT_SHARED - The bucket isn't shared with another Amazon Web Services account, a CloudFront OAI, or a CloudFront OAC.</p></li> <li><p>UNKNOWN - Amazon Macie wasn't able to evaluate the shared access settings for the bucket.</p></li></ul> <p>An <i>Amazon Macie organization</i> is a set of Macie accounts that are centrally managed as a group of related accounts through Organizations or by Macie invitation.</p>", "smithy.api#jsonName" => "sharedAccess"}))
    BucketMetadata.add_member(:size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytes', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the bucket.</p> <p>If versioning is enabled for the bucket, Amazon Macie calculates this value based on the size of the latest version of each object in the bucket. This value doesn't reflect the storage size of all versions of each object in the bucket.</p>", "smithy.api#jsonName" => "sizeInBytes"}))
    BucketMetadata.add_member(:size_in_bytes_compressed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytesCompressed', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the objects that are compressed (.gz, .gzip, .zip) files in the bucket.</p> <p>If versioning is enabled for the bucket, Amazon Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>", "smithy.api#jsonName" => "sizeInBytesCompressed"}))
    BucketMetadata.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofkeyvaluepair, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>An array that specifies the tags (keys and values) that are associated with the bucket.</p>", "smithy.api#jsonName" => "tags"}))
    BucketMetadata.add_member(:unclassifiable_object_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectCount', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>", "smithy.api#jsonName" => "unclassifiableObjectCount"}))
    BucketMetadata.add_member(:unclassifiable_object_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectSizeInBytes', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>", "smithy.api#jsonName" => "unclassifiableObjectSizeInBytes"}))
    BucketMetadata.add_member(:versioning, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'versioning', traits: {"smithy.api#documentation" => "<p>Specifies whether versioning is enabled for the bucket.</p>", "smithy.api#jsonName" => "versioning"}))
    BucketMetadata.type = Types::BucketMetadata
    BucketMetadataErrorCode.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    BucketMetadataErrorCode.add_member(:bucket_count_exceeds_quota, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUCKET_COUNT_EXCEEDS_QUOTA', traits: {"smithy.api#enumValue" => "BUCKET_COUNT_EXCEEDS_QUOTA"}))
    BucketPermissionConfiguration.add_member(:account_level_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLevelPermissions, location_name: 'accountLevelPermissions', traits: {"smithy.api#documentation" => "<p>The account-level permissions settings that apply to the bucket.</p>", "smithy.api#jsonName" => "accountLevelPermissions"}))
    BucketPermissionConfiguration.add_member(:bucket_level_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketLevelPermissions, location_name: 'bucketLevelPermissions', traits: {"smithy.api#documentation" => "<p>The bucket-level permissions settings for the bucket.</p>", "smithy.api#jsonName" => "bucketLevelPermissions"}))
    BucketPermissionConfiguration.type = Types::BucketPermissionConfiguration
    BucketPolicy.add_member(:allows_public_read_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowsPublicReadAccess', traits: {"smithy.api#documentation" => "<p>Specifies whether the bucket policy allows the general public to have read access to the bucket.</p>", "smithy.api#jsonName" => "allowsPublicReadAccess"}))
    BucketPolicy.add_member(:allows_public_write_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowsPublicWriteAccess', traits: {"smithy.api#documentation" => "<p>Specifies whether the bucket policy allows the general public to have write access to the bucket.</p>", "smithy.api#jsonName" => "allowsPublicWriteAccess"}))
    BucketPolicy.type = Types::BucketPolicy
    BucketPublicAccess.add_member(:effective_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePermission, location_name: 'effectivePermission', traits: {"smithy.api#documentation" => "<p>Specifies whether the bucket is publicly accessible due to the combination of permissions settings that apply to the bucket. Possible values are:</p> <ul><li><p>NOT_PUBLIC - The bucket isn't publicly accessible.</p></li> <li><p>PUBLIC - The bucket is publicly accessible.</p></li> <li><p>UNKNOWN - Amazon Macie can't determine whether the bucket is publicly accessible.</p></li></ul>", "smithy.api#jsonName" => "effectivePermission"}))
    BucketPublicAccess.add_member(:permission_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketPermissionConfiguration, location_name: 'permissionConfiguration', traits: {"smithy.api#documentation" => "<p>The account-level and bucket-level permissions settings for the bucket.</p>", "smithy.api#jsonName" => "permissionConfiguration"}))
    BucketPublicAccess.type = Types::BucketPublicAccess
    BucketServerSideEncryption.add_member(:kms_master_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kmsMasterKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) or unique identifier (key ID) for the KMS key that's used by default to encrypt objects that are added to the bucket. This value is null if the bucket is configured to use an Amazon S3 managed key to encrypt new objects.</p>", "smithy.api#jsonName" => "kmsMasterKeyId"}))
    BucketServerSideEncryption.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The server-side encryption algorithm that's used by default to encrypt objects that are added to the bucket. Possible values are:</p> <ul><li><p>AES256 - New objects use SSE-S3 encryption. They're encrypted with an Amazon S3 managed key.</p></li> <li><p>aws:kms - New objects use SSE-KMS encryption. They're encrypted with an KMS key (kmsMasterKeyId), either an Amazon Web Services managed key or a customer managed key.</p></li> <li><p>aws:kms:dsse - New objects use DSSE-KMS encryption. They're encrypted with an KMS key (kmsMasterKeyId), either an Amazon Web Services managed key or a customer managed key.</p></li> <li><p>NONE - The bucket's default encryption settings don't specify server-side encryption behavior for new objects.</p></li></ul>", "smithy.api#jsonName" => "type"}))
    BucketServerSideEncryption.type = Types::BucketServerSideEncryption
    BucketSortCriteria.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'attributeName', traits: {"smithy.api#documentation" => "<p>The name of the bucket property to sort the results by. This value can be one of the following properties that Amazon Macie defines as bucket metadata: accountId, bucketName, classifiableObjectCount, classifiableSizeInBytes, objectCount, sensitivityScore, or sizeInBytes.</p>", "smithy.api#jsonName" => "attributeName"}))
    BucketSortCriteria.add_member(:order_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#documentation" => "<p>The sort order to apply to the results, based on the value specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>", "smithy.api#jsonName" => "orderBy"}))
    BucketSortCriteria.type = Types::BucketSortCriteria
    BucketStatisticsBySensitivity.add_member(:classification_error, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: 'classificationError', traits: {"smithy.api#documentation" => "<p>The aggregated statistical data for all buckets that have a sensitivity score of -1.</p>", "smithy.api#jsonName" => "classificationError"}))
    BucketStatisticsBySensitivity.add_member(:not_classified, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: 'notClassified', traits: {"smithy.api#documentation" => "<p>The aggregated statistical data for all buckets that have a sensitivity score of 50.</p>", "smithy.api#jsonName" => "notClassified"}))
    BucketStatisticsBySensitivity.add_member(:not_sensitive, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: 'notSensitive', traits: {"smithy.api#documentation" => "<p>The aggregated statistical data for all buckets that have a sensitivity score of 1-49.</p>", "smithy.api#jsonName" => "notSensitive"}))
    BucketStatisticsBySensitivity.add_member(:sensitive, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: 'sensitive', traits: {"smithy.api#documentation" => "<p>The aggregated statistical data for all buckets that have a sensitivity score of 51-100.</p>", "smithy.api#jsonName" => "sensitive"}))
    BucketStatisticsBySensitivity.type = Types::BucketStatisticsBySensitivity
    Cell.add_member(:cell_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cellReference', traits: {"smithy.api#documentation" => "<p>The location of the cell, as an absolute cell reference, that contains the sensitive data, for example Sheet2!C5 for cell C5 on Sheet2 in a Microsoft Excel workbook. This value is null for CSV and TSV files.</p>", "smithy.api#jsonName" => "cellReference"}))
    Cell.add_member(:column, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'column', traits: {"smithy.api#documentation" => "<p>The column number of the column that contains the sensitive data. For a Microsoft Excel workbook, this value correlates to the alphabetical character(s) for a column identifier, for example: 1 for column A, 2 for column B, and so on.</p>", "smithy.api#jsonName" => "column"}))
    Cell.add_member(:column_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'columnName', traits: {"smithy.api#documentation" => "<p>The name of the column that contains the sensitive data, if available.</p>", "smithy.api#jsonName" => "columnName"}))
    Cell.add_member(:row, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'row', traits: {"smithy.api#documentation" => "<p>The row number of the row that contains the sensitive data.</p>", "smithy.api#jsonName" => "row"}))
    Cell.type = Types::Cell
    Cells.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Cell)
    ClassificationDetails.add_member(:detailed_results_location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'detailedResultsLocation', traits: {"smithy.api#documentation" => "<p>The path to the folder or file in Amazon S3 that contains the corresponding sensitive data discovery result for the finding. If a finding applies to a large archive or compressed file, this value is the path to a folder. Otherwise, this value is the path to a file.</p>", "smithy.api#jsonName" => "detailedResultsLocation"}))
    ClassificationDetails.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the classification job that produced the finding. This value is null if the origin of the finding (originType) is AUTOMATED_SENSITIVE_DATA_DISCOVERY.</p>", "smithy.api#jsonName" => "jobArn"}))
    ClassificationDetails.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the classification job that produced the finding. This value is null if the origin of the finding (originType) is AUTOMATED_SENSITIVE_DATA_DISCOVERY.</p>", "smithy.api#jsonName" => "jobId"}))
    ClassificationDetails.add_member(:origin_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginType, location_name: 'originType', traits: {"smithy.api#documentation" => "<p>Specifies how Amazon Macie found the sensitive data that produced the finding. Possible values are: SENSITIVE_DATA_DISCOVERY_JOB, for a classification job; and, AUTOMATED_SENSITIVE_DATA_DISCOVERY, for automated sensitive data discovery.</p>", "smithy.api#jsonName" => "originType"}))
    ClassificationDetails.add_member(:result, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationResult, location_name: 'result', traits: {"smithy.api#documentation" => "<p>The status and other details of the finding.</p>", "smithy.api#jsonName" => "result"}))
    ClassificationDetails.type = Types::ClassificationDetails
    ClassificationExportConfiguration.add_member(:s3_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 's3Destination', traits: {"smithy.api#documentation" => "<p>The S3 bucket to store data classification results in, and the encryption settings to use when storing results in that bucket.</p>", "smithy.api#jsonName" => "s3Destination"}))
    ClassificationExportConfiguration.type = Types::ClassificationExportConfiguration
    ClassificationResult.add_member(:additional_occurrences, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'additionalOccurrences', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon Macie detected additional occurrences of sensitive data in the S3 object. A finding includes location data for a maximum of 15 occurrences of sensitive data.</p> <p>This value can help you determine whether to investigate additional occurrences of sensitive data in an object. You can do this by referring to the corresponding sensitive data discovery result for the finding (classificationDetails.detailedResultsLocation).</p>", "smithy.api#jsonName" => "additionalOccurrences"}))
    ClassificationResult.add_member(:custom_data_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDataIdentifiers, location_name: 'customDataIdentifiers', traits: {"smithy.api#documentation" => "<p>The custom data identifiers that detected the sensitive data and the number of occurrences of the data that they detected.</p>", "smithy.api#jsonName" => "customDataIdentifiers"}))
    ClassificationResult.add_member(:mime_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mimeType', traits: {"smithy.api#documentation" => "<p>The type of content, as a MIME type, that the finding applies to. For example, application/gzip, for a GNU Gzip compressed archive file, or application/pdf, for an Adobe Portable Document Format file.</p>", "smithy.api#jsonName" => "mimeType"}))
    ClassificationResult.add_member(:sensitive_data, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'sensitiveData', traits: {"smithy.api#documentation" => "<p>The category, types, and number of occurrences of the sensitive data that produced the finding.</p>", "smithy.api#jsonName" => "sensitiveData"}))
    ClassificationResult.add_member(:size_classified, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeClassified', traits: {"smithy.api#documentation" => "<p>The total size, in bytes, of the data that the finding applies to.</p>", "smithy.api#jsonName" => "sizeClassified"}))
    ClassificationResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationResultStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the finding.</p>", "smithy.api#jsonName" => "status"}))
    ClassificationResult.type = Types::ClassificationResult
    ClassificationResultStatus.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The status of the finding. Possible values are:</p> <ul><li><p>COMPLETE - Amazon Macie successfully completed its analysis of the S3 object that the finding applies to.</p></li> <li><p>PARTIAL - Macie analyzed only a subset of the data in the S3 object that the finding applies to. For example, the object is an archive file that contains files in an unsupported format.</p></li> <li><p>SKIPPED - Macie wasn't able to analyze the S3 object that the finding applies to. For example, the object is a file that uses an unsupported format.</p></li></ul>", "smithy.api#jsonName" => "code"}))
    ClassificationResultStatus.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>A brief description of the status of the finding. This value is null if the status (code) of the finding is COMPLETE.</p> <p>Amazon Macie uses this value to notify you of any errors, warnings, or considerations that might impact your analysis of the finding and the affected S3 object. Possible values are:</p> <ul><li><p>ARCHIVE_CONTAINS_UNPROCESSED_FILES - The object is an archive file and Macie extracted and analyzed only some or none of the files in the archive. To determine which files Macie analyzed, if any, refer to the corresponding sensitive data discovery result for the finding (classificationDetails.detailedResultsLocation).</p></li> <li><p>ARCHIVE_EXCEEDS_SIZE_LIMIT - The object is an archive file whose total storage size exceeds the size quota for this type of archive.</p></li> <li><p>ARCHIVE_NESTING_LEVEL_OVER_LIMIT - The object is an archive file whose nested depth exceeds the quota for the maximum number of nested levels that Macie analyzes for this type of archive.</p></li> <li><p>ARCHIVE_TOTAL_BYTES_EXTRACTED_OVER_LIMIT - The object is an archive file that exceeds the quota for the maximum amount of data that Macie extracts and analyzes for this type of archive.</p></li> <li><p>ARCHIVE_TOTAL_DOCUMENTS_PROCESSED_OVER_LIMIT - The object is an archive file that contains more than the maximum number of files that Macie extracts and analyzes for this type of archive.</p></li> <li><p>FILE_EXCEEDS_SIZE_LIMIT - The storage size of the object exceeds the size quota for this type of file.</p></li> <li><p>INVALID_ENCRYPTION - The object is encrypted using server-side encryption but Macie isn't allowed to use the key. Macie can't decrypt and analyze the object.</p></li> <li><p>INVALID_KMS_KEY - The object is encrypted with an KMS key that was disabled or is being deleted. Macie can't decrypt and analyze the object.</p></li> <li><p>INVALID_OBJECT_STATE - The object doesn't use a supported Amazon S3 storage class.</p></li> <li><p>JSON_NESTING_LEVEL_OVER_LIMIT - The object contains JSON data and the nested depth of the data exceeds the quota for the number of nested levels that Macie analyzes for this type of file.</p></li> <li><p>MALFORMED_FILE - The object is a malformed or corrupted file. An error occurred when Macie attempted to detect the file's type or extract data from the file.</p></li> <li><p>MALFORMED_OR_FILE_SIZE_EXCEEDS_LIMIT - The object is a Microsoft Office file that is malformed or exceeds the size quota for this type of file. If the file is malformed, an error occurred when Macie attempted to extract data from the file.</p></li> <li><p>NO_SUCH_BUCKET_AVAILABLE - The object was in a bucket that was deleted shortly before or when Macie attempted to analyze the object.</p></li> <li><p>OBJECT_VERSION_MISMATCH - The object was changed while Macie was analyzing it.</p></li> <li><p>OOXML_UNCOMPRESSED_RATIO_EXCEEDS_LIMIT - The object is an Office Open XML file whose compression ratio exceeds the compression quota for this type of file.</p></li> <li><p>OOXML_UNCOMPRESSED_SIZE_EXCEEDS_LIMIT - The object is an Office Open XML file that exceeds the size quota for this type of file.</p></li> <li><p>PERMISSION_DENIED - Macie isn't allowed to access the object. The object's permissions settings prevent Macie from analyzing the object.</p></li> <li><p>SOURCE_OBJECT_NO_LONGER_AVAILABLE - The object was deleted shortly before or when Macie attempted to analyze it.</p></li> <li><p>TIME_CUT_OFF_REACHED - Macie started analyzing the object but additional analysis would exceed the time quota for analyzing an object.</p></li> <li><p>UNABLE_TO_PARSE_FILE - The object is a file that contains structured data and an error occurred when Macie attempted to parse the data.</p></li> <li><p>UNSUPPORTED_FILE_TYPE_EXCEPTION - The object is a file that uses an unsupported file or storage format.</p></li></ul> <p>For information about quotas, supported storage classes, and supported file and storage formats, see <a href=\"https://docs.aws.amazon.com/macie/latest/user/macie-quotas.html\">Quotas</a> and <a href=\"https://docs.aws.amazon.com/macie/latest/user/discovery-supported-storage.html\">Supported storage classes and formats</a> in the <i>Amazon Macie User Guide</i>.</p>", "smithy.api#jsonName" => "reason"}))
    ClassificationResultStatus.type = Types::ClassificationResultStatus
    ClassificationScopeSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the classification scope.</p>", "smithy.api#jsonName" => "id"}))
    ClassificationScopeSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the classification scope: automated-sensitive-data-discovery.</p>", "smithy.api#jsonName" => "name"}))
    ClassificationScopeSummary.type = Types::ClassificationScopeSummary
    ClassificationScopeUpdateOperation.add_member(:add, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD', traits: {"smithy.api#enumValue" => "ADD"}))
    ClassificationScopeUpdateOperation.add_member(:replace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACE', traits: {"smithy.api#enumValue" => "REPLACE"}))
    ClassificationScopeUpdateOperation.add_member(:remove, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "REMOVE"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The explanation of the error that occurred.</p>", "smithy.api#jsonName" => "message"}))
    ConflictException.type = Types::ConflictException
    CreateAllowListRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken", "smithy.api#required" => {}}))
    CreateAllowListRequest.add_member(:criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListCriteria, location_name: 'criteria', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The criteria that specify the text or text pattern to ignore. The criteria can be the location and name of an S3 object that lists specific text to ignore (s3WordsList), or a regular expression (regex) that defines a text pattern to ignore.</p>", "smithy.api#jsonName" => "criteria", "smithy.api#required" => {}}))
    CreateAllowListRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max512patternss, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A custom description of the allow list. The description can contain as many as 512 characters.</p>", "smithy.api#jsonName" => "description"}))
    CreateAllowListRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128pattern, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A custom name for the allow list. The name can contain as many as 128 characters.</p>", "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateAllowListRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies the tags to associate with the allow list.</p> <p>An allow list can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>", "smithy.api#jsonName" => "tags"}))
    CreateAllowListRequest.type = Types::CreateAllowListRequest
    CreateAllowListResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the allow list.</p>", "smithy.api#jsonName" => "arn"}))
    CreateAllowListResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin22max22patternaz0922, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the allow list.</p>", "smithy.api#jsonName" => "id"}))
    CreateAllowListResponse.type = Types::CreateAllowListResponse
    CreateClassificationJobRequest.add_member(:allow_list_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'allowListIds', traits: {"smithy.api#documentation" => "<p>An array of unique identifiers, one for each allow list for the job to use when it analyzes data.</p>", "smithy.api#jsonName" => "allowListIds"}))
    CreateClassificationJobRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken", "smithy.api#required" => {}}))
    CreateClassificationJobRequest.add_member(:custom_data_identifier_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'customDataIdentifierIds', traits: {"smithy.api#documentation" => "<p>An array of unique identifiers, one for each custom data identifier for the job to use when it analyzes data. To use only managed data identifiers, don't specify a value for this property and specify a value other than NONE for the managedDataIdentifierSelector property.</p>", "smithy.api#jsonName" => "customDataIdentifierIds"}))
    CreateClassificationJobRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A custom description of the job. The description can contain as many as 200 characters.</p>", "smithy.api#jsonName" => "description"}))
    CreateClassificationJobRequest.add_member(:initial_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'initialRun', traits: {"smithy.api#documentation" => "<p>For a recurring job, specifies whether to analyze all existing, eligible objects immediately after the job is created (true). To analyze only those objects that are created or changed after you create the job and before the job's first scheduled run, set this value to false.</p> <p>If you configure the job to run only once, don't specify a value for this property.</p>", "smithy.api#jsonName" => "initialRun"}))
    CreateClassificationJobRequest.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'jobType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The schedule for running the job. Valid values are:</p> <ul><li><p>ONE_TIME - Run the job only once. If you specify this value, don't specify a value for the scheduleFrequency property.</p></li> <li><p>SCHEDULED - Run the job on a daily, weekly, or monthly basis. If you specify this value, use the scheduleFrequency property to specify the recurrence pattern for the job.</p></li></ul>", "smithy.api#jsonName" => "jobType", "smithy.api#required" => {}}))
    CreateClassificationJobRequest.add_member(:managed_data_identifier_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'managedDataIdentifierIds', traits: {"smithy.api#documentation" => "<p>An array of unique identifiers, one for each managed data identifier for the job to include (use) or exclude (not use) when it analyzes data. Inclusion or exclusion depends on the managed data identifier selection type that you specify for the job (managedDataIdentifierSelector).</p> <p>To retrieve a list of valid values for this property, use the ListManagedDataIdentifiers operation.</p>", "smithy.api#jsonName" => "managedDataIdentifierIds"}))
    CreateClassificationJobRequest.add_member(:managed_data_identifier_selector, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDataIdentifierSelector, location_name: 'managedDataIdentifierSelector', traits: {"smithy.api#documentation" => "<p>The selection type to apply when determining which managed data identifiers the job uses to analyze data. Valid values are:</p> <ul><li><p>ALL - Use all managed data identifiers. If you specify this value, don't specify any values for the managedDataIdentifierIds property.</p></li> <li><p>EXCLUDE - Use all managed data identifiers except the ones specified by the managedDataIdentifierIds property.</p></li> <li><p>INCLUDE - Use only the managed data identifiers specified by the managedDataIdentifierIds property.</p></li> <li><p>NONE - Don't use any managed data identifiers. If you specify this value, specify at least one value for the customDataIdentifierIds property and don't specify any values for the managedDataIdentifierIds property.</p></li> <li><p>RECOMMENDED (default) - Use the recommended set of managed data identifiers. If you specify this value, don't specify any values for the managedDataIdentifierIds property.</p></li></ul> <p>If you don't specify a value for this property, the job uses the recommended set of managed data identifiers.</p> <p>If the job is a recurring job and you specify ALL or EXCLUDE, each job run automatically uses new managed data identifiers that are released. If you don't specify a value for this property or you specify RECOMMENDED for a recurring job, each job run automatically uses all the managed data identifiers that are in the recommended set when the run starts.</p> <p>To learn about individual managed data identifiers or determine which ones are in the recommended set, see <a href=\"https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html\">Using managed data identifiers</a> or <a href=\"https://docs.aws.amazon.com/macie/latest/user/discovery-jobs-mdis-recommended.html\">Recommended managed data identifiers</a> in the <i>Amazon Macie User Guide</i>.</p>", "smithy.api#jsonName" => "managedDataIdentifierSelector"}))
    CreateClassificationJobRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A custom name for the job. The name can contain as many as 500 characters.</p>", "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateClassificationJobRequest.add_member(:s3_job_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: S3JobDefinition, location_name: 's3JobDefinition', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The S3 buckets that contain the objects to analyze, and the scope of that analysis.</p>", "smithy.api#jsonName" => "s3JobDefinition", "smithy.api#required" => {}}))
    CreateClassificationJobRequest.add_member(:sampling_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'samplingPercentage', traits: {"smithy.api#documentation" => "<p>The sampling depth, as a percentage, for the job to apply when processing objects. This value determines the percentage of eligible objects that the job analyzes. If this value is less than 100, Amazon Macie selects the objects to analyze at random, up to the specified percentage, and analyzes all the data in those objects.</p>", "smithy.api#jsonName" => "samplingPercentage"}))
    CreateClassificationJobRequest.add_member(:schedule_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: JobScheduleFrequency, location_name: 'scheduleFrequency', traits: {"smithy.api#documentation" => "<p>The recurrence pattern for running the job. To run the job only once, don't specify a value for this property and set the value for the jobType property to ONE_TIME.</p>", "smithy.api#jsonName" => "scheduleFrequency"}))
    CreateClassificationJobRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies the tags to associate with the job.</p> <p>A job can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>", "smithy.api#jsonName" => "tags"}))
    CreateClassificationJobRequest.type = Types::CreateClassificationJobRequest
    CreateClassificationJobResponse.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the job.</p>", "smithy.api#jsonName" => "jobArn"}))
    CreateClassificationJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    CreateClassificationJobResponse.type = Types::CreateClassificationJobResponse
    CreateCustomDataIdentifierRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateCustomDataIdentifierRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A custom description of the custom data identifier. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a custom data identifier. Other users of your account might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>", "smithy.api#jsonName" => "description"}))
    CreateCustomDataIdentifierRequest.add_member(:ignore_words, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ignoreWords', traits: {"smithy.api#documentation" => "<p>An array that lists specific character sequences (<i>ignore words</i>) to exclude from the results. If the text matched by the regular expression contains any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4-90 UTF-8 characters. Ignore words are case sensitive.</p>", "smithy.api#jsonName" => "ignoreWords"}))
    CreateCustomDataIdentifierRequest.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'keywords', traits: {"smithy.api#documentation" => "<p>An array that lists specific character sequences (<i>keywords</i>), one of which must precede and be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3-90 UTF-8 characters. Keywords aren't case sensitive.</p>", "smithy.api#jsonName" => "keywords"}))
    CreateCustomDataIdentifierRequest.add_member(:maximum_match_distance, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maximumMatchDistance', traits: {"smithy.api#documentation" => "<p>The maximum number of characters that can exist between the end of at least one complete character sequence specified by the keywords array and the end of the text that matches the regex pattern. If a complete keyword precedes all the text that matches the pattern and the keyword is within the specified distance, Amazon Macie includes the result. The distance can be 1-300 characters. The default value is 50.</p>", "smithy.api#jsonName" => "maximumMatchDistance"}))
    CreateCustomDataIdentifierRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A custom name for the custom data identifier. The name can contain as many as 128 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a custom data identifier. Other users of your account might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>", "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateCustomDataIdentifierRequest.add_member(:regex, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regex', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>", "smithy.api#jsonName" => "regex", "smithy.api#required" => {}}))
    CreateCustomDataIdentifierRequest.add_member(:severity_levels, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevelList, location_name: 'severityLevels', traits: {"smithy.api#documentation" => "<p>The severity to assign to findings that the custom data identifier produces, based on the number of occurrences of text that match the custom data identifier's detection criteria. You can specify as many as three SeverityLevel objects in this array, one for each severity: LOW, MEDIUM, or HIGH. If you specify more than one, the occurrences thresholds must be in ascending order by severity, moving from LOW to HIGH. For example, 1 for LOW, 50 for MEDIUM, and 100 for HIGH. If an S3 object contains fewer occurrences than the lowest specified threshold, Amazon Macie doesn't create a finding.</p> <p>If you don't specify any values for this array, Macie creates findings for S3 objects that contain at least one occurrence of text that matches the detection criteria, and Macie assigns the MEDIUM severity to those findings.</p>", "smithy.api#jsonName" => "severityLevels"}))
    CreateCustomDataIdentifierRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies the tags to associate with the custom data identifier.</p> <p>A custom data identifier can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>", "smithy.api#jsonName" => "tags"}))
    CreateCustomDataIdentifierRequest.type = Types::CreateCustomDataIdentifierRequest
    CreateCustomDataIdentifierResponse.add_member(:custom_data_identifier_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customDataIdentifierId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the custom data identifier that was created.</p>", "smithy.api#jsonName" => "customDataIdentifierId"}))
    CreateCustomDataIdentifierResponse.type = Types::CreateCustomDataIdentifierResponse
    CreateFindingsFilterRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: 'action', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The action to perform on findings that match the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>", "smithy.api#jsonName" => "action", "smithy.api#required" => {}}))
    CreateFindingsFilterRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateFindingsFilterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users of your account might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>", "smithy.api#jsonName" => "description"}))
    CreateFindingsFilterRequest.add_member(:finding_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCriteria, location_name: 'findingCriteria', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The criteria to use to filter findings.</p>", "smithy.api#jsonName" => "findingCriteria", "smithy.api#required" => {}}))
    CreateFindingsFilterRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users of your account might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>", "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateFindingsFilterRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>", "smithy.api#jsonName" => "position"}))
    CreateFindingsFilterRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies the tags to associate with the filter.</p> <p>A findings filter can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>", "smithy.api#jsonName" => "tags"}))
    CreateFindingsFilterRequest.type = Types::CreateFindingsFilterRequest
    CreateFindingsFilterResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the filter that was created.</p>", "smithy.api#jsonName" => "arn"}))
    CreateFindingsFilterResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the filter that was created.</p>", "smithy.api#jsonName" => "id"}))
    CreateFindingsFilterResponse.type = Types::CreateFindingsFilterResponse
    CreateInvitationsRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'accountIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array that lists Amazon Web Services account IDs, one for each account to send the invitation to.</p>", "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    CreateInvitationsRequest.add_member(:disable_email_notification, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'disableEmailNotification', traits: {"smithy.api#documentation" => "<p>Specifies whether to send the invitation as an email message. If this value is false, Amazon Macie sends the invitation (as an email message) to the email address that you specified for the recipient's account when you associated the account with your account. The default value is false.</p>", "smithy.api#jsonName" => "disableEmailNotification"}))
    CreateInvitationsRequest.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Custom text to include in the email message that contains the invitation. The text can contain as many as 80 alphanumeric characters.</p>", "smithy.api#jsonName" => "message"}))
    CreateInvitationsRequest.type = Types::CreateInvitationsRequest
    CreateInvitationsResponse.add_member(:unprocessed_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofunprocessedaccount, location_name: 'unprocessedAccounts', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each account whose invitation hasn't been processed. Each object identifies the account and explains why the invitation hasn't been processed for the account.</p>", "smithy.api#jsonName" => "unprocessedAccounts"}))
    CreateInvitationsResponse.type = Types::CreateInvitationsResponse
    CreateMemberRequest.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountDetail, location_name: 'account', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The details of the account to associate with the administrator account.</p>", "smithy.api#jsonName" => "account", "smithy.api#required" => {}}))
    CreateMemberRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies the tags to associate with the account in Amazon Macie.</p> <p>An account can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>", "smithy.api#jsonName" => "tags"}))
    CreateMemberRequest.type = Types::CreateMemberRequest
    CreateMemberResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the account that was associated with the administrator account.</p>", "smithy.api#jsonName" => "arn"}))
    CreateMemberResponse.type = Types::CreateMemberResponse
    CreateSampleFindingsRequest.add_member(:finding_types, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoffindingtype, location_name: 'findingTypes', traits: {"smithy.api#documentation" => "<p>An array of finding types, one for each type of sample finding to create. To create a sample of every type of finding that Amazon Macie supports, don't include this array in your request.</p>", "smithy.api#jsonName" => "findingTypes"}))
    CreateSampleFindingsRequest.type = Types::CreateSampleFindingsRequest
    CreateSampleFindingsResponse.type = Types::CreateSampleFindingsResponse
    CriteriaBlockForJob.add_member(:and, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofcriteriaforjob, location_name: 'and', traits: {"smithy.api#documentation" => "<p>An array of conditions, one for each condition that determines which buckets to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>", "smithy.api#jsonName" => "and"}))
    CriteriaBlockForJob.type = Types::CriteriaBlockForJob
    CriteriaForJob.add_member(:simple_criterion, Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleCriterionForJob, location_name: 'simpleCriterion', traits: {"smithy.api#documentation" => "<p>A property-based condition that defines a property, operator, and one or more values for including or excluding buckets from the job.</p>", "smithy.api#jsonName" => "simpleCriterion"}))
    CriteriaForJob.add_member(:tag_criterion, Smithy::Schema::Shapes::ShapeRef.new(shape: TagCriterionForJob, location_name: 'tagCriterion', traits: {"smithy.api#documentation" => "<p>A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding buckets from the job.</p>", "smithy.api#jsonName" => "tagCriterion"}))
    CriteriaForJob.type = Types::CriteriaForJob
    Criterion.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Criterion.value = Smithy::Schema::Shapes::ShapeRef.new(shape: CriterionAdditionalProperties)
    CriterionAdditionalProperties.add_member(:eq, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'eq', traits: {"smithy.api#documentation" => "<p>The value for the property matches (equals) the specified value. If you specify multiple values, Macie uses OR logic to join the values.</p>", "smithy.api#jsonName" => "eq"}))
    CriterionAdditionalProperties.add_member(:eq_exact_match, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'eqExactMatch', traits: {"smithy.api#documentation" => "<p>The value for the property exclusively matches (equals an exact match for) all the specified values. If you specify multiple values, Amazon Macie uses AND logic to join the values.</p> <p>You can use this operator with the following properties: customDataIdentifiers.detections.arn, customDataIdentifiers.detections.name, resourcesAffected.s3Bucket.tags.key, resourcesAffected.s3Bucket.tags.value, resourcesAffected.s3Object.tags.key, resourcesAffected.s3Object.tags.value, sensitiveData.category, and sensitiveData.detections.type.</p>", "smithy.api#jsonName" => "eqExactMatch"}))
    CriterionAdditionalProperties.add_member(:gt, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'gt', traits: {"smithy.api#documentation" => "<p>The value for the property is greater than the specified value.</p>", "smithy.api#jsonName" => "gt"}))
    CriterionAdditionalProperties.add_member(:gte, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'gte', traits: {"smithy.api#documentation" => "<p>The value for the property is greater than or equal to the specified value.</p>", "smithy.api#jsonName" => "gte"}))
    CriterionAdditionalProperties.add_member(:lt, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'lt', traits: {"smithy.api#documentation" => "<p>The value for the property is less than the specified value.</p>", "smithy.api#jsonName" => "lt"}))
    CriterionAdditionalProperties.add_member(:lte, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'lte', traits: {"smithy.api#documentation" => "<p>The value for the property is less than or equal to the specified value.</p>", "smithy.api#jsonName" => "lte"}))
    CriterionAdditionalProperties.add_member(:neq, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'neq', traits: {"smithy.api#documentation" => "<p>The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Macie uses OR logic to join the values.</p>", "smithy.api#jsonName" => "neq"}))
    CriterionAdditionalProperties.type = Types::CriterionAdditionalProperties
    Currency.add_member(:usd, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USD', traits: {"smithy.api#enumValue" => "USD"}))
    CustomDataIdentifierSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom data identifier.</p>", "smithy.api#jsonName" => "arn"}))
    CustomDataIdentifierSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>", "smithy.api#jsonName" => "createdAt"}))
    CustomDataIdentifierSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The custom description of the custom data identifier.</p>", "smithy.api#jsonName" => "description"}))
    CustomDataIdentifierSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the custom data identifier.</p>", "smithy.api#jsonName" => "id"}))
    CustomDataIdentifierSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The custom name of the custom data identifier.</p>", "smithy.api#jsonName" => "name"}))
    CustomDataIdentifierSummary.type = Types::CustomDataIdentifierSummary
    CustomDataIdentifiers.add_member(:detections, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDetections, location_name: 'detections', traits: {"smithy.api#documentation" => "<p>The custom data identifiers that detected the data, and the number of occurrences of the data that each identifier detected.</p>", "smithy.api#jsonName" => "detections"}))
    CustomDataIdentifiers.add_member(:total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalCount', traits: {"smithy.api#documentation" => "<p>The total number of occurrences of the data that was detected by the custom data identifiers and produced the finding.</p>", "smithy.api#jsonName" => "totalCount"}))
    CustomDataIdentifiers.type = Types::CustomDataIdentifiers
    CustomDetection.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The unique identifier for the custom data identifier.</p>", "smithy.api#jsonName" => "arn"}))
    CustomDetection.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The total number of occurrences of the sensitive data that the custom data identifier detected.</p>", "smithy.api#jsonName" => "count"}))
    CustomDetection.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the custom data identifier.</p>", "smithy.api#jsonName" => "name"}))
    CustomDetection.add_member(:occurrences, Smithy::Schema::Shapes::ShapeRef.new(shape: Occurrences, location_name: 'occurrences', traits: {"smithy.api#documentation" => "<p>The location of 1-15 occurrences of the sensitive data that the custom data identifier detected. A finding includes location data for a maximum of 15 occurrences of sensitive data.</p>", "smithy.api#jsonName" => "occurrences"}))
    CustomDetection.type = Types::CustomDetection
    CustomDetections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDetection)
    DailySchedule.type = Types::DailySchedule
    DataIdentifierSeverity.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    DataIdentifierSeverity.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    DataIdentifierSeverity.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    DataIdentifierType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    DataIdentifierType.add_member(:managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANAGED', traits: {"smithy.api#enumValue" => "MANAGED"}))
    DayOfWeek.add_member(:sunday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUNDAY', traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DayOfWeek.add_member(:monday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONDAY', traits: {"smithy.api#enumValue" => "MONDAY"}))
    DayOfWeek.add_member(:tuesday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TUESDAY', traits: {"smithy.api#enumValue" => "TUESDAY"}))
    DayOfWeek.add_member(:wednesday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEDNESDAY', traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    DayOfWeek.add_member(:thursday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THURSDAY', traits: {"smithy.api#enumValue" => "THURSDAY"}))
    DayOfWeek.add_member(:friday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRIDAY', traits: {"smithy.api#enumValue" => "FRIDAY"}))
    DayOfWeek.add_member(:saturday, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SATURDAY', traits: {"smithy.api#enumValue" => "SATURDAY"}))
    DeclineInvitationsRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'accountIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array that lists Amazon Web Services account IDs, one for each account that sent an invitation to decline.</p>", "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    DeclineInvitationsRequest.type = Types::DeclineInvitationsRequest
    DeclineInvitationsResponse.add_member(:unprocessed_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofunprocessedaccount, location_name: 'unprocessedAccounts', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each account whose invitation hasn't been declined. Each object identifies the account and explains why the request hasn't been processed for that account.</p>", "smithy.api#jsonName" => "unprocessedAccounts"}))
    DeclineInvitationsResponse.type = Types::DeclineInvitationsResponse
    DefaultDetection.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The total number of occurrences of the type of sensitive data that was detected.</p>", "smithy.api#jsonName" => "count"}))
    DefaultDetection.add_member(:occurrences, Smithy::Schema::Shapes::ShapeRef.new(shape: Occurrences, location_name: 'occurrences', traits: {"smithy.api#documentation" => "<p>The location of 1-15 occurrences of the sensitive data that was detected. A finding includes location data for a maximum of 15 occurrences of sensitive data.</p>", "smithy.api#jsonName" => "occurrences"}))
    DefaultDetection.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of sensitive data that was detected. For example, AWS_CREDENTIALS, PHONE_NUMBER, or ADDRESS.</p>", "smithy.api#jsonName" => "type"}))
    DefaultDetection.type = Types::DefaultDetection
    DefaultDetections.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultDetection)
    DeleteAllowListRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAllowListRequest.add_member(:ignore_job_checks, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ignoreJobChecks', traits: {"smithy.api#documentation" => "<p>Specifies whether to force deletion of the allow list, even if active classification jobs are configured to use the list.</p> <p>When you try to delete an allow list, Amazon Macie checks for classification jobs that use the list and have a status other than COMPLETE or CANCELLED. By default, Macie rejects your request if any jobs meet these criteria. To skip these checks and delete the list, set this value to true. To delete the list only if no active jobs are configured to use it, set this value to false.</p>", "smithy.api#httpQuery" => "ignoreJobChecks"}))
    DeleteAllowListRequest.type = Types::DeleteAllowListRequest
    DeleteAllowListResponse.type = Types::DeleteAllowListResponse
    DeleteCustomDataIdentifierRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomDataIdentifierRequest.type = Types::DeleteCustomDataIdentifierRequest
    DeleteCustomDataIdentifierResponse.type = Types::DeleteCustomDataIdentifierResponse
    DeleteFindingsFilterRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFindingsFilterRequest.type = Types::DeleteFindingsFilterRequest
    DeleteFindingsFilterResponse.type = Types::DeleteFindingsFilterResponse
    DeleteInvitationsRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'accountIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array that lists Amazon Web Services account IDs, one for each account that sent an invitation to delete.</p>", "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    DeleteInvitationsRequest.type = Types::DeleteInvitationsRequest
    DeleteInvitationsResponse.add_member(:unprocessed_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofunprocessedaccount, location_name: 'unprocessedAccounts', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each account whose invitation hasn't been deleted. Each object identifies the account and explains why the request hasn't been processed for that account.</p>", "smithy.api#jsonName" => "unprocessedAccounts"}))
    DeleteInvitationsResponse.type = Types::DeleteInvitationsResponse
    DeleteMemberRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMemberRequest.type = Types::DeleteMemberRequest
    DeleteMemberResponse.type = Types::DeleteMemberResponse
    DescribeBucketsRequest.add_member(:criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCriteria, location_name: 'criteria', traits: {"smithy.api#documentation" => "<p>The criteria to use to filter the query results.</p>", "smithy.api#jsonName" => "criteria"}))
    DescribeBucketsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of the response. The default value is 50.</p>", "smithy.api#jsonName" => "maxResults"}))
    DescribeBucketsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#jsonName" => "nextToken"}))
    DescribeBucketsRequest.add_member(:sort_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketSortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#documentation" => "<p>The criteria to use to sort the query results.</p>", "smithy.api#jsonName" => "sortCriteria"}))
    DescribeBucketsRequest.type = Types::DescribeBucketsRequest
    DescribeBucketsResponse.add_member(:buckets, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofbucketmetadata, location_name: 'buckets', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each bucket that matches the filter criteria specified in the request.</p>", "smithy.api#jsonName" => "buckets"}))
    DescribeBucketsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    DescribeBucketsResponse.type = Types::DescribeBucketsResponse
    DescribeClassificationJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the classification job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClassificationJobRequest.type = Types::DescribeClassificationJobRequest
    DescribeClassificationJobResponse.add_member(:allow_list_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'allowListIds', traits: {"smithy.api#documentation" => "<p>An array of unique identifiers, one for each allow list that the job is configured to use when it analyzes data.</p>", "smithy.api#jsonName" => "allowListIds"}))
    DescribeClassificationJobResponse.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The token that was provided to ensure the idempotency of the request to create the job.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    DescribeClassificationJobResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the job was created.</p>", "smithy.api#jsonName" => "createdAt"}))
    DescribeClassificationJobResponse.add_member(:custom_data_identifier_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'customDataIdentifierIds', traits: {"smithy.api#documentation" => "<p>An array of unique identifiers, one for each custom data identifier that the job is configured to use when it analyzes data. This value is null if the job is configured to use only managed data identifiers to analyze data.</p>", "smithy.api#jsonName" => "customDataIdentifierIds"}))
    DescribeClassificationJobResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The custom description of the job.</p>", "smithy.api#jsonName" => "description"}))
    DescribeClassificationJobResponse.add_member(:initial_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'initialRun', traits: {"smithy.api#documentation" => "<p>For a recurring job, specifies whether you configured the job to analyze all existing, eligible objects immediately after the job was created (true). If you configured the job to analyze only those objects that were created or changed after the job was created and before the job's first scheduled run, this value is false. This value is also false for a one-time job.</p>", "smithy.api#jsonName" => "initialRun"}))
    DescribeClassificationJobResponse.add_member(:job_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the job.</p>", "smithy.api#jsonName" => "jobArn"}))
    DescribeClassificationJobResponse.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    DescribeClassificationJobResponse.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the job. Possible values are:</p> <ul><li><p>CANCELLED - You cancelled the job or, if it's a one-time job, you paused the job and didn't resume it within 30 days.</p></li> <li><p>COMPLETE - For a one-time job, Amazon Macie finished processing the data specified for the job. This value doesn't apply to recurring jobs.</p></li> <li><p>IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to one-time jobs.</p></li> <li><p>PAUSED - Macie started running the job but additional processing would exceed the monthly sensitive data discovery quota for your account or one or more member accounts that the job analyzes data for.</p></li> <li><p>RUNNING - For a one-time job, the job is in progress. For a recurring job, a scheduled run is in progress.</p></li> <li><p>USER_PAUSED - You paused the job. If you paused the job while it had a status of RUNNING and you don't resume it within 30 days of pausing it, the job or job run will expire and be cancelled, depending on the job's type. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>", "smithy.api#jsonName" => "jobStatus"}))
    DescribeClassificationJobResponse.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'jobType', traits: {"smithy.api#documentation" => "<p>The schedule for running the job. Possible values are:</p> <ul><li><p>ONE_TIME - The job runs only once.</p></li> <li><p>SCHEDULED - The job runs on a daily, weekly, or monthly basis. The scheduleFrequency property indicates the recurrence pattern for the job.</p></li></ul>", "smithy.api#jsonName" => "jobType"}))
    DescribeClassificationJobResponse.add_member(:last_run_error_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LastRunErrorStatus, location_name: 'lastRunErrorStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run.</p>", "smithy.api#jsonName" => "lastRunErrorStatus"}))
    DescribeClassificationJobResponse.add_member(:last_run_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastRunTime', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the job started. If the job is a recurring job, this value indicates when the most recent run started or, if the job hasn't run yet, when the job was created.</p>", "smithy.api#jsonName" => "lastRunTime"}))
    DescribeClassificationJobResponse.add_member(:managed_data_identifier_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'managedDataIdentifierIds', traits: {"smithy.api#documentation" => "<p>An array of unique identifiers, one for each managed data identifier that the job is explicitly configured to include (use) or exclude (not use) when it analyzes data. Inclusion or exclusion depends on the managed data identifier selection type specified for the job (managedDataIdentifierSelector).</p><p>This value is null if the job's managed data identifier selection type is ALL, NONE, or RECOMMENDED.</p>", "smithy.api#jsonName" => "managedDataIdentifierIds"}))
    DescribeClassificationJobResponse.add_member(:managed_data_identifier_selector, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDataIdentifierSelector, location_name: 'managedDataIdentifierSelector', traits: {"smithy.api#documentation" => "<p>The selection type that determines which managed data identifiers the job uses when it analyzes data. Possible values are:</p> <ul><li><p>ALL - Use all managed data identifiers.</p></li> <li><p>EXCLUDE - Use all managed data identifiers except the ones specified by the managedDataIdentifierIds property.</p></li> <li><p>INCLUDE - Use only the managed data identifiers specified by the managedDataIdentifierIds property.</p></li> <li><p>NONE - Don't use any managed data identifiers. Use only custom data identifiers (customDataIdentifierIds).</p></li> <li><p>RECOMMENDED (default) - Use the recommended set of managed data identifiers.</p></li></ul> <p>If this value is null, the job uses the recommended set of managed data identifiers.</p> <p>If the job is a recurring job and this value is ALL or EXCLUDE, each job run automatically uses new managed data identifiers that are released. If this value is null or RECOMMENDED for a recurring job, each job run uses all the managed data identifiers that are in the recommended set when the run starts.</p> <p>To learn about individual managed data identifiers or determine which ones are in the recommended set, see <a href=\"https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html\">Using managed data identifiers</a> or <a href=\"https://docs.aws.amazon.com/macie/latest/user/discovery-jobs-mdis-recommended.html\">Recommended managed data identifiers</a> in the <i>Amazon Macie User Guide</i>.</p>", "smithy.api#jsonName" => "managedDataIdentifierSelector"}))
    DescribeClassificationJobResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The custom name of the job.</p>", "smithy.api#jsonName" => "name"}))
    DescribeClassificationJobResponse.add_member(:s3_job_definition, Smithy::Schema::Shapes::ShapeRef.new(shape: S3JobDefinition, location_name: 's3JobDefinition', traits: {"smithy.api#documentation" => "<p>The S3 buckets that contain the objects to analyze, and the scope of that analysis.</p>", "smithy.api#jsonName" => "s3JobDefinition"}))
    DescribeClassificationJobResponse.add_member(:sampling_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'samplingPercentage', traits: {"smithy.api#documentation" => "<p>The sampling depth, as a percentage, that determines the percentage of eligible objects that the job analyzes.</p>", "smithy.api#jsonName" => "samplingPercentage"}))
    DescribeClassificationJobResponse.add_member(:schedule_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: JobScheduleFrequency, location_name: 'scheduleFrequency', traits: {"smithy.api#documentation" => "<p>The recurrence pattern for running the job. This value is null if the job is configured to run only once.</p>", "smithy.api#jsonName" => "scheduleFrequency"}))
    DescribeClassificationJobResponse.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: Statistics, location_name: 'statistics', traits: {"smithy.api#documentation" => "<p>The number of times that the job has run and processing statistics for the job's current run.</p>", "smithy.api#jsonName" => "statistics"}))
    DescribeClassificationJobResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies which tags (keys and values) are associated with the job.</p>", "smithy.api#jsonName" => "tags"}))
    DescribeClassificationJobResponse.add_member(:user_paused_details, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPausedDetails, location_name: 'userPausedDetails', traits: {"smithy.api#documentation" => "<p>If the current status of the job is USER_PAUSED, specifies when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if the value for jobStatus is USER_PAUSED.</p>", "smithy.api#jsonName" => "userPausedDetails"}))
    DescribeClassificationJobResponse.type = Types::DescribeClassificationJobResponse
    DescribeOrganizationConfigurationRequest.type = Types::DescribeOrganizationConfigurationRequest
    DescribeOrganizationConfigurationResponse.add_member(:auto_enable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'autoEnable', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon Macie is enabled automatically for accounts that are added to the organization.</p>", "smithy.api#jsonName" => "autoEnable"}))
    DescribeOrganizationConfigurationResponse.add_member(:max_account_limit_reached, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'maxAccountLimitReached', traits: {"smithy.api#documentation" => "<p>Specifies whether the maximum number of Amazon Macie member accounts are part of the organization.</p>", "smithy.api#jsonName" => "maxAccountLimitReached"}))
    DescribeOrganizationConfigurationResponse.type = Types::DescribeOrganizationConfigurationResponse
    DetectedDataDetails.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128, location_name: 'value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An occurrence of the specified type of sensitive data. Each occurrence contains 1-128 characters.</p>", "smithy.api#jsonName" => "value", "smithy.api#required" => {}}))
    DetectedDataDetails.type = Types::DetectedDataDetails
    Detection.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>If the sensitive data was detected by a custom data identifier, the Amazon Resource Name (ARN) of the custom data identifier that detected the data. Otherwise, this value is null.</p>", "smithy.api#jsonName" => "arn"}))
    Detection.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The total number of occurrences of the sensitive data.</p>", "smithy.api#jsonName" => "count"}))
    Detection.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the custom data identifier or managed data identifier that detected the sensitive data. For additional details about a specified managed data identifier, see <a href=\"https://docs.aws.amazon.com/macie/latest/user/managed-data-identifiers.html\">Using managed data identifiers</a> in the <i>Amazon Macie User Guide</i>.</p>", "smithy.api#jsonName" => "id"}))
    Detection.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the custom data identifier or managed data identifier that detected the sensitive data. For a managed data identifier, this value is the same as the unique identifier (id).</p>", "smithy.api#jsonName" => "name"}))
    Detection.add_member(:suppressed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'suppressed', traits: {"smithy.api#documentation" => "<p>Specifies whether occurrences of this type of sensitive data are excluded (true) or included (false) in the bucket's sensitivity score, if the score is calculated by Amazon Macie.</p>", "smithy.api#jsonName" => "suppressed"}))
    Detection.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIdentifierType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of data identifier that detected the sensitive data. Possible values are: CUSTOM, for a custom data identifier; and, MANAGED, for a managed data identifier.</p>", "smithy.api#jsonName" => "type"}))
    Detection.type = Types::Detection
    DisableMacieRequest.type = Types::DisableMacieRequest
    DisableMacieResponse.type = Types::DisableMacieResponse
    DisableOrganizationAdminAccountRequest.add_member(:admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'adminAccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Web Services account ID of the delegated Amazon Macie administrator account.</p>", "smithy.api#httpQuery" => "adminAccountId", "smithy.api#required" => {}}))
    DisableOrganizationAdminAccountRequest.type = Types::DisableOrganizationAdminAccountRequest
    DisableOrganizationAdminAccountResponse.type = Types::DisableOrganizationAdminAccountResponse
    DisassociateFromAdministratorAccountRequest.type = Types::DisassociateFromAdministratorAccountRequest
    DisassociateFromAdministratorAccountResponse.type = Types::DisassociateFromAdministratorAccountResponse
    DisassociateFromMasterAccountRequest.type = Types::DisassociateFromMasterAccountRequest
    DisassociateFromMasterAccountResponse.type = Types::DisassociateFromMasterAccountResponse
    DisassociateMemberRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberRequest.type = Types::DisassociateMemberRequest
    DisassociateMemberResponse.type = Types::DisassociateMemberResponse
    DomainDetails.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#jsonName" => "domainName"}))
    DomainDetails.type = Types::DomainDetails
    EffectivePermission.add_member(:public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "PUBLIC"}))
    EffectivePermission.add_member(:not_public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_PUBLIC', traits: {"smithy.api#enumValue" => "NOT_PUBLIC"}))
    EffectivePermission.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    EnableMacieRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    EnableMacieRequest.add_member(:finding_publishing_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: 'findingPublishingFrequency', traits: {"smithy.api#documentation" => "<p>Specifies how often to publish updates to policy findings for the account. This includes publishing updates to Security Hub and Amazon EventBridge (formerly Amazon CloudWatch Events).</p>", "smithy.api#jsonName" => "findingPublishingFrequency"}))
    EnableMacieRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MacieStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Specifies the new status for the account. To enable Amazon Macie and start all Macie activities for the account, set this value to ENABLED.</p>", "smithy.api#jsonName" => "status"}))
    EnableMacieRequest.type = Types::EnableMacieRequest
    EnableMacieResponse.type = Types::EnableMacieResponse
    EnableOrganizationAdminAccountRequest.add_member(:admin_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'adminAccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account to designate as the delegated Amazon Macie administrator account for the organization.</p>", "smithy.api#jsonName" => "adminAccountId", "smithy.api#required" => {}}))
    EnableOrganizationAdminAccountRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    EnableOrganizationAdminAccountRequest.type = Types::EnableOrganizationAdminAccountRequest
    EnableOrganizationAdminAccountResponse.type = Types::EnableOrganizationAdminAccountResponse
    EncryptionType.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    EncryptionType.add_member(:aes256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES256', traits: {"smithy.api#enumValue" => "AES256"}))
    EncryptionType.add_member(:aws_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_kms', traits: {"smithy.api#enumValue" => "aws:kms"}))
    EncryptionType.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    EncryptionType.add_member(:aws_kms_dsse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_kms_dsse', traits: {"smithy.api#enumValue" => "aws:kms:dsse"}))
    ErrorCode.add_member(:client_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ClientError', traits: {"smithy.api#enumValue" => "ClientError"}))
    ErrorCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalError', traits: {"smithy.api#enumValue" => "InternalError"}))
    FederatedUser.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services access key ID that identifies the credentials.</p>", "smithy.api#jsonName" => "accessKeyId"}))
    FederatedUser.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account that owns the entity that was used to get the credentials.</p>", "smithy.api#jsonName" => "accountId"}))
    FederatedUser.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the entity that was used to get the credentials.</p>", "smithy.api#jsonName" => "arn"}))
    FederatedUser.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the entity that was used to get the credentials.</p>", "smithy.api#jsonName" => "principalId"}))
    FederatedUser.add_member(:session_context, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionContext, location_name: 'sessionContext', traits: {"smithy.api#documentation" => "<p>The details of the session that was created for the credentials, including the entity that issued the session.</p>", "smithy.api#jsonName" => "sessionContext"}))
    FederatedUser.type = Types::FederatedUser
    Finding.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account that the finding applies to. This is typically the account that owns the affected resource.</p>", "smithy.api#jsonName" => "accountId"}))
    Finding.add_member(:archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'archived', traits: {"smithy.api#documentation" => "<p>Specifies whether the finding is archived (suppressed).</p>", "smithy.api#jsonName" => "archived"}))
    Finding.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>The category of the finding. Possible values are: CLASSIFICATION, for a sensitive data finding; and, POLICY, for a policy finding.</p>", "smithy.api#jsonName" => "category"}))
    Finding.add_member(:classification_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationDetails, location_name: 'classificationDetails', traits: {"smithy.api#documentation" => "<p>The details of a sensitive data finding. This value is null for a policy finding.</p>", "smithy.api#jsonName" => "classificationDetails"}))
    Finding.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The total number of occurrences of the finding. For sensitive data findings, this value is always 1. All sensitive data findings are considered unique.</p>", "smithy.api#jsonName" => "count"}))
    Finding.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie created the finding.</p>", "smithy.api#jsonName" => "createdAt"}))
    Finding.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The description of the finding.</p>", "smithy.api#jsonName" => "description"}))
    Finding.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the finding. This is a random string that Amazon Macie generates and assigns to a finding when it creates the finding.</p>", "smithy.api#jsonName" => "id"}))
    Finding.add_member(:partition, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'partition', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services partition that Amazon Macie created the finding in.</p>", "smithy.api#jsonName" => "partition"}))
    Finding.add_member(:policy_details, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDetails, location_name: 'policyDetails', traits: {"smithy.api#documentation" => "<p>The details of a policy finding. This value is null for a sensitive data finding.</p>", "smithy.api#jsonName" => "policyDetails"}))
    Finding.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region that Amazon Macie created the finding in.</p>", "smithy.api#jsonName" => "region"}))
    Finding.add_member(:resources_affected, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcesAffected, location_name: 'resourcesAffected', traits: {"smithy.api#documentation" => "<p>The resources that the finding applies to.</p>", "smithy.api#jsonName" => "resourcesAffected"}))
    Finding.add_member(:sample, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'sample', traits: {"smithy.api#documentation" => "<p>Specifies whether the finding is a sample finding. A <i>sample finding</i> is a finding that uses example data to demonstrate what a finding might contain.</p>", "smithy.api#jsonName" => "sample"}))
    Finding.add_member(:schema_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schemaVersion', traits: {"smithy.api#documentation" => "<p>The version of the schema that was used to define the data structures in the finding.</p>", "smithy.api#jsonName" => "schemaVersion"}))
    Finding.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p>The severity level and score for the finding.</p>", "smithy.api#jsonName" => "severity"}))
    Finding.add_member(:title, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'title', traits: {"smithy.api#documentation" => "<p>The brief description of the finding.</p>", "smithy.api#jsonName" => "title"}))
    Finding.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of the finding.</p>", "smithy.api#jsonName" => "type"}))
    Finding.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie last updated the finding. For sensitive data findings, this value is the same as the value for the createdAt property. All sensitive data findings are considered new.</p>", "smithy.api#jsonName" => "updatedAt"}))
    Finding.type = Types::Finding
    FindingAction.add_member(:action_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingActionType, location_name: 'actionType', traits: {"smithy.api#documentation" => "<p>The type of action that occurred for the affected resource. This value is typically AWS_API_CALL, which indicates that an entity invoked an API operation for the resource.</p>", "smithy.api#jsonName" => "actionType"}))
    FindingAction.add_member(:api_call_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCallDetails, location_name: 'apiCallDetails', traits: {"smithy.api#documentation" => "<p>The invocation details of the API operation that an entity invoked for the affected resource, if the value for the actionType property is AWS_API_CALL.</p>", "smithy.api#jsonName" => "apiCallDetails"}))
    FindingAction.type = Types::FindingAction
    FindingActionType.add_member(:aws_api_call, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_API_CALL', traits: {"smithy.api#enumValue" => "AWS_API_CALL"}))
    FindingActor.add_member(:domain_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDetails, location_name: 'domainDetails', traits: {"smithy.api#documentation" => "<p>The domain name of the device that the entity used to perform the action on the affected resource.</p>", "smithy.api#jsonName" => "domainDetails"}))
    FindingActor.add_member(:ip_address_details, Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressDetails, location_name: 'ipAddressDetails', traits: {"smithy.api#documentation" => "<p>The IP address and related details about the device that the entity used to perform the action on the affected resource. The details can include information such as the owner and geographic location of the IP address.</p>", "smithy.api#jsonName" => "ipAddressDetails"}))
    FindingActor.add_member(:user_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentity, location_name: 'userIdentity', traits: {"smithy.api#documentation" => "<p>The type and other characteristics of the entity that performed the action on the affected resource. This value is null if the action was performed by an anonymous (unauthenticated) entity.</p>", "smithy.api#jsonName" => "userIdentity"}))
    FindingActor.type = Types::FindingActor
    FindingCategory.add_member(:classification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLASSIFICATION', traits: {"smithy.api#enumValue" => "CLASSIFICATION"}))
    FindingCategory.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY', traits: {"smithy.api#enumValue" => "POLICY"}))
    FindingCriteria.add_member(:criterion, Smithy::Schema::Shapes::ShapeRef.new(shape: Criterion, location_name: 'criterion', traits: {"smithy.api#documentation" => "<p>A condition that specifies the property, operator, and one or more values to use to filter the results.</p>", "smithy.api#jsonName" => "criterion"}))
    FindingCriteria.type = Types::FindingCriteria
    FindingPublishingFrequency.add_member(:fifteen_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIFTEEN_MINUTES', traits: {"smithy.api#enumValue" => "FIFTEEN_MINUTES"}))
    FindingPublishingFrequency.add_member(:one_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_HOUR', traits: {"smithy.api#enumValue" => "ONE_HOUR"}))
    FindingPublishingFrequency.add_member(:six_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIX_HOURS', traits: {"smithy.api#enumValue" => "SIX_HOURS"}))
    FindingStatisticsSortAttributeName.add_member(:group_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'groupKey', traits: {"smithy.api#enumValue" => "groupKey"}))
    FindingStatisticsSortAttributeName.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'count', traits: {"smithy.api#enumValue" => "count"}))
    FindingStatisticsSortCriteria.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatisticsSortAttributeName, location_name: 'attributeName', traits: {"smithy.api#documentation" => "<p>The grouping to sort the results by. Valid values are: count, sort the results by the number of findings in each group of results; and, groupKey, sort the results by the name of each group of results.</p>", "smithy.api#jsonName" => "attributeName"}))
    FindingStatisticsSortCriteria.add_member(:order_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#documentation" => "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>", "smithy.api#jsonName" => "orderBy"}))
    FindingStatisticsSortCriteria.type = Types::FindingStatisticsSortCriteria
    FindingType.add_member(:sensitive_data_s3_object_multiple, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SensitiveData_S3Object_Multiple', traits: {"smithy.api#enumValue" => "SensitiveData:S3Object/Multiple"}))
    FindingType.add_member(:sensitive_data_s3_object_financial, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SensitiveData_S3Object_Financial', traits: {"smithy.api#enumValue" => "SensitiveData:S3Object/Financial"}))
    FindingType.add_member(:sensitive_data_s3_object_personal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SensitiveData_S3Object_Personal', traits: {"smithy.api#enumValue" => "SensitiveData:S3Object/Personal"}))
    FindingType.add_member(:sensitive_data_s3_object_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SensitiveData_S3Object_Credentials', traits: {"smithy.api#enumValue" => "SensitiveData:S3Object/Credentials"}))
    FindingType.add_member(:sensitive_data_s3_object_custom_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SensitiveData_S3Object_CustomIdentifier', traits: {"smithy.api#enumValue" => "SensitiveData:S3Object/CustomIdentifier"}))
    FindingType.add_member(:policy_iam_user_s3_bucket_public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BucketPublic', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BucketPublic"}))
    FindingType.add_member(:policy_iam_user_s3_bucket_shared_externally, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BucketSharedExternally', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BucketSharedExternally"}))
    FindingType.add_member(:policy_iam_user_s3_bucket_replicated_externally, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BucketReplicatedExternally', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BucketReplicatedExternally"}))
    FindingType.add_member(:policy_iam_user_s3_bucket_encryption_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BucketEncryptionDisabled', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BucketEncryptionDisabled"}))
    FindingType.add_member(:policy_iam_user_s3_block_public_access_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BlockPublicAccessDisabled', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BlockPublicAccessDisabled"}))
    FindingType.add_member(:policy_iam_user_s3_bucket_shared_with_cloud_front, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BucketSharedWithCloudFront', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BucketSharedWithCloudFront"}))
    FindingsFilterAction.add_member(:archive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHIVE', traits: {"smithy.api#enumValue" => "ARCHIVE"}))
    FindingsFilterAction.add_member(:noop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOOP', traits: {"smithy.api#enumValue" => "NOOP"}))
    FindingsFilterListItem.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action that's performed on findings that match the filter criteria. Possible values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>", "smithy.api#jsonName" => "action"}))
    FindingsFilterListItem.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the filter.</p>", "smithy.api#jsonName" => "arn"}))
    FindingsFilterListItem.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the filter.</p>", "smithy.api#jsonName" => "id"}))
    FindingsFilterListItem.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The custom name of the filter.</p>", "smithy.api#jsonName" => "name"}))
    FindingsFilterListItem.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies which tags (keys and values) are associated with the filter.</p>", "smithy.api#jsonName" => "tags"}))
    FindingsFilterListItem.type = Types::FindingsFilterListItem
    GetAdministratorAccountRequest.type = Types::GetAdministratorAccountRequest
    GetAdministratorAccountResponse.add_member(:administrator, Smithy::Schema::Shapes::ShapeRef.new(shape: Invitation, location_name: 'administrator', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the administrator account. If the accounts are associated by an Amazon Macie membership invitation, this object also provides details about the invitation that was sent to establish the relationship between the accounts.</p>", "smithy.api#jsonName" => "administrator"}))
    GetAdministratorAccountResponse.type = Types::GetAdministratorAccountResponse
    GetAllowListRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAllowListRequest.type = Types::GetAllowListRequest
    GetAllowListResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the allow list.</p>", "smithy.api#jsonName" => "arn"}))
    GetAllowListResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the allow list was created in Amazon Macie.</p>", "smithy.api#jsonName" => "createdAt"}))
    GetAllowListResponse.add_member(:criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListCriteria, location_name: 'criteria', traits: {"smithy.api#documentation" => "<p>The criteria that specify the text or text pattern to ignore. The criteria can be the location and name of an S3 object that lists specific text to ignore (s3WordsList), or a regular expression (regex) that defines a text pattern to ignore.</p>", "smithy.api#jsonName" => "criteria"}))
    GetAllowListResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max512patternss, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The custom description of the allow list.</p>", "smithy.api#jsonName" => "description"}))
    GetAllowListResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin22max22patternaz0922, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the allow list.</p>", "smithy.api#jsonName" => "id"}))
    GetAllowListResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128pattern, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The custom name of the allow list.</p>", "smithy.api#jsonName" => "name"}))
    GetAllowListResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the allow list, which indicates whether Amazon Macie can access and use the list's criteria.</p>", "smithy.api#jsonName" => "status"}))
    GetAllowListResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies which tags (keys and values) are associated with the allow list.</p>", "smithy.api#jsonName" => "tags"}))
    GetAllowListResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the allow list's settings were most recently changed in Amazon Macie.</p>", "smithy.api#jsonName" => "updatedAt"}))
    GetAllowListResponse.type = Types::GetAllowListResponse
    GetAutomatedDiscoveryConfigurationRequest.type = Types::GetAutomatedDiscoveryConfigurationRequest
    GetAutomatedDiscoveryConfigurationResponse.add_member(:auto_enable_organization_members, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoEnableMode, location_name: 'autoEnableOrganizationMembers', traits: {"smithy.api#documentation" => "<p>Specifies whether automated sensitive data discovery is enabled automatically for accounts in the organization. Possible values are: ALL, enable it for all existing accounts and new member accounts; NEW, enable it only for new member accounts; and, NONE, don't enable it for any accounts.</p>", "smithy.api#jsonName" => "autoEnableOrganizationMembers"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:classification_scope_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeId, location_name: 'classificationScopeId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the classification scope that's used when performing automated sensitive data discovery. The classification scope specifies S3 buckets to exclude from analyses.</p>", "smithy.api#jsonName" => "classificationScopeId"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:disabled_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'disabledAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when automated sensitive data discovery was most recently disabled. This value is null if automated sensitive data discovery is currently enabled.</p>", "smithy.api#jsonName" => "disabledAt"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:first_enabled_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'firstEnabledAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when automated sensitive data discovery was initially enabled. This value is null if automated sensitive data discovery has never been enabled.</p>", "smithy.api#jsonName" => "firstEnabledAt"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the configuration settings or status of automated sensitive data discovery was most recently changed.</p>", "smithy.api#jsonName" => "lastUpdatedAt"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:sensitivity_inspection_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateId, location_name: 'sensitivityInspectionTemplateId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the sensitivity inspection template that's used when performing automated sensitive data discovery. The template specifies which allow lists, custom data identifiers, and managed data identifiers to use when analyzing data.</p>", "smithy.api#jsonName" => "sensitivityInspectionTemplateId"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of automated sensitive data discovery for the organization or account. Possible values are: ENABLED, use the specified settings to perform automated sensitive data discovery activities; and, DISABLED, don't perform automated sensitive data discovery activities.</p>", "smithy.api#jsonName" => "status"}))
    GetAutomatedDiscoveryConfigurationResponse.type = Types::GetAutomatedDiscoveryConfigurationResponse
    GetBucketStatisticsRequest.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account.</p>", "smithy.api#jsonName" => "accountId"}))
    GetBucketStatisticsRequest.type = Types::GetBucketStatisticsRequest
    GetBucketStatisticsResponse.add_member(:bucket_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'bucketCount', traits: {"smithy.api#documentation" => "<p>The total number of buckets.</p>", "smithy.api#jsonName" => "bucketCount"}))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_effective_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCountByEffectivePermission, location_name: 'bucketCountByEffectivePermission', traits: {"smithy.api#documentation" => "<p>The total number of buckets that are publicly accessible due to a combination of permissions settings for each bucket.</p>", "smithy.api#jsonName" => "bucketCountByEffectivePermission"}))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCountByEncryptionType, location_name: 'bucketCountByEncryptionType', traits: {"smithy.api#documentation" => "<p>The total number of buckets whose settings do or don't specify default server-side encryption behavior for objects that are added to the buckets.</p>", "smithy.api#jsonName" => "bucketCountByEncryptionType"}))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_object_encryption_requirement, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCountPolicyAllowsUnencryptedObjectUploads, location_name: 'bucketCountByObjectEncryptionRequirement', traits: {"smithy.api#documentation" => "<p>The total number of buckets whose bucket policies do or don't require server-side encryption of objects when objects are added to the buckets.</p>", "smithy.api#jsonName" => "bucketCountByObjectEncryptionRequirement"}))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_shared_access_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCountBySharedAccessType, location_name: 'bucketCountBySharedAccessType', traits: {"smithy.api#documentation" => "<p>The total number of buckets that are or aren't shared with other Amazon Web Services accounts, Amazon CloudFront origin access identities (OAIs), or CloudFront origin access controls (OACs).</p>", "smithy.api#jsonName" => "bucketCountBySharedAccessType"}))
    GetBucketStatisticsResponse.add_member(:bucket_statistics_by_sensitivity, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketStatisticsBySensitivity, location_name: 'bucketStatisticsBySensitivity', traits: {"smithy.api#documentation" => "<p>The aggregated sensitive data discovery statistics for the buckets. If automated sensitive data discovery is currently disabled for your account, the value for most statistics is 0.</p>", "smithy.api#jsonName" => "bucketStatisticsBySensitivity"}))
    GetBucketStatisticsResponse.add_member(:classifiable_object_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableObjectCount', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie can analyze in the buckets. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p>", "smithy.api#jsonName" => "classifiableObjectCount"}))
    GetBucketStatisticsResponse.add_member(:classifiable_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableSizeInBytes', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of all the objects that Amazon Macie can analyze in the buckets. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p> <p>If versioning is enabled for any of the buckets, this value is based on the size of the latest version of each applicable object in the buckets. This value doesn't reflect the storage size of all versions of all applicable objects in the buckets.</p>", "smithy.api#jsonName" => "classifiableSizeInBytes"}))
    GetBucketStatisticsResponse.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastUpdated', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie most recently retrieved bucket or object metadata from Amazon S3 for the buckets.</p>", "smithy.api#jsonName" => "lastUpdated"}))
    GetBucketStatisticsResponse.add_member(:object_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'objectCount', traits: {"smithy.api#documentation" => "<p>The total number of objects in the buckets.</p>", "smithy.api#jsonName" => "objectCount"}))
    GetBucketStatisticsResponse.add_member(:size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytes', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the buckets.</p> <p>If versioning is enabled for any of the buckets, this value is based on the size of the latest version of each object in the buckets. This value doesn't reflect the storage size of all versions of the objects in the buckets.</p>", "smithy.api#jsonName" => "sizeInBytes"}))
    GetBucketStatisticsResponse.add_member(:size_in_bytes_compressed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytesCompressed', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the objects that are compressed (.gz, .gzip, .zip) files in the buckets.</p> <p>If versioning is enabled for any of the buckets, this value is based on the size of the latest version of each applicable object in the buckets. This value doesn't reflect the storage size of all versions of the applicable objects in the buckets.</p>", "smithy.api#jsonName" => "sizeInBytesCompressed"}))
    GetBucketStatisticsResponse.add_member(:unclassifiable_object_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectCount', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie can't analyze in the buckets. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>", "smithy.api#jsonName" => "unclassifiableObjectCount"}))
    GetBucketStatisticsResponse.add_member(:unclassifiable_object_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectSizeInBytes', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the objects that Amazon Macie can't analyze in the buckets. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>", "smithy.api#jsonName" => "unclassifiableObjectSizeInBytes"}))
    GetBucketStatisticsResponse.type = Types::GetBucketStatisticsResponse
    GetClassificationExportConfigurationRequest.type = Types::GetClassificationExportConfigurationRequest
    GetClassificationExportConfigurationResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationExportConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The location where data classification results are stored, and the encryption settings that are used when storing results in that location.</p>", "smithy.api#jsonName" => "configuration"}))
    GetClassificationExportConfigurationResponse.type = Types::GetClassificationExportConfigurationResponse
    GetClassificationScopeRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetClassificationScopeRequest.type = Types::GetClassificationScopeRequest
    GetClassificationScopeResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the classification scope.</p>", "smithy.api#jsonName" => "id"}))
    GetClassificationScopeResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the classification scope: automated-sensitive-data-discovery.</p>", "smithy.api#jsonName" => "name"}))
    GetClassificationScopeResponse.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ClassificationScope, location_name: 's3', traits: {"smithy.api#documentation" => "<p>The S3 buckets that are excluded from automated sensitive data discovery.</p>", "smithy.api#jsonName" => "s3"}))
    GetClassificationScopeResponse.type = Types::GetClassificationScopeResponse
    GetCustomDataIdentifierRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomDataIdentifierRequest.type = Types::GetCustomDataIdentifierRequest
    GetCustomDataIdentifierResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the custom data identifier.</p>", "smithy.api#jsonName" => "arn"}))
    GetCustomDataIdentifierResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the custom data identifier was created.</p>", "smithy.api#jsonName" => "createdAt"}))
    GetCustomDataIdentifierResponse.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'deleted', traits: {"smithy.api#documentation" => "<p>Specifies whether the custom data identifier was deleted. If you delete a custom data identifier, Amazon Macie doesn't delete it permanently. Instead, it soft deletes the identifier.</p>", "smithy.api#jsonName" => "deleted"}))
    GetCustomDataIdentifierResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The custom description of the custom data identifier.</p>", "smithy.api#jsonName" => "description"}))
    GetCustomDataIdentifierResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the custom data identifier.</p>", "smithy.api#jsonName" => "id"}))
    GetCustomDataIdentifierResponse.add_member(:ignore_words, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ignoreWords', traits: {"smithy.api#documentation" => "<p>An array that lists specific character sequences (<i>ignore words</i>) to exclude from the results. If the text matched by the regular expression contains any string in this array, Amazon Macie ignores it. Ignore words are case sensitive.</p>", "smithy.api#jsonName" => "ignoreWords"}))
    GetCustomDataIdentifierResponse.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'keywords', traits: {"smithy.api#documentation" => "<p>An array that lists specific character sequences (<i>keywords</i>), one of which must precede and be within proximity (maximumMatchDistance) of the regular expression to match. Keywords aren't case sensitive.</p>", "smithy.api#jsonName" => "keywords"}))
    GetCustomDataIdentifierResponse.add_member(:maximum_match_distance, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maximumMatchDistance', traits: {"smithy.api#documentation" => "<p>The maximum number of characters that can exist between the end of at least one complete character sequence specified by the keywords array and the end of the text that matches the regex pattern. If a complete keyword precedes all the text that matches the pattern and the keyword is within the specified distance, Amazon Macie includes the result. Otherwise, Macie excludes the result.</p>", "smithy.api#jsonName" => "maximumMatchDistance"}))
    GetCustomDataIdentifierResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The custom name of the custom data identifier.</p>", "smithy.api#jsonName" => "name"}))
    GetCustomDataIdentifierResponse.add_member(:regex, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regex', traits: {"smithy.api#documentation" => "<p>The regular expression (<i>regex</i>) that defines the pattern to match.</p>", "smithy.api#jsonName" => "regex"}))
    GetCustomDataIdentifierResponse.add_member(:severity_levels, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevelList, location_name: 'severityLevels', traits: {"smithy.api#documentation" => "<p>Specifies the severity that's assigned to findings that the custom data identifier produces, based on the number of occurrences of text that match the custom data identifier's detection criteria. By default, Amazon Macie creates findings for S3 objects that contain at least one occurrence of text that matches the detection criteria, and Macie assigns the MEDIUM severity to those findings.</p>", "smithy.api#jsonName" => "severityLevels"}))
    GetCustomDataIdentifierResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that identifies the tags (keys and values) that are associated with the custom data identifier.</p>", "smithy.api#jsonName" => "tags"}))
    GetCustomDataIdentifierResponse.type = Types::GetCustomDataIdentifierResponse
    GetFindingStatisticsRequest.add_member(:finding_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCriteria, location_name: 'findingCriteria', traits: {"smithy.api#documentation" => "<p>The criteria to use to filter the query results.</p>", "smithy.api#jsonName" => "findingCriteria"}))
    GetFindingStatisticsRequest.add_member(:group_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupBy, location_name: 'groupBy', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The finding property to use to group the query results. Valid values are:</p> <ul><li><p>classificationDetails.jobId - The unique identifier for the classification job that produced the finding.</p></li> <li><p>resourcesAffected.s3Bucket.name - The name of the S3 bucket that the finding applies to.</p></li> <li><p>severity.description - The severity level of the finding, such as High or Medium.</p></li> <li><p>type - The type of finding, such as Policy:IAMUser/S3BucketPublic and SensitiveData:S3Object/Personal.</p></li></ul>", "smithy.api#jsonName" => "groupBy", "smithy.api#required" => {}}))
    GetFindingStatisticsRequest.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'size', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of the response.</p>", "smithy.api#jsonName" => "size"}))
    GetFindingStatisticsRequest.add_member(:sort_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatisticsSortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#documentation" => "<p>The criteria to use to sort the query results.</p>", "smithy.api#jsonName" => "sortCriteria"}))
    GetFindingStatisticsRequest.type = Types::GetFindingStatisticsRequest
    GetFindingStatisticsResponse.add_member(:counts_by_group, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofgroupcount, location_name: 'countsByGroup', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each group of findings that matches the filter criteria specified in the request.</p>", "smithy.api#jsonName" => "countsByGroup"}))
    GetFindingStatisticsResponse.type = Types::GetFindingStatisticsResponse
    GetFindingsFilterRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFindingsFilterRequest.type = Types::GetFindingsFilterRequest
    GetFindingsFilterResponse.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action that's performed on findings that match the filter criteria (findingCriteria). Possible values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>", "smithy.api#jsonName" => "action"}))
    GetFindingsFilterResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the filter.</p>", "smithy.api#jsonName" => "arn"}))
    GetFindingsFilterResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The custom description of the filter.</p>", "smithy.api#jsonName" => "description"}))
    GetFindingsFilterResponse.add_member(:finding_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCriteria, location_name: 'findingCriteria', traits: {"smithy.api#documentation" => "<p>The criteria that's used to filter findings.</p>", "smithy.api#jsonName" => "findingCriteria"}))
    GetFindingsFilterResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the filter.</p>", "smithy.api#jsonName" => "id"}))
    GetFindingsFilterResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The custom name of the filter.</p>", "smithy.api#jsonName" => "name"}))
    GetFindingsFilterResponse.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>", "smithy.api#jsonName" => "position"}))
    GetFindingsFilterResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies which tags (keys and values) are associated with the filter.</p>", "smithy.api#jsonName" => "tags"}))
    GetFindingsFilterResponse.type = Types::GetFindingsFilterResponse
    GetFindingsPublicationConfigurationRequest.type = Types::GetFindingsPublicationConfigurationRequest
    GetFindingsPublicationConfigurationResponse.add_member(:security_hub_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityHubConfiguration, location_name: 'securityHubConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings that determine which findings are published to Security Hub.</p>", "smithy.api#jsonName" => "securityHubConfiguration"}))
    GetFindingsPublicationConfigurationResponse.type = Types::GetFindingsPublicationConfigurationResponse
    GetFindingsRequest.add_member(:finding_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'findingIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of strings that lists the unique identifiers for the findings to retrieve. You can specify as many as 50 unique identifiers in this array.</p>", "smithy.api#jsonName" => "findingIds", "smithy.api#required" => {}}))
    GetFindingsRequest.add_member(:sort_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: SortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#documentation" => "<p>The criteria for sorting the results of the request.</p>", "smithy.api#jsonName" => "sortCriteria"}))
    GetFindingsRequest.type = Types::GetFindingsRequest
    GetFindingsResponse.add_member(:findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoffinding, location_name: 'findings', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each finding that matches the criteria specified in the request.</p>", "smithy.api#jsonName" => "findings"}))
    GetFindingsResponse.type = Types::GetFindingsResponse
    GetInvitationsCountRequest.type = Types::GetInvitationsCountRequest
    GetInvitationsCountResponse.add_member(:invitations_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'invitationsCount', traits: {"smithy.api#documentation" => "<p>The total number of invitations that were received by the account, not including the currently accepted invitation.</p>", "smithy.api#jsonName" => "invitationsCount"}))
    GetInvitationsCountResponse.type = Types::GetInvitationsCountResponse
    GetMacieSessionRequest.type = Types::GetMacieSessionRequest
    GetMacieSessionResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the Amazon Macie account was created.</p>", "smithy.api#jsonName" => "createdAt"}))
    GetMacieSessionResponse.add_member(:finding_publishing_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: 'findingPublishingFrequency', traits: {"smithy.api#documentation" => "<p>The frequency with which Amazon Macie publishes updates to policy findings for the account. This includes publishing updates to Security Hub and Amazon EventBridge (formerly Amazon CloudWatch Events).</p>", "smithy.api#jsonName" => "findingPublishingFrequency"}))
    GetMacieSessionResponse.add_member(:service_role, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRole', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the service-linked role that allows Amazon Macie to monitor and analyze data in Amazon Web Services resources for the account.</p>", "smithy.api#jsonName" => "serviceRole"}))
    GetMacieSessionResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MacieStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The current status of the Amazon Macie account. Possible values are: PAUSED, the account is enabled but all Macie activities are suspended (paused) for the account; and, ENABLED, the account is enabled and all Macie activities are enabled for the account.</p>", "smithy.api#jsonName" => "status"}))
    GetMacieSessionResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status or configuration settings for the Amazon Macie account.</p>", "smithy.api#jsonName" => "updatedAt"}))
    GetMacieSessionResponse.type = Types::GetMacieSessionResponse
    GetMasterAccountRequest.type = Types::GetMasterAccountRequest
    GetMasterAccountResponse.add_member(:master, Smithy::Schema::Shapes::ShapeRef.new(shape: Invitation, location_name: 'master', traits: {"smithy.api#documentation" => "<p>(Deprecated) The Amazon Web Services account ID for the administrator account. If the accounts are associated by a Macie membership invitation, this object also provides details about the invitation that was sent to establish the relationship between the accounts.</p>", "smithy.api#jsonName" => "master"}))
    GetMasterAccountResponse.type = Types::GetMasterAccountResponse
    GetMemberRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMemberRequest.type = Types::GetMemberRequest
    GetMemberResponse.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account.</p>", "smithy.api#jsonName" => "accountId"}))
    GetMemberResponse.add_member(:administrator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'administratorAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the administrator account.</p>", "smithy.api#jsonName" => "administratorAccountId"}))
    GetMemberResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the account.</p>", "smithy.api#jsonName" => "arn"}))
    GetMemberResponse.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The email address for the account. This value is null if the account is associated with the administrator account through Organizations.</p>", "smithy.api#jsonName" => "email"}))
    GetMemberResponse.add_member(:invited_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'invitedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie membership invitation hasn't been sent to the account.</p>", "smithy.api#jsonName" => "invitedAt"}))
    GetMemberResponse.add_member(:master_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'masterAccountId', traits: {"smithy.api#documentation" => "<p>(Deprecated) The Amazon Web Services account ID for the administrator account. This property has been replaced by the administratorAccountId property and is retained only for backward compatibility.</p>", "smithy.api#jsonName" => "masterAccountId"}))
    GetMemberResponse.add_member(:relationship_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: 'relationshipStatus', traits: {"smithy.api#documentation" => "<p>The current status of the relationship between the account and the administrator account.</p>", "smithy.api#jsonName" => "relationshipStatus"}))
    GetMemberResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies which tags (keys and values) are associated with the account in Amazon Macie.</p>", "smithy.api#jsonName" => "tags"}))
    GetMemberResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status of the relationship between the account and the administrator account.</p>", "smithy.api#jsonName" => "updatedAt"}))
    GetMemberResponse.type = Types::GetMemberResponse
    GetResourceProfileRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket that the request applies to.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    GetResourceProfileRequest.type = Types::GetResourceProfileRequest
    GetResourceProfileResponse.add_member(:profile_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'profileUpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie most recently recalculated sensitive data discovery statistics and details for the bucket. If the bucket's sensitivity score is calculated automatically, this includes the score.</p>", "smithy.api#jsonName" => "profileUpdatedAt"}))
    GetResourceProfileResponse.add_member(:sensitivity_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sensitivityScore', traits: {"smithy.api#documentation" => "<p>The current sensitivity score for the bucket, ranging from -1 (classification error) to 100 (sensitive). By default, this score is calculated automatically based on the amount of data that Amazon Macie has analyzed in the bucket and the amount of sensitive data that Macie has found in the bucket.</p>", "smithy.api#jsonName" => "sensitivityScore"}))
    GetResourceProfileResponse.add_member(:sensitivity_score_overridden, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'sensitivityScoreOverridden', traits: {"smithy.api#documentation" => "<p>Specifies whether the bucket's current sensitivity score was set manually. If this value is true, the score was manually changed to 100. If this value is false, the score was calculated automatically by Amazon Macie.</p>", "smithy.api#jsonName" => "sensitivityScoreOverridden"}))
    GetResourceProfileResponse.add_member(:statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStatistics, location_name: 'statistics', traits: {"smithy.api#documentation" => "<p>The sensitive data discovery statistics for the bucket. The statistics capture the results of automated sensitive data discovery activities that Amazon Macie has performed for the bucket.</p>", "smithy.api#jsonName" => "statistics"}))
    GetResourceProfileResponse.type = Types::GetResourceProfileResponse
    GetRevealConfigurationRequest.type = Types::GetRevealConfigurationRequest
    GetRevealConfigurationResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RevealConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The KMS key that's used to encrypt the sensitive data, and the status of the configuration for the Amazon Macie account.</p>", "smithy.api#jsonName" => "configuration"}))
    GetRevealConfigurationResponse.add_member(:retrieval_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalConfiguration, location_name: 'retrievalConfiguration', traits: {"smithy.api#documentation" => "<p>The access method and settings that are used to retrieve the sensitive data.</p>", "smithy.api#jsonName" => "retrievalConfiguration"}))
    GetRevealConfigurationResponse.type = Types::GetRevealConfigurationResponse
    GetSensitiveDataOccurrencesAvailabilityRequest.add_member(:finding_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'findingId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the finding.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSensitiveDataOccurrencesAvailabilityRequest.type = Types::GetSensitiveDataOccurrencesAvailabilityRequest
    GetSensitiveDataOccurrencesAvailabilityResponse.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>Specifies whether occurrences of sensitive data can be retrieved for the finding. Possible values are: AVAILABLE, the sensitive data can be retrieved; and, UNAVAILABLE, the sensitive data can't be retrieved. If this value is UNAVAILABLE, the reasons array indicates why the data can't be retrieved.</p>", "smithy.api#jsonName" => "code"}))
    GetSensitiveDataOccurrencesAvailabilityResponse.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofunavailabilityreasoncode, location_name: 'reasons', traits: {"smithy.api#documentation" => "<p>Specifies why occurrences of sensitive data can't be retrieved for the finding. Possible values are:</p> <ul><li><p>ACCOUNT_NOT_IN_ORGANIZATION - The affected account isn't currently part of your organization. Or the account is part of your organization but Macie isn't currently enabled for the account. You're not allowed to access the affected S3 object by using Macie.</p></li> <li><p>INVALID_CLASSIFICATION_RESULT - There isn't a corresponding sensitive data discovery result for the finding. Or the corresponding sensitive data discovery result isn't available in the current Amazon Web Services Region, is malformed or corrupted, or uses an unsupported storage format. Macie can't verify the location of the sensitive data to retrieve.</p></li> <li><p>INVALID_RESULT_SIGNATURE - The corresponding sensitive data discovery result is stored in an S3 object that wasn't signed by Macie. Macie can't verify the integrity and authenticity of the sensitive data discovery result. Therefore, Macie can't verify the location of the sensitive data to retrieve.</p></li> <li><p>MEMBER_ROLE_TOO_PERMISSIVE - The trust or permissions policy for the IAM role in the affected member account doesn't meet Macie requirements for restricting access to the role. Or the role's trust policy doesn't specify the correct external ID for your organization. Macie can't assume the role to retrieve the sensitive data.</p></li> <li><p>MISSING_GET_MEMBER_PERMISSION - You're not allowed to retrieve information about the association between your account and the affected account. Macie can't determine whether you’re allowed to access the affected S3 object as the delegated Macie administrator for the affected account.</p></li> <li><p>OBJECT_EXCEEDS_SIZE_QUOTA - The storage size of the affected S3 object exceeds the size quota for retrieving occurrences of sensitive data from this type of file.</p></li> <li><p>OBJECT_UNAVAILABLE - The affected S3 object isn't available. The object was renamed, moved, deleted, or changed after Macie created the finding. Or the object is encrypted with an KMS key that isn’t available. For example, the key is disabled, is scheduled for deletion, or was deleted.</p></li> <li><p>RESULT_NOT_SIGNED - The corresponding sensitive data discovery result is stored in an S3 object that hasn't been signed. Macie can't verify the integrity and authenticity of the sensitive data discovery result. Therefore, Macie can't verify the location of the sensitive data to retrieve.</p></li> <li><p>ROLE_TOO_PERMISSIVE - Your account is configured to retrieve occurrences of sensitive data by using an IAM role whose trust or permissions policy doesn't meet Macie requirements for restricting access to the role. Macie can’t assume the role to retrieve the sensitive data.</p></li> <li><p>UNSUPPORTED_FINDING_TYPE - The specified finding isn't a sensitive data finding.</p></li> <li><p>UNSUPPORTED_OBJECT_TYPE - The affected S3 object uses a file or storage format that Macie doesn't support for retrieving occurrences of sensitive data.</p></li></ul> <p>This value is null if sensitive data can be retrieved for the finding.</p>", "smithy.api#jsonName" => "reasons"}))
    GetSensitiveDataOccurrencesAvailabilityResponse.type = Types::GetSensitiveDataOccurrencesAvailabilityResponse
    GetSensitiveDataOccurrencesRequest.add_member(:finding_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'findingId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the finding.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSensitiveDataOccurrencesRequest.type = Types::GetSensitiveDataOccurrencesRequest
    GetSensitiveDataOccurrencesResponse.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'error', traits: {"smithy.api#documentation" => "<p>If an error occurred when Amazon Macie attempted to retrieve occurrences of sensitive data reported by the finding, a description of the error that occurred. This value is null if the status (status) of the request is PROCESSING or SUCCESS.</p>", "smithy.api#jsonName" => "error"}))
    GetSensitiveDataOccurrencesResponse.add_member(:sensitive_data_occurrences, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveDataOccurrences, location_name: 'sensitiveDataOccurrences', traits: {"smithy.api#documentation" => "<p>A map that specifies 1-100 types of sensitive data reported by the finding and, for each type, 1-10 occurrences of sensitive data.</p>", "smithy.api#jsonName" => "sensitiveDataOccurrences"}))
    GetSensitiveDataOccurrencesResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RevealRequestStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of the request to retrieve occurrences of sensitive data reported by the finding. Possible values are:</p> <ul><li><p>ERROR - An error occurred when Amazon Macie attempted to locate, retrieve, or encrypt the sensitive data. The error value indicates the nature of the error that occurred.</p></li> <li><p>PROCESSING - Macie is processing the request.</p></li> <li><p>SUCCESS - Macie successfully located, retrieved, and encrypted the sensitive data.</p></li></ul>", "smithy.api#jsonName" => "status"}))
    GetSensitiveDataOccurrencesResponse.type = Types::GetSensitiveDataOccurrencesResponse
    GetSensitivityInspectionTemplateRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSensitivityInspectionTemplateRequest.type = Types::GetSensitivityInspectionTemplateRequest
    GetSensitivityInspectionTemplateResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The custom description of the template.</p>", "smithy.api#jsonName" => "description"}))
    GetSensitivityInspectionTemplateResponse.add_member(:excludes, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateExcludes, location_name: 'excludes', traits: {"smithy.api#documentation" => "<p>The managed data identifiers that are explicitly excluded (not used) when performing automated sensitive data discovery.</p>", "smithy.api#jsonName" => "excludes"}))
    GetSensitivityInspectionTemplateResponse.add_member(:includes, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateIncludes, location_name: 'includes', traits: {"smithy.api#documentation" => "<p>The allow lists, custom data identifiers, and managed data identifiers that are explicitly included (used) when performing automated sensitive data discovery.</p>", "smithy.api#jsonName" => "includes"}))
    GetSensitivityInspectionTemplateResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the template: automated-sensitive-data-discovery.</p>", "smithy.api#jsonName" => "name"}))
    GetSensitivityInspectionTemplateResponse.add_member(:sensitivity_inspection_template_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateId, location_name: 'sensitivityInspectionTemplateId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the template.</p>", "smithy.api#jsonName" => "sensitivityInspectionTemplateId"}))
    GetSensitivityInspectionTemplateResponse.type = Types::GetSensitivityInspectionTemplateResponse
    GetUsageStatisticsRequest.add_member(:filter_by, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofusagestatisticsfilter, location_name: 'filterBy', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each condition to use to filter the query results. If you specify more than one condition, Amazon Macie uses an AND operator to join the conditions.</p>", "smithy.api#jsonName" => "filterBy"}))
    GetUsageStatisticsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of the response.</p>", "smithy.api#jsonName" => "maxResults"}))
    GetUsageStatisticsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#jsonName" => "nextToken"}))
    GetUsageStatisticsRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatisticsSortBy, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>The criteria to use to sort the query results.</p>", "smithy.api#jsonName" => "sortBy"}))
    GetUsageStatisticsRequest.add_member(:time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'timeRange', traits: {"smithy.api#documentation" => "<p>The inclusive time period to query usage data for. Valid values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days. If you don't specify a value, Amazon Macie provides usage data for the preceding 30 days.</p>", "smithy.api#jsonName" => "timeRange"}))
    GetUsageStatisticsRequest.type = Types::GetUsageStatisticsRequest
    GetUsageStatisticsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    GetUsageStatisticsResponse.add_member(:records, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofusagerecord, location_name: 'records', traits: {"smithy.api#documentation" => "<p>An array of objects that contains the results of the query. Each object contains the data for an account that matches the filter criteria specified in the request.</p>", "smithy.api#jsonName" => "records"}))
    GetUsageStatisticsResponse.add_member(:time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'timeRange', traits: {"smithy.api#documentation" => "<p>The inclusive time period that the usage data applies to. Possible values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days.</p>", "smithy.api#jsonName" => "timeRange"}))
    GetUsageStatisticsResponse.type = Types::GetUsageStatisticsResponse
    GetUsageTotalsRequest.add_member(:time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'timeRange', traits: {"smithy.api#documentation" => "<p>The inclusive time period to retrieve the data for. Valid values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days. If you don't specify a value for this parameter, Amazon Macie provides aggregated usage data for the preceding 30 days.</p>", "smithy.api#httpQuery" => "timeRange"}))
    GetUsageTotalsRequest.type = Types::GetUsageTotalsRequest
    GetUsageTotalsResponse.add_member(:time_range, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'timeRange', traits: {"smithy.api#documentation" => "<p>The inclusive time period that the usage data applies to. Possible values are: MONTH_TO_DATE, for the current calendar month to date; and, PAST_30_DAYS, for the preceding 30 days.</p>", "smithy.api#jsonName" => "timeRange"}))
    GetUsageTotalsResponse.add_member(:usage_totals, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofusagetotal, location_name: 'usageTotals', traits: {"smithy.api#documentation" => "<p>An array of objects that contains the results of the query. Each object contains the data for a specific usage metric.</p>", "smithy.api#jsonName" => "usageTotals"}))
    GetUsageTotalsResponse.type = Types::GetUsageTotalsResponse
    GroupBy.add_member(:resources_affected_s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'resourcesAffected_s3Bucket_name', traits: {"smithy.api#enumValue" => "resourcesAffected.s3Bucket.name"}))
    GroupBy.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'type', traits: {"smithy.api#enumValue" => "type"}))
    GroupBy.add_member(:classification_details_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'classificationDetails_jobId', traits: {"smithy.api#enumValue" => "classificationDetails.jobId"}))
    GroupBy.add_member(:severity_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'severity_description', traits: {"smithy.api#enumValue" => "severity.description"}))
    GroupCount.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The total number of findings in the group of query results.</p>", "smithy.api#jsonName" => "count"}))
    GroupCount.add_member(:group_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'groupKey', traits: {"smithy.api#documentation" => "<p>The name of the property that defines the group in the query results, as specified by the groupBy property in the query request.</p>", "smithy.api#jsonName" => "groupKey"}))
    GroupCount.type = Types::GroupCount
    IamUser.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account that's associated with the IAM user who performed the action.</p>", "smithy.api#jsonName" => "accountId"}))
    IamUser.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the principal that performed the action. The last section of the ARN contains the name of the user who performed the action.</p>", "smithy.api#jsonName" => "arn"}))
    IamUser.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the IAM user who performed the action.</p>", "smithy.api#jsonName" => "principalId"}))
    IamUser.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userName', traits: {"smithy.api#documentation" => "<p>The username of the IAM user who performed the action.</p>", "smithy.api#jsonName" => "userName"}))
    IamUser.type = Types::IamUser
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The explanation of the error that occurred.</p>", "smithy.api#jsonName" => "message"}))
    InternalServerException.type = Types::InternalServerException
    Invitation.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account that sent the invitation.</p>", "smithy.api#jsonName" => "accountId"}))
    Invitation.add_member(:invitation_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'invitationId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the invitation.</p>", "smithy.api#jsonName" => "invitationId"}))
    Invitation.add_member(:invited_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'invitedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the invitation was sent.</p>", "smithy.api#jsonName" => "invitedAt"}))
    Invitation.add_member(:relationship_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: 'relationshipStatus', traits: {"smithy.api#documentation" => "<p>The status of the relationship between the account that sent the invitation and the account that received the invitation.</p>", "smithy.api#jsonName" => "relationshipStatus"}))
    Invitation.type = Types::Invitation
    IpAddressDetails.add_member(:ip_address_v4, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ipAddressV4', traits: {"smithy.api#documentation" => "<p>The Internet Protocol version 4 (IPv4) address of the device.</p>", "smithy.api#jsonName" => "ipAddressV4"}))
    IpAddressDetails.add_member(:ip_city, Smithy::Schema::Shapes::ShapeRef.new(shape: IpCity, location_name: 'ipCity', traits: {"smithy.api#documentation" => "<p>The city that the IP address originated from.</p>", "smithy.api#jsonName" => "ipCity"}))
    IpAddressDetails.add_member(:ip_country, Smithy::Schema::Shapes::ShapeRef.new(shape: IpCountry, location_name: 'ipCountry', traits: {"smithy.api#documentation" => "<p>The country that the IP address originated from.</p>", "smithy.api#jsonName" => "ipCountry"}))
    IpAddressDetails.add_member(:ip_geo_location, Smithy::Schema::Shapes::ShapeRef.new(shape: IpGeoLocation, location_name: 'ipGeoLocation', traits: {"smithy.api#documentation" => "<p>The geographic coordinates of the location that the IP address originated from.</p>", "smithy.api#jsonName" => "ipGeoLocation"}))
    IpAddressDetails.add_member(:ip_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: IpOwner, location_name: 'ipOwner', traits: {"smithy.api#documentation" => "<p>The registered owner of the IP address.</p>", "smithy.api#jsonName" => "ipOwner"}))
    IpAddressDetails.type = Types::IpAddressDetails
    IpCity.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the city.</p>", "smithy.api#jsonName" => "name"}))
    IpCity.type = Types::IpCity
    IpCountry.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>The two-character code, in ISO 3166-1 alpha-2 format, for the country that the IP address originated from. For example, US for the United States.</p>", "smithy.api#jsonName" => "code"}))
    IpCountry.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the country that the IP address originated from.</p>", "smithy.api#jsonName" => "name"}))
    IpCountry.type = Types::IpCountry
    IpGeoLocation.add_member(:lat, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'lat', traits: {"smithy.api#documentation" => "<p>The latitude coordinate of the location, rounded to four decimal places.</p>", "smithy.api#jsonName" => "lat"}))
    IpGeoLocation.add_member(:lon, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'lon', traits: {"smithy.api#documentation" => "<p>The longitude coordinate of the location, rounded to four decimal places.</p>", "smithy.api#jsonName" => "lon"}))
    IpGeoLocation.type = Types::IpGeoLocation
    IpOwner.add_member(:asn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'asn', traits: {"smithy.api#documentation" => "<p>The autonomous system number (ASN) for the autonomous system that included the IP address.</p>", "smithy.api#jsonName" => "asn"}))
    IpOwner.add_member(:asn_org, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'asnOrg', traits: {"smithy.api#documentation" => "<p>The organization identifier that's associated with the autonomous system number (ASN) for the autonomous system that included the IP address.</p>", "smithy.api#jsonName" => "asnOrg"}))
    IpOwner.add_member(:isp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'isp', traits: {"smithy.api#documentation" => "<p>The name of the internet service provider (ISP) that owned the IP address.</p>", "smithy.api#jsonName" => "isp"}))
    IpOwner.add_member(:org, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'org', traits: {"smithy.api#documentation" => "<p>The name of the organization that owned the IP address.</p>", "smithy.api#jsonName" => "org"}))
    IpOwner.type = Types::IpOwner
    IsDefinedInJob.add_member(:true, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    IsDefinedInJob.add_member(:false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    IsDefinedInJob.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    IsMonitoredByJob.add_member(:true, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    IsMonitoredByJob.add_member(:false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    IsMonitoredByJob.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    JobComparator.add_member(:eq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQ', traits: {"smithy.api#enumValue" => "EQ"}))
    JobComparator.add_member(:gt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GT', traits: {"smithy.api#enumValue" => "GT"}))
    JobComparator.add_member(:gte, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GTE', traits: {"smithy.api#enumValue" => "GTE"}))
    JobComparator.add_member(:lt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LT', traits: {"smithy.api#enumValue" => "LT"}))
    JobComparator.add_member(:lte, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LTE', traits: {"smithy.api#enumValue" => "LTE"}))
    JobComparator.add_member(:ne, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NE', traits: {"smithy.api#enumValue" => "NE"}))
    JobComparator.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    JobComparator.add_member(:starts_with, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTS_WITH', traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    JobDetails.add_member(:is_defined_in_job, Smithy::Schema::Shapes::ShapeRef.new(shape: IsDefinedInJob, location_name: 'isDefinedInJob', traits: {"smithy.api#documentation" => "<p>Specifies whether any one-time or recurring jobs are configured to analyze objects in the bucket. Possible values are:</p> <ul><li><p>TRUE - The bucket is explicitly included in the bucket definition (S3BucketDefinitionForJob) for one or more jobs and at least one of those jobs has a status other than CANCELLED. Or the bucket matched the bucket criteria (S3BucketCriteriaForJob) for at least one job that previously ran.</p></li> <li><p>FALSE - The bucket isn't explicitly included in the bucket definition (S3BucketDefinitionForJob) for any jobs, all the jobs that explicitly include the bucket in their bucket definitions have a status of CANCELLED, or the bucket didn't match the bucket criteria (S3BucketCriteriaForJob) for any jobs that previously ran.</p></li> <li><p>UNKNOWN - An exception occurred when Amazon Macie attempted to retrieve job data for the bucket.</p></li></ul>", "smithy.api#jsonName" => "isDefinedInJob"}))
    JobDetails.add_member(:is_monitored_by_job, Smithy::Schema::Shapes::ShapeRef.new(shape: IsMonitoredByJob, location_name: 'isMonitoredByJob', traits: {"smithy.api#documentation" => "<p>Specifies whether any recurring jobs are configured to analyze objects in the bucket. Possible values are:</p> <ul><li><p>TRUE - The bucket is explicitly included in the bucket definition (S3BucketDefinitionForJob) for one or more recurring jobs or the bucket matches the bucket criteria (S3BucketCriteriaForJob) for one or more recurring jobs. At least one of those jobs has a status other than CANCELLED.</p></li> <li><p>FALSE - The bucket isn't explicitly included in the bucket definition (S3BucketDefinitionForJob) for any recurring jobs, the bucket doesn't match the bucket criteria (S3BucketCriteriaForJob) for any recurring jobs, or all the recurring jobs that are configured to analyze data in the bucket have a status of CANCELLED.</p></li> <li><p>UNKNOWN - An exception occurred when Amazon Macie attempted to retrieve job data for the bucket.</p></li></ul>", "smithy.api#jsonName" => "isMonitoredByJob"}))
    JobDetails.add_member(:last_job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lastJobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the job that ran most recently and is configured to analyze objects in the bucket, either the latest run of a recurring job or the only run of a one-time job.</p> <p>This value is typically null if the value for the isDefinedInJob property is FALSE or UNKNOWN.</p>", "smithy.api#jsonName" => "lastJobId"}))
    JobDetails.add_member(:last_job_run_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastJobRunTime', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the job (lastJobId) started. If the job is a recurring job, this value indicates when the most recent run started.</p> <p>This value is typically null if the value for the isDefinedInJob property is FALSE or UNKNOWN.</p>", "smithy.api#jsonName" => "lastJobRunTime"}))
    JobDetails.type = Types::JobDetails
    JobScheduleFrequency.add_member(:daily_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: DailySchedule, location_name: 'dailySchedule', traits: {"smithy.api#documentation" => "<p>Specifies a daily recurrence pattern for running the job.</p>", "smithy.api#jsonName" => "dailySchedule"}))
    JobScheduleFrequency.add_member(:monthly_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlySchedule, location_name: 'monthlySchedule', traits: {"smithy.api#documentation" => "<p>Specifies a monthly recurrence pattern for running the job.</p>", "smithy.api#jsonName" => "monthlySchedule"}))
    JobScheduleFrequency.add_member(:weekly_schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklySchedule, location_name: 'weeklySchedule', traits: {"smithy.api#documentation" => "<p>Specifies a weekly recurrence pattern for running the job.</p>", "smithy.api#jsonName" => "weeklySchedule"}))
    JobScheduleFrequency.type = Types::JobScheduleFrequency
    JobScopeTerm.add_member(:simple_scope_term, Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleScopeTerm, location_name: 'simpleScopeTerm', traits: {"smithy.api#documentation" => "<p>A property-based condition that defines a property, operator, and one or more values for including or excluding objects from the job.</p>", "smithy.api#jsonName" => "simpleScopeTerm"}))
    JobScopeTerm.add_member(:tag_scope_term, Smithy::Schema::Shapes::ShapeRef.new(shape: TagScopeTerm, location_name: 'tagScopeTerm', traits: {"smithy.api#documentation" => "<p>A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding objects from the job.</p>", "smithy.api#jsonName" => "tagScopeTerm"}))
    JobScopeTerm.type = Types::JobScopeTerm
    JobScopingBlock.add_member(:and, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofjobscopeterm, location_name: 'and', traits: {"smithy.api#documentation" => "<p>An array of conditions, one for each property- or tag-based condition that determines which objects to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>", "smithy.api#jsonName" => "and"}))
    JobScopingBlock.type = Types::JobScopingBlock
    JobStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobStatus.add_member(:paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    JobStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    JobStatus.add_member(:complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    JobStatus.add_member(:idle, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDLE', traits: {"smithy.api#enumValue" => "IDLE"}))
    JobStatus.add_member(:user_paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_PAUSED', traits: {"smithy.api#enumValue" => "USER_PAUSED"}))
    JobSummary.add_member(:bucket_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketCriteriaForJob, location_name: 'bucketCriteria', traits: {"smithy.api#documentation" => "<p>The property- and tag-based conditions that determine which S3 buckets are included or excluded from the job's analysis. Each time the job runs, the job uses these criteria to determine which buckets to analyze. A job's definition can contain a bucketCriteria object or a bucketDefinitions array, not both.</p>", "smithy.api#jsonName" => "bucketCriteria"}))
    JobSummary.add_member(:bucket_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofs3bucketdefinitionforjob, location_name: 'bucketDefinitions', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each Amazon Web Services account that owns specific S3 buckets for the job to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for that account. A job's definition can contain a bucketDefinitions array or a bucketCriteria object, not both.</p>", "smithy.api#jsonName" => "bucketDefinitions"}))
    JobSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the job was created.</p>", "smithy.api#jsonName" => "createdAt"}))
    JobSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the job.</p>", "smithy.api#jsonName" => "jobId"}))
    JobSummary.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the job. Possible values are:</p> <ul><li><p>CANCELLED - You cancelled the job or, if it's a one-time job, you paused the job and didn't resume it within 30 days.</p></li> <li><p>COMPLETE - For a one-time job, Amazon Macie finished processing the data specified for the job. This value doesn't apply to recurring jobs.</p></li> <li><p>IDLE - For a recurring job, the previous scheduled run is complete and the next scheduled run is pending. This value doesn't apply to one-time jobs.</p></li> <li><p>PAUSED - Macie started running the job but additional processing would exceed the monthly sensitive data discovery quota for your account or one or more member accounts that the job analyzes data for.</p></li> <li><p>RUNNING - For a one-time job, the job is in progress. For a recurring job, a scheduled run is in progress.</p></li> <li><p>USER_PAUSED - You paused the job. If you paused the job while it had a status of RUNNING and you don't resume it within 30 days of pausing it, the job or job run will expire and be cancelled, depending on the job's type. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>", "smithy.api#jsonName" => "jobStatus"}))
    JobSummary.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'jobType', traits: {"smithy.api#documentation" => "<p>The schedule for running the job. Possible values are:</p> <ul><li><p>ONE_TIME - The job runs only once.</p></li> <li><p>SCHEDULED - The job runs on a daily, weekly, or monthly basis.</p></li></ul>", "smithy.api#jsonName" => "jobType"}))
    JobSummary.add_member(:last_run_error_status, Smithy::Schema::Shapes::ShapeRef.new(shape: LastRunErrorStatus, location_name: 'lastRunErrorStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run.</p>", "smithy.api#jsonName" => "lastRunErrorStatus"}))
    JobSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The custom name of the job.</p>", "smithy.api#jsonName" => "name"}))
    JobSummary.add_member(:user_paused_details, Smithy::Schema::Shapes::ShapeRef.new(shape: UserPausedDetails, location_name: 'userPausedDetails', traits: {"smithy.api#documentation" => "<p>If the current status of the job is USER_PAUSED, specifies when the job was paused and when the job or job run will expire and be cancelled if it isn't resumed. This value is present only if the value for jobStatus is USER_PAUSED.</p>", "smithy.api#jsonName" => "userPausedDetails"}))
    JobSummary.type = Types::JobSummary
    JobType.add_member(:one_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_TIME', traits: {"smithy.api#enumValue" => "ONE_TIME"}))
    JobType.add_member(:scheduled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    KeyValuePair.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that comprises a tag. A tag key is a general label that acts as a category for more specific tag values.</p>", "smithy.api#jsonName" => "key"}))
    KeyValuePair.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that comprises a tag. A tag value acts as a descriptor for a tag key. A tag value can be an empty string.</p>", "smithy.api#jsonName" => "value"}))
    KeyValuePair.type = Types::KeyValuePair
    KeyValuePairList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuePair)
    LastRunErrorStatus.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: LastRunErrorStatusCode, location_name: 'code', traits: {"smithy.api#documentation" => "<p>Specifies whether any account- or bucket-level access errors occurred when the job ran. For a recurring job, this value indicates the error status of the job's most recent run. Possible values are:</p> <ul><li><p>ERROR - One or more errors occurred. Amazon Macie didn't process all the data specified for the job.</p></li> <li><p>NONE - No errors occurred. Macie processed all the data specified for the job.</p></li></ul>", "smithy.api#jsonName" => "code"}))
    LastRunErrorStatus.type = Types::LastRunErrorStatus
    LastRunErrorStatusCode.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    LastRunErrorStatusCode.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ListAllowListsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAllowListsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAllowListsRequest.type = Types::ListAllowListsRequest
    ListAllowListsResponse.add_member(:allow_lists, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofallowlistsummary, location_name: 'allowLists', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each allow list.</p>", "smithy.api#jsonName" => "allowLists"}))
    ListAllowListsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListAllowListsResponse.type = Types::ListAllowListsResponse
    ListAutomatedDiscoveryAccountsRequest.add_member(:account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'accountIds', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for each account, for as many as 50 accounts. To retrieve the status for multiple accounts, append the accountIds parameter and argument for each account, separated by an ampersand (&amp;). To retrieve the status for all the accounts in an organization, omit this parameter.</p>", "smithy.api#httpQuery" => "accountIds"}))
    ListAutomatedDiscoveryAccountsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListAutomatedDiscoveryAccountsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListAutomatedDiscoveryAccountsRequest.type = Types::ListAutomatedDiscoveryAccountsRequest
    ListAutomatedDiscoveryAccountsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofautomateddiscoveryaccount, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each account specified in the request. Each object specifies the Amazon Web Services account ID for an account and the current status of automated sensitive data discovery for that account.</p>", "smithy.api#jsonName" => "items"}))
    ListAutomatedDiscoveryAccountsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListAutomatedDiscoveryAccountsResponse.type = Types::ListAutomatedDiscoveryAccountsResponse
    ListClassificationJobsRequest.add_member(:filter_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsFilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#documentation" => "<p>The criteria to use to filter the results.</p>", "smithy.api#jsonName" => "filterCriteria"}))
    ListClassificationJobsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of the response.</p>", "smithy.api#jsonName" => "maxResults"}))
    ListClassificationJobsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListClassificationJobsRequest.add_member(:sort_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsSortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#documentation" => "<p>The criteria to use to sort the results.</p>", "smithy.api#jsonName" => "sortCriteria"}))
    ListClassificationJobsRequest.type = Types::ListClassificationJobsRequest
    ListClassificationJobsResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofjobsummary, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each job that matches the filter criteria specified in the request.</p>", "smithy.api#jsonName" => "items"}))
    ListClassificationJobsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListClassificationJobsResponse.type = Types::ListClassificationJobsResponse
    ListClassificationScopesRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the classification scope to retrieve the unique identifier for.</p>", "smithy.api#httpQuery" => "name"}))
    ListClassificationScopesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListClassificationScopesRequest.type = Types::ListClassificationScopesRequest
    ListClassificationScopesResponse.add_member(:classification_scopes, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofclassificationscopesummary, location_name: 'classificationScopes', traits: {"smithy.api#documentation" => "<p>An array that specifies the unique identifier and name of the classification scope for the account.</p>", "smithy.api#jsonName" => "classificationScopes"}))
    ListClassificationScopesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListClassificationScopesResponse.type = Types::ListClassificationScopesResponse
    ListCustomDataIdentifiersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of the response.</p>", "smithy.api#jsonName" => "maxResults"}))
    ListCustomDataIdentifiersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListCustomDataIdentifiersRequest.type = Types::ListCustomDataIdentifiersRequest
    ListCustomDataIdentifiersResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofcustomdataidentifiersummary, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each custom data identifier.</p>", "smithy.api#jsonName" => "items"}))
    ListCustomDataIdentifiersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListCustomDataIdentifiersResponse.type = Types::ListCustomDataIdentifiersResponse
    ListFindingsFiltersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListFindingsFiltersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListFindingsFiltersRequest.type = Types::ListFindingsFiltersRequest
    ListFindingsFiltersResponse.add_member(:findings_filter_list_items, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoffindingsfilterlistitem, location_name: 'findingsFilterListItems', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each filter that's associated with the account.</p>", "smithy.api#jsonName" => "findingsFilterListItems"}))
    ListFindingsFiltersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListFindingsFiltersResponse.type = Types::ListFindingsFiltersResponse
    ListFindingsRequest.add_member(:finding_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCriteria, location_name: 'findingCriteria', traits: {"smithy.api#documentation" => "<p>The criteria to use to filter the results.</p>", "smithy.api#jsonName" => "findingCriteria"}))
    ListFindingsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of the response.</p>", "smithy.api#jsonName" => "maxResults"}))
    ListFindingsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListFindingsRequest.add_member(:sort_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: SortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#documentation" => "<p>The criteria to use to sort the results.</p>", "smithy.api#jsonName" => "sortCriteria"}))
    ListFindingsRequest.type = Types::ListFindingsRequest
    ListFindingsResponse.add_member(:finding_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'findingIds', traits: {"smithy.api#documentation" => "<p>An array of strings, where each string is the unique identifier for a finding that matches the filter criteria specified in the request.</p>", "smithy.api#jsonName" => "findingIds"}))
    ListFindingsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListFindingsResponse.type = Types::ListFindingsResponse
    ListInvitationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListInvitationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListInvitationsRequest.type = Types::ListInvitationsRequest
    ListInvitationsResponse.add_member(:invitations, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofinvitation, location_name: 'invitations', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each invitation that was received by the account.</p>", "smithy.api#jsonName" => "invitations"}))
    ListInvitationsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListInvitationsResponse.type = Types::ListInvitationsResponse
    ListJobsFilterCriteria.add_member(:excludes, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoflistjobsfilterterm, location_name: 'excludes', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each condition that determines which jobs to exclude from the results.</p>", "smithy.api#jsonName" => "excludes"}))
    ListJobsFilterCriteria.add_member(:includes, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoflistjobsfilterterm, location_name: 'includes', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each condition that determines which jobs to include in the results.</p>", "smithy.api#jsonName" => "includes"}))
    ListJobsFilterCriteria.type = Types::ListJobsFilterCriteria
    ListJobsFilterKey.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'jobType', traits: {"smithy.api#enumValue" => "jobType"}))
    ListJobsFilterKey.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'jobStatus', traits: {"smithy.api#enumValue" => "jobStatus"}))
    ListJobsFilterKey.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'createdAt', traits: {"smithy.api#enumValue" => "createdAt"}))
    ListJobsFilterKey.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'name', traits: {"smithy.api#enumValue" => "name"}))
    ListJobsFilterTerm.add_member(:comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: JobComparator, location_name: 'comparator', traits: {"smithy.api#documentation" => "<p>The operator to use to filter the results.</p>", "smithy.api#jsonName" => "comparator"}))
    ListJobsFilterTerm.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsFilterKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The property to use to filter the results.</p>", "smithy.api#jsonName" => "key"}))
    ListJobsFilterTerm.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'values', traits: {"smithy.api#documentation" => "<p>An array that lists one or more values to use to filter the results.</p>", "smithy.api#jsonName" => "values"}))
    ListJobsFilterTerm.type = Types::ListJobsFilterTerm
    ListJobsSortAttributeName.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'createdAt', traits: {"smithy.api#enumValue" => "createdAt"}))
    ListJobsSortAttributeName.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'jobStatus', traits: {"smithy.api#enumValue" => "jobStatus"}))
    ListJobsSortAttributeName.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'name', traits: {"smithy.api#enumValue" => "name"}))
    ListJobsSortAttributeName.add_member(:job_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'jobType', traits: {"smithy.api#enumValue" => "jobType"}))
    ListJobsSortCriteria.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsSortAttributeName, location_name: 'attributeName', traits: {"smithy.api#documentation" => "<p>The property to sort the results by.</p>", "smithy.api#jsonName" => "attributeName"}))
    ListJobsSortCriteria.add_member(:order_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#documentation" => "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>", "smithy.api#jsonName" => "orderBy"}))
    ListJobsSortCriteria.type = Types::ListJobsSortCriteria
    ListManagedDataIdentifiersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListManagedDataIdentifiersRequest.type = Types::ListManagedDataIdentifiersRequest
    ListManagedDataIdentifiersResponse.add_member(:items, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofmanageddataidentifiersummary, location_name: 'items', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each managed data identifier.</p>", "smithy.api#jsonName" => "items"}))
    ListManagedDataIdentifiersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListManagedDataIdentifiersResponse.type = Types::ListManagedDataIdentifiersResponse
    ListMembersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListMembersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListMembersRequest.add_member(:only_associated, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'onlyAssociated', traits: {"smithy.api#documentation" => "<p>Specifies which accounts to include in the response, based on the status of an account's relationship with the administrator account. By default, the response includes only current member accounts. To include all accounts, set this value to false.</p>", "smithy.api#httpQuery" => "onlyAssociated"}))
    ListMembersRequest.type = Types::ListMembersRequest
    ListMembersResponse.add_member(:members, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofmember, location_name: 'members', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each account that's associated with the administrator account and matches the criteria specified in the request.</p>", "smithy.api#jsonName" => "members"}))
    ListMembersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListMembersResponse.type = Types::ListMembersResponse
    ListOrganizationAdminAccountsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListOrganizationAdminAccountsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListOrganizationAdminAccountsRequest.type = Types::ListOrganizationAdminAccountsRequest
    ListOrganizationAdminAccountsResponse.add_member(:admin_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofadminaccount, location_name: 'adminAccounts', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each delegated Amazon Macie administrator account for the organization. Only one of these accounts can have a status of ENABLED.</p>", "smithy.api#jsonName" => "adminAccounts"}))
    ListOrganizationAdminAccountsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListOrganizationAdminAccountsResponse.type = Types::ListOrganizationAdminAccountsResponse
    ListResourceProfileArtifactsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListResourceProfileArtifactsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket that the request applies to.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListResourceProfileArtifactsRequest.type = Types::ListResourceProfileArtifactsRequest
    ListResourceProfileArtifactsResponse.add_member(:artifacts, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofresourceprofileartifact, location_name: 'artifacts', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each of 1-100 S3 objects that Amazon Macie selected for analysis.</p> <p>If Macie has analyzed more than 100 objects in the bucket, Macie populates the array based on the value for the ResourceProfileArtifact.sensitive field for an object: true (sensitive), followed by false (not sensitive). Macie then populates any remaining items in the array with information about objects where the value for the ResourceProfileArtifact.classificationResultStatus field is SKIPPED.</p>", "smithy.api#jsonName" => "artifacts"}))
    ListResourceProfileArtifactsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListResourceProfileArtifactsResponse.type = Types::ListResourceProfileArtifactsResponse
    ListResourceProfileDetectionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListResourceProfileDetectionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListResourceProfileDetectionsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket that the request applies to.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListResourceProfileDetectionsRequest.type = Types::ListResourceProfileDetectionsRequest
    ListResourceProfileDetectionsResponse.add_member(:detections, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdetection, location_name: 'detections', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each type of sensitive data that Amazon Macie found in the bucket. Each object reports the number of occurrences of the specified type and provides information about the custom data identifier or managed data identifier that detected the data.</p>", "smithy.api#jsonName" => "detections"}))
    ListResourceProfileDetectionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListResourceProfileDetectionsResponse.type = Types::ListResourceProfileDetectionsResponse
    ListSensitivityInspectionTemplatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of a paginated response.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSensitivityInspectionTemplatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSensitivityInspectionTemplatesRequest.type = Types::ListSensitivityInspectionTemplatesRequest
    ListSensitivityInspectionTemplatesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    ListSensitivityInspectionTemplatesResponse.add_member(:sensitivity_inspection_templates, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsensitivityinspectiontemplatesentry, location_name: 'sensitivityInspectionTemplates', traits: {"smithy.api#documentation" => "<p>An array that specifies the unique identifier and name of the sensitivity inspection template for the account.</p>", "smithy.api#jsonName" => "sensitivityInspectionTemplates"}))
    ListSensitivityInspectionTemplatesResponse.type = Types::ListSensitivityInspectionTemplatesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies which tags (keys and values) are associated with the resource.</p>", "smithy.api#jsonName" => "tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MacieStatus.add_member(:paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    MacieStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ManagedDataIdentifierSelector.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ManagedDataIdentifierSelector.add_member(:exclude, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCLUDE', traits: {"smithy.api#enumValue" => "EXCLUDE"}))
    ManagedDataIdentifierSelector.add_member(:include, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCLUDE', traits: {"smithy.api#enumValue" => "INCLUDE"}))
    ManagedDataIdentifierSelector.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ManagedDataIdentifierSelector.add_member(:recommended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOMMENDED', traits: {"smithy.api#enumValue" => "RECOMMENDED"}))
    ManagedDataIdentifierSummary.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveDataItemCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>The category of sensitive data that the managed data identifier detects: CREDENTIALS, for credentials data such as private keys or Amazon Web Services secret access keys; FINANCIAL_INFORMATION, for financial data such as credit card numbers; or, PERSONAL_INFORMATION, for personal health information, such as health insurance identification numbers, or personally identifiable information, such as passport numbers.</p>", "smithy.api#jsonName" => "category"}))
    ManagedDataIdentifierSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the managed data identifier. This is a string that describes the type of sensitive data that the managed data identifier detects. For example: OPENSSH_PRIVATE_KEY for OpenSSH private keys, CREDIT_CARD_NUMBER for credit card numbers, or USA_PASSPORT_NUMBER for US passport numbers.</p>", "smithy.api#jsonName" => "id"}))
    ManagedDataIdentifierSummary.type = Types::ManagedDataIdentifierSummary
    MatchingBucket.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account that owns the bucket.</p>", "smithy.api#jsonName" => "accountId"}))
    MatchingBucket.add_member(:automated_discovery_monitoring_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryMonitoringStatus, location_name: 'automatedDiscoveryMonitoringStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether automated sensitive data discovery is currently configured to analyze objects in the bucket. Possible values are: MONITORED, the bucket is included in analyses; and, NOT_MONITORED, the bucket is excluded from analyses. If automated sensitive data discovery is disabled for your account, this value is NOT_MONITORED.</p>", "smithy.api#jsonName" => "automatedDiscoveryMonitoringStatus"}))
    MatchingBucket.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketName', traits: {"smithy.api#documentation" => "<p>The name of the bucket.</p>", "smithy.api#jsonName" => "bucketName"}))
    MatchingBucket.add_member(:classifiable_object_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableObjectCount', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p>", "smithy.api#jsonName" => "classifiableObjectCount"}))
    MatchingBucket.add_member(:classifiable_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableSizeInBytes', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the objects that Amazon Macie can analyze in the bucket. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p> <p>If versioning is enabled for the bucket, Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>", "smithy.api#jsonName" => "classifiableSizeInBytes"}))
    MatchingBucket.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketMetadataErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The code for an error or issue that prevented Amazon Macie from retrieving and processing information about the bucket and the bucket's objects. Possible values are:</p> <ul><li><p>ACCESS_DENIED - Macie doesn't have permission to retrieve the information. For example, the bucket has a restrictive bucket policy and Amazon S3 denied the request.</p></li> <li><p>BUCKET_COUNT_EXCEEDS_QUOTA - Retrieving and processing the information would exceed the quota for the number of buckets that Macie monitors for an account (10,000).</p></li></ul> <p>If this value is null, Macie was able to retrieve and process the information.</p>", "smithy.api#jsonName" => "errorCode"}))
    MatchingBucket.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>A brief description of the error or issue (errorCode) that prevented Amazon Macie from retrieving and processing information about the bucket and the bucket's objects. This value is null if Macie was able to retrieve and process the information.</p>", "smithy.api#jsonName" => "errorMessage"}))
    MatchingBucket.add_member(:job_details, Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetails, location_name: 'jobDetails', traits: {"smithy.api#documentation" => "<p>Specifies whether any one-time or recurring classification jobs are configured to analyze objects in the bucket, and, if so, the details of the job that ran most recently.</p>", "smithy.api#jsonName" => "jobDetails"}))
    MatchingBucket.add_member(:last_automated_discovery_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastAutomatedDiscoveryTime', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when Amazon Macie most recently analyzed objects in the bucket while performing automated sensitive data discovery. This value is null if this analysis hasn't occurred.</p>", "smithy.api#jsonName" => "lastAutomatedDiscoveryTime"}))
    MatchingBucket.add_member(:object_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'objectCount', traits: {"smithy.api#documentation" => "<p>The total number of objects in the bucket.</p>", "smithy.api#jsonName" => "objectCount"}))
    MatchingBucket.add_member(:object_count_by_encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectCountByEncryptionType, location_name: 'objectCountByEncryptionType', traits: {"smithy.api#documentation" => "<p>The total number of objects in the bucket, grouped by server-side encryption type. This includes a grouping that reports the total number of objects that aren't encrypted or use client-side encryption.</p>", "smithy.api#jsonName" => "objectCountByEncryptionType"}))
    MatchingBucket.add_member(:sensitivity_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sensitivityScore', traits: {"smithy.api#documentation" => "<p>The sensitivity score for the bucket, ranging from -1 (classification error) to 100 (sensitive).</p><p>If automated sensitive data discovery has never been enabled for your account or it's been disabled for your organization or standalone account for more than 30 days, possible values are: 1, the bucket is empty; or, 50, the bucket stores objects but it's been excluded from recent analyses.</p>", "smithy.api#jsonName" => "sensitivityScore"}))
    MatchingBucket.add_member(:size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytes', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the bucket.</p> <p>If versioning is enabled for the bucket, Amazon Macie calculates this value based on the size of the latest version of each object in the bucket. This value doesn't reflect the storage size of all versions of each object in the bucket.</p>", "smithy.api#jsonName" => "sizeInBytes"}))
    MatchingBucket.add_member(:size_in_bytes_compressed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytesCompressed', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the objects that are compressed (.gz, .gzip, .zip) files in the bucket.</p> <p>If versioning is enabled for the bucket, Amazon Macie calculates this value based on the size of the latest version of each applicable object in the bucket. This value doesn't reflect the storage size of all versions of each applicable object in the bucket.</p>", "smithy.api#jsonName" => "sizeInBytesCompressed"}))
    MatchingBucket.add_member(:unclassifiable_object_count, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectCount', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>", "smithy.api#jsonName" => "unclassifiableObjectCount"}))
    MatchingBucket.add_member(:unclassifiable_object_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectSizeInBytes', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the objects that Amazon Macie can't analyze in the bucket. These objects don't use a supported storage class or don't have a file name extension for a supported file or storage format.</p>", "smithy.api#jsonName" => "unclassifiableObjectSizeInBytes"}))
    MatchingBucket.type = Types::MatchingBucket
    MatchingResource.add_member(:matching_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: MatchingBucket, location_name: 'matchingBucket', traits: {"smithy.api#documentation" => "<p>The details of an S3 bucket that Amazon Macie monitors and analyzes for your account.</p>", "smithy.api#jsonName" => "matchingBucket"}))
    MatchingResource.type = Types::MatchingResource
    Member.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account.</p>", "smithy.api#jsonName" => "accountId"}))
    Member.add_member(:administrator_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'administratorAccountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the administrator account.</p>", "smithy.api#jsonName" => "administratorAccountId"}))
    Member.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the account.</p>", "smithy.api#jsonName" => "arn"}))
    Member.add_member(:email, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'email', traits: {"smithy.api#documentation" => "<p>The email address for the account. This value is null if the account is associated with the administrator account through Organizations.</p>", "smithy.api#jsonName" => "email"}))
    Member.add_member(:invited_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'invitedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when an Amazon Macie membership invitation was last sent to the account. This value is null if a Macie membership invitation hasn't been sent to the account.</p>", "smithy.api#jsonName" => "invitedAt"}))
    Member.add_member(:master_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'masterAccountId', traits: {"smithy.api#documentation" => "<p>(Deprecated) The Amazon Web Services account ID for the administrator account. This property has been replaced by the administratorAccountId property and is retained only for backward compatibility.</p>", "smithy.api#jsonName" => "masterAccountId"}))
    Member.add_member(:relationship_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: 'relationshipStatus', traits: {"smithy.api#documentation" => "<p>The current status of the relationship between the account and the administrator account.</p>", "smithy.api#jsonName" => "relationshipStatus"}))
    Member.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A map of key-value pairs that specifies which tags (keys and values) are associated with the account in Amazon Macie.</p>", "smithy.api#jsonName" => "tags"}))
    Member.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, of the most recent change to the status of the relationship between the account and the administrator account.</p>", "smithy.api#jsonName" => "updatedAt"}))
    Member.type = Types::Member
    MonthlySchedule.add_member(:day_of_month, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'dayOfMonth', traits: {"smithy.api#documentation" => "<p>The numeric day of the month when Amazon Macie runs the job. This value can be an integer from 1 through 31.</p> <p>If this value exceeds the number of days in a certain month, Macie doesn't run the job that month. Macie runs the job only during months that have the specified day. For example, if this value is 31 and a month has only 30 days, Macie doesn't run the job that month. To run the job every month, specify a value that's less than 29.</p>", "smithy.api#jsonName" => "dayOfMonth"}))
    MonthlySchedule.type = Types::MonthlySchedule
    ObjectCountByEncryptionType.add_member(:customer_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'customerManaged', traits: {"smithy.api#documentation" => "<p>The total number of objects that are encrypted with customer-provided keys. The objects use server-side encryption with customer-provided keys (SSE-C).</p>", "smithy.api#jsonName" => "customerManaged"}))
    ObjectCountByEncryptionType.add_member(:kms_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'kmsManaged', traits: {"smithy.api#documentation" => "<p>The total number of objects that are encrypted with KMS keys, either Amazon Web Services managed keys or customer managed keys. The objects use dual-layer server-side encryption or server-side encryption with KMS keys (DSSE-KMS or SSE-KMS).</p>", "smithy.api#jsonName" => "kmsManaged"}))
    ObjectCountByEncryptionType.add_member(:s3_managed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 's3Managed', traits: {"smithy.api#documentation" => "<p>The total number of objects that are encrypted with Amazon S3 managed keys. The objects use server-side encryption with Amazon S3 managed keys (SSE-S3).</p>", "smithy.api#jsonName" => "s3Managed"}))
    ObjectCountByEncryptionType.add_member(:unencrypted, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unencrypted', traits: {"smithy.api#documentation" => "<p>The total number of objects that use client-side encryption or aren't encrypted.</p>", "smithy.api#jsonName" => "unencrypted"}))
    ObjectCountByEncryptionType.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unknown', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie doesn't have current encryption metadata for. Macie can't provide current data about the encryption settings for these objects.</p>", "smithy.api#jsonName" => "unknown"}))
    ObjectCountByEncryptionType.type = Types::ObjectCountByEncryptionType
    ObjectLevelStatistics.add_member(:file_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'fileType', traits: {"smithy.api#documentation" => "<p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects don't have a file name extension for a supported file or storage format.</p>", "smithy.api#jsonName" => "fileType"}))
    ObjectLevelStatistics.add_member(:storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'storageClass', traits: {"smithy.api#documentation" => "<p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects use an unsupported storage class.</p>", "smithy.api#jsonName" => "storageClass"}))
    ObjectLevelStatistics.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'total', traits: {"smithy.api#documentation" => "<p>The total storage size (in bytes) or number of objects that Amazon Macie can't analyze because the objects use an unsupported storage class or don't have a file name extension for a supported file or storage format.</p>", "smithy.api#jsonName" => "total"}))
    ObjectLevelStatistics.type = Types::ObjectLevelStatistics
    Occurrences.add_member(:cells, Smithy::Schema::Shapes::ShapeRef.new(shape: Cells, location_name: 'cells', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each occurrence of sensitive data in a Microsoft Excel workbook, CSV file, or TSV file. This value is null for all other types of files.</p> <p>Each Cell object specifies a cell or field that contains the sensitive data.</p>", "smithy.api#jsonName" => "cells"}))
    Occurrences.add_member(:line_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: Ranges, location_name: 'lineRanges', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each occurrence of sensitive data in an email message or a non-binary text file such as an HTML, TXT, or XML file. Each Range object specifies a line or inclusive range of lines that contains the sensitive data, and the position of the data on the specified line or lines.</p> <p>This value is often null for file types that are supported by Cell, Page, or Record objects. Exceptions are the location of sensitive data in: unstructured sections of an otherwise structured file, such as a comment in a file; a malformed file that Amazon Macie analyzes as plain text; and, a CSV or TSV file that has any column names that contain sensitive data.</p>", "smithy.api#jsonName" => "lineRanges"}))
    Occurrences.add_member(:offset_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: Ranges, location_name: 'offsetRanges', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>", "smithy.api#jsonName" => "offsetRanges"}))
    Occurrences.add_member(:pages, Smithy::Schema::Shapes::ShapeRef.new(shape: Pages, location_name: 'pages', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each occurrence of sensitive data in an Adobe Portable Document Format file. This value is null for all other types of files.</p> <p>Each Page object specifies a page that contains the sensitive data.</p>", "smithy.api#jsonName" => "pages"}))
    Occurrences.add_member(:records, Smithy::Schema::Shapes::ShapeRef.new(shape: Records, location_name: 'records', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each occurrence of sensitive data in an Apache Avro object container, Apache Parquet file, JSON file, or JSON Lines file. This value is null for all other types of files.</p> <p>For an Avro object container or Parquet file, each Record object specifies a record index and the path to a field in a record that contains the sensitive data. For a JSON or JSON Lines file, each Record object specifies the path to a field or array that contains the sensitive data. For a JSON Lines file, it also specifies the index of the line that contains the data.</p>", "smithy.api#jsonName" => "records"}))
    Occurrences.type = Types::Occurrences
    OrderBy.add_member(:asc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASC', traits: {"smithy.api#enumValue" => "ASC"}))
    OrderBy.add_member(:desc, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESC', traits: {"smithy.api#enumValue" => "DESC"}))
    OriginType.add_member(:sensitive_data_discovery_job, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENSITIVE_DATA_DISCOVERY_JOB', traits: {"smithy.api#enumValue" => "SENSITIVE_DATA_DISCOVERY_JOB"}))
    OriginType.add_member(:automated_sensitive_data_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATED_SENSITIVE_DATA_DISCOVERY', traits: {"smithy.api#enumValue" => "AUTOMATED_SENSITIVE_DATA_DISCOVERY"}))
    Page.add_member(:line_range, Smithy::Schema::Shapes::ShapeRef.new(shape: Range, location_name: 'lineRange', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>", "smithy.api#jsonName" => "lineRange"}))
    Page.add_member(:offset_range, Smithy::Schema::Shapes::ShapeRef.new(shape: Range, location_name: 'offsetRange', traits: {"smithy.api#documentation" => "<p>Reserved for future use.</p>", "smithy.api#jsonName" => "offsetRange"}))
    Page.add_member(:page_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'pageNumber', traits: {"smithy.api#documentation" => "<p>The page number of the page that contains the sensitive data.</p>", "smithy.api#jsonName" => "pageNumber"}))
    Page.type = Types::Page
    Pages.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Page)
    PolicyDetails.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action that produced the finding.</p>", "smithy.api#jsonName" => "action"}))
    PolicyDetails.add_member(:actor, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingActor, location_name: 'actor', traits: {"smithy.api#documentation" => "<p>The entity that performed the action that produced the finding.</p>", "smithy.api#jsonName" => "actor"}))
    PolicyDetails.type = Types::PolicyDetails
    PutClassificationExportConfigurationRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationExportConfiguration, location_name: 'configuration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The location to store data classification results in, and the encryption settings to use when storing results in that location.</p>", "smithy.api#jsonName" => "configuration", "smithy.api#required" => {}}))
    PutClassificationExportConfigurationRequest.type = Types::PutClassificationExportConfigurationRequest
    PutClassificationExportConfigurationResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationExportConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The location where the data classification results are stored, and the encryption settings that are used when storing results in that location.</p>", "smithy.api#jsonName" => "configuration"}))
    PutClassificationExportConfigurationResponse.type = Types::PutClassificationExportConfigurationResponse
    PutFindingsPublicationConfigurationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    PutFindingsPublicationConfigurationRequest.add_member(:security_hub_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityHubConfiguration, location_name: 'securityHubConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings that determine which findings to publish to Security Hub.</p>", "smithy.api#jsonName" => "securityHubConfiguration"}))
    PutFindingsPublicationConfigurationRequest.type = Types::PutFindingsPublicationConfigurationRequest
    PutFindingsPublicationConfigurationResponse.type = Types::PutFindingsPublicationConfigurationResponse
    Range.add_member(:end, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'end', traits: {"smithy.api#documentation" => "<p>The number of lines from the beginning of the file to the end of the sensitive data.</p>", "smithy.api#jsonName" => "end"}))
    Range.add_member(:start, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'start', traits: {"smithy.api#documentation" => "<p>The number of lines from the beginning of the file to the beginning of the sensitive data.</p>", "smithy.api#jsonName" => "start"}))
    Range.add_member(:start_column, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startColumn', traits: {"smithy.api#documentation" => "<p>The number of characters, with spaces and starting from 1, from the beginning of the first line that contains the sensitive data (start) to the beginning of the sensitive data.</p>", "smithy.api#jsonName" => "startColumn"}))
    Range.type = Types::Range
    Ranges.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Range)
    Record.add_member(:json_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jsonPath', traits: {"smithy.api#documentation" => "<p>The path, as a JSONPath expression, to the sensitive data. For an Avro object container or Parquet file, this is the path to the field in the record (recordIndex) that contains the data. For a JSON or JSON Lines file, this is the path to the field or array that contains the data. If the data is a value in an array, the path also indicates which value contains the data.</p> <p>If Amazon Macie detects sensitive data in the name of any element in the path, Macie omits this field. If the name of an element exceeds 240 characters, Macie truncates the name by removing characters from the beginning of the name. If the resulting full path exceeds 250 characters, Macie also truncates the path, starting with the first element in the path, until the path contains 250 or fewer characters.</p>", "smithy.api#jsonName" => "jsonPath"}))
    Record.add_member(:record_index, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'recordIndex', traits: {"smithy.api#documentation" => "<p>For an Avro object container or Parquet file, the record index, starting from 0, for the record that contains the sensitive data. For a JSON Lines file, the line index, starting from 0, for the line that contains the sensitive data. This value is always 0 for JSON files.</p>", "smithy.api#jsonName" => "recordIndex"}))
    Record.type = Types::Record
    Records.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Record)
    RelationshipStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "Enabled"}))
    RelationshipStatus.add_member(:paused, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Paused', traits: {"smithy.api#enumValue" => "Paused"}))
    RelationshipStatus.add_member(:invited, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Invited', traits: {"smithy.api#enumValue" => "Invited"}))
    RelationshipStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Created', traits: {"smithy.api#enumValue" => "Created"}))
    RelationshipStatus.add_member(:removed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Removed', traits: {"smithy.api#enumValue" => "Removed"}))
    RelationshipStatus.add_member(:resigned, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Resigned', traits: {"smithy.api#enumValue" => "Resigned"}))
    RelationshipStatus.add_member(:email_verification_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EmailVerificationInProgress', traits: {"smithy.api#enumValue" => "EmailVerificationInProgress"}))
    RelationshipStatus.add_member(:email_verification_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EmailVerificationFailed', traits: {"smithy.api#enumValue" => "EmailVerificationFailed"}))
    RelationshipStatus.add_member(:region_disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RegionDisabled', traits: {"smithy.api#enumValue" => "RegionDisabled"}))
    RelationshipStatus.add_member(:account_suspended, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccountSuspended', traits: {"smithy.api#enumValue" => "AccountSuspended"}))
    ReplicationDetails.add_member(:replicated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'replicated', traits: {"smithy.api#documentation" => "<p>Specifies whether the bucket is configured to replicate one or more objects to any destination.</p>", "smithy.api#jsonName" => "replicated"}))
    ReplicationDetails.add_member(:replicated_externally, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'replicatedExternally', traits: {"smithy.api#documentation" => "<p>Specifies whether the bucket is configured to replicate one or more objects to a bucket for an Amazon Web Services account that isn't part of your Amazon Macie organization. An <i>Amazon Macie organization</i> is a set of Macie accounts that are centrally managed as a group of related accounts through Organizations or by Macie invitation.</p>", "smithy.api#jsonName" => "replicatedExternally"}))
    ReplicationDetails.add_member(:replication_accounts, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'replicationAccounts', traits: {"smithy.api#documentation" => "<p>An array of Amazon Web Services account IDs, one for each Amazon Web Services account that owns a bucket that the bucket is configured to replicate one or more objects to.</p>", "smithy.api#jsonName" => "replicationAccounts"}))
    ReplicationDetails.type = Types::ReplicationDetails
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The explanation of the error that occurred.</p>", "smithy.api#jsonName" => "message"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceProfileArtifact.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the object.</p>", "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    ResourceProfileArtifact.add_member(:classification_result_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'classificationResultStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The status of the analysis. Possible values are:</p> <ul><li><p>COMPLETE - Amazon Macie successfully completed its analysis of the object.</p></li> <li><p>PARTIAL - Macie analyzed only a subset of data in the object. For example, the object is an archive file that contains files in an unsupported format.</p></li> <li><p>SKIPPED - Macie wasn't able to analyze the object. For example, the object is a malformed file.</p></li></ul>", "smithy.api#jsonName" => "classificationResultStatus", "smithy.api#required" => {}}))
    ResourceProfileArtifact.add_member(:sensitive, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'sensitive', traits: {"smithy.api#documentation" => "<p>Specifies whether Amazon Macie found sensitive data in the object.</p>", "smithy.api#jsonName" => "sensitive"}))
    ResourceProfileArtifact.type = Types::ResourceProfileArtifact
    ResourceStatistics.add_member(:total_bytes_classified, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalBytesClassified', traits: {"smithy.api#documentation" => "<p>The total amount of data, in bytes, that Amazon Macie has analyzed in the bucket.</p>", "smithy.api#jsonName" => "totalBytesClassified"}))
    ResourceStatistics.add_member(:total_detections, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalDetections', traits: {"smithy.api#documentation" => "<p>The total number of occurrences of sensitive data that Amazon Macie has found in the bucket's objects. This includes occurrences that are currently suppressed by the sensitivity scoring settings for the bucket (totalDetectionsSuppressed).</p>", "smithy.api#jsonName" => "totalDetections"}))
    ResourceStatistics.add_member(:total_detections_suppressed, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalDetectionsSuppressed', traits: {"smithy.api#documentation" => "<p>The total number of occurrences of sensitive data that are currently suppressed by the sensitivity scoring settings for the bucket. These represent occurrences of sensitive data that Amazon Macie found in the bucket's objects, but the occurrences were manually suppressed. By default, suppressed occurrences are excluded from the bucket's sensitivity score.</p>", "smithy.api#jsonName" => "totalDetectionsSuppressed"}))
    ResourceStatistics.add_member(:total_items_classified, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsClassified', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie has analyzed in the bucket.</p>", "smithy.api#jsonName" => "totalItemsClassified"}))
    ResourceStatistics.add_member(:total_items_sensitive, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsSensitive', traits: {"smithy.api#documentation" => "<p>The total number of the bucket's objects that Amazon Macie has found sensitive data in.</p>", "smithy.api#jsonName" => "totalItemsSensitive"}))
    ResourceStatistics.add_member(:total_items_skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsSkipped', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie wasn't able to analyze in the bucket due to an object-level issue or error. For example, an object is a malformed file. This value includes objects that Macie wasn't able to analyze for reasons reported by other statistics in the ResourceStatistics object.</p>", "smithy.api#jsonName" => "totalItemsSkipped"}))
    ResourceStatistics.add_member(:total_items_skipped_invalid_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsSkippedInvalidEncryption', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie wasn't able to analyze in the bucket because the objects are encrypted with a key that Macie can't access. The objects use server-side encryption with customer-provided keys (SSE-C).</p>", "smithy.api#jsonName" => "totalItemsSkippedInvalidEncryption"}))
    ResourceStatistics.add_member(:total_items_skipped_invalid_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsSkippedInvalidKms', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie wasn't able to analyze in the bucket because the objects are encrypted with KMS keys that were disabled, are scheduled for deletion, or were deleted.</p>", "smithy.api#jsonName" => "totalItemsSkippedInvalidKms"}))
    ResourceStatistics.add_member(:total_items_skipped_permission_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsSkippedPermissionDenied', traits: {"smithy.api#documentation" => "<p>The total number of objects that Amazon Macie wasn't able to analyze in the bucket due to the permissions settings for the objects or the permissions settings for the keys that were used to encrypt the objects.</p>", "smithy.api#jsonName" => "totalItemsSkippedPermissionDenied"}))
    ResourceStatistics.type = Types::ResourceStatistics
    ResourcesAffected.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p>The details of the S3 bucket that the finding applies to.</p>", "smithy.api#jsonName" => "s3Bucket"}))
    ResourcesAffected.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 's3Object', traits: {"smithy.api#documentation" => "<p>The details of the S3 object that the finding applies to.</p>", "smithy.api#jsonName" => "s3Object"}))
    ResourcesAffected.type = Types::ResourcesAffected
    RetrievalConfiguration.add_member(:external_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'externalId', traits: {"smithy.api#documentation" => "<p>The external ID to specify in the trust policy for the IAM role to assume when retrieving sensitive data from affected S3 objects (roleName). This value is null if the value for retrievalMode is CALLER_CREDENTIALS.</p> <p>This ID is a unique alphanumeric string that Amazon Macie generates automatically after you configure it to assume an IAM role. For a Macie administrator to retrieve sensitive data from an affected S3 object for a member account, the trust policy for the role in the member account must include an sts:ExternalId condition that requires this ID.</p>", "smithy.api#jsonName" => "externalId"}))
    RetrievalConfiguration.add_member(:retrieval_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalMode, location_name: 'retrievalMode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The access method that's used to retrieve sensitive data from affected S3 objects. Valid values are: ASSUME_ROLE, assume an IAM role that is in the affected Amazon Web Services account and delegates access to Amazon Macie (roleName); and, CALLER_CREDENTIALS, use the credentials of the IAM user who requests the sensitive data.</p>", "smithy.api#jsonName" => "retrievalMode", "smithy.api#required" => {}}))
    RetrievalConfiguration.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patternw, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The name of the IAM role that is in the affected Amazon Web Services account and Amazon Macie is allowed to assume when retrieving sensitive data from affected S3 objects for the account. This value is null if the value for retrievalMode is CALLER_CREDENTIALS.</p>", "smithy.api#jsonName" => "roleName"}))
    RetrievalConfiguration.type = Types::RetrievalConfiguration
    RetrievalMode.add_member(:caller_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALLER_CREDENTIALS', traits: {"smithy.api#enumValue" => "CALLER_CREDENTIALS"}))
    RetrievalMode.add_member(:assume_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSUME_ROLE', traits: {"smithy.api#enumValue" => "ASSUME_ROLE"}))
    RevealConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max2048, location_name: 'kmsKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN), ID, or alias of the KMS key to use to encrypt sensitive data that's retrieved. The key must be an existing, customer managed, symmetric encryption key that's enabled in the same Amazon Web Services Region as the Amazon Macie account.</p> <p>If this value specifies an alias, it must include the following prefix: alias/. If this value specifies a key that's owned by another Amazon Web Services account, it must specify the ARN of the key or the ARN of the key's alias.</p>", "smithy.api#jsonName" => "kmsKeyId"}))
    RevealConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RevealStatus, location_name: 'status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The status of the configuration for the Amazon Macie account. In a response, possible values are: ENABLED, the configuration is currently enabled for the account; and, DISABLED, the configuration is currently disabled for the account. In a request, valid values are: ENABLED, enable the configuration for the account; and, DISABLED, disable the configuration for the account.</p> <important><p>If you disable the configuration, you also permanently delete current settings that specify how to access affected S3 objects. If your current access method is ASSUME_ROLE, Macie also deletes the external ID and role name currently specified for the configuration. These settings can't be recovered after they're deleted.</p></important>", "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    RevealConfiguration.type = Types::RevealConfiguration
    RevealRequestStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    RevealRequestStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    RevealRequestStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    RevealStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    RevealStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    S3Bucket.add_member(:allows_unencrypted_object_uploads, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowsUnencryptedObjectUploads, location_name: 'allowsUnencryptedObjectUploads', traits: {"smithy.api#documentation" => "<p>Specifies whether the bucket policy for the bucket requires server-side encryption of objects when objects are added to the bucket. Possible values are:</p> <ul><li><p>FALSE - The bucket policy requires server-side encryption of new objects. PutObject requests must include a valid server-side encryption header.</p></li> <li><p>TRUE - The bucket doesn't have a bucket policy or it has a bucket policy that doesn't require server-side encryption of new objects. If a bucket policy exists, it doesn't require PutObject requests to include a valid server-side encryption header.</p></li> <li><p>UNKNOWN - Amazon Macie can't determine whether the bucket policy requires server-side encryption of new objects.</p></li></ul> <p>Valid server-side encryption headers are: x-amz-server-side-encryption with a value of AES256 or aws:kms, and x-amz-server-side-encryption-customer-algorithm with a value of AES256.</p>", "smithy.api#jsonName" => "allowsUnencryptedObjectUploads"}))
    S3Bucket.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the bucket.</p>", "smithy.api#jsonName" => "arn"}))
    S3Bucket.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the bucket was created. This value can also indicate when changes such as edits to the bucket's policy were most recently made to the bucket, relative to when the finding was created or last updated.</p>", "smithy.api#jsonName" => "createdAt"}))
    S3Bucket.add_member(:default_server_side_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryption, location_name: 'defaultServerSideEncryption', traits: {"smithy.api#documentation" => "<p>The default server-side encryption settings for the bucket.</p>", "smithy.api#jsonName" => "defaultServerSideEncryption"}))
    S3Bucket.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the bucket.</p>", "smithy.api#jsonName" => "name"}))
    S3Bucket.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketOwner, location_name: 'owner', traits: {"smithy.api#documentation" => "<p>The display name and canonical user ID for the Amazon Web Services account that owns the bucket.</p>", "smithy.api#jsonName" => "owner"}))
    S3Bucket.add_member(:public_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BucketPublicAccess, location_name: 'publicAccess', traits: {"smithy.api#documentation" => "<p>The permissions settings that determine whether the bucket is publicly accessible.</p>", "smithy.api#jsonName" => "publicAccess"}))
    S3Bucket.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuePairList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags that are associated with the bucket.</p>", "smithy.api#jsonName" => "tags"}))
    S3Bucket.type = Types::S3Bucket
    S3BucketCriteriaForJob.add_member(:excludes, Smithy::Schema::Shapes::ShapeRef.new(shape: CriteriaBlockForJob, location_name: 'excludes', traits: {"smithy.api#documentation" => "<p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>", "smithy.api#jsonName" => "excludes"}))
    S3BucketCriteriaForJob.add_member(:includes, Smithy::Schema::Shapes::ShapeRef.new(shape: CriteriaBlockForJob, location_name: 'includes', traits: {"smithy.api#documentation" => "<p>The property- and tag-based conditions that determine which buckets to include in the job.</p>", "smithy.api#jsonName" => "includes"}))
    S3BucketCriteriaForJob.type = Types::S3BucketCriteriaForJob
    S3BucketDefinitionForJob.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account that owns the buckets.</p>", "smithy.api#jsonName" => "accountId", "smithy.api#required" => {}}))
    S3BucketDefinitionForJob.add_member(:buckets, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'buckets', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array that lists the names of the buckets.</p>", "smithy.api#jsonName" => "buckets", "smithy.api#required" => {}}))
    S3BucketDefinitionForJob.type = Types::S3BucketDefinitionForJob
    S3BucketOwner.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>The display name of the account that owns the bucket.</p>", "smithy.api#jsonName" => "displayName"}))
    S3BucketOwner.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The canonical user ID for the account that owns the bucket.</p>", "smithy.api#jsonName" => "id"}))
    S3BucketOwner.type = Types::S3BucketOwner
    S3ClassificationScope.add_member(:excludes, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ClassificationScopeExclusion, location_name: 'excludes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The S3 buckets that are excluded.</p>", "smithy.api#jsonName" => "excludes", "smithy.api#required" => {}}))
    S3ClassificationScope.type = Types::S3ClassificationScope
    S3ClassificationScopeExclusion.add_member(:bucket_names, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofs3bucketname, location_name: 'bucketNames', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>An array of strings, one for each S3 bucket that is excluded. Each string is the full name of an excluded bucket.</p>", "smithy.api#jsonName" => "bucketNames", "smithy.api#required" => {}}))
    S3ClassificationScopeExclusion.type = Types::S3ClassificationScopeExclusion
    S3ClassificationScopeExclusionUpdate.add_member(:bucket_names, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofs3bucketname, location_name: 'bucketNames', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Depending on the value specified for the update operation (ClassificationScopeUpdateOperation), an array of strings that: lists the names of buckets to add or remove from the list, or specifies a new set of bucket names that overwrites all existing names in the list. Each string must be the full name of an existing S3 bucket. Values are case sensitive.</p>", "smithy.api#jsonName" => "bucketNames", "smithy.api#required" => {}}))
    S3ClassificationScopeExclusionUpdate.add_member(:operation, Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeUpdateOperation, location_name: 'operation', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Specifies how to apply the changes to the exclusion list. Valid values are:</p> <ul><li><p>ADD - Append the specified bucket names to the current list.</p></li> <li><p>REMOVE - Remove the specified bucket names from the current list.</p></li> <li><p>REPLACE - Overwrite the current list with the specified list of bucket names. If you specify this value, Amazon Macie removes all existing names from the list and adds all the specified names to the list.</p></li></ul>", "smithy.api#jsonName" => "operation", "smithy.api#required" => {}}))
    S3ClassificationScopeExclusionUpdate.type = Types::S3ClassificationScopeExclusionUpdate
    S3ClassificationScopeUpdate.add_member(:excludes, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ClassificationScopeExclusionUpdate, location_name: 'excludes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The names of the S3 buckets to add or remove from the list.</p>", "smithy.api#jsonName" => "excludes", "smithy.api#required" => {}}))
    S3ClassificationScopeUpdate.type = Types::S3ClassificationScopeUpdate
    S3Destination.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the bucket. This must be the name of an existing general purpose bucket.</p>", "smithy.api#jsonName" => "bucketName", "smithy.api#required" => {}}))
    S3Destination.add_member(:key_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'keyPrefix', traits: {"smithy.api#documentation" => "<p>The path prefix to use in the path to the location in the bucket. This prefix specifies where to store classification results in the bucket.</p>", "smithy.api#jsonName" => "keyPrefix"}))
    S3Destination.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kmsKeyArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the customer managed KMS key to use for encryption of the results. This must be the ARN of an existing, symmetric encryption KMS key that's enabled in the same Amazon Web Services Region as the bucket.</p>", "smithy.api#jsonName" => "kmsKeyArn", "smithy.api#required" => {}}))
    S3Destination.type = Types::S3Destination
    S3JobDefinition.add_member(:bucket_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketCriteriaForJob, location_name: 'bucketCriteria', traits: {"smithy.api#documentation" => "<p>The property- and tag-based conditions that determine which S3 buckets to include or exclude from the analysis. Each time the job runs, the job uses these criteria to determine which buckets contain objects to analyze. A job's definition can contain a bucketCriteria object or a bucketDefinitions array, not both.</p>", "smithy.api#jsonName" => "bucketCriteria"}))
    S3JobDefinition.add_member(:bucket_definitions, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofs3bucketdefinitionforjob, location_name: 'bucketDefinitions', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each Amazon Web Services account that owns specific S3 buckets to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for that account. A job's definition can contain a bucketDefinitions array or a bucketCriteria object, not both.</p>", "smithy.api#jsonName" => "bucketDefinitions"}))
    S3JobDefinition.add_member(:scoping, Smithy::Schema::Shapes::ShapeRef.new(shape: Scoping, location_name: 'scoping', traits: {"smithy.api#documentation" => "<p>The property- and tag-based conditions that determine which S3 objects to include or exclude from the analysis. Each time the job runs, the job uses these criteria to determine which objects to analyze.</p>", "smithy.api#jsonName" => "scoping"}))
    S3JobDefinition.type = Types::S3JobDefinition
    S3Object.add_member(:bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the bucket that contains the object.</p>", "smithy.api#jsonName" => "bucketArn"}))
    S3Object.add_member(:e_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eTag', traits: {"smithy.api#documentation" => "<p>The entity tag (ETag) that identifies the affected version of the object. If the object was overwritten or changed after Amazon Macie produced the finding, this value might be different from the current ETag for the object.</p>", "smithy.api#jsonName" => "eTag"}))
    S3Object.add_member(:extension, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'extension', traits: {"smithy.api#documentation" => "<p>The file name extension of the object. If the object doesn't have a file name extension, this value is \"\".</p>", "smithy.api#jsonName" => "extension"}))
    S3Object.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The full name (<i>key</i>) of the object, including the object's prefix if applicable.</p>", "smithy.api#jsonName" => "key"}))
    S3Object.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastModified', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the object was last modified.</p>", "smithy.api#jsonName" => "lastModified"}))
    S3Object.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'path', traits: {"smithy.api#documentation" => "<p>The full path to the affected object, including the name of the affected bucket and the object's name (key).</p>", "smithy.api#jsonName" => "path"}))
    S3Object.add_member(:public_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'publicAccess', traits: {"smithy.api#documentation" => "<p>Specifies whether the object is publicly accessible due to the combination of permissions settings that apply to the object.</p>", "smithy.api#jsonName" => "publicAccess"}))
    S3Object.add_member(:server_side_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryption, location_name: 'serverSideEncryption', traits: {"smithy.api#documentation" => "<p>The type of server-side encryption that was used to encrypt the object.</p>", "smithy.api#jsonName" => "serverSideEncryption"}))
    S3Object.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'size', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the object.</p>", "smithy.api#jsonName" => "size"}))
    S3Object.add_member(:storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: 'storageClass', traits: {"smithy.api#documentation" => "<p>The storage class of the object.</p>", "smithy.api#jsonName" => "storageClass"}))
    S3Object.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuePairList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags that are associated with the object.</p>", "smithy.api#jsonName" => "tags"}))
    S3Object.add_member(:version_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'versionId', traits: {"smithy.api#documentation" => "<p>The identifier for the affected version of the object.</p>", "smithy.api#jsonName" => "versionId"}))
    S3Object.type = Types::S3Object
    S3WordsList.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin3max255patternazaz093255, location_name: 'bucketName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The full name of the S3 bucket that contains the object.</p>", "smithy.api#jsonName" => "bucketName", "smithy.api#required" => {}}))
    S3WordsList.add_member(:object_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max1024patternss, location_name: 'objectKey', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The full name (key) of the object.</p>", "smithy.api#jsonName" => "objectKey", "smithy.api#required" => {}}))
    S3WordsList.type = Types::S3WordsList
    ScopeFilterKey.add_member(:object_extension, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_EXTENSION', traits: {"smithy.api#enumValue" => "OBJECT_EXTENSION"}))
    ScopeFilterKey.add_member(:object_last_modified_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_LAST_MODIFIED_DATE', traits: {"smithy.api#enumValue" => "OBJECT_LAST_MODIFIED_DATE"}))
    ScopeFilterKey.add_member(:object_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_SIZE', traits: {"smithy.api#enumValue" => "OBJECT_SIZE"}))
    ScopeFilterKey.add_member(:object_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_KEY', traits: {"smithy.api#enumValue" => "OBJECT_KEY"}))
    Scoping.add_member(:excludes, Smithy::Schema::Shapes::ShapeRef.new(shape: JobScopingBlock, location_name: 'excludes', traits: {"smithy.api#documentation" => "<p>The property- and tag-based conditions that determine which objects to exclude from the analysis.</p>", "smithy.api#jsonName" => "excludes"}))
    Scoping.add_member(:includes, Smithy::Schema::Shapes::ShapeRef.new(shape: JobScopingBlock, location_name: 'includes', traits: {"smithy.api#documentation" => "<p>The property- and tag-based conditions that determine which objects to include in the analysis.</p>", "smithy.api#jsonName" => "includes"}))
    Scoping.type = Types::Scoping
    SearchResourcesBucketCriteria.add_member(:excludes, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesCriteriaBlock, location_name: 'excludes', traits: {"smithy.api#documentation" => "<p>The property- and tag-based conditions that determine which buckets to exclude from the results.</p>", "smithy.api#jsonName" => "excludes"}))
    SearchResourcesBucketCriteria.add_member(:includes, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesCriteriaBlock, location_name: 'includes', traits: {"smithy.api#documentation" => "<p>The property- and tag-based conditions that determine which buckets to include in the results.</p>", "smithy.api#jsonName" => "includes"}))
    SearchResourcesBucketCriteria.type = Types::SearchResourcesBucketCriteria
    SearchResourcesComparator.add_member(:eq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQ', traits: {"smithy.api#enumValue" => "EQ"}))
    SearchResourcesComparator.add_member(:ne, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NE', traits: {"smithy.api#enumValue" => "NE"}))
    SearchResourcesCriteria.add_member(:simple_criterion, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesSimpleCriterion, location_name: 'simpleCriterion', traits: {"smithy.api#documentation" => "<p>A property-based condition that defines a property, operator, and one or more values for including or excluding resources from the results.</p>", "smithy.api#jsonName" => "simpleCriterion"}))
    SearchResourcesCriteria.add_member(:tag_criterion, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesTagCriterion, location_name: 'tagCriterion', traits: {"smithy.api#documentation" => "<p>A tag-based condition that defines an operator and tag keys, tag values, or tag key and value pairs for including or excluding resources from the results.</p>", "smithy.api#jsonName" => "tagCriterion"}))
    SearchResourcesCriteria.type = Types::SearchResourcesCriteria
    SearchResourcesCriteriaBlock.add_member(:and, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsearchresourcescriteria, location_name: 'and', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each property- or tag-based condition that includes or excludes resources from the query results. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>", "smithy.api#jsonName" => "and"}))
    SearchResourcesCriteriaBlock.type = Types::SearchResourcesCriteriaBlock
    SearchResourcesRequest.add_member(:bucket_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesBucketCriteria, location_name: 'bucketCriteria', traits: {"smithy.api#documentation" => "<p>The filter conditions that determine which S3 buckets to include or exclude from the query results.</p>", "smithy.api#jsonName" => "bucketCriteria"}))
    SearchResourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of items to include in each page of the response. The default value is 50.</p>", "smithy.api#jsonName" => "maxResults"}))
    SearchResourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The nextToken string that specifies which page of results to return in a paginated response.</p>", "smithy.api#jsonName" => "nextToken"}))
    SearchResourcesRequest.add_member(:sort_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesSortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#documentation" => "<p>The criteria to use to sort the results.</p>", "smithy.api#jsonName" => "sortCriteria"}))
    SearchResourcesRequest.type = Types::SearchResourcesRequest
    SearchResourcesResponse.add_member(:matching_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofmatchingresource, location_name: 'matchingResources', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each resource that matches the filter criteria specified in the request.</p>", "smithy.api#jsonName" => "matchingResources"}))
    SearchResourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The string to use in a subsequent request to get the next page of results in a paginated response. This value is null if there are no additional pages.</p>", "smithy.api#jsonName" => "nextToken"}))
    SearchResourcesResponse.type = Types::SearchResourcesResponse
    SearchResourcesSimpleCriterion.add_member(:comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesComparator, location_name: 'comparator', traits: {"smithy.api#documentation" => "<p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>", "smithy.api#jsonName" => "comparator"}))
    SearchResourcesSimpleCriterion.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesSimpleCriterionKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The property to use in the condition.</p>", "smithy.api#jsonName" => "key"}))
    SearchResourcesSimpleCriterion.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'values', traits: {"smithy.api#documentation" => "<p>An array that lists one or more values to use in the condition. If you specify multiple values, Amazon Macie uses OR logic to join the values. Valid values for each supported property (key) are:</p> <ul><li><p>ACCOUNT_ID - A string that represents the unique identifier for the Amazon Web Services account that owns the resource.</p></li> <li><p>AUTOMATED_DISCOVERY_MONITORING_STATUS - A string that represents an enumerated value that Macie defines for the <a href=\"https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketmetadata-automateddiscoverymonitoringstatus\">BucketMetadata.automatedDiscoveryMonitoringStatus</a> property of an S3 bucket.</p></li> <li><p>S3_BUCKET_EFFECTIVE_PERMISSION - A string that represents an enumerated value that Macie defines for the <a href=\"https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketpublicaccess-effectivepermission\">BucketPublicAccess.effectivePermission</a> property of an S3 bucket.</p></li> <li><p>S3_BUCKET_NAME - A string that represents the name of an S3 bucket.</p></li> <li><p>S3_BUCKET_SHARED_ACCESS - A string that represents an enumerated value that Macie defines for the <a href=\"https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketmetadata-sharedaccess\">BucketMetadata.sharedAccess</a> property of an S3 bucket.</p></li></ul> <p>Values are case sensitive. Also, Macie doesn't support use of partial values or wildcard characters in values.</p>", "smithy.api#jsonName" => "values"}))
    SearchResourcesSimpleCriterion.type = Types::SearchResourcesSimpleCriterion
    SearchResourcesSimpleCriterionKey.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_ID', traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    SearchResourcesSimpleCriterionKey.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_NAME', traits: {"smithy.api#enumValue" => "S3_BUCKET_NAME"}))
    SearchResourcesSimpleCriterionKey.add_member(:s3_bucket_effective_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_EFFECTIVE_PERMISSION', traits: {"smithy.api#enumValue" => "S3_BUCKET_EFFECTIVE_PERMISSION"}))
    SearchResourcesSimpleCriterionKey.add_member(:s3_bucket_shared_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_SHARED_ACCESS', traits: {"smithy.api#enumValue" => "S3_BUCKET_SHARED_ACCESS"}))
    SearchResourcesSimpleCriterionKey.add_member(:automated_discovery_monitoring_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATED_DISCOVERY_MONITORING_STATUS', traits: {"smithy.api#enumValue" => "AUTOMATED_DISCOVERY_MONITORING_STATUS"}))
    SearchResourcesSortAttributeName.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_ID', traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    SearchResourcesSortAttributeName.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NAME', traits: {"smithy.api#enumValue" => "RESOURCE_NAME"}))
    SearchResourcesSortAttributeName.add_member(:s3_classifiable_object_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_CLASSIFIABLE_OBJECT_COUNT', traits: {"smithy.api#enumValue" => "S3_CLASSIFIABLE_OBJECT_COUNT"}))
    SearchResourcesSortAttributeName.add_member(:s3_classifiable_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_CLASSIFIABLE_SIZE_IN_BYTES', traits: {"smithy.api#enumValue" => "S3_CLASSIFIABLE_SIZE_IN_BYTES"}))
    SearchResourcesSortCriteria.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesSortAttributeName, location_name: 'attributeName', traits: {"smithy.api#documentation" => "<p>The property to sort the results by.</p>", "smithy.api#jsonName" => "attributeName"}))
    SearchResourcesSortCriteria.add_member(:order_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#documentation" => "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>", "smithy.api#jsonName" => "orderBy"}))
    SearchResourcesSortCriteria.type = Types::SearchResourcesSortCriteria
    SearchResourcesTagCriterion.add_member(:comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesComparator, location_name: 'comparator', traits: {"smithy.api#documentation" => "<p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>", "smithy.api#jsonName" => "comparator"}))
    SearchResourcesTagCriterion.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsearchresourcestagcriterionpair, location_name: 'tagValues', traits: {"smithy.api#documentation" => "<p>The tag keys, tag values, or tag key and value pairs to use in the condition.</p>", "smithy.api#jsonName" => "tagValues"}))
    SearchResourcesTagCriterion.type = Types::SearchResourcesTagCriterion
    SearchResourcesTagCriterionPair.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The value for the tag key to use in the condition.</p>", "smithy.api#jsonName" => "key"}))
    SearchResourcesTagCriterionPair.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag value to use in the condition.</p>", "smithy.api#jsonName" => "value"}))
    SearchResourcesTagCriterionPair.type = Types::SearchResourcesTagCriterionPair
    SecurityHubConfiguration.add_member(:publish_classification_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'publishClassificationFindings', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Specifies whether to publish sensitive data findings to Security Hub. If you set this value to true, Amazon Macie automatically publishes all sensitive data findings that weren't suppressed by a findings filter. The default value is false.</p>", "smithy.api#jsonName" => "publishClassificationFindings", "smithy.api#required" => {}}))
    SecurityHubConfiguration.add_member(:publish_policy_findings, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'publishPolicyFindings', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Specifies whether to publish policy findings to Security Hub. If you set this value to true, Amazon Macie automatically publishes all new and updated policy findings that weren't suppressed by a findings filter. The default value is true.</p>", "smithy.api#jsonName" => "publishPolicyFindings", "smithy.api#required" => {}}))
    SecurityHubConfiguration.type = Types::SecurityHubConfiguration
    SensitiveData.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveDataItem)
    SensitiveDataItem.add_member(:category, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveDataItemCategory, location_name: 'category', traits: {"smithy.api#documentation" => "<p>The category of sensitive data that was detected. For example: CREDENTIALS, for credentials data such as private keys or Amazon Web Services secret access keys; FINANCIAL_INFORMATION, for financial data such as credit card numbers; or, PERSONAL_INFORMATION, for personal health information, such as health insurance identification numbers, or personally identifiable information, such as passport numbers.</p>", "smithy.api#jsonName" => "category"}))
    SensitiveDataItem.add_member(:detections, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultDetections, location_name: 'detections', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each type of sensitive data that was detected. Each object reports the number of occurrences of a specific type of sensitive data that was detected, and the location of up to 15 of those occurrences.</p>", "smithy.api#jsonName" => "detections"}))
    SensitiveDataItem.add_member(:total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalCount', traits: {"smithy.api#documentation" => "<p>The total number of occurrences of the sensitive data that was detected.</p>", "smithy.api#jsonName" => "totalCount"}))
    SensitiveDataItem.type = Types::SensitiveDataItem
    SensitiveDataItemCategory.add_member(:financial_information, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINANCIAL_INFORMATION', traits: {"smithy.api#enumValue" => "FINANCIAL_INFORMATION"}))
    SensitiveDataItemCategory.add_member(:personal_information, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERSONAL_INFORMATION', traits: {"smithy.api#enumValue" => "PERSONAL_INFORMATION"}))
    SensitiveDataItemCategory.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREDENTIALS', traits: {"smithy.api#enumValue" => "CREDENTIALS"}))
    SensitiveDataItemCategory.add_member(:custom_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_IDENTIFIER', traits: {"smithy.api#enumValue" => "CUSTOM_IDENTIFIER"}))
    SensitiveDataOccurrences.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SensitiveDataOccurrences.value = Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdetecteddatadetails)
    SensitivityAggregations.add_member(:classifiable_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableSizeInBytes', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of all the objects that Amazon Macie can analyze in the buckets. These objects use a supported storage class and have a file name extension for a supported file or storage format.</p> <p>If versioning is enabled for any of the buckets, this value is based on the size of the latest version of each applicable object in the buckets. This value doesn't reflect the storage size of all versions of all applicable objects in the buckets.</p>", "smithy.api#jsonName" => "classifiableSizeInBytes"}))
    SensitivityAggregations.add_member(:publicly_accessible_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'publiclyAccessibleCount', traits: {"smithy.api#documentation" => "<p>The total number of buckets that are publicly accessible due to a combination of permissions settings for each bucket.</p>", "smithy.api#jsonName" => "publiclyAccessibleCount"}))
    SensitivityAggregations.add_member(:total_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalCount', traits: {"smithy.api#documentation" => "<p>The total number of buckets.</p>", "smithy.api#jsonName" => "totalCount"}))
    SensitivityAggregations.add_member(:total_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalSizeInBytes', traits: {"smithy.api#documentation" => "<p>The total storage size, in bytes, of the buckets.</p> <p>If versioning is enabled for any of the buckets, this value is based on the size of the latest version of each object in the buckets. This value doesn't reflect the storage size of all versions of the objects in the buckets.</p>", "smithy.api#jsonName" => "totalSizeInBytes"}))
    SensitivityAggregations.type = Types::SensitivityAggregations
    SensitivityInspectionTemplateExcludes.add_member(:managed_data_identifier_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'managedDataIdentifierIds', traits: {"smithy.api#documentation" => "<p>An array of unique identifiers, one for each managed data identifier to exclude. To retrieve a list of valid values, use the ListManagedDataIdentifiers operation.</p>", "smithy.api#jsonName" => "managedDataIdentifierIds"}))
    SensitivityInspectionTemplateExcludes.type = Types::SensitivityInspectionTemplateExcludes
    SensitivityInspectionTemplateIncludes.add_member(:allow_list_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'allowListIds', traits: {"smithy.api#documentation" => "<p>An array of unique identifiers, one for each allow list to include.</p>", "smithy.api#jsonName" => "allowListIds"}))
    SensitivityInspectionTemplateIncludes.add_member(:custom_data_identifier_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'customDataIdentifierIds', traits: {"smithy.api#documentation" => "<p>An array of unique identifiers, one for each custom data identifier to include.</p>", "smithy.api#jsonName" => "customDataIdentifierIds"}))
    SensitivityInspectionTemplateIncludes.add_member(:managed_data_identifier_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'managedDataIdentifierIds', traits: {"smithy.api#documentation" => "<p>An array of unique identifiers, one for each managed data identifier to include.</p> <p>Amazon Macie uses these managed data identifiers in addition to managed data identifiers that are subsequently released and recommended for automated sensitive data discovery. To retrieve a list of valid values for the managed data identifiers that are currently available, use the ListManagedDataIdentifiers operation.</p> <para/>", "smithy.api#jsonName" => "managedDataIdentifierIds"}))
    SensitivityInspectionTemplateIncludes.type = Types::SensitivityInspectionTemplateIncludes
    SensitivityInspectionTemplatesEntry.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the sensitivity inspection template.</p>", "smithy.api#jsonName" => "id"}))
    SensitivityInspectionTemplatesEntry.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the sensitivity inspection template: automated-sensitive-data-discovery.</p>", "smithy.api#jsonName" => "name"}))
    SensitivityInspectionTemplatesEntry.type = Types::SensitivityInspectionTemplatesEntry
    ServerSideEncryption.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType', traits: {"smithy.api#documentation" => "<p>The server-side encryption algorithm that's used when storing data in the bucket or object. If default encryption settings aren't configured for the bucket or the object isn't encrypted using server-side encryption, this value is NONE.</p>", "smithy.api#jsonName" => "encryptionType"}))
    ServerSideEncryption.add_member(:kms_master_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kmsMasterKeyId', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) or unique identifier (key ID) for the KMS key that's used to encrypt data in the bucket or the object. This value is null if an KMS key isn't used to encrypt the data.</p>", "smithy.api#jsonName" => "kmsMasterKeyId"}))
    ServerSideEncryption.type = Types::ServerSideEncryption
    ServiceLimit.add_member(:is_service_limited, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isServiceLimited', traits: {"smithy.api#documentation" => "<p>Specifies whether the account has met the quota that corresponds to the metric specified by the UsageByAccount.type field in the response.</p>", "smithy.api#jsonName" => "isServiceLimited"}))
    ServiceLimit.add_member(:unit, Smithy::Schema::Shapes::ShapeRef.new(shape: Unit, location_name: 'unit', traits: {"smithy.api#documentation" => "<p>The unit of measurement for the value specified by the value field.</p>", "smithy.api#jsonName" => "unit"}))
    ServiceLimit.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value for the metric specified by the UsageByAccount.type field in the response.</p>", "smithy.api#jsonName" => "value"}))
    ServiceLimit.type = Types::ServiceLimit
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The explanation of the error that occurred.</p>", "smithy.api#jsonName" => "message"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionContext.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionContextAttributes, location_name: 'attributes', traits: {"smithy.api#documentation" => "<p>The date and time when the credentials were issued, and whether the credentials were authenticated with a multi-factor authentication (MFA) device.</p>", "smithy.api#jsonName" => "attributes"}))
    SessionContext.add_member(:session_issuer, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionIssuer, location_name: 'sessionIssuer', traits: {"smithy.api#documentation" => "<p>The source and type of credentials that were issued to the entity.</p>", "smithy.api#jsonName" => "sessionIssuer"}))
    SessionContext.type = Types::SessionContext
    SessionContextAttributes.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationDate', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and ISO 8601 format, when the credentials were issued.</p>", "smithy.api#jsonName" => "creationDate"}))
    SessionContextAttributes.add_member(:mfa_authenticated, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'mfaAuthenticated', traits: {"smithy.api#documentation" => "<p>Specifies whether the credentials were authenticated with a multi-factor authentication (MFA) device.</p>", "smithy.api#jsonName" => "mfaAuthenticated"}))
    SessionContextAttributes.type = Types::SessionContextAttributes
    SessionIssuer.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account that owns the entity that was used to get the credentials.</p>", "smithy.api#jsonName" => "accountId"}))
    SessionIssuer.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the source account, Identity and Access Management (IAM) user, or role that was used to get the credentials.</p>", "smithy.api#jsonName" => "arn"}))
    SessionIssuer.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the entity that was used to get the credentials.</p>", "smithy.api#jsonName" => "principalId"}))
    SessionIssuer.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The source of the temporary security credentials, such as Root, IAMUser, or Role.</p>", "smithy.api#jsonName" => "type"}))
    SessionIssuer.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userName', traits: {"smithy.api#documentation" => "<p>The name or alias of the user or role that issued the session. This value is null if the credentials were obtained from a root account that doesn't have an alias.</p>", "smithy.api#jsonName" => "userName"}))
    SessionIssuer.type = Types::SessionIssuer
    Severity.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p>The qualitative representation of the finding's severity, ranging from Low (least severe) to High (most severe).</p>", "smithy.api#jsonName" => "description"}))
    Severity.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'score', traits: {"smithy.api#documentation" => "<p>The numerical representation of the finding's severity, ranging from 1 (least severe) to 3 (most severe).</p>", "smithy.api#jsonName" => "score"}))
    Severity.type = Types::Severity
    SeverityDescription.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Low', traits: {"smithy.api#enumValue" => "Low"}))
    SeverityDescription.add_member(:medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Medium', traits: {"smithy.api#enumValue" => "Medium"}))
    SeverityDescription.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'High', traits: {"smithy.api#enumValue" => "High"}))
    SeverityLevel.add_member(:occurrences_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'occurrencesThreshold', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The minimum number of occurrences of text that must match the custom data identifier's detection criteria in order to produce a finding with the specified severity (severity).</p>", "smithy.api#jsonName" => "occurrencesThreshold", "smithy.api#required" => {}}))
    SeverityLevel.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIdentifierSeverity, location_name: 'severity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The severity to assign to a finding: if the number of occurrences is greater than or equal to the specified threshold (occurrencesThreshold); and, if applicable, the number of occurrences is less than the threshold for the next consecutive severity level for the custom data identifier, moving from LOW to HIGH.</p>", "smithy.api#jsonName" => "severity", "smithy.api#required" => {}}))
    SeverityLevel.type = Types::SeverityLevel
    SeverityLevelList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevel)
    SharedAccess.add_member(:external, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL', traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    SharedAccess.add_member(:internal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL', traits: {"smithy.api#enumValue" => "INTERNAL"}))
    SharedAccess.add_member(:not_shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_SHARED', traits: {"smithy.api#enumValue" => "NOT_SHARED"}))
    SharedAccess.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    SimpleCriterionForJob.add_member(:comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: JobComparator, location_name: 'comparator', traits: {"smithy.api#documentation" => "<p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>", "smithy.api#jsonName" => "comparator"}))
    SimpleCriterionForJob.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleCriterionKeyForJob, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The property to use in the condition.</p>", "smithy.api#jsonName" => "key"}))
    SimpleCriterionForJob.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'values', traits: {"smithy.api#documentation" => "<p>An array that lists one or more values to use in the condition. If you specify multiple values, Amazon Macie uses OR logic to join the values. Valid values for each supported property (key) are:</p> <ul><li><p>ACCOUNT_ID - A string that represents the unique identifier for the Amazon Web Services account that owns the bucket.</p></li> <li><p>S3_BUCKET_EFFECTIVE_PERMISSION - A string that represents an enumerated value that Macie defines for the <a href=\"https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketpublicaccess-effectivepermission\">BucketPublicAccess.effectivePermission</a> property of a bucket.</p></li> <li><p>S3_BUCKET_NAME - A string that represents the name of a bucket.</p></li> <li><p>S3_BUCKET_SHARED_ACCESS - A string that represents an enumerated value that Macie defines for the <a href=\"https://docs.aws.amazon.com/macie/latest/APIReference/datasources-s3.html#datasources-s3-prop-bucketmetadata-sharedaccess\">BucketMetadata.sharedAccess</a> property of a bucket.</p></li></ul> <p>Values are case sensitive. Also, Macie doesn't support use of partial values or wildcard characters in these values.</p>", "smithy.api#jsonName" => "values"}))
    SimpleCriterionForJob.type = Types::SimpleCriterionForJob
    SimpleCriterionKeyForJob.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_ID', traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    SimpleCriterionKeyForJob.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_NAME', traits: {"smithy.api#enumValue" => "S3_BUCKET_NAME"}))
    SimpleCriterionKeyForJob.add_member(:s3_bucket_effective_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_EFFECTIVE_PERMISSION', traits: {"smithy.api#enumValue" => "S3_BUCKET_EFFECTIVE_PERMISSION"}))
    SimpleCriterionKeyForJob.add_member(:s3_bucket_shared_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_SHARED_ACCESS', traits: {"smithy.api#enumValue" => "S3_BUCKET_SHARED_ACCESS"}))
    SimpleScopeTerm.add_member(:comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: JobComparator, location_name: 'comparator', traits: {"smithy.api#documentation" => "<p>The operator to use in the condition. Valid values for each supported property (key) are:</p> <ul><li><p>OBJECT_EXTENSION - EQ (equals) or NE (not equals)</p></li> <li><p>OBJECT_KEY - STARTS_WITH</p></li> <li><p>OBJECT_LAST_MODIFIED_DATE - EQ (equals), GT (greater than), GTE (greater than or equals), LT (less than), LTE (less than or equals), or NE (not equals)</p></li> <li><p>OBJECT_SIZE - EQ (equals), GT (greater than), GTE (greater than or equals), LT (less than), LTE (less than or equals), or NE (not equals)</p></li></ul>", "smithy.api#jsonName" => "comparator"}))
    SimpleScopeTerm.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeFilterKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The object property to use in the condition.</p>", "smithy.api#jsonName" => "key"}))
    SimpleScopeTerm.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'values', traits: {"smithy.api#documentation" => "<p>An array that lists the values to use in the condition. If the value for the key property is OBJECT_EXTENSION or OBJECT_KEY, this array can specify multiple values and Amazon Macie uses OR logic to join the values. Otherwise, this array can specify only one value.</p> <p>Valid values for each supported property (key) are:</p> <ul><li><p>OBJECT_EXTENSION - A string that represents the file name extension of an object. For example: docx or pdf</p></li> <li><p>OBJECT_KEY - A string that represents the key prefix (folder name or path) of an object. For example: logs or awslogs/eventlogs. This value applies a condition to objects whose keys (names) begin with the specified value.</p></li> <li><p>OBJECT_LAST_MODIFIED_DATE - The date and time (in UTC and extended ISO 8601 format) when an object was created or last changed, whichever is latest. For example: 2023-09-24T14:31:13Z</p></li> <li><p>OBJECT_SIZE - An integer that represents the storage size (in bytes) of an object.</p></li></ul> <p>Macie doesn't support use of wildcard characters in these values. Also, string values are case sensitive.</p>", "smithy.api#jsonName" => "values"}))
    SimpleScopeTerm.type = Types::SimpleScopeTerm
    SortCriteria.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'attributeName', traits: {"smithy.api#documentation" => "<p>The name of the property to sort the results by. Valid values are: count, createdAt, policyDetails.action.apiCallDetails.firstSeen, policyDetails.action.apiCallDetails.lastSeen, resourcesAffected, severity.score, type, and updatedAt.</p>", "smithy.api#jsonName" => "attributeName"}))
    SortCriteria.add_member(:order_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#documentation" => "<p>The sort order to apply to the results, based on the value for the property specified by the attributeName property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>", "smithy.api#jsonName" => "orderBy"}))
    SortCriteria.type = Types::SortCriteria
    Statistics.add_member(:approximate_number_of_objects_to_process, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'approximateNumberOfObjectsToProcess', traits: {"smithy.api#documentation" => "<p>The approximate number of objects that the job has yet to process during its current run.</p>", "smithy.api#jsonName" => "approximateNumberOfObjectsToProcess"}))
    Statistics.add_member(:number_of_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'numberOfRuns', traits: {"smithy.api#documentation" => "<p>The number of times that the job has run.</p>", "smithy.api#jsonName" => "numberOfRuns"}))
    Statistics.type = Types::Statistics
    StorageClass.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    StorageClass.add_member(:reduced_redundancy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDUCED_REDUNDANCY', traits: {"smithy.api#enumValue" => "REDUCED_REDUNDANCY"}))
    StorageClass.add_member(:standard_ia, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD_IA', traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    StorageClass.add_member(:intelligent_tiering, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTELLIGENT_TIERING', traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    StorageClass.add_member(:deep_archive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEEP_ARCHIVE', traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    StorageClass.add_member(:onezone_ia, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONEZONE_IA', traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    StorageClass.add_member(:glacier, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLACIER', traits: {"smithy.api#enumValue" => "GLACIER"}))
    StorageClass.add_member(:glacier_ir, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLACIER_IR', traits: {"smithy.api#enumValue" => "GLACIER_IR"}))
    StorageClass.add_member(:outposts, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUTPOSTS', traits: {"smithy.api#enumValue" => "OUTPOSTS"}))
    SuppressDataIdentifier.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the custom data identifier or managed data identifier that detected the type of sensitive data to exclude from the score.</p>", "smithy.api#jsonName" => "id"}))
    SuppressDataIdentifier.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataIdentifierType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of data identifier that detected the sensitive data. Possible values are: CUSTOM, for a custom data identifier; and, MANAGED, for a managed data identifier.</p>", "smithy.api#jsonName" => "type"}))
    SuppressDataIdentifier.type = Types::SuppressDataIdentifier
    TagCriterionForJob.add_member(:comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: JobComparator, location_name: 'comparator', traits: {"smithy.api#documentation" => "<p>The operator to use in the condition. Valid values are EQ (equals) and NE (not equals).</p>", "smithy.api#jsonName" => "comparator"}))
    TagCriterionForJob.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoftagcriterionpairforjob, location_name: 'tagValues', traits: {"smithy.api#documentation" => "<p>The tag keys, tag values, or tag key and value pairs to use in the condition.</p>", "smithy.api#jsonName" => "tagValues"}))
    TagCriterionForJob.type = Types::TagCriterionForJob
    TagCriterionPairForJob.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The value for the tag key to use in the condition.</p>", "smithy.api#jsonName" => "key"}))
    TagCriterionPairForJob.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag value to use in the condition.</p>", "smithy.api#jsonName" => "value"}))
    TagCriterionPairForJob.type = Types::TagCriterionPairForJob
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A map of key-value pairs that specifies the tags to associate with the resource.</p> <p>A resource can have a maximum of 50 tags. Each tag consists of a tag key and an associated tag value. The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>", "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagScopeTerm.add_member(:comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: JobComparator, location_name: 'comparator', traits: {"smithy.api#documentation" => "<p>The operator to use in the condition. Valid values are EQ (equals) or NE (not equals).</p>", "smithy.api#jsonName" => "comparator"}))
    TagScopeTerm.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The object property to use in the condition. The only valid value is TAG.</p>", "smithy.api#jsonName" => "key"}))
    TagScopeTerm.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: Listoftagvaluepair, location_name: 'tagValues', traits: {"smithy.api#documentation" => "<p>The tag keys or tag key and value pairs to use in the condition. To specify only tag keys in a condition, specify the keys in this array and set the value for each associated tag value to an empty string.</p>", "smithy.api#jsonName" => "tagValues"}))
    TagScopeTerm.add_member(:target, Smithy::Schema::Shapes::ShapeRef.new(shape: TagTarget, location_name: 'target', traits: {"smithy.api#documentation" => "<p>The type of object to apply the condition to.</p>", "smithy.api#jsonName" => "target"}))
    TagScopeTerm.type = Types::TagScopeTerm
    TagTarget.add_member(:s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT', traits: {"smithy.api#enumValue" => "S3_OBJECT"}))
    TagValuePair.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The value for the tag key to use in the condition.</p>", "smithy.api#jsonName" => "key"}))
    TagValuePair.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag value, associated with the specified tag key (key), to use in the condition. To specify only a tag key for a condition, specify the tag key for the key property and set this value to an empty string.</p>", "smithy.api#jsonName" => "value"}))
    TagValuePair.type = Types::TagValuePair
    TestCustomDataIdentifierRequest.add_member(:ignore_words, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ignoreWords', traits: {"smithy.api#documentation" => "<p>An array that lists specific character sequences (<i>ignore words</i>) to exclude from the results. If the text matched by the regular expression contains any string in this array, Amazon Macie ignores it. The array can contain as many as 10 ignore words. Each ignore word can contain 4-90 UTF-8 characters. Ignore words are case sensitive.</p>", "smithy.api#jsonName" => "ignoreWords"}))
    TestCustomDataIdentifierRequest.add_member(:keywords, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'keywords', traits: {"smithy.api#documentation" => "<p>An array that lists specific character sequences (<i>keywords</i>), one of which must precede and be within proximity (maximumMatchDistance) of the regular expression to match. The array can contain as many as 50 keywords. Each keyword can contain 3-90 UTF-8 characters. Keywords aren't case sensitive.</p>", "smithy.api#jsonName" => "keywords"}))
    TestCustomDataIdentifierRequest.add_member(:maximum_match_distance, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maximumMatchDistance', traits: {"smithy.api#documentation" => "<p>The maximum number of characters that can exist between the end of at least one complete character sequence specified by the keywords array and the end of the text that matches the regex pattern. If a complete keyword precedes all the text that matches the pattern and the keyword is within the specified distance, Amazon Macie includes the result. The distance can be 1-300 characters. The default value is 50.</p>", "smithy.api#jsonName" => "maximumMatchDistance"}))
    TestCustomDataIdentifierRequest.add_member(:regex, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regex', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The regular expression (<i>regex</i>) that defines the pattern to match. The expression can contain as many as 512 characters.</p>", "smithy.api#jsonName" => "regex", "smithy.api#required" => {}}))
    TestCustomDataIdentifierRequest.add_member(:sample_text, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sampleText', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The sample text to inspect by using the custom data identifier. The text can contain as many as 1,000 characters.</p>", "smithy.api#jsonName" => "sampleText", "smithy.api#required" => {}}))
    TestCustomDataIdentifierRequest.type = Types::TestCustomDataIdentifierRequest
    TestCustomDataIdentifierResponse.add_member(:match_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'matchCount', traits: {"smithy.api#documentation" => "<p>The number of occurrences of sample text that matched the criteria specified by the custom data identifier.</p>", "smithy.api#jsonName" => "matchCount"}))
    TestCustomDataIdentifierResponse.type = Types::TestCustomDataIdentifierResponse
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The explanation of the error that occurred.</p>", "smithy.api#jsonName" => "message"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeRange.add_member(:month_to_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTH_TO_DATE', traits: {"smithy.api#enumValue" => "MONTH_TO_DATE"}))
    TimeRange.add_member(:past_30_days, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAST_30_DAYS', traits: {"smithy.api#enumValue" => "PAST_30_DAYS"}))
    Type.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    Type.add_member(:aes256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES256', traits: {"smithy.api#enumValue" => "AES256"}))
    Type.add_member(:aws_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_kms', traits: {"smithy.api#enumValue" => "aws:kms"}))
    Type.add_member(:aws_kms_dsse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_kms_dsse', traits: {"smithy.api#enumValue" => "aws:kms:dsse"}))
    UnavailabilityReasonCode.add_member(:object_exceeds_size_quota, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_EXCEEDS_SIZE_QUOTA', traits: {"smithy.api#enumValue" => "OBJECT_EXCEEDS_SIZE_QUOTA"}))
    UnavailabilityReasonCode.add_member(:unsupported_object_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_OBJECT_TYPE', traits: {"smithy.api#enumValue" => "UNSUPPORTED_OBJECT_TYPE"}))
    UnavailabilityReasonCode.add_member(:unsupported_finding_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_FINDING_TYPE', traits: {"smithy.api#enumValue" => "UNSUPPORTED_FINDING_TYPE"}))
    UnavailabilityReasonCode.add_member(:invalid_classification_result, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CLASSIFICATION_RESULT', traits: {"smithy.api#enumValue" => "INVALID_CLASSIFICATION_RESULT"}))
    UnavailabilityReasonCode.add_member(:object_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_UNAVAILABLE', traits: {"smithy.api#enumValue" => "OBJECT_UNAVAILABLE"}))
    UnavailabilityReasonCode.add_member(:account_not_in_organization, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_NOT_IN_ORGANIZATION', traits: {"smithy.api#enumValue" => "ACCOUNT_NOT_IN_ORGANIZATION"}))
    UnavailabilityReasonCode.add_member(:missing_get_member_permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_GET_MEMBER_PERMISSION', traits: {"smithy.api#enumValue" => "MISSING_GET_MEMBER_PERMISSION"}))
    UnavailabilityReasonCode.add_member(:role_too_permissive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLE_TOO_PERMISSIVE', traits: {"smithy.api#enumValue" => "ROLE_TOO_PERMISSIVE"}))
    UnavailabilityReasonCode.add_member(:member_role_too_permissive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMBER_ROLE_TOO_PERMISSIVE', traits: {"smithy.api#enumValue" => "MEMBER_ROLE_TOO_PERMISSIVE"}))
    UnavailabilityReasonCode.add_member(:invalid_result_signature, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESULT_SIGNATURE', traits: {"smithy.api#enumValue" => "INVALID_RESULT_SIGNATURE"}))
    UnavailabilityReasonCode.add_member(:result_not_signed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESULT_NOT_SIGNED', traits: {"smithy.api#enumValue" => "RESULT_NOT_SIGNED"}))
    Unit.add_member(:terabytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERABYTES', traits: {"smithy.api#enumValue" => "TERABYTES"}))
    UnprocessableEntityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of error that occurred and prevented Amazon Macie from retrieving occurrences of sensitive data reported by the finding. Possible values are:</p> <ul><li><p>ACCOUNT_NOT_IN_ORGANIZATION - The affected account isn't currently part of your organization. Or the account is part of your organization but Macie isn't currently enabled for the account. You're not allowed to access the affected S3 object by using Macie.</p></li> <li><p>INVALID_CLASSIFICATION_RESULT - There isn't a corresponding sensitive data discovery result for the finding. Or the corresponding sensitive data discovery result isn't available in the current Amazon Web Services Region, is malformed or corrupted, or uses an unsupported storage format. Macie can't verify the location of the sensitive data to retrieve.</p></li> <li><p>INVALID_RESULT_SIGNATURE - The corresponding sensitive data discovery result is stored in an S3 object that wasn't signed by Macie. Macie can't verify the integrity and authenticity of the sensitive data discovery result. Therefore, Macie can't verify the location of the sensitive data to retrieve.</p></li> <li><p>MEMBER_ROLE_TOO_PERMISSIVE - The trust or permissions policy for the IAM role in the affected member account doesn't meet Macie requirements for restricting access to the role. Or the role's trust policy doesn't specify the correct external ID for your organization. Macie can't assume the role to retrieve the sensitive data.</p></li> <li><p>MISSING_GET_MEMBER_PERMISSION - You're not allowed to retrieve information about the association between your account and the affected account. Macie can't determine whether you’re allowed to access the affected S3 object as the delegated Macie administrator for the affected account.</p></li> <li><p>OBJECT_EXCEEDS_SIZE_QUOTA - The storage size of the affected S3 object exceeds the size quota for retrieving occurrences of sensitive data from this type of file.</p></li> <li><p>OBJECT_UNAVAILABLE - The affected S3 object isn't available. The object was renamed, moved, deleted, or changed after Macie created the finding. Or the object is encrypted with an KMS key that isn’t available. For example, the key is disabled, is scheduled for deletion, or was deleted.</p></li> <li><p>RESULT_NOT_SIGNED - The corresponding sensitive data discovery result is stored in an S3 object that hasn't been signed. Macie can't verify the integrity and authenticity of the sensitive data discovery result. Therefore, Macie can't verify the location of the sensitive data to retrieve.</p></li> <li><p>ROLE_TOO_PERMISSIVE - Your account is configured to retrieve occurrences of sensitive data by using an IAM role whose trust or permissions policy doesn't meet Macie requirements for restricting access to the role. Macie can’t assume the role to retrieve the sensitive data.</p></li> <li><p>UNSUPPORTED_FINDING_TYPE - The specified finding isn't a sensitive data finding.</p></li> <li><p>UNSUPPORTED_OBJECT_TYPE - The affected S3 object uses a file or storage format that Macie doesn't support for retrieving occurrences of sensitive data.</p></li></ul>", "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UnprocessedAccount.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID for the account that the request applies to.</p>", "smithy.api#jsonName" => "accountId"}))
    UnprocessedAccount.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p>The source of the issue or delay in processing the request.</p>", "smithy.api#jsonName" => "errorCode"}))
    UnprocessedAccount.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>The reason why the request hasn't been processed.</p>", "smithy.api#jsonName" => "errorMessage"}))
    UnprocessedAccount.type = Types::UnprocessedAccount
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'tagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>One or more tags (keys) to remove from the resource. In an HTTP request to remove multiple tags, append the tagKeys parameter and argument for each tag to remove, separated by an ampersand (&amp;).</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAllowListRequest.add_member(:criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListCriteria, location_name: 'criteria', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The criteria that specify the text or text pattern to ignore. The criteria can be the location and name of an S3 object that lists specific text to ignore (s3WordsList), or a regular expression that defines a text pattern to ignore (regex).</p> <p>You can change a list's underlying criteria, such as the name of the S3 object or the regular expression to use. However, you can't change the type from s3WordsList to regex or the other way around.</p>", "smithy.api#jsonName" => "criteria", "smithy.api#required" => {}}))
    UpdateAllowListRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max512patternss, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A custom description of the allow list. The description can contain as many as 512 characters.</p>", "smithy.api#jsonName" => "description"}))
    UpdateAllowListRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAllowListRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128pattern, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A custom name for the allow list. The name can contain as many as 128 characters.</p>", "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    UpdateAllowListRequest.type = Types::UpdateAllowListRequest
    UpdateAllowListResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the allow list.</p>", "smithy.api#jsonName" => "arn"}))
    UpdateAllowListResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin22max22patternaz0922, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the allow list.</p>", "smithy.api#jsonName" => "id"}))
    UpdateAllowListResponse.type = Types::UpdateAllowListResponse
    UpdateAutomatedDiscoveryConfigurationRequest.add_member(:auto_enable_organization_members, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoEnableMode, location_name: 'autoEnableOrganizationMembers', traits: {"smithy.api#documentation" => "<p>Specifies whether to automatically enable automated sensitive data discovery for accounts in the organization. Valid values are: ALL (default), enable it for all existing accounts and new member accounts; NEW, enable it only for new member accounts; and, NONE, don't enable it for any accounts.</p> <p>If you specify NEW or NONE, automated sensitive data discovery continues to be enabled for any existing accounts that it's currently enabled for. To enable or disable it for individual member accounts, specify NEW or NONE, and then enable or disable it for each account by using the BatchUpdateAutomatedDiscoveryAccounts operation.</p>", "smithy.api#jsonName" => "autoEnableOrganizationMembers"}))
    UpdateAutomatedDiscoveryConfigurationRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryStatus, location_name: 'status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The new status of automated sensitive data discovery for the organization or account. Valid values are: ENABLED, start or resume all automated sensitive data discovery activities; and, DISABLED, stop performing all automated sensitive data discovery activities.</p> <p>If you specify DISABLED for an administrator account, you also disable automated sensitive data discovery for all member accounts in the organization.</p>", "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    UpdateAutomatedDiscoveryConfigurationRequest.type = Types::UpdateAutomatedDiscoveryConfigurationRequest
    UpdateAutomatedDiscoveryConfigurationResponse.type = Types::UpdateAutomatedDiscoveryConfigurationResponse
    UpdateClassificationJobRequest.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the classification job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClassificationJobRequest.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The new status for the job. Valid values are:</p> <ul><li><p>CANCELLED - Stops the job permanently and cancels it. This value is valid only if the job's current status is IDLE, PAUSED, RUNNING, or USER_PAUSED.</p> <p>If you specify this value and the job's current status is RUNNING, Amazon Macie immediately begins to stop all processing tasks for the job. You can't resume or restart a job after you cancel it.</p></li> <li><p>RUNNING - Resumes the job. This value is valid only if the job's current status is USER_PAUSED.</p> <p>If you paused the job while it was actively running and you specify this value less than 30 days after you paused the job, Macie immediately resumes processing from the point where you paused the job. Otherwise, Macie resumes the job according to the schedule and other settings for the job.</p></li> <li><p>USER_PAUSED - Pauses the job temporarily. This value is valid only if the job's current status is IDLE, PAUSED, or RUNNING. If you specify this value and the job's current status is RUNNING, Macie immediately begins to pause all processing tasks for the job.</p> <p>If you pause a one-time job and you don't resume it within 30 days, the job expires and Macie cancels the job. If you pause a recurring job when its status is RUNNING and you don't resume it within 30 days, the job run expires and Macie cancels the run. To check the expiration date, refer to the UserPausedDetails.jobExpiresAt property.</p></li></ul>", "smithy.api#jsonName" => "jobStatus", "smithy.api#required" => {}}))
    UpdateClassificationJobRequest.type = Types::UpdateClassificationJobRequest
    UpdateClassificationJobResponse.type = Types::UpdateClassificationJobResponse
    UpdateClassificationScopeRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClassificationScopeRequest.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ClassificationScopeUpdate, location_name: 's3', traits: {"smithy.api#documentation" => "<p>The S3 buckets to add or remove from the exclusion list defined by the classification scope.</p>", "smithy.api#jsonName" => "s3"}))
    UpdateClassificationScopeRequest.type = Types::UpdateClassificationScopeRequest
    UpdateClassificationScopeResponse.type = Types::UpdateClassificationScopeResponse
    UpdateFindingsFilterRequest.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: 'action', traits: {"smithy.api#documentation" => "<p>The action to perform on findings that match the filter criteria (findingCriteria). Valid values are: ARCHIVE, suppress (automatically archive) the findings; and, NOOP, don't perform any action on the findings.</p>", "smithy.api#jsonName" => "action"}))
    UpdateFindingsFilterRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive token that you provide to ensure the idempotency of the request.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    UpdateFindingsFilterRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A custom description of the filter. The description can contain as many as 512 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the description of a filter. Other users of your account might be able to see this description, depending on the actions that they're allowed to perform in Amazon Macie.</p>", "smithy.api#jsonName" => "description"}))
    UpdateFindingsFilterRequest.add_member(:finding_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCriteria, location_name: 'findingCriteria', traits: {"smithy.api#documentation" => "<p>The criteria to use to filter findings.</p>", "smithy.api#jsonName" => "findingCriteria"}))
    UpdateFindingsFilterRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFindingsFilterRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>A custom name for the filter. The name must contain at least 3 characters and can contain as many as 64 characters.</p> <p>We strongly recommend that you avoid including any sensitive data in the name of a filter. Other users of your account might be able to see this name, depending on the actions that they're allowed to perform in Amazon Macie.</p>", "smithy.api#jsonName" => "name"}))
    UpdateFindingsFilterRequest.add_member(:position, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'position', traits: {"smithy.api#documentation" => "<p>The position of the filter in the list of saved filters on the Amazon Macie console. This value also determines the order in which the filter is applied to findings, relative to other filters that are also applied to the findings.</p>", "smithy.api#jsonName" => "position"}))
    UpdateFindingsFilterRequest.type = Types::UpdateFindingsFilterRequest
    UpdateFindingsFilterResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the filter that was updated.</p>", "smithy.api#jsonName" => "arn"}))
    UpdateFindingsFilterResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the filter that was updated.</p>", "smithy.api#jsonName" => "id"}))
    UpdateFindingsFilterResponse.type = Types::UpdateFindingsFilterResponse
    UpdateMacieSessionRequest.add_member(:finding_publishing_frequency, Smithy::Schema::Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: 'findingPublishingFrequency', traits: {"smithy.api#documentation" => "<p>Specifies how often to publish updates to policy findings for the account. This includes publishing updates to Security Hub and Amazon EventBridge (formerly Amazon CloudWatch Events).</p>", "smithy.api#jsonName" => "findingPublishingFrequency"}))
    UpdateMacieSessionRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MacieStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Specifies a new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>", "smithy.api#jsonName" => "status"}))
    UpdateMacieSessionRequest.type = Types::UpdateMacieSessionRequest
    UpdateMacieSessionResponse.type = Types::UpdateMacieSessionResponse
    UpdateMemberSessionRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMemberSessionRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: MacieStatus, location_name: 'status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Specifies the new status for the account. Valid values are: ENABLED, resume all Amazon Macie activities for the account; and, PAUSED, suspend all Macie activities for the account.</p>", "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    UpdateMemberSessionRequest.type = Types::UpdateMemberSessionRequest
    UpdateMemberSessionResponse.type = Types::UpdateMemberSessionResponse
    UpdateOrganizationConfigurationRequest.add_member(:auto_enable, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'autoEnable', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Specifies whether to enable Amazon Macie automatically for accounts that are added to the organization in Organizations.</p>", "smithy.api#jsonName" => "autoEnable", "smithy.api#required" => {}}))
    UpdateOrganizationConfigurationRequest.type = Types::UpdateOrganizationConfigurationRequest
    UpdateOrganizationConfigurationResponse.type = Types::UpdateOrganizationConfigurationResponse
    UpdateResourceProfileDetectionsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket that the request applies to.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UpdateResourceProfileDetectionsRequest.add_member(:suppress_data_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsuppressdataidentifier, location_name: 'suppressDataIdentifiers', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each custom data identifier or managed data identifier that detected a type of sensitive data to exclude from the bucket's score. To include all sensitive data types in the score, don't specify any values for this array.</p>", "smithy.api#jsonName" => "suppressDataIdentifiers"}))
    UpdateResourceProfileDetectionsRequest.type = Types::UpdateResourceProfileDetectionsRequest
    UpdateResourceProfileDetectionsResponse.type = Types::UpdateResourceProfileDetectionsResponse
    UpdateResourceProfileRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the S3 bucket that the request applies to.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UpdateResourceProfileRequest.add_member(:sensitivity_score_override, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sensitivityScoreOverride', traits: {"smithy.api#documentation" => "<p>The new sensitivity score for the bucket. Valid values are: 100, assign the maximum score and apply the <i>Sensitive</i> label to the bucket; and, null (empty), assign a score that Amazon Macie calculates automatically after you submit the request.</p>", "smithy.api#jsonName" => "sensitivityScoreOverride"}))
    UpdateResourceProfileRequest.type = Types::UpdateResourceProfileRequest
    UpdateResourceProfileResponse.type = Types::UpdateResourceProfileResponse
    UpdateRetrievalConfiguration.add_member(:retrieval_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalMode, location_name: 'retrievalMode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The access method to use when retrieving sensitive data from affected S3 objects. Valid values are: ASSUME_ROLE, assume an IAM role that is in the affected Amazon Web Services account and delegates access to Amazon Macie; and, CALLER_CREDENTIALS, use the credentials of the IAM user who requests the sensitive data. If you specify ASSUME_ROLE, also specify the name of an existing IAM role for Macie to assume (roleName).</p> <important><p>If you change this value from ASSUME_ROLE to CALLER_CREDENTIALS for an existing configuration, Macie permanently deletes the external ID and role name currently specified for the configuration. These settings can't be recovered after they're deleted.</p></important>", "smithy.api#jsonName" => "retrievalMode", "smithy.api#required" => {}}))
    UpdateRetrievalConfiguration.add_member(:role_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patternw, location_name: 'roleName', traits: {"smithy.api#documentation" => "<p>The name of the IAM role that is in the affected Amazon Web Services account and Amazon Macie is allowed to assume when retrieving sensitive data from affected S3 objects for the account. The trust and permissions policies for the role must meet all requirements for Macie to assume the role.</p>", "smithy.api#jsonName" => "roleName"}))
    UpdateRetrievalConfiguration.type = Types::UpdateRetrievalConfiguration
    UpdateRevealConfigurationRequest.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RevealConfiguration, location_name: 'configuration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The KMS key to use to encrypt the sensitive data, and the status of the configuration for the Amazon Macie account.</p>", "smithy.api#jsonName" => "configuration", "smithy.api#required" => {}}))
    UpdateRevealConfigurationRequest.add_member(:retrieval_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRetrievalConfiguration, location_name: 'retrievalConfiguration', traits: {"smithy.api#documentation" => "<p>The access method and settings to use when retrieving the sensitive data.</p>", "smithy.api#jsonName" => "retrievalConfiguration"}))
    UpdateRevealConfigurationRequest.type = Types::UpdateRevealConfigurationRequest
    UpdateRevealConfigurationResponse.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RevealConfiguration, location_name: 'configuration', traits: {"smithy.api#documentation" => "<p>The KMS key to use to encrypt the sensitive data, and the status of the configuration for the Amazon Macie account.</p>", "smithy.api#jsonName" => "configuration"}))
    UpdateRevealConfigurationResponse.add_member(:retrieval_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalConfiguration, location_name: 'retrievalConfiguration', traits: {"smithy.api#documentation" => "<p>The access method and settings to use when retrieving the sensitive data.</p>", "smithy.api#jsonName" => "retrievalConfiguration"}))
    UpdateRevealConfigurationResponse.type = Types::UpdateRevealConfigurationResponse
    UpdateSensitivityInspectionTemplateRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A custom description of the template. The description can contain as many as 200 characters.</p>", "smithy.api#jsonName" => "description"}))
    UpdateSensitivityInspectionTemplateRequest.add_member(:excludes, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateExcludes, location_name: 'excludes', traits: {"smithy.api#documentation" => "<p>The managed data identifiers to explicitly exclude (not use) when performing automated sensitive data discovery.</p> <p>To exclude an allow list or custom data identifier that's currently included by the template, update the values for the SensitivityInspectionTemplateIncludes.allowListIds and SensitivityInspectionTemplateIncludes.customDataIdentifierIds properties, respectively.</p>", "smithy.api#jsonName" => "excludes"}))
    UpdateSensitivityInspectionTemplateRequest.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Macie resource that the request applies to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSensitivityInspectionTemplateRequest.add_member(:includes, Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateIncludes, location_name: 'includes', traits: {"smithy.api#documentation" => "<p>The allow lists, custom data identifiers, and managed data identifiers to explicitly include (use) when performing automated sensitive data discovery.</p>", "smithy.api#jsonName" => "includes"}))
    UpdateSensitivityInspectionTemplateRequest.type = Types::UpdateSensitivityInspectionTemplateRequest
    UpdateSensitivityInspectionTemplateResponse.type = Types::UpdateSensitivityInspectionTemplateResponse
    UsageByAccount.add_member(:currency, Smithy::Schema::Shapes::ShapeRef.new(shape: Currency, location_name: 'currency', traits: {"smithy.api#documentation" => "<p>The type of currency that the value for the metric (estimatedCost) is reported in.</p>", "smithy.api#jsonName" => "currency"}))
    UsageByAccount.add_member(:estimated_cost, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'estimatedCost', traits: {"smithy.api#documentation" => "<p>The estimated value for the metric.</p>", "smithy.api#jsonName" => "estimatedCost"}))
    UsageByAccount.add_member(:service_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimit, location_name: 'serviceLimit', traits: {"smithy.api#documentation" => "<p>The current value for the quota that corresponds to the metric specified by the type field.</p>", "smithy.api#jsonName" => "serviceLimit"}))
    UsageByAccount.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The name of the metric. Possible values are: AUTOMATED_OBJECT_MONITORING, to monitor S3 objects for automated sensitive data discovery; AUTOMATED_SENSITIVE_DATA_DISCOVERY, to analyze S3 objects for automated sensitive data discovery; DATA_INVENTORY_EVALUATION, to monitor S3 buckets; and, SENSITIVE_DATA_DISCOVERY, to run classification jobs.</p>", "smithy.api#jsonName" => "type"}))
    UsageByAccount.type = Types::UsageByAccount
    UsageRecord.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account that the data applies to.</p>", "smithy.api#jsonName" => "accountId"}))
    UsageRecord.add_member(:automated_discovery_free_trial_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'automatedDiscoveryFreeTrialStartDate', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the free trial of automated sensitive data discovery started for the account. This value is null if automated sensitive data discovery hasn't been enabled for the account.</p>", "smithy.api#jsonName" => "automatedDiscoveryFreeTrialStartDate"}))
    UsageRecord.add_member(:free_trial_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'freeTrialStartDate', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the Amazon Macie free trial started for the account.</p>", "smithy.api#jsonName" => "freeTrialStartDate"}))
    UsageRecord.add_member(:usage, Smithy::Schema::Shapes::ShapeRef.new(shape: Listofusagebyaccount, location_name: 'usage', traits: {"smithy.api#documentation" => "<p>An array of objects that contains usage data and quotas for the account. Each object contains the data for a specific usage metric and the corresponding quota.</p>", "smithy.api#jsonName" => "usage"}))
    UsageRecord.type = Types::UsageRecord
    UsageStatisticsFilter.add_member(:comparator, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatisticsFilterComparator, location_name: 'comparator', traits: {"smithy.api#documentation" => "<p>The operator to use in the condition. If the value for the key property is accountId, this value must be CONTAINS. If the value for the key property is any other supported field, this value can be EQ, GT, GTE, LT, LTE, or NE.</p>", "smithy.api#jsonName" => "comparator"}))
    UsageStatisticsFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatisticsFilterKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The field to use in the condition.</p>", "smithy.api#jsonName" => "key"}))
    UsageStatisticsFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'values', traits: {"smithy.api#documentation" => "<p>An array that lists values to use in the condition, based on the value for the field specified by the key property. If the value for the key property is accountId, this array can specify multiple values. Otherwise, this array can specify only one value.</p> <p>Valid values for each supported field are:</p> <ul><li><p>accountId - The unique identifier for an Amazon Web Services account.</p></li> <li><p>freeTrialStartDate - The date and time, in UTC and extended ISO 8601 format, when the Amazon Macie free trial started for an account.</p></li> <li><p>serviceLimit - A Boolean (true or false) value that indicates whether an account has reached its monthly quota.</p></li> <li><p>total - A string that represents the current estimated cost for an account.</p></li></ul>", "smithy.api#jsonName" => "values"}))
    UsageStatisticsFilter.type = Types::UsageStatisticsFilter
    UsageStatisticsFilterComparator.add_member(:gt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GT', traits: {"smithy.api#enumValue" => "GT"}))
    UsageStatisticsFilterComparator.add_member(:gte, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GTE', traits: {"smithy.api#enumValue" => "GTE"}))
    UsageStatisticsFilterComparator.add_member(:lt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LT', traits: {"smithy.api#enumValue" => "LT"}))
    UsageStatisticsFilterComparator.add_member(:lte, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LTE', traits: {"smithy.api#enumValue" => "LTE"}))
    UsageStatisticsFilterComparator.add_member(:eq, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQ', traits: {"smithy.api#enumValue" => "EQ"}))
    UsageStatisticsFilterComparator.add_member(:ne, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NE', traits: {"smithy.api#enumValue" => "NE"}))
    UsageStatisticsFilterComparator.add_member(:contains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    UsageStatisticsFilterKey.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'accountId', traits: {"smithy.api#enumValue" => "accountId"}))
    UsageStatisticsFilterKey.add_member(:service_limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'serviceLimit', traits: {"smithy.api#enumValue" => "serviceLimit"}))
    UsageStatisticsFilterKey.add_member(:free_trial_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'freeTrialStartDate', traits: {"smithy.api#enumValue" => "freeTrialStartDate"}))
    UsageStatisticsFilterKey.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'total', traits: {"smithy.api#enumValue" => "total"}))
    UsageStatisticsSortBy.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatisticsSortKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The field to sort the results by.</p>", "smithy.api#jsonName" => "key"}))
    UsageStatisticsSortBy.add_member(:order_by, Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#documentation" => "<p>The sort order to apply to the results, based on the value for the field specified by the key property. Valid values are: ASC, sort the results in ascending order; and, DESC, sort the results in descending order.</p>", "smithy.api#jsonName" => "orderBy"}))
    UsageStatisticsSortBy.type = Types::UsageStatisticsSortBy
    UsageStatisticsSortKey.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'accountId', traits: {"smithy.api#enumValue" => "accountId"}))
    UsageStatisticsSortKey.add_member(:total, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'total', traits: {"smithy.api#enumValue" => "total"}))
    UsageStatisticsSortKey.add_member(:service_limit_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'serviceLimitValue', traits: {"smithy.api#enumValue" => "serviceLimitValue"}))
    UsageStatisticsSortKey.add_member(:free_trial_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'freeTrialStartDate', traits: {"smithy.api#enumValue" => "freeTrialStartDate"}))
    UsageTotal.add_member(:currency, Smithy::Schema::Shapes::ShapeRef.new(shape: Currency, location_name: 'currency', traits: {"smithy.api#documentation" => "<p>The type of currency that the value for the metric (estimatedCost) is reported in.</p>", "smithy.api#jsonName" => "currency"}))
    UsageTotal.add_member(:estimated_cost, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'estimatedCost', traits: {"smithy.api#documentation" => "<p>The estimated value for the metric.</p>", "smithy.api#jsonName" => "estimatedCost"}))
    UsageTotal.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The name of the metric. Possible values are: AUTOMATED_OBJECT_MONITORING, to monitor S3 objects for automated sensitive data discovery; AUTOMATED_SENSITIVE_DATA_DISCOVERY, to analyze S3 objects for automated sensitive data discovery; DATA_INVENTORY_EVALUATION, to monitor S3 buckets; and, SENSITIVE_DATA_DISCOVERY, to run classification jobs.</p>", "smithy.api#jsonName" => "type"}))
    UsageTotal.type = Types::UsageTotal
    UsageType.add_member(:data_inventory_evaluation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_INVENTORY_EVALUATION', traits: {"smithy.api#enumValue" => "DATA_INVENTORY_EVALUATION"}))
    UsageType.add_member(:sensitive_data_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENSITIVE_DATA_DISCOVERY', traits: {"smithy.api#enumValue" => "SENSITIVE_DATA_DISCOVERY"}))
    UsageType.add_member(:automated_sensitive_data_discovery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATED_SENSITIVE_DATA_DISCOVERY', traits: {"smithy.api#enumValue" => "AUTOMATED_SENSITIVE_DATA_DISCOVERY"}))
    UsageType.add_member(:automated_object_monitoring, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATED_OBJECT_MONITORING', traits: {"smithy.api#enumValue" => "AUTOMATED_OBJECT_MONITORING"}))
    UserIdentity.add_member(:assumed_role, Smithy::Schema::Shapes::ShapeRef.new(shape: AssumedRole, location_name: 'assumedRole', traits: {"smithy.api#documentation" => "<p>If the action was performed with temporary security credentials that were obtained using the AssumeRole operation of the Security Token Service (STS) API, the identifiers, session context, and other details about the identity.</p>", "smithy.api#jsonName" => "assumedRole"}))
    UserIdentity.add_member(:aws_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'awsAccount', traits: {"smithy.api#documentation" => "<p>If the action was performed using the credentials for another Amazon Web Services account, the details of that account.</p>", "smithy.api#jsonName" => "awsAccount"}))
    UserIdentity.add_member(:aws_service, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsService, location_name: 'awsService', traits: {"smithy.api#documentation" => "<p>If the action was performed by an Amazon Web Services account that belongs to an Amazon Web Services service, the name of the service.</p>", "smithy.api#jsonName" => "awsService"}))
    UserIdentity.add_member(:federated_user, Smithy::Schema::Shapes::ShapeRef.new(shape: FederatedUser, location_name: 'federatedUser', traits: {"smithy.api#documentation" => "<p>If the action was performed with temporary security credentials that were obtained using the GetFederationToken operation of the Security Token Service (STS) API, the identifiers, session context, and other details about the identity.</p>", "smithy.api#jsonName" => "federatedUser"}))
    UserIdentity.add_member(:iam_user, Smithy::Schema::Shapes::ShapeRef.new(shape: IamUser, location_name: 'iamUser', traits: {"smithy.api#documentation" => "<p>If the action was performed using the credentials for an Identity and Access Management (IAM) user, the name and other details about the user.</p>", "smithy.api#jsonName" => "iamUser"}))
    UserIdentity.add_member(:root, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentityRoot, location_name: 'root', traits: {"smithy.api#documentation" => "<p>If the action was performed using the credentials for your Amazon Web Services account, the details of your account.</p>", "smithy.api#jsonName" => "root"}))
    UserIdentity.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentityType, location_name: 'type', traits: {"smithy.api#documentation" => "<p>The type of entity that performed the action.</p>", "smithy.api#jsonName" => "type"}))
    UserIdentity.type = Types::UserIdentity
    UserIdentityRoot.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the Amazon Web Services account.</p>", "smithy.api#jsonName" => "accountId"}))
    UserIdentityRoot.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the principal that performed the action. The last section of the ARN contains the name of the user or role that performed the action.</p>", "smithy.api#jsonName" => "arn"}))
    UserIdentityRoot.add_member(:principal_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the entity that performed the action.</p>", "smithy.api#jsonName" => "principalId"}))
    UserIdentityRoot.type = Types::UserIdentityRoot
    UserIdentityType.add_member(:assumed_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssumedRole', traits: {"smithy.api#enumValue" => "AssumedRole"}))
    UserIdentityType.add_member(:iam_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAMUser', traits: {"smithy.api#enumValue" => "IAMUser"}))
    UserIdentityType.add_member(:federated_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FederatedUser', traits: {"smithy.api#enumValue" => "FederatedUser"}))
    UserIdentityType.add_member(:root, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Root', traits: {"smithy.api#enumValue" => "Root"}))
    UserIdentityType.add_member(:aws_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSAccount', traits: {"smithy.api#enumValue" => "AWSAccount"}))
    UserIdentityType.add_member(:aws_service, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSService', traits: {"smithy.api#enumValue" => "AWSService"}))
    UserPausedDetails.add_member(:job_expires_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'jobExpiresAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when the job or job run will expire and be cancelled if you don't resume it first.</p>", "smithy.api#jsonName" => "jobExpiresAt"}))
    UserPausedDetails.add_member(:job_imminent_expiration_health_event_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobImminentExpirationHealthEventArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Health event that Amazon Macie sent to notify you of the job or job run's pending expiration and cancellation. This value is null if a job has been paused for less than 23 days.</p>", "smithy.api#jsonName" => "jobImminentExpirationHealthEventArn"}))
    UserPausedDetails.add_member(:job_paused_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'jobPausedAt', traits: {"smithy.api#documentation" => "<p>The date and time, in UTC and extended ISO 8601 format, when you paused the job.</p>", "smithy.api#jsonName" => "jobPausedAt"}))
    UserPausedDetails.type = Types::UserPausedDetails
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>The explanation of the error that occurred.</p>", "smithy.api#jsonName" => "message"}))
    ValidationException.type = Types::ValidationException
    WeeklySchedule.add_member(:day_of_week, Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek, location_name: 'dayOfWeek', traits: {"smithy.api#documentation" => "<p>The day of the week when Amazon Macie runs the job.</p>", "smithy.api#jsonName" => "dayOfWeek"}))
    WeeklySchedule.type = Types::WeeklySchedule
    Listofadminaccount.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AdminAccount)
    Listofallowlistsummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListSummary)
    Listofautomateddiscoveryaccount.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccount)
    Listofautomateddiscoveryaccountupdate.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccountUpdate)
    Listofautomateddiscoveryaccountupdateerror.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccountUpdateError)
    Listofbatchgetcustomdataidentifiersummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCustomDataIdentifierSummary)
    Listofbucketmetadata.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BucketMetadata)
    Listofclassificationscopesummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeSummary)
    Listofcriteriaforjob.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CriteriaForJob)
    Listofcustomdataidentifiersummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDataIdentifierSummary)
    Listofdetecteddatadetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedDataDetails)
    Listofdetection.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Detection)
    Listoffinding.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Finding)
    Listoffindingtype.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingType)
    Listoffindingsfilterlistitem.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsFilterListItem)
    Listofgroupcount.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupCount)
    Listofinvitation.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Invitation)
    Listofjobscopeterm.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobScopeTerm)
    Listofjobsummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary)
    Listofkeyvaluepair.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuePair)
    Listoflistjobsfilterterm.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsFilterTerm)
    Listofmanageddataidentifiersummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDataIdentifierSummary)
    Listofmatchingresource.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MatchingResource)
    Listofmember.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Member)
    Listofresourceprofileartifact.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceProfileArtifact)
    Listofs3bucketdefinitionforjob.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketDefinitionForJob)
    Listofs3bucketname.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName)
    Listofsearchresourcescriteria.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesCriteria)
    Listofsearchresourcestagcriterionpair.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesTagCriterionPair)
    Listofsensitivityinspectiontemplatesentry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplatesEntry)
    Listofsuppressdataidentifier.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressDataIdentifier)
    Listoftagcriterionpairforjob.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagCriterionPairForJob)
    Listoftagvaluepair.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValuePair)
    Listofunavailabilityreasoncode.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnavailabilityReasonCode)
    Listofunprocessedaccount.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedAccount)
    Listofusagebyaccount.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageByAccount)
    Listofusagerecord.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageRecord)
    Listofusagestatisticsfilter.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatisticsFilter)
    Listofusagetotal.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageTotal)
    ListofString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)

    Macie2 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.macie2#Macie2"
      service.name = "Macie2"
      service.version = "2020-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Macie2", "arnNamespace" => "macie2", "cloudFormationName" => "Macie2", "cloudTrailEventSource" => "macie2.amazonaws.com", "endpointPrefix" => "macie2"}, "aws.auth#sigv4" => {"name" => "macie2"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "Amazon Macie 2"}
      service.add_operation(:accept_invitation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#AcceptInvitation"
        operation.name = "AcceptInvitation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptInvitationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptInvitationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitations/accept", "code" => 200}}
      end)
      service.add_operation(:batch_get_custom_data_identifiers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#BatchGetCustomDataIdentifiers"
        operation.name = "BatchGetCustomDataIdentifiers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCustomDataIdentifiersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCustomDataIdentifiersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-data-identifiers/get", "code" => 200}}
      end)
      service.add_operation(:batch_update_automated_discovery_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#BatchUpdateAutomatedDiscoveryAccounts"
        operation.name = "BatchUpdateAutomatedDiscoveryAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateAutomatedDiscoveryAccountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateAutomatedDiscoveryAccountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/automated-discovery/accounts", "code" => 200}}
      end)
      service.add_operation(:create_allow_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateAllowList"
        operation.name = "CreateAllowList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAllowListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAllowListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/allow-lists", "code" => 200}}
      end)
      service.add_operation(:create_classification_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateClassificationJob"
        operation.name = "CreateClassificationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClassificationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClassificationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobs", "code" => 200}}
      end)
      service.add_operation(:create_custom_data_identifier, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateCustomDataIdentifier"
        operation.name = "CreateCustomDataIdentifier"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDataIdentifierRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDataIdentifierResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-data-identifiers", "code" => 200}}
      end)
      service.add_operation(:create_findings_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateFindingsFilter"
        operation.name = "CreateFindingsFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFindingsFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFindingsFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/findingsfilters", "code" => 200}}
      end)
      service.add_operation(:create_invitations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateInvitations"
        operation.name = "CreateInvitations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvitationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvitationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitations", "code" => 200}}
      end)
      service.add_operation(:create_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateMember"
        operation.name = "CreateMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMemberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMemberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/members", "code" => 200}}
      end)
      service.add_operation(:create_sample_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateSampleFindings"
        operation.name = "CreateSampleFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSampleFindingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSampleFindingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/findings/sample", "code" => 200}}
      end)
      service.add_operation(:decline_invitations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeclineInvitations"
        operation.name = "DeclineInvitations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeclineInvitationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeclineInvitationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitations/decline", "code" => 200}}
      end)
      service.add_operation(:delete_allow_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeleteAllowList"
        operation.name = "DeleteAllowList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAllowListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAllowListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/allow-lists/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_custom_data_identifier, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeleteCustomDataIdentifier"
        operation.name = "DeleteCustomDataIdentifier"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomDataIdentifierRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomDataIdentifierResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/custom-data-identifiers/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_findings_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeleteFindingsFilter"
        operation.name = "DeleteFindingsFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFindingsFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFindingsFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/findingsfilters/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_invitations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeleteInvitations"
        operation.name = "DeleteInvitations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInvitationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInvitationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitations/delete", "code" => 200}}
      end)
      service.add_operation(:delete_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeleteMember"
        operation.name = "DeleteMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/members/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_buckets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DescribeBuckets"
        operation.name = "DescribeBuckets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBucketsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBucketsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasources/s3", "code" => 200}}
        operation[:paginator] = Paginators::DescribeBuckets.new
      end)
      service.add_operation(:describe_classification_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DescribeClassificationJob"
        operation.name = "DescribeClassificationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClassificationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClassificationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:describe_organization_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DescribeOrganizationConfiguration"
        operation.name = "DescribeOrganizationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/admin/configuration", "code" => 200}}
      end)
      service.add_operation(:disable_macie, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DisableMacie"
        operation.name = "DisableMacie"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableMacieRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableMacieResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/macie", "code" => 200}}
      end)
      service.add_operation(:disable_organization_admin_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DisableOrganizationAdminAccount"
        operation.name = "DisableOrganizationAdminAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableOrganizationAdminAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableOrganizationAdminAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/admin", "code" => 200}}
      end)
      service.add_operation(:disassociate_from_administrator_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DisassociateFromAdministratorAccount"
        operation.name = "DisassociateFromAdministratorAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFromAdministratorAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFromAdministratorAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/administrator/disassociate", "code" => 200}}
      end)
      service.add_operation(:disassociate_from_master_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DisassociateFromMasterAccount"
        operation.name = "DisassociateFromMasterAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/master/disassociate", "code" => 200}}
      end)
      service.add_operation(:disassociate_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DisassociateMember"
        operation.name = "DisassociateMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/members/disassociate/{id}", "code" => 200}}
      end)
      service.add_operation(:enable_macie, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#EnableMacie"
        operation.name = "EnableMacie"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableMacieRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableMacieResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/macie", "code" => 200}}
      end)
      service.add_operation(:enable_organization_admin_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#EnableOrganizationAdminAccount"
        operation.name = "EnableOrganizationAdminAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/admin", "code" => 200}}
      end)
      service.add_operation(:get_administrator_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetAdministratorAccount"
        operation.name = "GetAdministratorAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdministratorAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdministratorAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/administrator", "code" => 200}}
      end)
      service.add_operation(:get_allow_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetAllowList"
        operation.name = "GetAllowList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAllowListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAllowListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/allow-lists/{id}", "code" => 200}}
      end)
      service.add_operation(:get_automated_discovery_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetAutomatedDiscoveryConfiguration"
        operation.name = "GetAutomatedDiscoveryConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedDiscoveryConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedDiscoveryConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/automated-discovery/configuration", "code" => 200}}
      end)
      service.add_operation(:get_bucket_statistics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetBucketStatistics"
        operation.name = "GetBucketStatistics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketStatisticsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketStatisticsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasources/s3/statistics", "code" => 200}}
      end)
      service.add_operation(:get_classification_export_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetClassificationExportConfiguration"
        operation.name = "GetClassificationExportConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClassificationExportConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClassificationExportConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/classification-export-configuration", "code" => 200}}
      end)
      service.add_operation(:get_classification_scope, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetClassificationScope"
        operation.name = "GetClassificationScope"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClassificationScopeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetClassificationScopeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/classification-scopes/{id}", "code" => 200}}
      end)
      service.add_operation(:get_custom_data_identifier, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetCustomDataIdentifier"
        operation.name = "GetCustomDataIdentifier"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomDataIdentifierRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomDataIdentifierResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/custom-data-identifiers/{id}", "code" => 200}}
      end)
      service.add_operation(:get_finding_statistics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetFindingStatistics"
        operation.name = "GetFindingStatistics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingStatisticsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingStatisticsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/findings/statistics", "code" => 200}}
      end)
      service.add_operation(:get_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetFindings"
        operation.name = "GetFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/findings/describe", "code" => 200}}
      end)
      service.add_operation(:get_findings_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetFindingsFilter"
        operation.name = "GetFindingsFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/findingsfilters/{id}", "code" => 200}}
      end)
      service.add_operation(:get_findings_publication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetFindingsPublicationConfiguration"
        operation.name = "GetFindingsPublicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsPublicationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsPublicationConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/findings-publication-configuration", "code" => 200}}
      end)
      service.add_operation(:get_invitations_count, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetInvitationsCount"
        operation.name = "GetInvitationsCount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvitationsCountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvitationsCountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/invitations/count", "code" => 200}}
      end)
      service.add_operation(:get_macie_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetMacieSession"
        operation.name = "GetMacieSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMacieSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMacieSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/macie", "code" => 200}}
      end)
      service.add_operation(:get_master_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetMasterAccount"
        operation.name = "GetMasterAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMasterAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMasterAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/master", "code" => 200}}
      end)
      service.add_operation(:get_member, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetMember"
        operation.name = "GetMember"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemberRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemberResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/members/{id}", "code" => 200}}
      end)
      service.add_operation(:get_resource_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetResourceProfile"
        operation.name = "GetResourceProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceProfileResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resource-profiles", "code" => 200}}
      end)
      service.add_operation(:get_reveal_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetRevealConfiguration"
        operation.name = "GetRevealConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRevealConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRevealConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reveal-configuration", "code" => 200}}
      end)
      service.add_operation(:get_sensitive_data_occurrences, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetSensitiveDataOccurrences"
        operation.name = "GetSensitiveDataOccurrences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/findings/{findingId}/reveal", "code" => 200}}
      end)
      service.add_operation(:get_sensitive_data_occurrences_availability, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetSensitiveDataOccurrencesAvailability"
        operation.name = "GetSensitiveDataOccurrencesAvailability"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesAvailabilityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesAvailabilityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/findings/{findingId}/reveal/availability", "code" => 200}}
      end)
      service.add_operation(:get_sensitivity_inspection_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetSensitivityInspectionTemplate"
        operation.name = "GetSensitivityInspectionTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitivityInspectionTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitivityInspectionTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templates/sensitivity-inspections/{id}", "code" => 200}}
      end)
      service.add_operation(:get_usage_statistics, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetUsageStatistics"
        operation.name = "GetUsageStatistics"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageStatisticsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageStatisticsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/usage/statistics", "code" => 200}}
        operation[:paginator] = Paginators::GetUsageStatistics.new
      end)
      service.add_operation(:get_usage_totals, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetUsageTotals"
        operation.name = "GetUsageTotals"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageTotalsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageTotalsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usage", "code" => 200}}
      end)
      service.add_operation(:list_allow_lists, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListAllowLists"
        operation.name = "ListAllowLists"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowListsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowListsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/allow-lists", "code" => 200}}
        operation[:paginator] = Paginators::ListAllowLists.new
      end)
      service.add_operation(:list_automated_discovery_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListAutomatedDiscoveryAccounts"
        operation.name = "ListAutomatedDiscoveryAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedDiscoveryAccountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedDiscoveryAccountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/automated-discovery/accounts", "code" => 200}}
        operation[:paginator] = Paginators::ListAutomatedDiscoveryAccounts.new
      end)
      service.add_operation(:list_classification_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListClassificationJobs"
        operation.name = "ListClassificationJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClassificationJobsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClassificationJobsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobs/list", "code" => 200}}
        operation[:paginator] = Paginators::ListClassificationJobs.new
      end)
      service.add_operation(:list_classification_scopes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListClassificationScopes"
        operation.name = "ListClassificationScopes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClassificationScopesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListClassificationScopesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/classification-scopes", "code" => 200}}
        operation[:paginator] = Paginators::ListClassificationScopes.new
      end)
      service.add_operation(:list_custom_data_identifiers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListCustomDataIdentifiers"
        operation.name = "ListCustomDataIdentifiers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomDataIdentifiersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomDataIdentifiersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-data-identifiers/list", "code" => 200}}
        operation[:paginator] = Paginators::ListCustomDataIdentifiers.new
      end)
      service.add_operation(:list_findings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListFindings"
        operation.name = "ListFindings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/findings", "code" => 200}}
        operation[:paginator] = Paginators::ListFindings.new
      end)
      service.add_operation(:list_findings_filters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListFindingsFilters"
        operation.name = "ListFindingsFilters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsFiltersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsFiltersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/findingsfilters", "code" => 200}}
        operation[:paginator] = Paginators::ListFindingsFilters.new
      end)
      service.add_operation(:list_invitations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListInvitations"
        operation.name = "ListInvitations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvitationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvitationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/invitations", "code" => 200}}
        operation[:paginator] = Paginators::ListInvitations.new
      end)
      service.add_operation(:list_managed_data_identifiers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListManagedDataIdentifiers"
        operation.name = "ListManagedDataIdentifiers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedDataIdentifiersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedDataIdentifiersResponse)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/managed-data-identifiers/list", "code" => 200}}
        operation[:paginator] = Paginators::ListManagedDataIdentifiers.new
      end)
      service.add_operation(:list_members, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListMembers"
        operation.name = "ListMembers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/members", "code" => 200}}
        operation[:paginator] = Paginators::ListMembers.new
      end)
      service.add_operation(:list_organization_admin_accounts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListOrganizationAdminAccounts"
        operation.name = "ListOrganizationAdminAccounts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/admin", "code" => 200}}
        operation[:paginator] = Paginators::ListOrganizationAdminAccounts.new
      end)
      service.add_operation(:list_resource_profile_artifacts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListResourceProfileArtifacts"
        operation.name = "ListResourceProfileArtifacts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceProfileArtifactsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceProfileArtifactsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resource-profiles/artifacts", "code" => 200}}
        operation[:paginator] = Paginators::ListResourceProfileArtifacts.new
      end)
      service.add_operation(:list_resource_profile_detections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListResourceProfileDetections"
        operation.name = "ListResourceProfileDetections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceProfileDetectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceProfileDetectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resource-profiles/detections", "code" => 200}}
        operation[:paginator] = Paginators::ListResourceProfileDetections.new
      end)
      service.add_operation(:list_sensitivity_inspection_templates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListSensitivityInspectionTemplates"
        operation.name = "ListSensitivityInspectionTemplates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSensitivityInspectionTemplatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSensitivityInspectionTemplatesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templates/sensitivity-inspections", "code" => 200}}
        operation[:paginator] = Paginators::ListSensitivityInspectionTemplates.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_classification_export_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#PutClassificationExportConfiguration"
        operation.name = "PutClassificationExportConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutClassificationExportConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutClassificationExportConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/classification-export-configuration", "code" => 200}}
      end)
      service.add_operation(:put_findings_publication_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#PutFindingsPublicationConfiguration"
        operation.name = "PutFindingsPublicationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFindingsPublicationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutFindingsPublicationConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/findings-publication-configuration", "code" => 200}}
      end)
      service.add_operation(:search_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#SearchResources"
        operation.name = "SearchResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasources/search-resources", "code" => 200}}
        operation[:paginator] = Paginators::SearchResources.new
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:test_custom_data_identifier, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#TestCustomDataIdentifier"
        operation.name = "TestCustomDataIdentifier"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TestCustomDataIdentifierRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TestCustomDataIdentifierResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-data-identifiers/test", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_allow_list, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateAllowList"
        operation.name = "UpdateAllowList"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAllowListRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAllowListResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/allow-lists/{id}", "code" => 200}}
      end)
      service.add_operation(:update_automated_discovery_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateAutomatedDiscoveryConfiguration"
        operation.name = "UpdateAutomatedDiscoveryConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomatedDiscoveryConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomatedDiscoveryConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/automated-discovery/configuration", "code" => 200}}
      end)
      service.add_operation(:update_classification_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateClassificationJob"
        operation.name = "UpdateClassificationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClassificationJobRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClassificationJobResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:update_classification_scope, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateClassificationScope"
        operation.name = "UpdateClassificationScope"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClassificationScopeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClassificationScopeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/classification-scopes/{id}", "code" => 200}}
      end)
      service.add_operation(:update_findings_filter, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateFindingsFilter"
        operation.name = "UpdateFindingsFilter"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFindingsFilterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFindingsFilterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/findingsfilters/{id}", "code" => 200}}
      end)
      service.add_operation(:update_macie_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateMacieSession"
        operation.name = "UpdateMacieSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMacieSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMacieSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/macie", "code" => 200}}
      end)
      service.add_operation(:update_member_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateMemberSession"
        operation.name = "UpdateMemberSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMemberSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMemberSessionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/macie/members/{id}", "code" => 200}}
      end)
      service.add_operation(:update_organization_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateOrganizationConfiguration"
        operation.name = "UpdateOrganizationConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/admin/configuration", "code" => 200}}
      end)
      service.add_operation(:update_resource_profile, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateResourceProfile"
        operation.name = "UpdateResourceProfile"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceProfileRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceProfileResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/resource-profiles", "code" => 200}}
      end)
      service.add_operation(:update_resource_profile_detections, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateResourceProfileDetections"
        operation.name = "UpdateResourceProfileDetections"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceProfileDetectionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceProfileDetectionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/resource-profiles/detections", "code" => 200}}
      end)
      service.add_operation(:update_reveal_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateRevealConfiguration"
        operation.name = "UpdateRevealConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRevealConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRevealConfigurationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/reveal-configuration", "code" => 200}}
      end)
      service.add_operation(:update_sensitivity_inspection_template, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateSensitivityInspectionTemplate"
        operation.name = "UpdateSensitivityInspectionTemplate"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSensitivityInspectionTemplateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSensitivityInspectionTemplateResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/templates/sensitivity-inspections/{id}", "code" => 200}}
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
