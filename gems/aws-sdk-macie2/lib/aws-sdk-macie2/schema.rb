# frozen_string_literal: true

# This is generated code!

module Aws::Macie2
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AcceptInvitationRequest', name: 'AcceptInvitationRequest')
    AcceptInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AcceptInvitationResponse', name: 'AcceptInvitationResponse')
    AccessControlList = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AccessControlList', name: 'AccessControlList')
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AccountDetail', name: 'AccountDetail')
    AccountLevelPermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AccountLevelPermissions', name: 'AccountLevelPermissions')
    AdminAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AdminAccount', name: 'AdminAccount')
    AdminStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AdminStatus', name: 'AdminStatus')
    AllowListCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AllowListCriteria', name: 'AllowListCriteria')
    AllowListStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AllowListStatus', name: 'AllowListStatus')
    AllowListStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AllowListStatusCode', name: 'AllowListStatusCode')
    AllowListSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AllowListSummary', name: 'AllowListSummary')
    AllowsUnencryptedObjectUploads = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AllowsUnencryptedObjectUploads', name: 'AllowsUnencryptedObjectUploads')
    ApiCallDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ApiCallDetails', name: 'ApiCallDetails')
    AssumedRole = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AssumedRole', name: 'AssumedRole')
    AutoEnableMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AutoEnableMode', name: 'AutoEnableMode')
    AutomatedDiscoveryAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryAccount', name: 'AutomatedDiscoveryAccount')
    AutomatedDiscoveryAccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryAccountStatus', name: 'AutomatedDiscoveryAccountStatus')
    AutomatedDiscoveryAccountUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryAccountUpdate', name: 'AutomatedDiscoveryAccountUpdate')
    AutomatedDiscoveryAccountUpdateError = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryAccountUpdateError', name: 'AutomatedDiscoveryAccountUpdateError')
    AutomatedDiscoveryAccountUpdateErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryAccountUpdateErrorCode', name: 'AutomatedDiscoveryAccountUpdateErrorCode')
    AutomatedDiscoveryMonitoringStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryMonitoringStatus', name: 'AutomatedDiscoveryMonitoringStatus')
    AutomatedDiscoveryStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AutomatedDiscoveryStatus', name: 'AutomatedDiscoveryStatus')
    AvailabilityCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#AvailabilityCode', name: 'AvailabilityCode')
    AwsAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AwsAccount', name: 'AwsAccount')
    AwsService = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#AwsService', name: 'AwsService')
    BatchGetCustomDataIdentifierSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BatchGetCustomDataIdentifierSummary', name: 'BatchGetCustomDataIdentifierSummary')
    BatchGetCustomDataIdentifiersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BatchGetCustomDataIdentifiersRequest', name: 'BatchGetCustomDataIdentifiersRequest')
    BatchGetCustomDataIdentifiersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BatchGetCustomDataIdentifiersResponse', name: 'BatchGetCustomDataIdentifiersResponse')
    BatchUpdateAutomatedDiscoveryAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BatchUpdateAutomatedDiscoveryAccountsRequest', name: 'BatchUpdateAutomatedDiscoveryAccountsRequest')
    BatchUpdateAutomatedDiscoveryAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BatchUpdateAutomatedDiscoveryAccountsResponse', name: 'BatchUpdateAutomatedDiscoveryAccountsResponse')
    BlockPublicAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BlockPublicAccess', name: 'BlockPublicAccess')
    BucketCountByEffectivePermission = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketCountByEffectivePermission', name: 'BucketCountByEffectivePermission')
    BucketCountByEncryptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketCountByEncryptionType', name: 'BucketCountByEncryptionType')
    BucketCountBySharedAccessType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketCountBySharedAccessType', name: 'BucketCountBySharedAccessType')
    BucketCountPolicyAllowsUnencryptedObjectUploads = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketCountPolicyAllowsUnencryptedObjectUploads', name: 'BucketCountPolicyAllowsUnencryptedObjectUploads')
    BucketCriteria = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.macie2#BucketCriteria', name: 'BucketCriteria')
    BucketCriteriaAdditionalProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketCriteriaAdditionalProperties', name: 'BucketCriteriaAdditionalProperties')
    BucketLevelPermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketLevelPermissions', name: 'BucketLevelPermissions')
    BucketMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketMetadata', name: 'BucketMetadata')
    BucketMetadataErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#BucketMetadataErrorCode', name: 'BucketMetadataErrorCode')
    BucketPermissionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketPermissionConfiguration', name: 'BucketPermissionConfiguration')
    BucketPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketPolicy', name: 'BucketPolicy')
    BucketPublicAccess = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketPublicAccess', name: 'BucketPublicAccess')
    BucketServerSideEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketServerSideEncryption', name: 'BucketServerSideEncryption')
    BucketSortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketSortCriteria', name: 'BucketSortCriteria')
    BucketStatisticsBySensitivity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#BucketStatisticsBySensitivity', name: 'BucketStatisticsBySensitivity')
    Cell = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Cell', name: 'Cell')
    Cells = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#Cells', name: 'Cells')
    ClassificationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ClassificationDetails', name: 'ClassificationDetails')
    ClassificationExportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ClassificationExportConfiguration', name: 'ClassificationExportConfiguration')
    ClassificationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ClassificationResult', name: 'ClassificationResult')
    ClassificationResultStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ClassificationResultStatus', name: 'ClassificationResultStatus')
    ClassificationScopeId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#ClassificationScopeId', name: 'ClassificationScopeId', traits: {"smithy.api#pattern" => "^[0-9a-z]*$"})
    ClassificationScopeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#ClassificationScopeName', name: 'ClassificationScopeName', traits: {"smithy.api#pattern" => "^[0-9a-zA-Z_\\\\-]*$"})
    ClassificationScopeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ClassificationScopeSummary', name: 'ClassificationScopeSummary')
    ClassificationScopeUpdateOperation = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ClassificationScopeUpdateOperation', name: 'ClassificationScopeUpdateOperation')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAllowListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateAllowListRequest', name: 'CreateAllowListRequest')
    CreateAllowListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateAllowListResponse', name: 'CreateAllowListResponse')
    CreateClassificationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateClassificationJobRequest', name: 'CreateClassificationJobRequest')
    CreateClassificationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateClassificationJobResponse', name: 'CreateClassificationJobResponse')
    CreateCustomDataIdentifierRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateCustomDataIdentifierRequest', name: 'CreateCustomDataIdentifierRequest')
    CreateCustomDataIdentifierResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateCustomDataIdentifierResponse', name: 'CreateCustomDataIdentifierResponse')
    CreateFindingsFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateFindingsFilterRequest', name: 'CreateFindingsFilterRequest')
    CreateFindingsFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateFindingsFilterResponse', name: 'CreateFindingsFilterResponse')
    CreateInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateInvitationsRequest', name: 'CreateInvitationsRequest')
    CreateInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateInvitationsResponse', name: 'CreateInvitationsResponse')
    CreateMemberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateMemberRequest', name: 'CreateMemberRequest')
    CreateMemberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateMemberResponse', name: 'CreateMemberResponse')
    CreateSampleFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateSampleFindingsRequest', name: 'CreateSampleFindingsRequest')
    CreateSampleFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CreateSampleFindingsResponse', name: 'CreateSampleFindingsResponse')
    CriteriaBlockForJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CriteriaBlockForJob', name: 'CriteriaBlockForJob')
    CriteriaForJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CriteriaForJob', name: 'CriteriaForJob')
    Criterion = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.macie2#Criterion', name: 'Criterion')
    CriterionAdditionalProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CriterionAdditionalProperties', name: 'CriterionAdditionalProperties')
    Currency = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#Currency', name: 'Currency')
    CustomDataIdentifierSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CustomDataIdentifierSummary', name: 'CustomDataIdentifierSummary')
    CustomDataIdentifiers = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CustomDataIdentifiers', name: 'CustomDataIdentifiers')
    CustomDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#CustomDetection', name: 'CustomDetection')
    CustomDetections = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#CustomDetections', name: 'CustomDetections')
    DailySchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DailySchedule', name: 'DailySchedule')
    DataIdentifierSeverity = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#DataIdentifierSeverity', name: 'DataIdentifierSeverity')
    DataIdentifierType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#DataIdentifierType', name: 'DataIdentifierType')
    DayOfWeek = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#DayOfWeek', name: 'DayOfWeek')
    DeclineInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeclineInvitationsRequest', name: 'DeclineInvitationsRequest')
    DeclineInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeclineInvitationsResponse', name: 'DeclineInvitationsResponse')
    DefaultDetection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DefaultDetection', name: 'DefaultDetection')
    DefaultDetections = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#DefaultDetections', name: 'DefaultDetections')
    DeleteAllowListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteAllowListRequest', name: 'DeleteAllowListRequest')
    DeleteAllowListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteAllowListResponse', name: 'DeleteAllowListResponse')
    DeleteCustomDataIdentifierRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteCustomDataIdentifierRequest', name: 'DeleteCustomDataIdentifierRequest')
    DeleteCustomDataIdentifierResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteCustomDataIdentifierResponse', name: 'DeleteCustomDataIdentifierResponse')
    DeleteFindingsFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteFindingsFilterRequest', name: 'DeleteFindingsFilterRequest')
    DeleteFindingsFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteFindingsFilterResponse', name: 'DeleteFindingsFilterResponse')
    DeleteInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteInvitationsRequest', name: 'DeleteInvitationsRequest')
    DeleteInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteInvitationsResponse', name: 'DeleteInvitationsResponse')
    DeleteMemberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteMemberRequest', name: 'DeleteMemberRequest')
    DeleteMemberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DeleteMemberResponse', name: 'DeleteMemberResponse')
    DescribeBucketsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeBucketsRequest', name: 'DescribeBucketsRequest')
    DescribeBucketsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeBucketsResponse', name: 'DescribeBucketsResponse')
    DescribeClassificationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeClassificationJobRequest', name: 'DescribeClassificationJobRequest')
    DescribeClassificationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeClassificationJobResponse', name: 'DescribeClassificationJobResponse')
    DescribeOrganizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeOrganizationConfigurationRequest', name: 'DescribeOrganizationConfigurationRequest')
    DescribeOrganizationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DescribeOrganizationConfigurationResponse', name: 'DescribeOrganizationConfigurationResponse')
    DetectedDataDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DetectedDataDetails', name: 'DetectedDataDetails')
    Detection = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Detection', name: 'Detection')
    DisableMacieRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisableMacieRequest', name: 'DisableMacieRequest')
    DisableMacieResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisableMacieResponse', name: 'DisableMacieResponse')
    DisableOrganizationAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisableOrganizationAdminAccountRequest', name: 'DisableOrganizationAdminAccountRequest')
    DisableOrganizationAdminAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisableOrganizationAdminAccountResponse', name: 'DisableOrganizationAdminAccountResponse')
    DisassociateFromAdministratorAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateFromAdministratorAccountRequest', name: 'DisassociateFromAdministratorAccountRequest')
    DisassociateFromAdministratorAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateFromAdministratorAccountResponse', name: 'DisassociateFromAdministratorAccountResponse')
    DisassociateFromMasterAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateFromMasterAccountRequest', name: 'DisassociateFromMasterAccountRequest')
    DisassociateFromMasterAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateFromMasterAccountResponse', name: 'DisassociateFromMasterAccountResponse')
    DisassociateMemberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateMemberRequest', name: 'DisassociateMemberRequest')
    DisassociateMemberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DisassociateMemberResponse', name: 'DisassociateMemberResponse')
    DomainDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#DomainDetails', name: 'DomainDetails')
    EffectivePermission = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#EffectivePermission', name: 'EffectivePermission')
    EnableMacieRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#EnableMacieRequest', name: 'EnableMacieRequest')
    EnableMacieResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#EnableMacieResponse', name: 'EnableMacieResponse')
    EnableOrganizationAdminAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#EnableOrganizationAdminAccountRequest', name: 'EnableOrganizationAdminAccountRequest')
    EnableOrganizationAdminAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#EnableOrganizationAdminAccountResponse', name: 'EnableOrganizationAdminAccountResponse')
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#EncryptionType', name: 'EncryptionType')
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ErrorCode', name: 'ErrorCode')
    FederatedUser = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FederatedUser', name: 'FederatedUser')
    Finding = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Finding', name: 'Finding')
    FindingAction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FindingAction', name: 'FindingAction')
    FindingActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingActionType', name: 'FindingActionType')
    FindingActor = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FindingActor', name: 'FindingActor')
    FindingCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingCategory', name: 'FindingCategory')
    FindingCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FindingCriteria', name: 'FindingCriteria')
    FindingPublishingFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingPublishingFrequency', name: 'FindingPublishingFrequency')
    FindingStatisticsSortAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingStatisticsSortAttributeName', name: 'FindingStatisticsSortAttributeName')
    FindingStatisticsSortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FindingStatisticsSortCriteria', name: 'FindingStatisticsSortCriteria')
    FindingType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingType', name: 'FindingType')
    FindingsFilterAction = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#FindingsFilterAction', name: 'FindingsFilterAction')
    FindingsFilterListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#FindingsFilterListItem', name: 'FindingsFilterListItem')
    GetAdministratorAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAdministratorAccountRequest', name: 'GetAdministratorAccountRequest')
    GetAdministratorAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAdministratorAccountResponse', name: 'GetAdministratorAccountResponse')
    GetAllowListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAllowListRequest', name: 'GetAllowListRequest')
    GetAllowListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAllowListResponse', name: 'GetAllowListResponse')
    GetAutomatedDiscoveryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAutomatedDiscoveryConfigurationRequest', name: 'GetAutomatedDiscoveryConfigurationRequest')
    GetAutomatedDiscoveryConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetAutomatedDiscoveryConfigurationResponse', name: 'GetAutomatedDiscoveryConfigurationResponse')
    GetBucketStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetBucketStatisticsRequest', name: 'GetBucketStatisticsRequest')
    GetBucketStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetBucketStatisticsResponse', name: 'GetBucketStatisticsResponse')
    GetClassificationExportConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetClassificationExportConfigurationRequest', name: 'GetClassificationExportConfigurationRequest')
    GetClassificationExportConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetClassificationExportConfigurationResponse', name: 'GetClassificationExportConfigurationResponse')
    GetClassificationScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetClassificationScopeRequest', name: 'GetClassificationScopeRequest')
    GetClassificationScopeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetClassificationScopeResponse', name: 'GetClassificationScopeResponse')
    GetCustomDataIdentifierRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetCustomDataIdentifierRequest', name: 'GetCustomDataIdentifierRequest')
    GetCustomDataIdentifierResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetCustomDataIdentifierResponse', name: 'GetCustomDataIdentifierResponse')
    GetFindingStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingStatisticsRequest', name: 'GetFindingStatisticsRequest')
    GetFindingStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingStatisticsResponse', name: 'GetFindingStatisticsResponse')
    GetFindingsFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsFilterRequest', name: 'GetFindingsFilterRequest')
    GetFindingsFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsFilterResponse', name: 'GetFindingsFilterResponse')
    GetFindingsPublicationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsPublicationConfigurationRequest', name: 'GetFindingsPublicationConfigurationRequest')
    GetFindingsPublicationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsPublicationConfigurationResponse', name: 'GetFindingsPublicationConfigurationResponse')
    GetFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsRequest', name: 'GetFindingsRequest')
    GetFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetFindingsResponse', name: 'GetFindingsResponse')
    GetInvitationsCountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetInvitationsCountRequest', name: 'GetInvitationsCountRequest')
    GetInvitationsCountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetInvitationsCountResponse', name: 'GetInvitationsCountResponse')
    GetMacieSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMacieSessionRequest', name: 'GetMacieSessionRequest')
    GetMacieSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMacieSessionResponse', name: 'GetMacieSessionResponse')
    GetMasterAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMasterAccountRequest', name: 'GetMasterAccountRequest')
    GetMasterAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMasterAccountResponse', name: 'GetMasterAccountResponse')
    GetMemberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMemberRequest', name: 'GetMemberRequest')
    GetMemberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetMemberResponse', name: 'GetMemberResponse')
    GetResourceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetResourceProfileRequest', name: 'GetResourceProfileRequest')
    GetResourceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetResourceProfileResponse', name: 'GetResourceProfileResponse')
    GetRevealConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetRevealConfigurationRequest', name: 'GetRevealConfigurationRequest')
    GetRevealConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetRevealConfigurationResponse', name: 'GetRevealConfigurationResponse')
    GetSensitiveDataOccurrencesAvailabilityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitiveDataOccurrencesAvailabilityRequest', name: 'GetSensitiveDataOccurrencesAvailabilityRequest')
    GetSensitiveDataOccurrencesAvailabilityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitiveDataOccurrencesAvailabilityResponse', name: 'GetSensitiveDataOccurrencesAvailabilityResponse')
    GetSensitiveDataOccurrencesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitiveDataOccurrencesRequest', name: 'GetSensitiveDataOccurrencesRequest')
    GetSensitiveDataOccurrencesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitiveDataOccurrencesResponse', name: 'GetSensitiveDataOccurrencesResponse')
    GetSensitivityInspectionTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitivityInspectionTemplateRequest', name: 'GetSensitivityInspectionTemplateRequest')
    GetSensitivityInspectionTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetSensitivityInspectionTemplateResponse', name: 'GetSensitivityInspectionTemplateResponse')
    GetUsageStatisticsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetUsageStatisticsRequest', name: 'GetUsageStatisticsRequest')
    GetUsageStatisticsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetUsageStatisticsResponse', name: 'GetUsageStatisticsResponse')
    GetUsageTotalsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetUsageTotalsRequest', name: 'GetUsageTotalsRequest')
    GetUsageTotalsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GetUsageTotalsResponse', name: 'GetUsageTotalsResponse')
    GroupBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#GroupBy', name: 'GroupBy')
    GroupCount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#GroupCount', name: 'GroupCount')
    IamUser = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IamUser', name: 'IamUser')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Invitation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Invitation', name: 'Invitation')
    IpAddressDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IpAddressDetails', name: 'IpAddressDetails')
    IpCity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IpCity', name: 'IpCity')
    IpCountry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IpCountry', name: 'IpCountry')
    IpGeoLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IpGeoLocation', name: 'IpGeoLocation')
    IpOwner = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#IpOwner', name: 'IpOwner')
    IsDefinedInJob = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#IsDefinedInJob', name: 'IsDefinedInJob')
    IsMonitoredByJob = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#IsMonitoredByJob', name: 'IsMonitoredByJob')
    JobComparator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#JobComparator', name: 'JobComparator')
    JobDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#JobDetails', name: 'JobDetails')
    JobScheduleFrequency = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#JobScheduleFrequency', name: 'JobScheduleFrequency')
    JobScopeTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#JobScopeTerm', name: 'JobScopeTerm')
    JobScopingBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#JobScopingBlock', name: 'JobScopingBlock')
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#JobStatus', name: 'JobStatus')
    JobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#JobSummary', name: 'JobSummary')
    JobType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#JobType', name: 'JobType')
    KeyValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#KeyValuePair', name: 'KeyValuePair')
    KeyValuePairList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#KeyValuePairList', name: 'KeyValuePairList')
    LastRunErrorStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#LastRunErrorStatus', name: 'LastRunErrorStatus')
    LastRunErrorStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#LastRunErrorStatusCode', name: 'LastRunErrorStatusCode')
    ListAllowListsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListAllowListsRequest', name: 'ListAllowListsRequest')
    ListAllowListsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListAllowListsResponse', name: 'ListAllowListsResponse')
    ListAutomatedDiscoveryAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListAutomatedDiscoveryAccountsRequest', name: 'ListAutomatedDiscoveryAccountsRequest')
    ListAutomatedDiscoveryAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListAutomatedDiscoveryAccountsResponse', name: 'ListAutomatedDiscoveryAccountsResponse')
    ListClassificationJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListClassificationJobsRequest', name: 'ListClassificationJobsRequest')
    ListClassificationJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListClassificationJobsResponse', name: 'ListClassificationJobsResponse')
    ListClassificationScopesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListClassificationScopesRequest', name: 'ListClassificationScopesRequest')
    ListClassificationScopesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListClassificationScopesResponse', name: 'ListClassificationScopesResponse')
    ListCustomDataIdentifiersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListCustomDataIdentifiersRequest', name: 'ListCustomDataIdentifiersRequest')
    ListCustomDataIdentifiersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListCustomDataIdentifiersResponse', name: 'ListCustomDataIdentifiersResponse')
    ListFindingsFiltersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListFindingsFiltersRequest', name: 'ListFindingsFiltersRequest')
    ListFindingsFiltersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListFindingsFiltersResponse', name: 'ListFindingsFiltersResponse')
    ListFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListFindingsRequest', name: 'ListFindingsRequest')
    ListFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListFindingsResponse', name: 'ListFindingsResponse')
    ListInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListInvitationsRequest', name: 'ListInvitationsRequest')
    ListInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListInvitationsResponse', name: 'ListInvitationsResponse')
    ListJobsFilterCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListJobsFilterCriteria', name: 'ListJobsFilterCriteria')
    ListJobsFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ListJobsFilterKey', name: 'ListJobsFilterKey')
    ListJobsFilterTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListJobsFilterTerm', name: 'ListJobsFilterTerm')
    ListJobsSortAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ListJobsSortAttributeName', name: 'ListJobsSortAttributeName')
    ListJobsSortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListJobsSortCriteria', name: 'ListJobsSortCriteria')
    ListManagedDataIdentifiersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListManagedDataIdentifiersRequest', name: 'ListManagedDataIdentifiersRequest')
    ListManagedDataIdentifiersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListManagedDataIdentifiersResponse', name: 'ListManagedDataIdentifiersResponse')
    ListMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListMembersRequest', name: 'ListMembersRequest')
    ListMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListMembersResponse', name: 'ListMembersResponse')
    ListOrganizationAdminAccountsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListOrganizationAdminAccountsRequest', name: 'ListOrganizationAdminAccountsRequest')
    ListOrganizationAdminAccountsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListOrganizationAdminAccountsResponse', name: 'ListOrganizationAdminAccountsResponse')
    ListResourceProfileArtifactsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListResourceProfileArtifactsRequest', name: 'ListResourceProfileArtifactsRequest')
    ListResourceProfileArtifactsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListResourceProfileArtifactsResponse', name: 'ListResourceProfileArtifactsResponse')
    ListResourceProfileDetectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListResourceProfileDetectionsRequest', name: 'ListResourceProfileDetectionsRequest')
    ListResourceProfileDetectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListResourceProfileDetectionsResponse', name: 'ListResourceProfileDetectionsResponse')
    ListSensitivityInspectionTemplatesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListSensitivityInspectionTemplatesRequest', name: 'ListSensitivityInspectionTemplatesRequest')
    ListSensitivityInspectionTemplatesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListSensitivityInspectionTemplatesResponse', name: 'ListSensitivityInspectionTemplatesResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MacieStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#MacieStatus', name: 'MacieStatus')
    ManagedDataIdentifierSelector = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ManagedDataIdentifierSelector', name: 'ManagedDataIdentifierSelector')
    ManagedDataIdentifierSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ManagedDataIdentifierSummary', name: 'ManagedDataIdentifierSummary')
    MatchingBucket = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#MatchingBucket', name: 'MatchingBucket')
    MatchingResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#MatchingResource', name: 'MatchingResource')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.macie2#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    Member = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Member', name: 'Member')
    MonthlySchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#MonthlySchedule', name: 'MonthlySchedule')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#NextToken', name: 'NextToken', traits: {"smithy.api#pattern" => "^.*$"})
    ObjectCountByEncryptionType = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ObjectCountByEncryptionType', name: 'ObjectCountByEncryptionType')
    ObjectLevelStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ObjectLevelStatistics', name: 'ObjectLevelStatistics')
    Occurrences = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Occurrences', name: 'Occurrences')
    OrderBy = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#OrderBy', name: 'OrderBy')
    OriginType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#OriginType', name: 'OriginType')
    Page = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Page', name: 'Page')
    Pages = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#Pages', name: 'Pages')
    PolicyDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#PolicyDetails', name: 'PolicyDetails')
    PutClassificationExportConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#PutClassificationExportConfigurationRequest', name: 'PutClassificationExportConfigurationRequest')
    PutClassificationExportConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#PutClassificationExportConfigurationResponse', name: 'PutClassificationExportConfigurationResponse')
    PutFindingsPublicationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#PutFindingsPublicationConfigurationRequest', name: 'PutFindingsPublicationConfigurationRequest')
    PutFindingsPublicationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#PutFindingsPublicationConfigurationResponse', name: 'PutFindingsPublicationConfigurationResponse')
    Range = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Range', name: 'Range')
    Ranges = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#Ranges', name: 'Ranges')
    Record = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Record', name: 'Record')
    Records = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#Records', name: 'Records')
    RelationshipStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#RelationshipStatus', name: 'RelationshipStatus')
    ReplicationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ReplicationDetails', name: 'ReplicationDetails')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceProfileArtifact = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ResourceProfileArtifact', name: 'ResourceProfileArtifact')
    ResourceStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ResourceStatistics', name: 'ResourceStatistics')
    ResourcesAffected = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ResourcesAffected', name: 'ResourcesAffected')
    RetrievalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#RetrievalConfiguration', name: 'RetrievalConfiguration')
    RetrievalMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#RetrievalMode', name: 'RetrievalMode')
    RevealConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#RevealConfiguration', name: 'RevealConfiguration')
    RevealRequestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#RevealRequestStatus', name: 'RevealRequestStatus')
    RevealStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#RevealStatus', name: 'RevealStatus')
    S3Bucket = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3Bucket', name: 'S3Bucket')
    S3BucketCriteriaForJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3BucketCriteriaForJob', name: 'S3BucketCriteriaForJob')
    S3BucketDefinitionForJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3BucketDefinitionForJob', name: 'S3BucketDefinitionForJob')
    S3BucketName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#S3BucketName', name: 'S3BucketName', traits: {"smithy.api#pattern" => "^[A-Za-z0-9.\\-_]{3,255}$"})
    S3BucketOwner = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3BucketOwner', name: 'S3BucketOwner')
    S3ClassificationScope = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3ClassificationScope', name: 'S3ClassificationScope')
    S3ClassificationScopeExclusion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3ClassificationScopeExclusion', name: 'S3ClassificationScopeExclusion')
    S3ClassificationScopeExclusionUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3ClassificationScopeExclusionUpdate', name: 'S3ClassificationScopeExclusionUpdate')
    S3ClassificationScopeUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3ClassificationScopeUpdate', name: 'S3ClassificationScopeUpdate')
    S3Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3Destination', name: 'S3Destination')
    S3JobDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3JobDefinition', name: 'S3JobDefinition')
    S3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3Object', name: 'S3Object')
    S3WordsList = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#S3WordsList', name: 'S3WordsList')
    ScopeFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#ScopeFilterKey', name: 'ScopeFilterKey')
    Scoping = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Scoping', name: 'Scoping')
    SearchResourcesBucketCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesBucketCriteria', name: 'SearchResourcesBucketCriteria')
    SearchResourcesComparator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SearchResourcesComparator', name: 'SearchResourcesComparator')
    SearchResourcesCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesCriteria', name: 'SearchResourcesCriteria')
    SearchResourcesCriteriaBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesCriteriaBlock', name: 'SearchResourcesCriteriaBlock')
    SearchResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesRequest', name: 'SearchResourcesRequest')
    SearchResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesResponse', name: 'SearchResourcesResponse')
    SearchResourcesSimpleCriterion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesSimpleCriterion', name: 'SearchResourcesSimpleCriterion')
    SearchResourcesSimpleCriterionKey = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SearchResourcesSimpleCriterionKey', name: 'SearchResourcesSimpleCriterionKey')
    SearchResourcesSortAttributeName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SearchResourcesSortAttributeName', name: 'SearchResourcesSortAttributeName')
    SearchResourcesSortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesSortCriteria', name: 'SearchResourcesSortCriteria')
    SearchResourcesTagCriterion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesTagCriterion', name: 'SearchResourcesTagCriterion')
    SearchResourcesTagCriterionPair = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SearchResourcesTagCriterionPair', name: 'SearchResourcesTagCriterionPair')
    SecurityHubConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SecurityHubConfiguration', name: 'SecurityHubConfiguration')
    SensitiveData = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#SensitiveData', name: 'SensitiveData')
    SensitiveDataItem = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SensitiveDataItem', name: 'SensitiveDataItem')
    SensitiveDataItemCategory = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SensitiveDataItemCategory', name: 'SensitiveDataItemCategory')
    SensitiveDataOccurrences = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.macie2#SensitiveDataOccurrences', name: 'SensitiveDataOccurrences')
    SensitivityAggregations = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SensitivityAggregations', name: 'SensitivityAggregations')
    SensitivityInspectionTemplateExcludes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SensitivityInspectionTemplateExcludes', name: 'SensitivityInspectionTemplateExcludes')
    SensitivityInspectionTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#SensitivityInspectionTemplateId', name: 'SensitivityInspectionTemplateId')
    SensitivityInspectionTemplateIncludes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SensitivityInspectionTemplateIncludes', name: 'SensitivityInspectionTemplateIncludes')
    SensitivityInspectionTemplatesEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SensitivityInspectionTemplatesEntry', name: 'SensitivityInspectionTemplatesEntry')
    ServerSideEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ServerSideEncryption', name: 'ServerSideEncryption')
    ServiceLimit = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ServiceLimit', name: 'ServiceLimit')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionContext = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SessionContext', name: 'SessionContext')
    SessionContextAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SessionContextAttributes', name: 'SessionContextAttributes')
    SessionIssuer = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SessionIssuer', name: 'SessionIssuer')
    Severity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Severity', name: 'Severity')
    SeverityDescription = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SeverityDescription', name: 'SeverityDescription')
    SeverityLevel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SeverityLevel', name: 'SeverityLevel')
    SeverityLevelList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#SeverityLevelList', name: 'SeverityLevelList')
    SharedAccess = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SharedAccess', name: 'SharedAccess')
    SimpleCriterionForJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SimpleCriterionForJob', name: 'SimpleCriterionForJob')
    SimpleCriterionKeyForJob = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#SimpleCriterionKeyForJob', name: 'SimpleCriterionKeyForJob')
    SimpleScopeTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SimpleScopeTerm', name: 'SimpleScopeTerm')
    SortCriteria = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SortCriteria', name: 'SortCriteria')
    Statistics = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#Statistics', name: 'Statistics')
    StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#StorageClass', name: 'StorageClass')
    SuppressDataIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#SuppressDataIdentifier', name: 'SuppressDataIdentifier')
    TagCriterionForJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagCriterionForJob', name: 'TagCriterionForJob')
    TagCriterionPairForJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagCriterionPairForJob', name: 'TagCriterionPairForJob')
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.macie2#TagMap', name: 'TagMap')
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagResourceResponse', name: 'TagResourceResponse')
    TagScopeTerm = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagScopeTerm', name: 'TagScopeTerm')
    TagTarget = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#TagTarget', name: 'TagTarget')
    TagValuePair = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TagValuePair', name: 'TagValuePair')
    TestCustomDataIdentifierRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TestCustomDataIdentifierRequest', name: 'TestCustomDataIdentifierRequest')
    TestCustomDataIdentifierResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#TestCustomDataIdentifierResponse', name: 'TestCustomDataIdentifierResponse')
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeRange = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#TimeRange', name: 'TimeRange')
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.macie2#Timestamp', name: 'Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#Type', name: 'Type')
    UnavailabilityReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UnavailabilityReasonCode', name: 'UnavailabilityReasonCode')
    Unit = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#Unit', name: 'Unit')
    UnprocessableEntityException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UnprocessableEntityException', name: 'UnprocessableEntityException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 422})
    UnprocessedAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UnprocessedAccount', name: 'UnprocessedAccount')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAllowListRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateAllowListRequest', name: 'UpdateAllowListRequest')
    UpdateAllowListResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateAllowListResponse', name: 'UpdateAllowListResponse')
    UpdateAutomatedDiscoveryConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateAutomatedDiscoveryConfigurationRequest', name: 'UpdateAutomatedDiscoveryConfigurationRequest')
    UpdateAutomatedDiscoveryConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateAutomatedDiscoveryConfigurationResponse', name: 'UpdateAutomatedDiscoveryConfigurationResponse')
    UpdateClassificationJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateClassificationJobRequest', name: 'UpdateClassificationJobRequest')
    UpdateClassificationJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateClassificationJobResponse', name: 'UpdateClassificationJobResponse')
    UpdateClassificationScopeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateClassificationScopeRequest', name: 'UpdateClassificationScopeRequest')
    UpdateClassificationScopeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateClassificationScopeResponse', name: 'UpdateClassificationScopeResponse')
    UpdateFindingsFilterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateFindingsFilterRequest', name: 'UpdateFindingsFilterRequest')
    UpdateFindingsFilterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateFindingsFilterResponse', name: 'UpdateFindingsFilterResponse')
    UpdateMacieSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateMacieSessionRequest', name: 'UpdateMacieSessionRequest')
    UpdateMacieSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateMacieSessionResponse', name: 'UpdateMacieSessionResponse')
    UpdateMemberSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateMemberSessionRequest', name: 'UpdateMemberSessionRequest')
    UpdateMemberSessionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateMemberSessionResponse', name: 'UpdateMemberSessionResponse')
    UpdateOrganizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateOrganizationConfigurationRequest', name: 'UpdateOrganizationConfigurationRequest')
    UpdateOrganizationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateOrganizationConfigurationResponse', name: 'UpdateOrganizationConfigurationResponse')
    UpdateResourceProfileDetectionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateResourceProfileDetectionsRequest', name: 'UpdateResourceProfileDetectionsRequest')
    UpdateResourceProfileDetectionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateResourceProfileDetectionsResponse', name: 'UpdateResourceProfileDetectionsResponse')
    UpdateResourceProfileRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateResourceProfileRequest', name: 'UpdateResourceProfileRequest')
    UpdateResourceProfileResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateResourceProfileResponse', name: 'UpdateResourceProfileResponse')
    UpdateRetrievalConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateRetrievalConfiguration', name: 'UpdateRetrievalConfiguration')
    UpdateRevealConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateRevealConfigurationRequest', name: 'UpdateRevealConfigurationRequest')
    UpdateRevealConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateRevealConfigurationResponse', name: 'UpdateRevealConfigurationResponse')
    UpdateSensitivityInspectionTemplateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateSensitivityInspectionTemplateRequest', name: 'UpdateSensitivityInspectionTemplateRequest')
    UpdateSensitivityInspectionTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UpdateSensitivityInspectionTemplateResponse', name: 'UpdateSensitivityInspectionTemplateResponse')
    UsageByAccount = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UsageByAccount', name: 'UsageByAccount')
    UsageRecord = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UsageRecord', name: 'UsageRecord')
    UsageStatisticsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UsageStatisticsFilter', name: 'UsageStatisticsFilter')
    UsageStatisticsFilterComparator = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UsageStatisticsFilterComparator', name: 'UsageStatisticsFilterComparator')
    UsageStatisticsFilterKey = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UsageStatisticsFilterKey', name: 'UsageStatisticsFilterKey')
    UsageStatisticsSortBy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UsageStatisticsSortBy', name: 'UsageStatisticsSortBy')
    UsageStatisticsSortKey = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UsageStatisticsSortKey', name: 'UsageStatisticsSortKey')
    UsageTotal = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UsageTotal', name: 'UsageTotal')
    UsageType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UsageType', name: 'UsageType')
    UserIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UserIdentity', name: 'UserIdentity')
    UserIdentityRoot = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UserIdentityRoot', name: 'UserIdentityRoot')
    UserIdentityType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.macie2#UserIdentityType', name: 'UserIdentityType')
    UserPausedDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#UserPausedDetails', name: 'UserPausedDetails')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WeeklySchedule = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.macie2#WeeklySchedule', name: 'WeeklySchedule')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.macie2#__boolean', name: 'Boolean')
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.macie2#__double', name: 'Double')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.macie2#__integer', name: 'Integer')
    Listofadminaccount = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfAdminAccount', name: 'Listofadminaccount')
    Listofallowlistsummary = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfAllowListSummary', name: 'Listofallowlistsummary')
    Listofautomateddiscoveryaccount = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfAutomatedDiscoveryAccount', name: 'Listofautomateddiscoveryaccount')
    Listofautomateddiscoveryaccountupdate = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfAutomatedDiscoveryAccountUpdate', name: 'Listofautomateddiscoveryaccountupdate')
    Listofautomateddiscoveryaccountupdateerror = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfAutomatedDiscoveryAccountUpdateError', name: 'Listofautomateddiscoveryaccountupdateerror')
    Listofbatchgetcustomdataidentifiersummary = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfBatchGetCustomDataIdentifierSummary', name: 'Listofbatchgetcustomdataidentifiersummary')
    Listofbucketmetadata = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfBucketMetadata', name: 'Listofbucketmetadata')
    Listofclassificationscopesummary = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfClassificationScopeSummary', name: 'Listofclassificationscopesummary')
    Listofcriteriaforjob = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfCriteriaForJob', name: 'Listofcriteriaforjob')
    Listofcustomdataidentifiersummary = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfCustomDataIdentifierSummary', name: 'Listofcustomdataidentifiersummary')
    Listofdetecteddatadetails = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfDetectedDataDetails', name: 'Listofdetecteddatadetails')
    Listofdetection = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfDetection', name: 'Listofdetection')
    Listoffinding = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfFinding', name: 'Listoffinding')
    Listoffindingtype = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfFindingType', name: 'Listoffindingtype')
    Listoffindingsfilterlistitem = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfFindingsFilterListItem', name: 'Listoffindingsfilterlistitem')
    Listofgroupcount = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfGroupCount', name: 'Listofgroupcount')
    Listofinvitation = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfInvitation', name: 'Listofinvitation')
    Listofjobscopeterm = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfJobScopeTerm', name: 'Listofjobscopeterm')
    Listofjobsummary = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfJobSummary', name: 'Listofjobsummary')
    Listofkeyvaluepair = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfKeyValuePair', name: 'Listofkeyvaluepair')
    Listoflistjobsfilterterm = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfListJobsFilterTerm', name: 'Listoflistjobsfilterterm')
    Listofmanageddataidentifiersummary = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfManagedDataIdentifierSummary', name: 'Listofmanageddataidentifiersummary')
    Listofmatchingresource = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfMatchingResource', name: 'Listofmatchingresource')
    Listofmember = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfMember', name: 'Listofmember')
    Listofresourceprofileartifact = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfResourceProfileArtifact', name: 'Listofresourceprofileartifact')
    Listofs3bucketdefinitionforjob = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfS3BucketDefinitionForJob', name: 'Listofs3bucketdefinitionforjob')
    Listofs3bucketname = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfS3BucketName', name: 'Listofs3bucketname')
    Listofsearchresourcescriteria = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfSearchResourcesCriteria', name: 'Listofsearchresourcescriteria')
    Listofsearchresourcestagcriterionpair = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfSearchResourcesTagCriterionPair', name: 'Listofsearchresourcestagcriterionpair')
    Listofsensitivityinspectiontemplatesentry = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfSensitivityInspectionTemplatesEntry', name: 'Listofsensitivityinspectiontemplatesentry')
    Listofsuppressdataidentifier = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfSuppressDataIdentifier', name: 'Listofsuppressdataidentifier')
    Listoftagcriterionpairforjob = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfTagCriterionPairForJob', name: 'Listoftagcriterionpairforjob')
    Listoftagvaluepair = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfTagValuePair', name: 'Listoftagvaluepair')
    Listofunavailabilityreasoncode = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUnavailabilityReasonCode', name: 'Listofunavailabilityreasoncode', traits: {"smithy.api#length" => {"min" => 0}})
    Listofunprocessedaccount = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUnprocessedAccount', name: 'Listofunprocessedaccount')
    Listofusagebyaccount = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUsageByAccount', name: 'Listofusagebyaccount')
    Listofusagerecord = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUsageRecord', name: 'Listofusagerecord')
    Listofusagestatisticsfilter = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUsageStatisticsFilter', name: 'Listofusagestatisticsfilter')
    Listofusagetotal = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOfUsageTotal', name: 'Listofusagetotal')
    ListofString = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.macie2#__listOf__string', name: 'ListofString')
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.macie2#__long', name: 'Long')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__string', name: 'String')
    Stringmin1max1024patternss = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max1024PatternSS', name: 'Stringmin1max1024patternss', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    Stringmin1max128 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max128', name: 'Stringmin1max128', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    Stringmin1max128pattern = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max128Pattern', name: 'Stringmin1max128pattern', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^.+$"})
    Stringmin1max2048 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max2048', name: 'Stringmin1max2048', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    Stringmin1max512patternss = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max512PatternSS', name: 'Stringmin1max512patternss', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\s\\S]+$"})
    Stringmin1max64patternw = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin1Max64PatternW', name: 'Stringmin1max64patternw', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w+=,.@-]*$"})
    Stringmin22max22patternaz0922 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin22Max22PatternAZ0922', name: 'Stringmin22max22patternaz0922', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-z0-9]{22}$"})
    Stringmin3max255patternazaz093255 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin3Max255PatternAZaZ093255', name: 'Stringmin3max255patternazaz093255', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z0-9.\\-_]{3,255}$"})
    Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.macie2#__stringMin71Max89PatternArnAwsAwsCnAwsUsGovMacie2AZ19920D12AllowListAZ0922', name: 'Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922', traits: {"smithy.api#length" => {"min" => 71, "max" => 89}, "smithy.api#pattern" => "^arn:(aws|aws-cn|aws-us-gov):macie2:[a-z1-9-]{9,20}:\\d{12}:allow-list\\/[a-z0-9]{22}$"})
    Timestampiso8601 = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.macie2#__timestampIso8601', name: 'Timestampiso8601', traits: {"smithy.api#timestampFormat" => "date-time"})

    AcceptInvitationRequest.add_member(:administrator_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'administratorAccountId', traits: {"smithy.api#jsonName" => "administratorAccountId"}))
    AcceptInvitationRequest.add_member(:invitation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'invitationId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "invitationId", "smithy.api#required" => {}}))
    AcceptInvitationRequest.add_member(:master_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'masterAccount', traits: {"smithy.api#jsonName" => "masterAccount"}))
    AcceptInvitationRequest.type = Types::AcceptInvitationRequest
    AcceptInvitationResponse.type = Types::AcceptInvitationResponse
    AccessControlList.add_member(:allows_public_read_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowsPublicReadAccess', traits: {"smithy.api#jsonName" => "allowsPublicReadAccess"}))
    AccessControlList.add_member(:allows_public_write_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowsPublicWriteAccess', traits: {"smithy.api#jsonName" => "allowsPublicWriteAccess"}))
    AccessControlList.type = Types::AccessControlList
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#jsonName" => "message"}))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountDetail.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountId", "smithy.api#required" => {}}))
    AccountDetail.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'email', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "email", "smithy.api#required" => {}}))
    AccountDetail.type = Types::AccountDetail
    AccountLevelPermissions.add_member(:block_public_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockPublicAccess, location_name: 'blockPublicAccess', traits: {"smithy.api#jsonName" => "blockPublicAccess"}))
    AccountLevelPermissions.type = Types::AccountLevelPermissions
    AdminAccount.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    AdminAccount.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminStatus, location_name: 'status', traits: {"smithy.api#jsonName" => "status"}))
    AdminAccount.type = Types::AdminAccount
    AdminStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AdminStatus.add_member(:disabling_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLING_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DISABLING_IN_PROGRESS"}))
    AllowListCriteria.add_member(:regex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max512patternss, location_name: 'regex', traits: {"smithy.api#jsonName" => "regex"}))
    AllowListCriteria.add_member(:s3_words_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3WordsList, location_name: 's3WordsList', traits: {"smithy.api#jsonName" => "s3WordsList"}))
    AllowListCriteria.type = Types::AllowListCriteria
    AllowListStatus.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListStatusCode, location_name: 'code', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "code", "smithy.api#required" => {}}))
    AllowListStatus.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max1024patternss, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    AllowListStatus.type = Types::AllowListStatus
    AllowListStatusCode.add_member(:ok, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OK', traits: {"smithy.api#enumValue" => "OK"}))
    AllowListStatusCode.add_member(:s3_object_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT_NOT_FOUND', traits: {"smithy.api#enumValue" => "S3_OBJECT_NOT_FOUND"}))
    AllowListStatusCode.add_member(:s3_user_access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_USER_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "S3_USER_ACCESS_DENIED"}))
    AllowListStatusCode.add_member(:s3_object_access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "S3_OBJECT_ACCESS_DENIED"}))
    AllowListStatusCode.add_member(:s3_throttled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_THROTTLED', traits: {"smithy.api#enumValue" => "S3_THROTTLED"}))
    AllowListStatusCode.add_member(:s3_object_oversize, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT_OVERSIZE', traits: {"smithy.api#enumValue" => "S3_OBJECT_OVERSIZE"}))
    AllowListStatusCode.add_member(:s3_object_empty, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT_EMPTY', traits: {"smithy.api#enumValue" => "S3_OBJECT_EMPTY"}))
    AllowListStatusCode.add_member(:unknown_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_ERROR', traits: {"smithy.api#enumValue" => "UNKNOWN_ERROR"}))
    AllowListSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    AllowListSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#jsonName" => "createdAt"}))
    AllowListSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max512patternss, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    AllowListSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin22max22patternaz0922, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    AllowListSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128pattern, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    AllowListSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#jsonName" => "updatedAt"}))
    AllowListSummary.type = Types::AllowListSummary
    AllowsUnencryptedObjectUploads.add_member(:true, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    AllowsUnencryptedObjectUploads.add_member(:false, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    AllowsUnencryptedObjectUploads.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    ApiCallDetails.add_member(:api, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'api', traits: {"smithy.api#jsonName" => "api"}))
    ApiCallDetails.add_member(:api_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'apiServiceName', traits: {"smithy.api#jsonName" => "apiServiceName"}))
    ApiCallDetails.add_member(:first_seen, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'firstSeen', traits: {"smithy.api#jsonName" => "firstSeen"}))
    ApiCallDetails.add_member(:last_seen, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastSeen', traits: {"smithy.api#jsonName" => "lastSeen"}))
    ApiCallDetails.type = Types::ApiCallDetails
    AssumedRole.add_member(:access_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessKeyId', traits: {"smithy.api#jsonName" => "accessKeyId"}))
    AssumedRole.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    AssumedRole.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    AssumedRole.add_member(:principal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#jsonName" => "principalId"}))
    AssumedRole.add_member(:session_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionContext, location_name: 'sessionContext', traits: {"smithy.api#jsonName" => "sessionContext"}))
    AssumedRole.type = Types::AssumedRole
    AutoEnableMode.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    AutoEnableMode.add_member(:new, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NEW', traits: {"smithy.api#enumValue" => "NEW"}))
    AutoEnableMode.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    AutomatedDiscoveryAccount.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    AutomatedDiscoveryAccount.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccountStatus, location_name: 'status', traits: {"smithy.api#jsonName" => "status"}))
    AutomatedDiscoveryAccount.type = Types::AutomatedDiscoveryAccount
    AutomatedDiscoveryAccountStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutomatedDiscoveryAccountStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AutomatedDiscoveryAccountUpdate.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    AutomatedDiscoveryAccountUpdate.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccountStatus, location_name: 'status', traits: {"smithy.api#jsonName" => "status"}))
    AutomatedDiscoveryAccountUpdate.type = Types::AutomatedDiscoveryAccountUpdate
    AutomatedDiscoveryAccountUpdateError.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    AutomatedDiscoveryAccountUpdateError.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccountUpdateErrorCode, location_name: 'errorCode', traits: {"smithy.api#jsonName" => "errorCode"}))
    AutomatedDiscoveryAccountUpdateError.type = Types::AutomatedDiscoveryAccountUpdateError
    AutomatedDiscoveryAccountUpdateErrorCode.add_member(:account_paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_PAUSED', traits: {"smithy.api#enumValue" => "ACCOUNT_PAUSED"}))
    AutomatedDiscoveryAccountUpdateErrorCode.add_member(:account_not_found, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_NOT_FOUND', traits: {"smithy.api#enumValue" => "ACCOUNT_NOT_FOUND"}))
    AutomatedDiscoveryMonitoringStatus.add_member(:monitored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONITORED', traits: {"smithy.api#enumValue" => "MONITORED"}))
    AutomatedDiscoveryMonitoringStatus.add_member(:not_monitored, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_MONITORED', traits: {"smithy.api#enumValue" => "NOT_MONITORED"}))
    AutomatedDiscoveryStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    AutomatedDiscoveryStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    AvailabilityCode.add_member(:available, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    AvailabilityCode.add_member(:unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNAVAILABLE', traits: {"smithy.api#enumValue" => "UNAVAILABLE"}))
    AwsAccount.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    AwsAccount.add_member(:principal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#jsonName" => "principalId"}))
    AwsAccount.type = Types::AwsAccount
    AwsService.add_member(:invoked_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'invokedBy', traits: {"smithy.api#jsonName" => "invokedBy"}))
    AwsService.type = Types::AwsService
    BatchGetCustomDataIdentifierSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    BatchGetCustomDataIdentifierSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#jsonName" => "createdAt"}))
    BatchGetCustomDataIdentifierSummary.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'deleted', traits: {"smithy.api#jsonName" => "deleted"}))
    BatchGetCustomDataIdentifierSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    BatchGetCustomDataIdentifierSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    BatchGetCustomDataIdentifierSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    BatchGetCustomDataIdentifierSummary.type = Types::BatchGetCustomDataIdentifierSummary
    BatchGetCustomDataIdentifiersRequest.add_member(:ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ids', traits: {"smithy.api#jsonName" => "ids"}))
    BatchGetCustomDataIdentifiersRequest.type = Types::BatchGetCustomDataIdentifiersRequest
    BatchGetCustomDataIdentifiersResponse.add_member(:custom_data_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofbatchgetcustomdataidentifiersummary, location_name: 'customDataIdentifiers', traits: {"smithy.api#jsonName" => "customDataIdentifiers"}))
    BatchGetCustomDataIdentifiersResponse.add_member(:not_found_identifier_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'notFoundIdentifierIds', traits: {"smithy.api#jsonName" => "notFoundIdentifierIds"}))
    BatchGetCustomDataIdentifiersResponse.type = Types::BatchGetCustomDataIdentifiersResponse
    BatchUpdateAutomatedDiscoveryAccountsRequest.add_member(:accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofautomateddiscoveryaccountupdate, location_name: 'accounts', traits: {"smithy.api#jsonName" => "accounts"}))
    BatchUpdateAutomatedDiscoveryAccountsRequest.type = Types::BatchUpdateAutomatedDiscoveryAccountsRequest
    BatchUpdateAutomatedDiscoveryAccountsResponse.add_member(:errors, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofautomateddiscoveryaccountupdateerror, location_name: 'errors', traits: {"smithy.api#jsonName" => "errors"}))
    BatchUpdateAutomatedDiscoveryAccountsResponse.type = Types::BatchUpdateAutomatedDiscoveryAccountsResponse
    BlockPublicAccess.add_member(:block_public_acls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'blockPublicAcls', traits: {"smithy.api#jsonName" => "blockPublicAcls"}))
    BlockPublicAccess.add_member(:block_public_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'blockPublicPolicy', traits: {"smithy.api#jsonName" => "blockPublicPolicy"}))
    BlockPublicAccess.add_member(:ignore_public_acls, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ignorePublicAcls', traits: {"smithy.api#jsonName" => "ignorePublicAcls"}))
    BlockPublicAccess.add_member(:restrict_public_buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'restrictPublicBuckets', traits: {"smithy.api#jsonName" => "restrictPublicBuckets"}))
    BlockPublicAccess.type = Types::BlockPublicAccess
    BucketCountByEffectivePermission.add_member(:publicly_accessible, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'publiclyAccessible', traits: {"smithy.api#jsonName" => "publiclyAccessible"}))
    BucketCountByEffectivePermission.add_member(:publicly_readable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'publiclyReadable', traits: {"smithy.api#jsonName" => "publiclyReadable"}))
    BucketCountByEffectivePermission.add_member(:publicly_writable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'publiclyWritable', traits: {"smithy.api#jsonName" => "publiclyWritable"}))
    BucketCountByEffectivePermission.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unknown', traits: {"smithy.api#jsonName" => "unknown"}))
    BucketCountByEffectivePermission.type = Types::BucketCountByEffectivePermission
    BucketCountByEncryptionType.add_member(:kms_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'kmsManaged', traits: {"smithy.api#jsonName" => "kmsManaged"}))
    BucketCountByEncryptionType.add_member(:s3_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 's3Managed', traits: {"smithy.api#jsonName" => "s3Managed"}))
    BucketCountByEncryptionType.add_member(:unencrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unencrypted', traits: {"smithy.api#jsonName" => "unencrypted"}))
    BucketCountByEncryptionType.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unknown', traits: {"smithy.api#jsonName" => "unknown"}))
    BucketCountByEncryptionType.type = Types::BucketCountByEncryptionType
    BucketCountBySharedAccessType.add_member(:external, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'external', traits: {"smithy.api#jsonName" => "external"}))
    BucketCountBySharedAccessType.add_member(:internal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'internal', traits: {"smithy.api#jsonName" => "internal"}))
    BucketCountBySharedAccessType.add_member(:not_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'notShared', traits: {"smithy.api#jsonName" => "notShared"}))
    BucketCountBySharedAccessType.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unknown', traits: {"smithy.api#jsonName" => "unknown"}))
    BucketCountBySharedAccessType.type = Types::BucketCountBySharedAccessType
    BucketCountPolicyAllowsUnencryptedObjectUploads.add_member(:allows_unencrypted_object_uploads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'allowsUnencryptedObjectUploads', traits: {"smithy.api#jsonName" => "allowsUnencryptedObjectUploads"}))
    BucketCountPolicyAllowsUnencryptedObjectUploads.add_member(:denies_unencrypted_object_uploads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'deniesUnencryptedObjectUploads', traits: {"smithy.api#jsonName" => "deniesUnencryptedObjectUploads"}))
    BucketCountPolicyAllowsUnencryptedObjectUploads.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unknown', traits: {"smithy.api#jsonName" => "unknown"}))
    BucketCountPolicyAllowsUnencryptedObjectUploads.type = Types::BucketCountPolicyAllowsUnencryptedObjectUploads
    BucketCriteria.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    BucketCriteria.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCriteriaAdditionalProperties)
    BucketCriteriaAdditionalProperties.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'eq', traits: {"smithy.api#jsonName" => "eq"}))
    BucketCriteriaAdditionalProperties.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'gt', traits: {"smithy.api#jsonName" => "gt"}))
    BucketCriteriaAdditionalProperties.add_member(:gte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'gte', traits: {"smithy.api#jsonName" => "gte"}))
    BucketCriteriaAdditionalProperties.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'lt', traits: {"smithy.api#jsonName" => "lt"}))
    BucketCriteriaAdditionalProperties.add_member(:lte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'lte', traits: {"smithy.api#jsonName" => "lte"}))
    BucketCriteriaAdditionalProperties.add_member(:neq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'neq', traits: {"smithy.api#jsonName" => "neq"}))
    BucketCriteriaAdditionalProperties.add_member(:prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'prefix', traits: {"smithy.api#jsonName" => "prefix"}))
    BucketCriteriaAdditionalProperties.type = Types::BucketCriteriaAdditionalProperties
    BucketLevelPermissions.add_member(:access_control_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlList, location_name: 'accessControlList', traits: {"smithy.api#jsonName" => "accessControlList"}))
    BucketLevelPermissions.add_member(:block_public_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BlockPublicAccess, location_name: 'blockPublicAccess', traits: {"smithy.api#jsonName" => "blockPublicAccess"}))
    BucketLevelPermissions.add_member(:bucket_policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketPolicy, location_name: 'bucketPolicy', traits: {"smithy.api#jsonName" => "bucketPolicy"}))
    BucketLevelPermissions.type = Types::BucketLevelPermissions
    BucketMetadata.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    BucketMetadata.add_member(:allows_unencrypted_object_uploads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowsUnencryptedObjectUploads, location_name: 'allowsUnencryptedObjectUploads', traits: {"smithy.api#jsonName" => "allowsUnencryptedObjectUploads"}))
    BucketMetadata.add_member(:automated_discovery_monitoring_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryMonitoringStatus, location_name: 'automatedDiscoveryMonitoringStatus', traits: {"smithy.api#jsonName" => "automatedDiscoveryMonitoringStatus"}))
    BucketMetadata.add_member(:bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketArn', traits: {"smithy.api#jsonName" => "bucketArn"}))
    BucketMetadata.add_member(:bucket_created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'bucketCreatedAt', traits: {"smithy.api#jsonName" => "bucketCreatedAt"}))
    BucketMetadata.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketName', traits: {"smithy.api#jsonName" => "bucketName"}))
    BucketMetadata.add_member(:classifiable_object_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableObjectCount', traits: {"smithy.api#jsonName" => "classifiableObjectCount"}))
    BucketMetadata.add_member(:classifiable_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableSizeInBytes', traits: {"smithy.api#jsonName" => "classifiableSizeInBytes"}))
    BucketMetadata.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketMetadataErrorCode, location_name: 'errorCode', traits: {"smithy.api#jsonName" => "errorCode"}))
    BucketMetadata.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage', traits: {"smithy.api#jsonName" => "errorMessage"}))
    BucketMetadata.add_member(:job_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetails, location_name: 'jobDetails', traits: {"smithy.api#jsonName" => "jobDetails"}))
    BucketMetadata.add_member(:last_automated_discovery_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastAutomatedDiscoveryTime', traits: {"smithy.api#jsonName" => "lastAutomatedDiscoveryTime"}))
    BucketMetadata.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastUpdated', traits: {"smithy.api#jsonName" => "lastUpdated"}))
    BucketMetadata.add_member(:object_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'objectCount', traits: {"smithy.api#jsonName" => "objectCount"}))
    BucketMetadata.add_member(:object_count_by_encryption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectCountByEncryptionType, location_name: 'objectCountByEncryptionType', traits: {"smithy.api#jsonName" => "objectCountByEncryptionType"}))
    BucketMetadata.add_member(:public_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketPublicAccess, location_name: 'publicAccess', traits: {"smithy.api#jsonName" => "publicAccess"}))
    BucketMetadata.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'region', traits: {"smithy.api#jsonName" => "region"}))
    BucketMetadata.add_member(:replication_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReplicationDetails, location_name: 'replicationDetails', traits: {"smithy.api#jsonName" => "replicationDetails"}))
    BucketMetadata.add_member(:sensitivity_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sensitivityScore', traits: {"smithy.api#jsonName" => "sensitivityScore"}))
    BucketMetadata.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketServerSideEncryption, location_name: 'serverSideEncryption', traits: {"smithy.api#jsonName" => "serverSideEncryption"}))
    BucketMetadata.add_member(:shared_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SharedAccess, location_name: 'sharedAccess', traits: {"smithy.api#jsonName" => "sharedAccess"}))
    BucketMetadata.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytes', traits: {"smithy.api#jsonName" => "sizeInBytes"}))
    BucketMetadata.add_member(:size_in_bytes_compressed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytesCompressed', traits: {"smithy.api#jsonName" => "sizeInBytesCompressed"}))
    BucketMetadata.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofkeyvaluepair, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    BucketMetadata.add_member(:unclassifiable_object_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectCount', traits: {"smithy.api#jsonName" => "unclassifiableObjectCount"}))
    BucketMetadata.add_member(:unclassifiable_object_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectSizeInBytes', traits: {"smithy.api#jsonName" => "unclassifiableObjectSizeInBytes"}))
    BucketMetadata.add_member(:versioning, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'versioning', traits: {"smithy.api#jsonName" => "versioning"}))
    BucketMetadata.type = Types::BucketMetadata
    BucketMetadataErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    BucketMetadataErrorCode.add_member(:bucket_count_exceeds_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BUCKET_COUNT_EXCEEDS_QUOTA', traits: {"smithy.api#enumValue" => "BUCKET_COUNT_EXCEEDS_QUOTA"}))
    BucketPermissionConfiguration.add_member(:account_level_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountLevelPermissions, location_name: 'accountLevelPermissions', traits: {"smithy.api#jsonName" => "accountLevelPermissions"}))
    BucketPermissionConfiguration.add_member(:bucket_level_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketLevelPermissions, location_name: 'bucketLevelPermissions', traits: {"smithy.api#jsonName" => "bucketLevelPermissions"}))
    BucketPermissionConfiguration.type = Types::BucketPermissionConfiguration
    BucketPolicy.add_member(:allows_public_read_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowsPublicReadAccess', traits: {"smithy.api#jsonName" => "allowsPublicReadAccess"}))
    BucketPolicy.add_member(:allows_public_write_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'allowsPublicWriteAccess', traits: {"smithy.api#jsonName" => "allowsPublicWriteAccess"}))
    BucketPolicy.type = Types::BucketPolicy
    BucketPublicAccess.add_member(:effective_permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EffectivePermission, location_name: 'effectivePermission', traits: {"smithy.api#jsonName" => "effectivePermission"}))
    BucketPublicAccess.add_member(:permission_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketPermissionConfiguration, location_name: 'permissionConfiguration', traits: {"smithy.api#jsonName" => "permissionConfiguration"}))
    BucketPublicAccess.type = Types::BucketPublicAccess
    BucketServerSideEncryption.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kmsMasterKeyId', traits: {"smithy.api#jsonName" => "kmsMasterKeyId"}))
    BucketServerSideEncryption.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'type', traits: {"smithy.api#jsonName" => "type"}))
    BucketServerSideEncryption.type = Types::BucketServerSideEncryption
    BucketSortCriteria.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'attributeName', traits: {"smithy.api#jsonName" => "attributeName"}))
    BucketSortCriteria.add_member(:order_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#jsonName" => "orderBy"}))
    BucketSortCriteria.type = Types::BucketSortCriteria
    BucketStatisticsBySensitivity.add_member(:classification_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: 'classificationError', traits: {"smithy.api#jsonName" => "classificationError"}))
    BucketStatisticsBySensitivity.add_member(:not_classified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: 'notClassified', traits: {"smithy.api#jsonName" => "notClassified"}))
    BucketStatisticsBySensitivity.add_member(:not_sensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: 'notSensitive', traits: {"smithy.api#jsonName" => "notSensitive"}))
    BucketStatisticsBySensitivity.add_member(:sensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityAggregations, location_name: 'sensitive', traits: {"smithy.api#jsonName" => "sensitive"}))
    BucketStatisticsBySensitivity.type = Types::BucketStatisticsBySensitivity
    Cell.add_member(:cell_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cellReference', traits: {"smithy.api#jsonName" => "cellReference"}))
    Cell.add_member(:column, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'column', traits: {"smithy.api#jsonName" => "column"}))
    Cell.add_member(:column_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'columnName', traits: {"smithy.api#jsonName" => "columnName"}))
    Cell.add_member(:row, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'row', traits: {"smithy.api#jsonName" => "row"}))
    Cell.type = Types::Cell
    Cells.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cell)
    ClassificationDetails.add_member(:detailed_results_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'detailedResultsLocation', traits: {"smithy.api#jsonName" => "detailedResultsLocation"}))
    ClassificationDetails.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn', traits: {"smithy.api#jsonName" => "jobArn"}))
    ClassificationDetails.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#jsonName" => "jobId"}))
    ClassificationDetails.add_member(:origin_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OriginType, location_name: 'originType', traits: {"smithy.api#jsonName" => "originType"}))
    ClassificationDetails.add_member(:result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationResult, location_name: 'result', traits: {"smithy.api#jsonName" => "result"}))
    ClassificationDetails.type = Types::ClassificationDetails
    ClassificationExportConfiguration.add_member(:s3_destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Destination, location_name: 's3Destination', traits: {"smithy.api#jsonName" => "s3Destination"}))
    ClassificationExportConfiguration.type = Types::ClassificationExportConfiguration
    ClassificationResult.add_member(:additional_occurrences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'additionalOccurrences', traits: {"smithy.api#jsonName" => "additionalOccurrences"}))
    ClassificationResult.add_member(:custom_data_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDataIdentifiers, location_name: 'customDataIdentifiers', traits: {"smithy.api#jsonName" => "customDataIdentifiers"}))
    ClassificationResult.add_member(:mime_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'mimeType', traits: {"smithy.api#jsonName" => "mimeType"}))
    ClassificationResult.add_member(:sensitive_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveData, location_name: 'sensitiveData', traits: {"smithy.api#jsonName" => "sensitiveData"}))
    ClassificationResult.add_member(:size_classified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeClassified', traits: {"smithy.api#jsonName" => "sizeClassified"}))
    ClassificationResult.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationResultStatus, location_name: 'status', traits: {"smithy.api#jsonName" => "status"}))
    ClassificationResult.type = Types::ClassificationResult
    ClassificationResultStatus.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#jsonName" => "code"}))
    ClassificationResultStatus.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'reason', traits: {"smithy.api#jsonName" => "reason"}))
    ClassificationResultStatus.type = Types::ClassificationResultStatus
    ClassificationScopeSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeId, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    ClassificationScopeSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeName, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    ClassificationScopeSummary.type = Types::ClassificationScopeSummary
    ClassificationScopeUpdateOperation.add_member(:add, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADD', traits: {"smithy.api#enumValue" => "ADD"}))
    ClassificationScopeUpdateOperation.add_member(:replace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPLACE', traits: {"smithy.api#enumValue" => "REPLACE"}))
    ClassificationScopeUpdateOperation.add_member(:remove, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVE', traits: {"smithy.api#enumValue" => "REMOVE"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#jsonName" => "message"}))
    ConflictException.type = Types::ConflictException
    CreateAllowListRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken", "smithy.api#required" => {}}))
    CreateAllowListRequest.add_member(:criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListCriteria, location_name: 'criteria', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "criteria", "smithy.api#required" => {}}))
    CreateAllowListRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max512patternss, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    CreateAllowListRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128pattern, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateAllowListRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateAllowListRequest.type = Types::CreateAllowListRequest
    CreateAllowListResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    CreateAllowListResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin22max22patternaz0922, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    CreateAllowListResponse.type = Types::CreateAllowListResponse
    CreateClassificationJobRequest.add_member(:allow_list_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'allowListIds', traits: {"smithy.api#jsonName" => "allowListIds"}))
    CreateClassificationJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#clientOptional" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken", "smithy.api#required" => {}}))
    CreateClassificationJobRequest.add_member(:custom_data_identifier_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'customDataIdentifierIds', traits: {"smithy.api#jsonName" => "customDataIdentifierIds"}))
    CreateClassificationJobRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    CreateClassificationJobRequest.add_member(:initial_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'initialRun', traits: {"smithy.api#jsonName" => "initialRun"}))
    CreateClassificationJobRequest.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'jobType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "jobType", "smithy.api#required" => {}}))
    CreateClassificationJobRequest.add_member(:managed_data_identifier_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'managedDataIdentifierIds', traits: {"smithy.api#jsonName" => "managedDataIdentifierIds"}))
    CreateClassificationJobRequest.add_member(:managed_data_identifier_selector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDataIdentifierSelector, location_name: 'managedDataIdentifierSelector', traits: {"smithy.api#jsonName" => "managedDataIdentifierSelector"}))
    CreateClassificationJobRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateClassificationJobRequest.add_member(:s3_job_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3JobDefinition, location_name: 's3JobDefinition', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "s3JobDefinition", "smithy.api#required" => {}}))
    CreateClassificationJobRequest.add_member(:sampling_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'samplingPercentage', traits: {"smithy.api#jsonName" => "samplingPercentage"}))
    CreateClassificationJobRequest.add_member(:schedule_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobScheduleFrequency, location_name: 'scheduleFrequency', traits: {"smithy.api#jsonName" => "scheduleFrequency"}))
    CreateClassificationJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateClassificationJobRequest.type = Types::CreateClassificationJobRequest
    CreateClassificationJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn', traits: {"smithy.api#jsonName" => "jobArn"}))
    CreateClassificationJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#jsonName" => "jobId"}))
    CreateClassificationJobResponse.type = Types::CreateClassificationJobResponse
    CreateCustomDataIdentifierRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateCustomDataIdentifierRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    CreateCustomDataIdentifierRequest.add_member(:ignore_words, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ignoreWords', traits: {"smithy.api#jsonName" => "ignoreWords"}))
    CreateCustomDataIdentifierRequest.add_member(:keywords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'keywords', traits: {"smithy.api#jsonName" => "keywords"}))
    CreateCustomDataIdentifierRequest.add_member(:maximum_match_distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maximumMatchDistance', traits: {"smithy.api#jsonName" => "maximumMatchDistance"}))
    CreateCustomDataIdentifierRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateCustomDataIdentifierRequest.add_member(:regex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regex', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "regex", "smithy.api#required" => {}}))
    CreateCustomDataIdentifierRequest.add_member(:severity_levels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevelList, location_name: 'severityLevels', traits: {"smithy.api#jsonName" => "severityLevels"}))
    CreateCustomDataIdentifierRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateCustomDataIdentifierRequest.type = Types::CreateCustomDataIdentifierRequest
    CreateCustomDataIdentifierResponse.add_member(:custom_data_identifier_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'customDataIdentifierId', traits: {"smithy.api#jsonName" => "customDataIdentifierId"}))
    CreateCustomDataIdentifierResponse.type = Types::CreateCustomDataIdentifierResponse
    CreateFindingsFilterRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: 'action', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "action", "smithy.api#required" => {}}))
    CreateFindingsFilterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    CreateFindingsFilterRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    CreateFindingsFilterRequest.add_member(:finding_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCriteria, location_name: 'findingCriteria', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "findingCriteria", "smithy.api#required" => {}}))
    CreateFindingsFilterRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    CreateFindingsFilterRequest.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'position', traits: {"smithy.api#jsonName" => "position"}))
    CreateFindingsFilterRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateFindingsFilterRequest.type = Types::CreateFindingsFilterRequest
    CreateFindingsFilterResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    CreateFindingsFilterResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    CreateFindingsFilterResponse.type = Types::CreateFindingsFilterResponse
    CreateInvitationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'accountIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    CreateInvitationsRequest.add_member(:disable_email_notification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'disableEmailNotification', traits: {"smithy.api#jsonName" => "disableEmailNotification"}))
    CreateInvitationsRequest.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#jsonName" => "message"}))
    CreateInvitationsRequest.type = Types::CreateInvitationsRequest
    CreateInvitationsResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofunprocessedaccount, location_name: 'unprocessedAccounts', traits: {"smithy.api#jsonName" => "unprocessedAccounts"}))
    CreateInvitationsResponse.type = Types::CreateInvitationsResponse
    CreateMemberRequest.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountDetail, location_name: 'account', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "account", "smithy.api#required" => {}}))
    CreateMemberRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    CreateMemberRequest.type = Types::CreateMemberRequest
    CreateMemberResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    CreateMemberResponse.type = Types::CreateMemberResponse
    CreateSampleFindingsRequest.add_member(:finding_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listoffindingtype, location_name: 'findingTypes', traits: {"smithy.api#jsonName" => "findingTypes"}))
    CreateSampleFindingsRequest.type = Types::CreateSampleFindingsRequest
    CreateSampleFindingsResponse.type = Types::CreateSampleFindingsResponse
    CriteriaBlockForJob.add_member(:and, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofcriteriaforjob, location_name: 'and', traits: {"smithy.api#jsonName" => "and"}))
    CriteriaBlockForJob.type = Types::CriteriaBlockForJob
    CriteriaForJob.add_member(:simple_criterion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleCriterionForJob, location_name: 'simpleCriterion', traits: {"smithy.api#jsonName" => "simpleCriterion"}))
    CriteriaForJob.add_member(:tag_criterion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagCriterionForJob, location_name: 'tagCriterion', traits: {"smithy.api#jsonName" => "tagCriterion"}))
    CriteriaForJob.type = Types::CriteriaForJob
    Criterion.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Criterion.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CriterionAdditionalProperties)
    CriterionAdditionalProperties.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'eq', traits: {"smithy.api#jsonName" => "eq"}))
    CriterionAdditionalProperties.add_member(:eq_exact_match, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'eqExactMatch', traits: {"smithy.api#jsonName" => "eqExactMatch"}))
    CriterionAdditionalProperties.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'gt', traits: {"smithy.api#jsonName" => "gt"}))
    CriterionAdditionalProperties.add_member(:gte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'gte', traits: {"smithy.api#jsonName" => "gte"}))
    CriterionAdditionalProperties.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'lt', traits: {"smithy.api#jsonName" => "lt"}))
    CriterionAdditionalProperties.add_member(:lte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'lte', traits: {"smithy.api#jsonName" => "lte"}))
    CriterionAdditionalProperties.add_member(:neq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'neq', traits: {"smithy.api#jsonName" => "neq"}))
    CriterionAdditionalProperties.type = Types::CriterionAdditionalProperties
    Currency.add_member(:usd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USD', traits: {"smithy.api#enumValue" => "USD"}))
    CustomDataIdentifierSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    CustomDataIdentifierSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#jsonName" => "createdAt"}))
    CustomDataIdentifierSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    CustomDataIdentifierSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    CustomDataIdentifierSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    CustomDataIdentifierSummary.type = Types::CustomDataIdentifierSummary
    CustomDataIdentifiers.add_member(:detections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDetections, location_name: 'detections', traits: {"smithy.api#jsonName" => "detections"}))
    CustomDataIdentifiers.add_member(:total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalCount', traits: {"smithy.api#jsonName" => "totalCount"}))
    CustomDataIdentifiers.type = Types::CustomDataIdentifiers
    CustomDetection.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    CustomDetection.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#jsonName" => "count"}))
    CustomDetection.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    CustomDetection.add_member(:occurrences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Occurrences, location_name: 'occurrences', traits: {"smithy.api#jsonName" => "occurrences"}))
    CustomDetection.type = Types::CustomDetection
    CustomDetections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDetection)
    DailySchedule.type = Types::DailySchedule
    DataIdentifierSeverity.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LOW', traits: {"smithy.api#enumValue" => "LOW"}))
    DataIdentifierSeverity.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEDIUM', traits: {"smithy.api#enumValue" => "MEDIUM"}))
    DataIdentifierSeverity.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HIGH', traits: {"smithy.api#enumValue" => "HIGH"}))
    DataIdentifierType.add_member(:custom, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    DataIdentifierType.add_member(:managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANAGED', traits: {"smithy.api#enumValue" => "MANAGED"}))
    DayOfWeek.add_member(:sunday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUNDAY', traits: {"smithy.api#enumValue" => "SUNDAY"}))
    DayOfWeek.add_member(:monday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONDAY', traits: {"smithy.api#enumValue" => "MONDAY"}))
    DayOfWeek.add_member(:tuesday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TUESDAY', traits: {"smithy.api#enumValue" => "TUESDAY"}))
    DayOfWeek.add_member(:wednesday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEDNESDAY', traits: {"smithy.api#enumValue" => "WEDNESDAY"}))
    DayOfWeek.add_member(:thursday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THURSDAY', traits: {"smithy.api#enumValue" => "THURSDAY"}))
    DayOfWeek.add_member(:friday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FRIDAY', traits: {"smithy.api#enumValue" => "FRIDAY"}))
    DayOfWeek.add_member(:saturday, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SATURDAY', traits: {"smithy.api#enumValue" => "SATURDAY"}))
    DeclineInvitationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'accountIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    DeclineInvitationsRequest.type = Types::DeclineInvitationsRequest
    DeclineInvitationsResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofunprocessedaccount, location_name: 'unprocessedAccounts', traits: {"smithy.api#jsonName" => "unprocessedAccounts"}))
    DeclineInvitationsResponse.type = Types::DeclineInvitationsResponse
    DefaultDetection.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#jsonName" => "count"}))
    DefaultDetection.add_member(:occurrences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Occurrences, location_name: 'occurrences', traits: {"smithy.api#jsonName" => "occurrences"}))
    DefaultDetection.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#jsonName" => "type"}))
    DefaultDetection.type = Types::DefaultDetection
    DefaultDetections.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultDetection)
    DeleteAllowListRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAllowListRequest.add_member(:ignore_job_checks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ignoreJobChecks', traits: {"smithy.api#httpQuery" => "ignoreJobChecks"}))
    DeleteAllowListRequest.type = Types::DeleteAllowListRequest
    DeleteAllowListResponse.type = Types::DeleteAllowListResponse
    DeleteCustomDataIdentifierRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomDataIdentifierRequest.type = Types::DeleteCustomDataIdentifierRequest
    DeleteCustomDataIdentifierResponse.type = Types::DeleteCustomDataIdentifierResponse
    DeleteFindingsFilterRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteFindingsFilterRequest.type = Types::DeleteFindingsFilterRequest
    DeleteFindingsFilterResponse.type = Types::DeleteFindingsFilterResponse
    DeleteInvitationsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'accountIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountIds", "smithy.api#required" => {}}))
    DeleteInvitationsRequest.type = Types::DeleteInvitationsRequest
    DeleteInvitationsResponse.add_member(:unprocessed_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofunprocessedaccount, location_name: 'unprocessedAccounts', traits: {"smithy.api#jsonName" => "unprocessedAccounts"}))
    DeleteInvitationsResponse.type = Types::DeleteInvitationsResponse
    DeleteMemberRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteMemberRequest.type = Types::DeleteMemberRequest
    DeleteMemberResponse.type = Types::DeleteMemberResponse
    DescribeBucketsRequest.add_member(:criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCriteria, location_name: 'criteria', traits: {"smithy.api#jsonName" => "criteria"}))
    DescribeBucketsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#jsonName" => "maxResults"}))
    DescribeBucketsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    DescribeBucketsRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketSortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#jsonName" => "sortCriteria"}))
    DescribeBucketsRequest.type = Types::DescribeBucketsRequest
    DescribeBucketsResponse.add_member(:buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofbucketmetadata, location_name: 'buckets', traits: {"smithy.api#jsonName" => "buckets"}))
    DescribeBucketsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    DescribeBucketsResponse.type = Types::DescribeBucketsResponse
    DescribeClassificationJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeClassificationJobRequest.type = Types::DescribeClassificationJobRequest
    DescribeClassificationJobResponse.add_member(:allow_list_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'allowListIds', traits: {"smithy.api#jsonName" => "allowListIds"}))
    DescribeClassificationJobResponse.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    DescribeClassificationJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#jsonName" => "createdAt"}))
    DescribeClassificationJobResponse.add_member(:custom_data_identifier_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'customDataIdentifierIds', traits: {"smithy.api#jsonName" => "customDataIdentifierIds"}))
    DescribeClassificationJobResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    DescribeClassificationJobResponse.add_member(:initial_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'initialRun', traits: {"smithy.api#jsonName" => "initialRun"}))
    DescribeClassificationJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobArn', traits: {"smithy.api#jsonName" => "jobArn"}))
    DescribeClassificationJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#jsonName" => "jobId"}))
    DescribeClassificationJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#jsonName" => "jobStatus"}))
    DescribeClassificationJobResponse.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'jobType', traits: {"smithy.api#jsonName" => "jobType"}))
    DescribeClassificationJobResponse.add_member(:last_run_error_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastRunErrorStatus, location_name: 'lastRunErrorStatus', traits: {"smithy.api#jsonName" => "lastRunErrorStatus"}))
    DescribeClassificationJobResponse.add_member(:last_run_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastRunTime', traits: {"smithy.api#jsonName" => "lastRunTime"}))
    DescribeClassificationJobResponse.add_member(:managed_data_identifier_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'managedDataIdentifierIds', traits: {"smithy.api#jsonName" => "managedDataIdentifierIds"}))
    DescribeClassificationJobResponse.add_member(:managed_data_identifier_selector, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDataIdentifierSelector, location_name: 'managedDataIdentifierSelector', traits: {"smithy.api#jsonName" => "managedDataIdentifierSelector"}))
    DescribeClassificationJobResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    DescribeClassificationJobResponse.add_member(:s3_job_definition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3JobDefinition, location_name: 's3JobDefinition', traits: {"smithy.api#jsonName" => "s3JobDefinition"}))
    DescribeClassificationJobResponse.add_member(:sampling_percentage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'samplingPercentage', traits: {"smithy.api#jsonName" => "samplingPercentage"}))
    DescribeClassificationJobResponse.add_member(:schedule_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobScheduleFrequency, location_name: 'scheduleFrequency', traits: {"smithy.api#jsonName" => "scheduleFrequency"}))
    DescribeClassificationJobResponse.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statistics, location_name: 'statistics', traits: {"smithy.api#jsonName" => "statistics"}))
    DescribeClassificationJobResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    DescribeClassificationJobResponse.add_member(:user_paused_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPausedDetails, location_name: 'userPausedDetails', traits: {"smithy.api#jsonName" => "userPausedDetails"}))
    DescribeClassificationJobResponse.type = Types::DescribeClassificationJobResponse
    DescribeOrganizationConfigurationRequest.type = Types::DescribeOrganizationConfigurationRequest
    DescribeOrganizationConfigurationResponse.add_member(:auto_enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'autoEnable', traits: {"smithy.api#jsonName" => "autoEnable"}))
    DescribeOrganizationConfigurationResponse.add_member(:max_account_limit_reached, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'maxAccountLimitReached', traits: {"smithy.api#jsonName" => "maxAccountLimitReached"}))
    DescribeOrganizationConfigurationResponse.type = Types::DescribeOrganizationConfigurationResponse
    DetectedDataDetails.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128, location_name: 'value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "value", "smithy.api#required" => {}}))
    DetectedDataDetails.type = Types::DetectedDataDetails
    Detection.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    Detection.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#jsonName" => "count"}))
    Detection.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    Detection.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    Detection.add_member(:suppressed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'suppressed', traits: {"smithy.api#jsonName" => "suppressed"}))
    Detection.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataIdentifierType, location_name: 'type', traits: {"smithy.api#jsonName" => "type"}))
    Detection.type = Types::Detection
    DisableMacieRequest.type = Types::DisableMacieRequest
    DisableMacieResponse.type = Types::DisableMacieResponse
    DisableOrganizationAdminAccountRequest.add_member(:admin_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'adminAccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "adminAccountId", "smithy.api#required" => {}}))
    DisableOrganizationAdminAccountRequest.type = Types::DisableOrganizationAdminAccountRequest
    DisableOrganizationAdminAccountResponse.type = Types::DisableOrganizationAdminAccountResponse
    DisassociateFromAdministratorAccountRequest.type = Types::DisassociateFromAdministratorAccountRequest
    DisassociateFromAdministratorAccountResponse.type = Types::DisassociateFromAdministratorAccountResponse
    DisassociateFromMasterAccountRequest.type = Types::DisassociateFromMasterAccountRequest
    DisassociateFromMasterAccountResponse.type = Types::DisassociateFromMasterAccountResponse
    DisassociateMemberRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateMemberRequest.type = Types::DisassociateMemberRequest
    DisassociateMemberResponse.type = Types::DisassociateMemberResponse
    DomainDetails.add_member(:domain_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'domainName', traits: {"smithy.api#jsonName" => "domainName"}))
    DomainDetails.type = Types::DomainDetails
    EffectivePermission.add_member(:public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "PUBLIC"}))
    EffectivePermission.add_member(:not_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_PUBLIC', traits: {"smithy.api#enumValue" => "NOT_PUBLIC"}))
    EffectivePermission.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    EnableMacieRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    EnableMacieRequest.add_member(:finding_publishing_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: 'findingPublishingFrequency', traits: {"smithy.api#jsonName" => "findingPublishingFrequency"}))
    EnableMacieRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacieStatus, location_name: 'status', traits: {"smithy.api#jsonName" => "status"}))
    EnableMacieRequest.type = Types::EnableMacieRequest
    EnableMacieResponse.type = Types::EnableMacieResponse
    EnableOrganizationAdminAccountRequest.add_member(:admin_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'adminAccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "adminAccountId", "smithy.api#required" => {}}))
    EnableOrganizationAdminAccountRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    EnableOrganizationAdminAccountRequest.type = Types::EnableOrganizationAdminAccountRequest
    EnableOrganizationAdminAccountResponse.type = Types::EnableOrganizationAdminAccountResponse
    EncryptionType.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    EncryptionType.add_member(:aes256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES256', traits: {"smithy.api#enumValue" => "AES256"}))
    EncryptionType.add_member(:aws_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_kms', traits: {"smithy.api#enumValue" => "aws:kms"}))
    EncryptionType.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    EncryptionType.add_member(:aws_kms_dsse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_kms_dsse', traits: {"smithy.api#enumValue" => "aws:kms:dsse"}))
    ErrorCode.add_member(:client_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ClientError', traits: {"smithy.api#enumValue" => "ClientError"}))
    ErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InternalError', traits: {"smithy.api#enumValue" => "InternalError"}))
    FederatedUser.add_member(:access_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accessKeyId', traits: {"smithy.api#jsonName" => "accessKeyId"}))
    FederatedUser.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    FederatedUser.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    FederatedUser.add_member(:principal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#jsonName" => "principalId"}))
    FederatedUser.add_member(:session_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionContext, location_name: 'sessionContext', traits: {"smithy.api#jsonName" => "sessionContext"}))
    FederatedUser.type = Types::FederatedUser
    Finding.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    Finding.add_member(:archived, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'archived', traits: {"smithy.api#jsonName" => "archived"}))
    Finding.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCategory, location_name: 'category', traits: {"smithy.api#jsonName" => "category"}))
    Finding.add_member(:classification_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationDetails, location_name: 'classificationDetails', traits: {"smithy.api#jsonName" => "classificationDetails"}))
    Finding.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#jsonName" => "count"}))
    Finding.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#jsonName" => "createdAt"}))
    Finding.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    Finding.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    Finding.add_member(:partition, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'partition', traits: {"smithy.api#jsonName" => "partition"}))
    Finding.add_member(:policy_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDetails, location_name: 'policyDetails', traits: {"smithy.api#jsonName" => "policyDetails"}))
    Finding.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'region', traits: {"smithy.api#jsonName" => "region"}))
    Finding.add_member(:resources_affected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcesAffected, location_name: 'resourcesAffected', traits: {"smithy.api#jsonName" => "resourcesAffected"}))
    Finding.add_member(:sample, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'sample', traits: {"smithy.api#jsonName" => "sample"}))
    Finding.add_member(:schema_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'schemaVersion', traits: {"smithy.api#jsonName" => "schemaVersion"}))
    Finding.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity', traits: {"smithy.api#jsonName" => "severity"}))
    Finding.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'title', traits: {"smithy.api#jsonName" => "title"}))
    Finding.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingType, location_name: 'type', traits: {"smithy.api#jsonName" => "type"}))
    Finding.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#jsonName" => "updatedAt"}))
    Finding.type = Types::Finding
    FindingAction.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingActionType, location_name: 'actionType', traits: {"smithy.api#jsonName" => "actionType"}))
    FindingAction.add_member(:api_call_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApiCallDetails, location_name: 'apiCallDetails', traits: {"smithy.api#jsonName" => "apiCallDetails"}))
    FindingAction.type = Types::FindingAction
    FindingActionType.add_member(:aws_api_call, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_API_CALL', traits: {"smithy.api#enumValue" => "AWS_API_CALL"}))
    FindingActor.add_member(:domain_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDetails, location_name: 'domainDetails', traits: {"smithy.api#jsonName" => "domainDetails"}))
    FindingActor.add_member(:ip_address_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpAddressDetails, location_name: 'ipAddressDetails', traits: {"smithy.api#jsonName" => "ipAddressDetails"}))
    FindingActor.add_member(:user_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentity, location_name: 'userIdentity', traits: {"smithy.api#jsonName" => "userIdentity"}))
    FindingActor.type = Types::FindingActor
    FindingCategory.add_member(:classification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLASSIFICATION', traits: {"smithy.api#enumValue" => "CLASSIFICATION"}))
    FindingCategory.add_member(:policy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY', traits: {"smithy.api#enumValue" => "POLICY"}))
    FindingCriteria.add_member(:criterion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Criterion, location_name: 'criterion', traits: {"smithy.api#jsonName" => "criterion"}))
    FindingCriteria.type = Types::FindingCriteria
    FindingPublishingFrequency.add_member(:fifteen_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIFTEEN_MINUTES', traits: {"smithy.api#enumValue" => "FIFTEEN_MINUTES"}))
    FindingPublishingFrequency.add_member(:one_hour, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_HOUR', traits: {"smithy.api#enumValue" => "ONE_HOUR"}))
    FindingPublishingFrequency.add_member(:six_hours, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SIX_HOURS', traits: {"smithy.api#enumValue" => "SIX_HOURS"}))
    FindingStatisticsSortAttributeName.add_member(:group_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'groupKey', traits: {"smithy.api#enumValue" => "groupKey"}))
    FindingStatisticsSortAttributeName.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'count', traits: {"smithy.api#enumValue" => "count"}))
    FindingStatisticsSortCriteria.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatisticsSortAttributeName, location_name: 'attributeName', traits: {"smithy.api#jsonName" => "attributeName"}))
    FindingStatisticsSortCriteria.add_member(:order_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#jsonName" => "orderBy"}))
    FindingStatisticsSortCriteria.type = Types::FindingStatisticsSortCriteria
    FindingType.add_member(:sensitive_data_s3_object_multiple, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SensitiveData_S3Object_Multiple', traits: {"smithy.api#enumValue" => "SensitiveData:S3Object/Multiple"}))
    FindingType.add_member(:sensitive_data_s3_object_financial, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SensitiveData_S3Object_Financial', traits: {"smithy.api#enumValue" => "SensitiveData:S3Object/Financial"}))
    FindingType.add_member(:sensitive_data_s3_object_personal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SensitiveData_S3Object_Personal', traits: {"smithy.api#enumValue" => "SensitiveData:S3Object/Personal"}))
    FindingType.add_member(:sensitive_data_s3_object_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SensitiveData_S3Object_Credentials', traits: {"smithy.api#enumValue" => "SensitiveData:S3Object/Credentials"}))
    FindingType.add_member(:sensitive_data_s3_object_custom_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SensitiveData_S3Object_CustomIdentifier', traits: {"smithy.api#enumValue" => "SensitiveData:S3Object/CustomIdentifier"}))
    FindingType.add_member(:policy_iam_user_s3_bucket_public, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BucketPublic', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BucketPublic"}))
    FindingType.add_member(:policy_iam_user_s3_bucket_shared_externally, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BucketSharedExternally', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BucketSharedExternally"}))
    FindingType.add_member(:policy_iam_user_s3_bucket_replicated_externally, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BucketReplicatedExternally', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BucketReplicatedExternally"}))
    FindingType.add_member(:policy_iam_user_s3_bucket_encryption_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BucketEncryptionDisabled', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BucketEncryptionDisabled"}))
    FindingType.add_member(:policy_iam_user_s3_block_public_access_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BlockPublicAccessDisabled', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BlockPublicAccessDisabled"}))
    FindingType.add_member(:policy_iam_user_s3_bucket_shared_with_cloud_front, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Policy_IAMUser_S3BucketSharedWithCloudFront', traits: {"smithy.api#enumValue" => "Policy:IAMUser/S3BucketSharedWithCloudFront"}))
    FindingsFilterAction.add_member(:archive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHIVE', traits: {"smithy.api#enumValue" => "ARCHIVE"}))
    FindingsFilterAction.add_member(:noop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOOP', traits: {"smithy.api#enumValue" => "NOOP"}))
    FindingsFilterListItem.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: 'action', traits: {"smithy.api#jsonName" => "action"}))
    FindingsFilterListItem.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    FindingsFilterListItem.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    FindingsFilterListItem.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    FindingsFilterListItem.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    FindingsFilterListItem.type = Types::FindingsFilterListItem
    GetAdministratorAccountRequest.type = Types::GetAdministratorAccountRequest
    GetAdministratorAccountResponse.add_member(:administrator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Invitation, location_name: 'administrator', traits: {"smithy.api#jsonName" => "administrator"}))
    GetAdministratorAccountResponse.type = Types::GetAdministratorAccountResponse
    GetAllowListRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAllowListRequest.type = Types::GetAllowListRequest
    GetAllowListResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    GetAllowListResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#jsonName" => "createdAt"}))
    GetAllowListResponse.add_member(:criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListCriteria, location_name: 'criteria', traits: {"smithy.api#jsonName" => "criteria"}))
    GetAllowListResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max512patternss, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    GetAllowListResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin22max22patternaz0922, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    GetAllowListResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128pattern, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    GetAllowListResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListStatus, location_name: 'status', traits: {"smithy.api#jsonName" => "status"}))
    GetAllowListResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    GetAllowListResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#jsonName" => "updatedAt"}))
    GetAllowListResponse.type = Types::GetAllowListResponse
    GetAutomatedDiscoveryConfigurationRequest.type = Types::GetAutomatedDiscoveryConfigurationRequest
    GetAutomatedDiscoveryConfigurationResponse.add_member(:auto_enable_organization_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoEnableMode, location_name: 'autoEnableOrganizationMembers', traits: {"smithy.api#jsonName" => "autoEnableOrganizationMembers"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:classification_scope_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeId, location_name: 'classificationScopeId', traits: {"smithy.api#jsonName" => "classificationScopeId"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:disabled_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'disabledAt', traits: {"smithy.api#jsonName" => "disabledAt"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:first_enabled_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'firstEnabledAt', traits: {"smithy.api#jsonName" => "firstEnabledAt"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#jsonName" => "lastUpdatedAt"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:sensitivity_inspection_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateId, location_name: 'sensitivityInspectionTemplateId', traits: {"smithy.api#jsonName" => "sensitivityInspectionTemplateId"}))
    GetAutomatedDiscoveryConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryStatus, location_name: 'status', traits: {"smithy.api#jsonName" => "status"}))
    GetAutomatedDiscoveryConfigurationResponse.type = Types::GetAutomatedDiscoveryConfigurationResponse
    GetBucketStatisticsRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    GetBucketStatisticsRequest.type = Types::GetBucketStatisticsRequest
    GetBucketStatisticsResponse.add_member(:bucket_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'bucketCount', traits: {"smithy.api#jsonName" => "bucketCount"}))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_effective_permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCountByEffectivePermission, location_name: 'bucketCountByEffectivePermission', traits: {"smithy.api#jsonName" => "bucketCountByEffectivePermission"}))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_encryption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCountByEncryptionType, location_name: 'bucketCountByEncryptionType', traits: {"smithy.api#jsonName" => "bucketCountByEncryptionType"}))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_object_encryption_requirement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCountPolicyAllowsUnencryptedObjectUploads, location_name: 'bucketCountByObjectEncryptionRequirement', traits: {"smithy.api#jsonName" => "bucketCountByObjectEncryptionRequirement"}))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_shared_access_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketCountBySharedAccessType, location_name: 'bucketCountBySharedAccessType', traits: {"smithy.api#jsonName" => "bucketCountBySharedAccessType"}))
    GetBucketStatisticsResponse.add_member(:bucket_statistics_by_sensitivity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketStatisticsBySensitivity, location_name: 'bucketStatisticsBySensitivity', traits: {"smithy.api#jsonName" => "bucketStatisticsBySensitivity"}))
    GetBucketStatisticsResponse.add_member(:classifiable_object_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableObjectCount', traits: {"smithy.api#jsonName" => "classifiableObjectCount"}))
    GetBucketStatisticsResponse.add_member(:classifiable_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableSizeInBytes', traits: {"smithy.api#jsonName" => "classifiableSizeInBytes"}))
    GetBucketStatisticsResponse.add_member(:last_updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastUpdated', traits: {"smithy.api#jsonName" => "lastUpdated"}))
    GetBucketStatisticsResponse.add_member(:object_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'objectCount', traits: {"smithy.api#jsonName" => "objectCount"}))
    GetBucketStatisticsResponse.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytes', traits: {"smithy.api#jsonName" => "sizeInBytes"}))
    GetBucketStatisticsResponse.add_member(:size_in_bytes_compressed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytesCompressed', traits: {"smithy.api#jsonName" => "sizeInBytesCompressed"}))
    GetBucketStatisticsResponse.add_member(:unclassifiable_object_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectCount', traits: {"smithy.api#jsonName" => "unclassifiableObjectCount"}))
    GetBucketStatisticsResponse.add_member(:unclassifiable_object_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectSizeInBytes', traits: {"smithy.api#jsonName" => "unclassifiableObjectSizeInBytes"}))
    GetBucketStatisticsResponse.type = Types::GetBucketStatisticsResponse
    GetClassificationExportConfigurationRequest.type = Types::GetClassificationExportConfigurationRequest
    GetClassificationExportConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationExportConfiguration, location_name: 'configuration', traits: {"smithy.api#jsonName" => "configuration"}))
    GetClassificationExportConfigurationResponse.type = Types::GetClassificationExportConfigurationResponse
    GetClassificationScopeRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetClassificationScopeRequest.type = Types::GetClassificationScopeRequest
    GetClassificationScopeResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeId, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    GetClassificationScopeResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeName, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    GetClassificationScopeResponse.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ClassificationScope, location_name: 's3', traits: {"smithy.api#jsonName" => "s3"}))
    GetClassificationScopeResponse.type = Types::GetClassificationScopeResponse
    GetCustomDataIdentifierRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCustomDataIdentifierRequest.type = Types::GetCustomDataIdentifierRequest
    GetCustomDataIdentifierResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    GetCustomDataIdentifierResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#jsonName" => "createdAt"}))
    GetCustomDataIdentifierResponse.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'deleted', traits: {"smithy.api#jsonName" => "deleted"}))
    GetCustomDataIdentifierResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    GetCustomDataIdentifierResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    GetCustomDataIdentifierResponse.add_member(:ignore_words, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ignoreWords', traits: {"smithy.api#jsonName" => "ignoreWords"}))
    GetCustomDataIdentifierResponse.add_member(:keywords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'keywords', traits: {"smithy.api#jsonName" => "keywords"}))
    GetCustomDataIdentifierResponse.add_member(:maximum_match_distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maximumMatchDistance', traits: {"smithy.api#jsonName" => "maximumMatchDistance"}))
    GetCustomDataIdentifierResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    GetCustomDataIdentifierResponse.add_member(:regex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regex', traits: {"smithy.api#jsonName" => "regex"}))
    GetCustomDataIdentifierResponse.add_member(:severity_levels, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevelList, location_name: 'severityLevels', traits: {"smithy.api#jsonName" => "severityLevels"}))
    GetCustomDataIdentifierResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    GetCustomDataIdentifierResponse.type = Types::GetCustomDataIdentifierResponse
    GetFindingStatisticsRequest.add_member(:finding_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCriteria, location_name: 'findingCriteria', traits: {"smithy.api#jsonName" => "findingCriteria"}))
    GetFindingStatisticsRequest.add_member(:group_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupBy, location_name: 'groupBy', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "groupBy", "smithy.api#required" => {}}))
    GetFindingStatisticsRequest.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'size', traits: {"smithy.api#jsonName" => "size"}))
    GetFindingStatisticsRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingStatisticsSortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#jsonName" => "sortCriteria"}))
    GetFindingStatisticsRequest.type = Types::GetFindingStatisticsRequest
    GetFindingStatisticsResponse.add_member(:counts_by_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofgroupcount, location_name: 'countsByGroup', traits: {"smithy.api#jsonName" => "countsByGroup"}))
    GetFindingStatisticsResponse.type = Types::GetFindingStatisticsResponse
    GetFindingsFilterRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetFindingsFilterRequest.type = Types::GetFindingsFilterRequest
    GetFindingsFilterResponse.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: 'action', traits: {"smithy.api#jsonName" => "action"}))
    GetFindingsFilterResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    GetFindingsFilterResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    GetFindingsFilterResponse.add_member(:finding_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCriteria, location_name: 'findingCriteria', traits: {"smithy.api#jsonName" => "findingCriteria"}))
    GetFindingsFilterResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    GetFindingsFilterResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    GetFindingsFilterResponse.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'position', traits: {"smithy.api#jsonName" => "position"}))
    GetFindingsFilterResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    GetFindingsFilterResponse.type = Types::GetFindingsFilterResponse
    GetFindingsPublicationConfigurationRequest.type = Types::GetFindingsPublicationConfigurationRequest
    GetFindingsPublicationConfigurationResponse.add_member(:security_hub_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityHubConfiguration, location_name: 'securityHubConfiguration', traits: {"smithy.api#jsonName" => "securityHubConfiguration"}))
    GetFindingsPublicationConfigurationResponse.type = Types::GetFindingsPublicationConfigurationResponse
    GetFindingsRequest.add_member(:finding_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'findingIds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "findingIds", "smithy.api#required" => {}}))
    GetFindingsRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#jsonName" => "sortCriteria"}))
    GetFindingsRequest.type = Types::GetFindingsRequest
    GetFindingsResponse.add_member(:findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listoffinding, location_name: 'findings', traits: {"smithy.api#jsonName" => "findings"}))
    GetFindingsResponse.type = Types::GetFindingsResponse
    GetInvitationsCountRequest.type = Types::GetInvitationsCountRequest
    GetInvitationsCountResponse.add_member(:invitations_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'invitationsCount', traits: {"smithy.api#jsonName" => "invitationsCount"}))
    GetInvitationsCountResponse.type = Types::GetInvitationsCountResponse
    GetMacieSessionRequest.type = Types::GetMacieSessionRequest
    GetMacieSessionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#jsonName" => "createdAt"}))
    GetMacieSessionResponse.add_member(:finding_publishing_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: 'findingPublishingFrequency', traits: {"smithy.api#jsonName" => "findingPublishingFrequency"}))
    GetMacieSessionResponse.add_member(:service_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serviceRole', traits: {"smithy.api#jsonName" => "serviceRole"}))
    GetMacieSessionResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacieStatus, location_name: 'status', traits: {"smithy.api#jsonName" => "status"}))
    GetMacieSessionResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#jsonName" => "updatedAt"}))
    GetMacieSessionResponse.type = Types::GetMacieSessionResponse
    GetMasterAccountRequest.type = Types::GetMasterAccountRequest
    GetMasterAccountResponse.add_member(:master, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Invitation, location_name: 'master', traits: {"smithy.api#jsonName" => "master"}))
    GetMasterAccountResponse.type = Types::GetMasterAccountResponse
    GetMemberRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMemberRequest.type = Types::GetMemberRequest
    GetMemberResponse.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    GetMemberResponse.add_member(:administrator_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'administratorAccountId', traits: {"smithy.api#jsonName" => "administratorAccountId"}))
    GetMemberResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    GetMemberResponse.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'email', traits: {"smithy.api#jsonName" => "email"}))
    GetMemberResponse.add_member(:invited_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'invitedAt', traits: {"smithy.api#jsonName" => "invitedAt"}))
    GetMemberResponse.add_member(:master_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'masterAccountId', traits: {"smithy.api#jsonName" => "masterAccountId"}))
    GetMemberResponse.add_member(:relationship_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: 'relationshipStatus', traits: {"smithy.api#jsonName" => "relationshipStatus"}))
    GetMemberResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    GetMemberResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#jsonName" => "updatedAt"}))
    GetMemberResponse.type = Types::GetMemberResponse
    GetResourceProfileRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    GetResourceProfileRequest.type = Types::GetResourceProfileRequest
    GetResourceProfileResponse.add_member(:profile_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'profileUpdatedAt', traits: {"smithy.api#jsonName" => "profileUpdatedAt"}))
    GetResourceProfileResponse.add_member(:sensitivity_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sensitivityScore', traits: {"smithy.api#jsonName" => "sensitivityScore"}))
    GetResourceProfileResponse.add_member(:sensitivity_score_overridden, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'sensitivityScoreOverridden', traits: {"smithy.api#jsonName" => "sensitivityScoreOverridden"}))
    GetResourceProfileResponse.add_member(:statistics, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStatistics, location_name: 'statistics', traits: {"smithy.api#jsonName" => "statistics"}))
    GetResourceProfileResponse.type = Types::GetResourceProfileResponse
    GetRevealConfigurationRequest.type = Types::GetRevealConfigurationRequest
    GetRevealConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevealConfiguration, location_name: 'configuration', traits: {"smithy.api#jsonName" => "configuration"}))
    GetRevealConfigurationResponse.add_member(:retrieval_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalConfiguration, location_name: 'retrievalConfiguration', traits: {"smithy.api#jsonName" => "retrievalConfiguration"}))
    GetRevealConfigurationResponse.type = Types::GetRevealConfigurationResponse
    GetSensitiveDataOccurrencesAvailabilityRequest.add_member(:finding_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'findingId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSensitiveDataOccurrencesAvailabilityRequest.type = Types::GetSensitiveDataOccurrencesAvailabilityRequest
    GetSensitiveDataOccurrencesAvailabilityResponse.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityCode, location_name: 'code', traits: {"smithy.api#jsonName" => "code"}))
    GetSensitiveDataOccurrencesAvailabilityResponse.add_member(:reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofunavailabilityreasoncode, location_name: 'reasons', traits: {"smithy.api#jsonName" => "reasons"}))
    GetSensitiveDataOccurrencesAvailabilityResponse.type = Types::GetSensitiveDataOccurrencesAvailabilityResponse
    GetSensitiveDataOccurrencesRequest.add_member(:finding_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'findingId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSensitiveDataOccurrencesRequest.type = Types::GetSensitiveDataOccurrencesRequest
    GetSensitiveDataOccurrencesResponse.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'error', traits: {"smithy.api#jsonName" => "error"}))
    GetSensitiveDataOccurrencesResponse.add_member(:sensitive_data_occurrences, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveDataOccurrences, location_name: 'sensitiveDataOccurrences', traits: {"smithy.api#jsonName" => "sensitiveDataOccurrences"}))
    GetSensitiveDataOccurrencesResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevealRequestStatus, location_name: 'status', traits: {"smithy.api#jsonName" => "status"}))
    GetSensitiveDataOccurrencesResponse.type = Types::GetSensitiveDataOccurrencesResponse
    GetSensitivityInspectionTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSensitivityInspectionTemplateRequest.type = Types::GetSensitivityInspectionTemplateRequest
    GetSensitivityInspectionTemplateResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    GetSensitivityInspectionTemplateResponse.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateExcludes, location_name: 'excludes', traits: {"smithy.api#jsonName" => "excludes"}))
    GetSensitivityInspectionTemplateResponse.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateIncludes, location_name: 'includes', traits: {"smithy.api#jsonName" => "includes"}))
    GetSensitivityInspectionTemplateResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    GetSensitivityInspectionTemplateResponse.add_member(:sensitivity_inspection_template_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateId, location_name: 'sensitivityInspectionTemplateId', traits: {"smithy.api#jsonName" => "sensitivityInspectionTemplateId"}))
    GetSensitivityInspectionTemplateResponse.type = Types::GetSensitivityInspectionTemplateResponse
    GetUsageStatisticsRequest.add_member(:filter_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofusagestatisticsfilter, location_name: 'filterBy', traits: {"smithy.api#jsonName" => "filterBy"}))
    GetUsageStatisticsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#jsonName" => "maxResults"}))
    GetUsageStatisticsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    GetUsageStatisticsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatisticsSortBy, location_name: 'sortBy', traits: {"smithy.api#jsonName" => "sortBy"}))
    GetUsageStatisticsRequest.add_member(:time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'timeRange', traits: {"smithy.api#jsonName" => "timeRange"}))
    GetUsageStatisticsRequest.type = Types::GetUsageStatisticsRequest
    GetUsageStatisticsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    GetUsageStatisticsResponse.add_member(:records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofusagerecord, location_name: 'records', traits: {"smithy.api#jsonName" => "records"}))
    GetUsageStatisticsResponse.add_member(:time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'timeRange', traits: {"smithy.api#jsonName" => "timeRange"}))
    GetUsageStatisticsResponse.type = Types::GetUsageStatisticsResponse
    GetUsageTotalsRequest.add_member(:time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'timeRange', traits: {"smithy.api#httpQuery" => "timeRange"}))
    GetUsageTotalsRequest.type = Types::GetUsageTotalsRequest
    GetUsageTotalsResponse.add_member(:time_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeRange, location_name: 'timeRange', traits: {"smithy.api#jsonName" => "timeRange"}))
    GetUsageTotalsResponse.add_member(:usage_totals, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofusagetotal, location_name: 'usageTotals', traits: {"smithy.api#jsonName" => "usageTotals"}))
    GetUsageTotalsResponse.type = Types::GetUsageTotalsResponse
    GroupBy.add_member(:resources_affected_s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'resourcesAffected_s3Bucket_name', traits: {"smithy.api#enumValue" => "resourcesAffected.s3Bucket.name"}))
    GroupBy.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'type', traits: {"smithy.api#enumValue" => "type"}))
    GroupBy.add_member(:classification_details_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'classificationDetails_jobId', traits: {"smithy.api#enumValue" => "classificationDetails.jobId"}))
    GroupBy.add_member(:severity_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'severity_description', traits: {"smithy.api#enumValue" => "severity.description"}))
    GroupCount.add_member(:count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'count', traits: {"smithy.api#jsonName" => "count"}))
    GroupCount.add_member(:group_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'groupKey', traits: {"smithy.api#jsonName" => "groupKey"}))
    GroupCount.type = Types::GroupCount
    IamUser.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    IamUser.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    IamUser.add_member(:principal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#jsonName" => "principalId"}))
    IamUser.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userName', traits: {"smithy.api#jsonName" => "userName"}))
    IamUser.type = Types::IamUser
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#jsonName" => "message"}))
    InternalServerException.type = Types::InternalServerException
    Invitation.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    Invitation.add_member(:invitation_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'invitationId', traits: {"smithy.api#jsonName" => "invitationId"}))
    Invitation.add_member(:invited_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'invitedAt', traits: {"smithy.api#jsonName" => "invitedAt"}))
    Invitation.add_member(:relationship_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: 'relationshipStatus', traits: {"smithy.api#jsonName" => "relationshipStatus"}))
    Invitation.type = Types::Invitation
    IpAddressDetails.add_member(:ip_address_v4, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ipAddressV4', traits: {"smithy.api#jsonName" => "ipAddressV4"}))
    IpAddressDetails.add_member(:ip_city, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpCity, location_name: 'ipCity', traits: {"smithy.api#jsonName" => "ipCity"}))
    IpAddressDetails.add_member(:ip_country, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpCountry, location_name: 'ipCountry', traits: {"smithy.api#jsonName" => "ipCountry"}))
    IpAddressDetails.add_member(:ip_geo_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpGeoLocation, location_name: 'ipGeoLocation', traits: {"smithy.api#jsonName" => "ipGeoLocation"}))
    IpAddressDetails.add_member(:ip_owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IpOwner, location_name: 'ipOwner', traits: {"smithy.api#jsonName" => "ipOwner"}))
    IpAddressDetails.type = Types::IpAddressDetails
    IpCity.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    IpCity.type = Types::IpCity
    IpCountry.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#jsonName" => "code"}))
    IpCountry.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    IpCountry.type = Types::IpCountry
    IpGeoLocation.add_member(:lat, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'lat', traits: {"smithy.api#jsonName" => "lat"}))
    IpGeoLocation.add_member(:lon, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'lon', traits: {"smithy.api#jsonName" => "lon"}))
    IpGeoLocation.type = Types::IpGeoLocation
    IpOwner.add_member(:asn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'asn', traits: {"smithy.api#jsonName" => "asn"}))
    IpOwner.add_member(:asn_org, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'asnOrg', traits: {"smithy.api#jsonName" => "asnOrg"}))
    IpOwner.add_member(:isp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'isp', traits: {"smithy.api#jsonName" => "isp"}))
    IpOwner.add_member(:org, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'org', traits: {"smithy.api#jsonName" => "org"}))
    IpOwner.type = Types::IpOwner
    IsDefinedInJob.add_member(:true, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    IsDefinedInJob.add_member(:false, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    IsDefinedInJob.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    IsMonitoredByJob.add_member(:true, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    IsMonitoredByJob.add_member(:false, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    IsMonitoredByJob.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    JobComparator.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQ', traits: {"smithy.api#enumValue" => "EQ"}))
    JobComparator.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GT', traits: {"smithy.api#enumValue" => "GT"}))
    JobComparator.add_member(:gte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GTE', traits: {"smithy.api#enumValue" => "GTE"}))
    JobComparator.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LT', traits: {"smithy.api#enumValue" => "LT"}))
    JobComparator.add_member(:lte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LTE', traits: {"smithy.api#enumValue" => "LTE"}))
    JobComparator.add_member(:ne, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NE', traits: {"smithy.api#enumValue" => "NE"}))
    JobComparator.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    JobComparator.add_member(:starts_with, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTS_WITH', traits: {"smithy.api#enumValue" => "STARTS_WITH"}))
    JobDetails.add_member(:is_defined_in_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsDefinedInJob, location_name: 'isDefinedInJob', traits: {"smithy.api#jsonName" => "isDefinedInJob"}))
    JobDetails.add_member(:is_monitored_by_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IsMonitoredByJob, location_name: 'isMonitoredByJob', traits: {"smithy.api#jsonName" => "isMonitoredByJob"}))
    JobDetails.add_member(:last_job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lastJobId', traits: {"smithy.api#jsonName" => "lastJobId"}))
    JobDetails.add_member(:last_job_run_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastJobRunTime', traits: {"smithy.api#jsonName" => "lastJobRunTime"}))
    JobDetails.type = Types::JobDetails
    JobScheduleFrequency.add_member(:daily_schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DailySchedule, location_name: 'dailySchedule', traits: {"smithy.api#jsonName" => "dailySchedule"}))
    JobScheduleFrequency.add_member(:monthly_schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MonthlySchedule, location_name: 'monthlySchedule', traits: {"smithy.api#jsonName" => "monthlySchedule"}))
    JobScheduleFrequency.add_member(:weekly_schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WeeklySchedule, location_name: 'weeklySchedule', traits: {"smithy.api#jsonName" => "weeklySchedule"}))
    JobScheduleFrequency.type = Types::JobScheduleFrequency
    JobScopeTerm.add_member(:simple_scope_term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleScopeTerm, location_name: 'simpleScopeTerm', traits: {"smithy.api#jsonName" => "simpleScopeTerm"}))
    JobScopeTerm.add_member(:tag_scope_term, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagScopeTerm, location_name: 'tagScopeTerm', traits: {"smithy.api#jsonName" => "tagScopeTerm"}))
    JobScopeTerm.type = Types::JobScopeTerm
    JobScopingBlock.add_member(:and, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofjobscopeterm, location_name: 'and', traits: {"smithy.api#jsonName" => "and"}))
    JobScopingBlock.type = Types::JobScopingBlock
    JobStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    JobStatus.add_member(:paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    JobStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    JobStatus.add_member(:complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETE', traits: {"smithy.api#enumValue" => "COMPLETE"}))
    JobStatus.add_member(:idle, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IDLE', traits: {"smithy.api#enumValue" => "IDLE"}))
    JobStatus.add_member(:user_paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_PAUSED', traits: {"smithy.api#enumValue" => "USER_PAUSED"}))
    JobSummary.add_member(:bucket_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketCriteriaForJob, location_name: 'bucketCriteria', traits: {"smithy.api#jsonName" => "bucketCriteria"}))
    JobSummary.add_member(:bucket_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofs3bucketdefinitionforjob, location_name: 'bucketDefinitions', traits: {"smithy.api#jsonName" => "bucketDefinitions"}))
    JobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#jsonName" => "createdAt"}))
    JobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#jsonName" => "jobId"}))
    JobSummary.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#jsonName" => "jobStatus"}))
    JobSummary.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobType, location_name: 'jobType', traits: {"smithy.api#jsonName" => "jobType"}))
    JobSummary.add_member(:last_run_error_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastRunErrorStatus, location_name: 'lastRunErrorStatus', traits: {"smithy.api#jsonName" => "lastRunErrorStatus"}))
    JobSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    JobSummary.add_member(:user_paused_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserPausedDetails, location_name: 'userPausedDetails', traits: {"smithy.api#jsonName" => "userPausedDetails"}))
    JobSummary.type = Types::JobSummary
    JobType.add_member(:one_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_TIME', traits: {"smithy.api#enumValue" => "ONE_TIME"}))
    JobType.add_member(:scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SCHEDULED', traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    KeyValuePair.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    KeyValuePair.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#jsonName" => "value"}))
    KeyValuePair.type = Types::KeyValuePair
    KeyValuePairList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuePair)
    LastRunErrorStatus.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LastRunErrorStatusCode, location_name: 'code', traits: {"smithy.api#jsonName" => "code"}))
    LastRunErrorStatus.type = Types::LastRunErrorStatus
    LastRunErrorStatusCode.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    LastRunErrorStatusCode.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    ListAllowListsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAllowListsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAllowListsRequest.type = Types::ListAllowListsRequest
    ListAllowListsResponse.add_member(:allow_lists, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofallowlistsummary, location_name: 'allowLists', traits: {"smithy.api#jsonName" => "allowLists"}))
    ListAllowListsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListAllowListsResponse.type = Types::ListAllowListsResponse
    ListAutomatedDiscoveryAccountsRequest.add_member(:account_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'accountIds', traits: {"smithy.api#httpQuery" => "accountIds"}))
    ListAutomatedDiscoveryAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListAutomatedDiscoveryAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListAutomatedDiscoveryAccountsRequest.type = Types::ListAutomatedDiscoveryAccountsRequest
    ListAutomatedDiscoveryAccountsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofautomateddiscoveryaccount, location_name: 'items', traits: {"smithy.api#jsonName" => "items"}))
    ListAutomatedDiscoveryAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListAutomatedDiscoveryAccountsResponse.type = Types::ListAutomatedDiscoveryAccountsResponse
    ListClassificationJobsRequest.add_member(:filter_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsFilterCriteria, location_name: 'filterCriteria', traits: {"smithy.api#jsonName" => "filterCriteria"}))
    ListClassificationJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#jsonName" => "maxResults"}))
    ListClassificationJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListClassificationJobsRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsSortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#jsonName" => "sortCriteria"}))
    ListClassificationJobsRequest.type = Types::ListClassificationJobsRequest
    ListClassificationJobsResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofjobsummary, location_name: 'items', traits: {"smithy.api#jsonName" => "items"}))
    ListClassificationJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListClassificationJobsResponse.type = Types::ListClassificationJobsResponse
    ListClassificationScopesRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#httpQuery" => "name"}))
    ListClassificationScopesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListClassificationScopesRequest.type = Types::ListClassificationScopesRequest
    ListClassificationScopesResponse.add_member(:classification_scopes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofclassificationscopesummary, location_name: 'classificationScopes', traits: {"smithy.api#jsonName" => "classificationScopes"}))
    ListClassificationScopesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListClassificationScopesResponse.type = Types::ListClassificationScopesResponse
    ListCustomDataIdentifiersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#jsonName" => "maxResults"}))
    ListCustomDataIdentifiersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListCustomDataIdentifiersRequest.type = Types::ListCustomDataIdentifiersRequest
    ListCustomDataIdentifiersResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofcustomdataidentifiersummary, location_name: 'items', traits: {"smithy.api#jsonName" => "items"}))
    ListCustomDataIdentifiersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListCustomDataIdentifiersResponse.type = Types::ListCustomDataIdentifiersResponse
    ListFindingsFiltersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFindingsFiltersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFindingsFiltersRequest.type = Types::ListFindingsFiltersRequest
    ListFindingsFiltersResponse.add_member(:findings_filter_list_items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listoffindingsfilterlistitem, location_name: 'findingsFilterListItems', traits: {"smithy.api#jsonName" => "findingsFilterListItems"}))
    ListFindingsFiltersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListFindingsFiltersResponse.type = Types::ListFindingsFiltersResponse
    ListFindingsRequest.add_member(:finding_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCriteria, location_name: 'findingCriteria', traits: {"smithy.api#jsonName" => "findingCriteria"}))
    ListFindingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#jsonName" => "maxResults"}))
    ListFindingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListFindingsRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#jsonName" => "sortCriteria"}))
    ListFindingsRequest.type = Types::ListFindingsRequest
    ListFindingsResponse.add_member(:finding_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'findingIds', traits: {"smithy.api#jsonName" => "findingIds"}))
    ListFindingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListFindingsResponse.type = Types::ListFindingsResponse
    ListInvitationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListInvitationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListInvitationsRequest.type = Types::ListInvitationsRequest
    ListInvitationsResponse.add_member(:invitations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofinvitation, location_name: 'invitations', traits: {"smithy.api#jsonName" => "invitations"}))
    ListInvitationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListInvitationsResponse.type = Types::ListInvitationsResponse
    ListJobsFilterCriteria.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listoflistjobsfilterterm, location_name: 'excludes', traits: {"smithy.api#jsonName" => "excludes"}))
    ListJobsFilterCriteria.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listoflistjobsfilterterm, location_name: 'includes', traits: {"smithy.api#jsonName" => "includes"}))
    ListJobsFilterCriteria.type = Types::ListJobsFilterCriteria
    ListJobsFilterKey.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'jobType', traits: {"smithy.api#enumValue" => "jobType"}))
    ListJobsFilterKey.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'jobStatus', traits: {"smithy.api#enumValue" => "jobStatus"}))
    ListJobsFilterKey.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'createdAt', traits: {"smithy.api#enumValue" => "createdAt"}))
    ListJobsFilterKey.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'name', traits: {"smithy.api#enumValue" => "name"}))
    ListJobsFilterTerm.add_member(:comparator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobComparator, location_name: 'comparator', traits: {"smithy.api#jsonName" => "comparator"}))
    ListJobsFilterTerm.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsFilterKey, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    ListJobsFilterTerm.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'values', traits: {"smithy.api#jsonName" => "values"}))
    ListJobsFilterTerm.type = Types::ListJobsFilterTerm
    ListJobsSortAttributeName.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'createdAt', traits: {"smithy.api#enumValue" => "createdAt"}))
    ListJobsSortAttributeName.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'jobStatus', traits: {"smithy.api#enumValue" => "jobStatus"}))
    ListJobsSortAttributeName.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'name', traits: {"smithy.api#enumValue" => "name"}))
    ListJobsSortAttributeName.add_member(:job_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'jobType', traits: {"smithy.api#enumValue" => "jobType"}))
    ListJobsSortCriteria.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsSortAttributeName, location_name: 'attributeName', traits: {"smithy.api#jsonName" => "attributeName"}))
    ListJobsSortCriteria.add_member(:order_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#jsonName" => "orderBy"}))
    ListJobsSortCriteria.type = Types::ListJobsSortCriteria
    ListManagedDataIdentifiersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListManagedDataIdentifiersRequest.type = Types::ListManagedDataIdentifiersRequest
    ListManagedDataIdentifiersResponse.add_member(:items, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofmanageddataidentifiersummary, location_name: 'items', traits: {"smithy.api#jsonName" => "items"}))
    ListManagedDataIdentifiersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListManagedDataIdentifiersResponse.type = Types::ListManagedDataIdentifiersResponse
    ListMembersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListMembersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListMembersRequest.add_member(:only_associated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'onlyAssociated', traits: {"smithy.api#httpQuery" => "onlyAssociated"}))
    ListMembersRequest.type = Types::ListMembersRequest
    ListMembersResponse.add_member(:members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofmember, location_name: 'members', traits: {"smithy.api#jsonName" => "members"}))
    ListMembersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListMembersResponse.type = Types::ListMembersResponse
    ListOrganizationAdminAccountsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListOrganizationAdminAccountsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListOrganizationAdminAccountsRequest.type = Types::ListOrganizationAdminAccountsRequest
    ListOrganizationAdminAccountsResponse.add_member(:admin_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofadminaccount, location_name: 'adminAccounts', traits: {"smithy.api#jsonName" => "adminAccounts"}))
    ListOrganizationAdminAccountsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListOrganizationAdminAccountsResponse.type = Types::ListOrganizationAdminAccountsResponse
    ListResourceProfileArtifactsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResourceProfileArtifactsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListResourceProfileArtifactsRequest.type = Types::ListResourceProfileArtifactsRequest
    ListResourceProfileArtifactsResponse.add_member(:artifacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofresourceprofileartifact, location_name: 'artifacts', traits: {"smithy.api#jsonName" => "artifacts"}))
    ListResourceProfileArtifactsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListResourceProfileArtifactsResponse.type = Types::ListResourceProfileArtifactsResponse
    ListResourceProfileDetectionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListResourceProfileDetectionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListResourceProfileDetectionsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListResourceProfileDetectionsRequest.type = Types::ListResourceProfileDetectionsRequest
    ListResourceProfileDetectionsResponse.add_member(:detections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdetection, location_name: 'detections', traits: {"smithy.api#jsonName" => "detections"}))
    ListResourceProfileDetectionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListResourceProfileDetectionsResponse.type = Types::ListResourceProfileDetectionsResponse
    ListSensitivityInspectionTemplatesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSensitivityInspectionTemplatesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSensitivityInspectionTemplatesRequest.type = Types::ListSensitivityInspectionTemplatesRequest
    ListSensitivityInspectionTemplatesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    ListSensitivityInspectionTemplatesResponse.add_member(:sensitivity_inspection_templates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsensitivityinspectiontemplatesentry, location_name: 'sensitivityInspectionTemplates', traits: {"smithy.api#jsonName" => "sensitivityInspectionTemplates"}))
    ListSensitivityInspectionTemplatesResponse.type = Types::ListSensitivityInspectionTemplatesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MacieStatus.add_member(:paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAUSED', traits: {"smithy.api#enumValue" => "PAUSED"}))
    MacieStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ManagedDataIdentifierSelector.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    ManagedDataIdentifierSelector.add_member(:exclude, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXCLUDE', traits: {"smithy.api#enumValue" => "EXCLUDE"}))
    ManagedDataIdentifierSelector.add_member(:include, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INCLUDE', traits: {"smithy.api#enumValue" => "INCLUDE"}))
    ManagedDataIdentifierSelector.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    ManagedDataIdentifierSelector.add_member(:recommended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RECOMMENDED', traits: {"smithy.api#enumValue" => "RECOMMENDED"}))
    ManagedDataIdentifierSummary.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveDataItemCategory, location_name: 'category', traits: {"smithy.api#jsonName" => "category"}))
    ManagedDataIdentifierSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    ManagedDataIdentifierSummary.type = Types::ManagedDataIdentifierSummary
    MatchingBucket.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    MatchingBucket.add_member(:automated_discovery_monitoring_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryMonitoringStatus, location_name: 'automatedDiscoveryMonitoringStatus', traits: {"smithy.api#jsonName" => "automatedDiscoveryMonitoringStatus"}))
    MatchingBucket.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketName', traits: {"smithy.api#jsonName" => "bucketName"}))
    MatchingBucket.add_member(:classifiable_object_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableObjectCount', traits: {"smithy.api#jsonName" => "classifiableObjectCount"}))
    MatchingBucket.add_member(:classifiable_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableSizeInBytes', traits: {"smithy.api#jsonName" => "classifiableSizeInBytes"}))
    MatchingBucket.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketMetadataErrorCode, location_name: 'errorCode', traits: {"smithy.api#jsonName" => "errorCode"}))
    MatchingBucket.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage', traits: {"smithy.api#jsonName" => "errorMessage"}))
    MatchingBucket.add_member(:job_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobDetails, location_name: 'jobDetails', traits: {"smithy.api#jsonName" => "jobDetails"}))
    MatchingBucket.add_member(:last_automated_discovery_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastAutomatedDiscoveryTime', traits: {"smithy.api#jsonName" => "lastAutomatedDiscoveryTime"}))
    MatchingBucket.add_member(:object_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'objectCount', traits: {"smithy.api#jsonName" => "objectCount"}))
    MatchingBucket.add_member(:object_count_by_encryption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectCountByEncryptionType, location_name: 'objectCountByEncryptionType', traits: {"smithy.api#jsonName" => "objectCountByEncryptionType"}))
    MatchingBucket.add_member(:sensitivity_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sensitivityScore', traits: {"smithy.api#jsonName" => "sensitivityScore"}))
    MatchingBucket.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytes', traits: {"smithy.api#jsonName" => "sizeInBytes"}))
    MatchingBucket.add_member(:size_in_bytes_compressed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'sizeInBytesCompressed', traits: {"smithy.api#jsonName" => "sizeInBytesCompressed"}))
    MatchingBucket.add_member(:unclassifiable_object_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectCount', traits: {"smithy.api#jsonName" => "unclassifiableObjectCount"}))
    MatchingBucket.add_member(:unclassifiable_object_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectLevelStatistics, location_name: 'unclassifiableObjectSizeInBytes', traits: {"smithy.api#jsonName" => "unclassifiableObjectSizeInBytes"}))
    MatchingBucket.type = Types::MatchingBucket
    MatchingResource.add_member(:matching_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchingBucket, location_name: 'matchingBucket', traits: {"smithy.api#jsonName" => "matchingBucket"}))
    MatchingResource.type = Types::MatchingResource
    Member.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    Member.add_member(:administrator_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'administratorAccountId', traits: {"smithy.api#jsonName" => "administratorAccountId"}))
    Member.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    Member.add_member(:email, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'email', traits: {"smithy.api#jsonName" => "email"}))
    Member.add_member(:invited_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'invitedAt', traits: {"smithy.api#jsonName" => "invitedAt"}))
    Member.add_member(:master_account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'masterAccountId', traits: {"smithy.api#jsonName" => "masterAccountId"}))
    Member.add_member(:relationship_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: 'relationshipStatus', traits: {"smithy.api#jsonName" => "relationshipStatus"}))
    Member.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    Member.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'updatedAt', traits: {"smithy.api#jsonName" => "updatedAt"}))
    Member.type = Types::Member
    MonthlySchedule.add_member(:day_of_month, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'dayOfMonth', traits: {"smithy.api#jsonName" => "dayOfMonth"}))
    MonthlySchedule.type = Types::MonthlySchedule
    ObjectCountByEncryptionType.add_member(:customer_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'customerManaged', traits: {"smithy.api#jsonName" => "customerManaged"}))
    ObjectCountByEncryptionType.add_member(:kms_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'kmsManaged', traits: {"smithy.api#jsonName" => "kmsManaged"}))
    ObjectCountByEncryptionType.add_member(:s3_managed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 's3Managed', traits: {"smithy.api#jsonName" => "s3Managed"}))
    ObjectCountByEncryptionType.add_member(:unencrypted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unencrypted', traits: {"smithy.api#jsonName" => "unencrypted"}))
    ObjectCountByEncryptionType.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'unknown', traits: {"smithy.api#jsonName" => "unknown"}))
    ObjectCountByEncryptionType.type = Types::ObjectCountByEncryptionType
    ObjectLevelStatistics.add_member(:file_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'fileType', traits: {"smithy.api#jsonName" => "fileType"}))
    ObjectLevelStatistics.add_member(:storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'storageClass', traits: {"smithy.api#jsonName" => "storageClass"}))
    ObjectLevelStatistics.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'total', traits: {"smithy.api#jsonName" => "total"}))
    ObjectLevelStatistics.type = Types::ObjectLevelStatistics
    Occurrences.add_member(:cells, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cells, location_name: 'cells', traits: {"smithy.api#jsonName" => "cells"}))
    Occurrences.add_member(:line_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ranges, location_name: 'lineRanges', traits: {"smithy.api#jsonName" => "lineRanges"}))
    Occurrences.add_member(:offset_ranges, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Ranges, location_name: 'offsetRanges', traits: {"smithy.api#jsonName" => "offsetRanges"}))
    Occurrences.add_member(:pages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Pages, location_name: 'pages', traits: {"smithy.api#jsonName" => "pages"}))
    Occurrences.add_member(:records, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Records, location_name: 'records', traits: {"smithy.api#jsonName" => "records"}))
    Occurrences.type = Types::Occurrences
    OrderBy.add_member(:asc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASC', traits: {"smithy.api#enumValue" => "ASC"}))
    OrderBy.add_member(:desc, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESC', traits: {"smithy.api#enumValue" => "DESC"}))
    OriginType.add_member(:sensitive_data_discovery_job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENSITIVE_DATA_DISCOVERY_JOB', traits: {"smithy.api#enumValue" => "SENSITIVE_DATA_DISCOVERY_JOB"}))
    OriginType.add_member(:automated_sensitive_data_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATED_SENSITIVE_DATA_DISCOVERY', traits: {"smithy.api#enumValue" => "AUTOMATED_SENSITIVE_DATA_DISCOVERY"}))
    Page.add_member(:line_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Range, location_name: 'lineRange', traits: {"smithy.api#jsonName" => "lineRange"}))
    Page.add_member(:offset_range, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Range, location_name: 'offsetRange', traits: {"smithy.api#jsonName" => "offsetRange"}))
    Page.add_member(:page_number, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'pageNumber', traits: {"smithy.api#jsonName" => "pageNumber"}))
    Page.type = Types::Page
    Pages.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Page)
    PolicyDetails.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingAction, location_name: 'action', traits: {"smithy.api#jsonName" => "action"}))
    PolicyDetails.add_member(:actor, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingActor, location_name: 'actor', traits: {"smithy.api#jsonName" => "actor"}))
    PolicyDetails.type = Types::PolicyDetails
    PutClassificationExportConfigurationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationExportConfiguration, location_name: 'configuration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "configuration", "smithy.api#required" => {}}))
    PutClassificationExportConfigurationRequest.type = Types::PutClassificationExportConfigurationRequest
    PutClassificationExportConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationExportConfiguration, location_name: 'configuration', traits: {"smithy.api#jsonName" => "configuration"}))
    PutClassificationExportConfigurationResponse.type = Types::PutClassificationExportConfigurationResponse
    PutFindingsPublicationConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    PutFindingsPublicationConfigurationRequest.add_member(:security_hub_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityHubConfiguration, location_name: 'securityHubConfiguration', traits: {"smithy.api#jsonName" => "securityHubConfiguration"}))
    PutFindingsPublicationConfigurationRequest.type = Types::PutFindingsPublicationConfigurationRequest
    PutFindingsPublicationConfigurationResponse.type = Types::PutFindingsPublicationConfigurationResponse
    Range.add_member(:end, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'end', traits: {"smithy.api#jsonName" => "end"}))
    Range.add_member(:start, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'start', traits: {"smithy.api#jsonName" => "start"}))
    Range.add_member(:start_column, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'startColumn', traits: {"smithy.api#jsonName" => "startColumn"}))
    Range.type = Types::Range
    Ranges.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Range)
    Record.add_member(:json_path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jsonPath', traits: {"smithy.api#jsonName" => "jsonPath"}))
    Record.add_member(:record_index, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'recordIndex', traits: {"smithy.api#jsonName" => "recordIndex"}))
    Record.type = Types::Record
    Records.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Record)
    RelationshipStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Enabled', traits: {"smithy.api#enumValue" => "Enabled"}))
    RelationshipStatus.add_member(:paused, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Paused', traits: {"smithy.api#enumValue" => "Paused"}))
    RelationshipStatus.add_member(:invited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Invited', traits: {"smithy.api#enumValue" => "Invited"}))
    RelationshipStatus.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Created', traits: {"smithy.api#enumValue" => "Created"}))
    RelationshipStatus.add_member(:removed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Removed', traits: {"smithy.api#enumValue" => "Removed"}))
    RelationshipStatus.add_member(:resigned, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Resigned', traits: {"smithy.api#enumValue" => "Resigned"}))
    RelationshipStatus.add_member(:email_verification_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EmailVerificationInProgress', traits: {"smithy.api#enumValue" => "EmailVerificationInProgress"}))
    RelationshipStatus.add_member(:email_verification_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EmailVerificationFailed', traits: {"smithy.api#enumValue" => "EmailVerificationFailed"}))
    RelationshipStatus.add_member(:region_disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RegionDisabled', traits: {"smithy.api#enumValue" => "RegionDisabled"}))
    RelationshipStatus.add_member(:account_suspended, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AccountSuspended', traits: {"smithy.api#enumValue" => "AccountSuspended"}))
    ReplicationDetails.add_member(:replicated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'replicated', traits: {"smithy.api#jsonName" => "replicated"}))
    ReplicationDetails.add_member(:replicated_externally, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'replicatedExternally', traits: {"smithy.api#jsonName" => "replicatedExternally"}))
    ReplicationDetails.add_member(:replication_accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'replicationAccounts', traits: {"smithy.api#jsonName" => "replicationAccounts"}))
    ReplicationDetails.type = Types::ReplicationDetails
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#jsonName" => "message"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceProfileArtifact.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "arn", "smithy.api#required" => {}}))
    ResourceProfileArtifact.add_member(:classification_result_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'classificationResultStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "classificationResultStatus", "smithy.api#required" => {}}))
    ResourceProfileArtifact.add_member(:sensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'sensitive', traits: {"smithy.api#jsonName" => "sensitive"}))
    ResourceProfileArtifact.type = Types::ResourceProfileArtifact
    ResourceStatistics.add_member(:total_bytes_classified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalBytesClassified', traits: {"smithy.api#jsonName" => "totalBytesClassified"}))
    ResourceStatistics.add_member(:total_detections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalDetections', traits: {"smithy.api#jsonName" => "totalDetections"}))
    ResourceStatistics.add_member(:total_detections_suppressed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalDetectionsSuppressed', traits: {"smithy.api#jsonName" => "totalDetectionsSuppressed"}))
    ResourceStatistics.add_member(:total_items_classified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsClassified', traits: {"smithy.api#jsonName" => "totalItemsClassified"}))
    ResourceStatistics.add_member(:total_items_sensitive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsSensitive', traits: {"smithy.api#jsonName" => "totalItemsSensitive"}))
    ResourceStatistics.add_member(:total_items_skipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsSkipped', traits: {"smithy.api#jsonName" => "totalItemsSkipped"}))
    ResourceStatistics.add_member(:total_items_skipped_invalid_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsSkippedInvalidEncryption', traits: {"smithy.api#jsonName" => "totalItemsSkippedInvalidEncryption"}))
    ResourceStatistics.add_member(:total_items_skipped_invalid_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsSkippedInvalidKms', traits: {"smithy.api#jsonName" => "totalItemsSkippedInvalidKms"}))
    ResourceStatistics.add_member(:total_items_skipped_permission_denied, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalItemsSkippedPermissionDenied', traits: {"smithy.api#jsonName" => "totalItemsSkippedPermissionDenied"}))
    ResourceStatistics.type = Types::ResourceStatistics
    ResourcesAffected.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#jsonName" => "s3Bucket"}))
    ResourcesAffected.add_member(:s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 's3Object', traits: {"smithy.api#jsonName" => "s3Object"}))
    ResourcesAffected.type = Types::ResourcesAffected
    RetrievalConfiguration.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'externalId', traits: {"smithy.api#jsonName" => "externalId"}))
    RetrievalConfiguration.add_member(:retrieval_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalMode, location_name: 'retrievalMode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "retrievalMode", "smithy.api#required" => {}}))
    RetrievalConfiguration.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patternw, location_name: 'roleName', traits: {"smithy.api#jsonName" => "roleName"}))
    RetrievalConfiguration.type = Types::RetrievalConfiguration
    RetrievalMode.add_member(:caller_credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CALLER_CREDENTIALS', traits: {"smithy.api#enumValue" => "CALLER_CREDENTIALS"}))
    RetrievalMode.add_member(:assume_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSUME_ROLE', traits: {"smithy.api#enumValue" => "ASSUME_ROLE"}))
    RevealConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max2048, location_name: 'kmsKeyId', traits: {"smithy.api#jsonName" => "kmsKeyId"}))
    RevealConfiguration.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevealStatus, location_name: 'status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    RevealConfiguration.type = Types::RevealConfiguration
    RevealRequestStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    RevealRequestStatus.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PROCESSING', traits: {"smithy.api#enumValue" => "PROCESSING"}))
    RevealRequestStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    RevealStatus.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    RevealStatus.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    S3Bucket.add_member(:allows_unencrypted_object_uploads, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowsUnencryptedObjectUploads, location_name: 'allowsUnencryptedObjectUploads', traits: {"smithy.api#jsonName" => "allowsUnencryptedObjectUploads"}))
    S3Bucket.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    S3Bucket.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'createdAt', traits: {"smithy.api#jsonName" => "createdAt"}))
    S3Bucket.add_member(:default_server_side_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryption, location_name: 'defaultServerSideEncryption', traits: {"smithy.api#jsonName" => "defaultServerSideEncryption"}))
    S3Bucket.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    S3Bucket.add_member(:owner, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketOwner, location_name: 'owner', traits: {"smithy.api#jsonName" => "owner"}))
    S3Bucket.add_member(:public_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketPublicAccess, location_name: 'publicAccess', traits: {"smithy.api#jsonName" => "publicAccess"}))
    S3Bucket.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuePairList, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    S3Bucket.type = Types::S3Bucket
    S3BucketCriteriaForJob.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CriteriaBlockForJob, location_name: 'excludes', traits: {"smithy.api#jsonName" => "excludes"}))
    S3BucketCriteriaForJob.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CriteriaBlockForJob, location_name: 'includes', traits: {"smithy.api#jsonName" => "includes"}))
    S3BucketCriteriaForJob.type = Types::S3BucketCriteriaForJob
    S3BucketDefinitionForJob.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "accountId", "smithy.api#required" => {}}))
    S3BucketDefinitionForJob.add_member(:buckets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'buckets', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "buckets", "smithy.api#required" => {}}))
    S3BucketDefinitionForJob.type = Types::S3BucketDefinitionForJob
    S3BucketOwner.add_member(:display_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'displayName', traits: {"smithy.api#jsonName" => "displayName"}))
    S3BucketOwner.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    S3BucketOwner.type = Types::S3BucketOwner
    S3ClassificationScope.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ClassificationScopeExclusion, location_name: 'excludes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "excludes", "smithy.api#required" => {}}))
    S3ClassificationScope.type = Types::S3ClassificationScope
    S3ClassificationScopeExclusion.add_member(:bucket_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofs3bucketname, location_name: 'bucketNames', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bucketNames", "smithy.api#required" => {}}))
    S3ClassificationScopeExclusion.type = Types::S3ClassificationScopeExclusion
    S3ClassificationScopeExclusionUpdate.add_member(:bucket_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofs3bucketname, location_name: 'bucketNames', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bucketNames", "smithy.api#required" => {}}))
    S3ClassificationScopeExclusionUpdate.add_member(:operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeUpdateOperation, location_name: 'operation', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "operation", "smithy.api#required" => {}}))
    S3ClassificationScopeExclusionUpdate.type = Types::S3ClassificationScopeExclusionUpdate
    S3ClassificationScopeUpdate.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ClassificationScopeExclusionUpdate, location_name: 'excludes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "excludes", "smithy.api#required" => {}}))
    S3ClassificationScopeUpdate.type = Types::S3ClassificationScopeUpdate
    S3Destination.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bucketName", "smithy.api#required" => {}}))
    S3Destination.add_member(:key_prefix, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'keyPrefix', traits: {"smithy.api#jsonName" => "keyPrefix"}))
    S3Destination.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kmsKeyArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "kmsKeyArn", "smithy.api#required" => {}}))
    S3Destination.type = Types::S3Destination
    S3JobDefinition.add_member(:bucket_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketCriteriaForJob, location_name: 'bucketCriteria', traits: {"smithy.api#jsonName" => "bucketCriteria"}))
    S3JobDefinition.add_member(:bucket_definitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofs3bucketdefinitionforjob, location_name: 'bucketDefinitions', traits: {"smithy.api#jsonName" => "bucketDefinitions"}))
    S3JobDefinition.add_member(:scoping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Scoping, location_name: 'scoping', traits: {"smithy.api#jsonName" => "scoping"}))
    S3JobDefinition.type = Types::S3JobDefinition
    S3Object.add_member(:bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'bucketArn', traits: {"smithy.api#jsonName" => "bucketArn"}))
    S3Object.add_member(:e_tag, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'eTag', traits: {"smithy.api#jsonName" => "eTag"}))
    S3Object.add_member(:extension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'extension', traits: {"smithy.api#jsonName" => "extension"}))
    S3Object.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    S3Object.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'lastModified', traits: {"smithy.api#jsonName" => "lastModified"}))
    S3Object.add_member(:path, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'path', traits: {"smithy.api#jsonName" => "path"}))
    S3Object.add_member(:public_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'publicAccess', traits: {"smithy.api#jsonName" => "publicAccess"}))
    S3Object.add_member(:server_side_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryption, location_name: 'serverSideEncryption', traits: {"smithy.api#jsonName" => "serverSideEncryption"}))
    S3Object.add_member(:size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'size', traits: {"smithy.api#jsonName" => "size"}))
    S3Object.add_member(:storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: 'storageClass', traits: {"smithy.api#jsonName" => "storageClass"}))
    S3Object.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuePairList, location_name: 'tags', traits: {"smithy.api#jsonName" => "tags"}))
    S3Object.add_member(:version_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'versionId', traits: {"smithy.api#jsonName" => "versionId"}))
    S3Object.type = Types::S3Object
    S3WordsList.add_member(:bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin3max255patternazaz093255, location_name: 'bucketName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "bucketName", "smithy.api#required" => {}}))
    S3WordsList.add_member(:object_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max1024patternss, location_name: 'objectKey', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "objectKey", "smithy.api#required" => {}}))
    S3WordsList.type = Types::S3WordsList
    ScopeFilterKey.add_member(:object_extension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_EXTENSION', traits: {"smithy.api#enumValue" => "OBJECT_EXTENSION"}))
    ScopeFilterKey.add_member(:object_last_modified_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_LAST_MODIFIED_DATE', traits: {"smithy.api#enumValue" => "OBJECT_LAST_MODIFIED_DATE"}))
    ScopeFilterKey.add_member(:object_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_SIZE', traits: {"smithy.api#enumValue" => "OBJECT_SIZE"}))
    ScopeFilterKey.add_member(:object_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_KEY', traits: {"smithy.api#enumValue" => "OBJECT_KEY"}))
    Scoping.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobScopingBlock, location_name: 'excludes', traits: {"smithy.api#jsonName" => "excludes"}))
    Scoping.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobScopingBlock, location_name: 'includes', traits: {"smithy.api#jsonName" => "includes"}))
    Scoping.type = Types::Scoping
    SearchResourcesBucketCriteria.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesCriteriaBlock, location_name: 'excludes', traits: {"smithy.api#jsonName" => "excludes"}))
    SearchResourcesBucketCriteria.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesCriteriaBlock, location_name: 'includes', traits: {"smithy.api#jsonName" => "includes"}))
    SearchResourcesBucketCriteria.type = Types::SearchResourcesBucketCriteria
    SearchResourcesComparator.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQ', traits: {"smithy.api#enumValue" => "EQ"}))
    SearchResourcesComparator.add_member(:ne, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NE', traits: {"smithy.api#enumValue" => "NE"}))
    SearchResourcesCriteria.add_member(:simple_criterion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesSimpleCriterion, location_name: 'simpleCriterion', traits: {"smithy.api#jsonName" => "simpleCriterion"}))
    SearchResourcesCriteria.add_member(:tag_criterion, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesTagCriterion, location_name: 'tagCriterion', traits: {"smithy.api#jsonName" => "tagCriterion"}))
    SearchResourcesCriteria.type = Types::SearchResourcesCriteria
    SearchResourcesCriteriaBlock.add_member(:and, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsearchresourcescriteria, location_name: 'and', traits: {"smithy.api#jsonName" => "and"}))
    SearchResourcesCriteriaBlock.type = Types::SearchResourcesCriteriaBlock
    SearchResourcesRequest.add_member(:bucket_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesBucketCriteria, location_name: 'bucketCriteria', traits: {"smithy.api#jsonName" => "bucketCriteria"}))
    SearchResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#jsonName" => "maxResults"}))
    SearchResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    SearchResourcesRequest.add_member(:sort_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesSortCriteria, location_name: 'sortCriteria', traits: {"smithy.api#jsonName" => "sortCriteria"}))
    SearchResourcesRequest.type = Types::SearchResourcesRequest
    SearchResourcesResponse.add_member(:matching_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofmatchingresource, location_name: 'matchingResources', traits: {"smithy.api#jsonName" => "matchingResources"}))
    SearchResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#jsonName" => "nextToken"}))
    SearchResourcesResponse.type = Types::SearchResourcesResponse
    SearchResourcesSimpleCriterion.add_member(:comparator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesComparator, location_name: 'comparator', traits: {"smithy.api#jsonName" => "comparator"}))
    SearchResourcesSimpleCriterion.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesSimpleCriterionKey, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    SearchResourcesSimpleCriterion.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'values', traits: {"smithy.api#jsonName" => "values"}))
    SearchResourcesSimpleCriterion.type = Types::SearchResourcesSimpleCriterion
    SearchResourcesSimpleCriterionKey.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_ID', traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    SearchResourcesSimpleCriterionKey.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_NAME', traits: {"smithy.api#enumValue" => "S3_BUCKET_NAME"}))
    SearchResourcesSimpleCriterionKey.add_member(:s3_bucket_effective_permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_EFFECTIVE_PERMISSION', traits: {"smithy.api#enumValue" => "S3_BUCKET_EFFECTIVE_PERMISSION"}))
    SearchResourcesSimpleCriterionKey.add_member(:s3_bucket_shared_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_SHARED_ACCESS', traits: {"smithy.api#enumValue" => "S3_BUCKET_SHARED_ACCESS"}))
    SearchResourcesSimpleCriterionKey.add_member(:automated_discovery_monitoring_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATED_DISCOVERY_MONITORING_STATUS', traits: {"smithy.api#enumValue" => "AUTOMATED_DISCOVERY_MONITORING_STATUS"}))
    SearchResourcesSortAttributeName.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_ID', traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    SearchResourcesSortAttributeName.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NAME', traits: {"smithy.api#enumValue" => "RESOURCE_NAME"}))
    SearchResourcesSortAttributeName.add_member(:s3_classifiable_object_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_CLASSIFIABLE_OBJECT_COUNT', traits: {"smithy.api#enumValue" => "S3_CLASSIFIABLE_OBJECT_COUNT"}))
    SearchResourcesSortAttributeName.add_member(:s3_classifiable_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_CLASSIFIABLE_SIZE_IN_BYTES', traits: {"smithy.api#enumValue" => "S3_CLASSIFIABLE_SIZE_IN_BYTES"}))
    SearchResourcesSortCriteria.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesSortAttributeName, location_name: 'attributeName', traits: {"smithy.api#jsonName" => "attributeName"}))
    SearchResourcesSortCriteria.add_member(:order_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#jsonName" => "orderBy"}))
    SearchResourcesSortCriteria.type = Types::SearchResourcesSortCriteria
    SearchResourcesTagCriterion.add_member(:comparator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesComparator, location_name: 'comparator', traits: {"smithy.api#jsonName" => "comparator"}))
    SearchResourcesTagCriterion.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsearchresourcestagcriterionpair, location_name: 'tagValues', traits: {"smithy.api#jsonName" => "tagValues"}))
    SearchResourcesTagCriterion.type = Types::SearchResourcesTagCriterion
    SearchResourcesTagCriterionPair.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    SearchResourcesTagCriterionPair.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#jsonName" => "value"}))
    SearchResourcesTagCriterionPair.type = Types::SearchResourcesTagCriterionPair
    SecurityHubConfiguration.add_member(:publish_classification_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'publishClassificationFindings', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "publishClassificationFindings", "smithy.api#required" => {}}))
    SecurityHubConfiguration.add_member(:publish_policy_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'publishPolicyFindings', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "publishPolicyFindings", "smithy.api#required" => {}}))
    SecurityHubConfiguration.type = Types::SecurityHubConfiguration
    SensitiveData.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveDataItem)
    SensitiveDataItem.add_member(:category, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveDataItemCategory, location_name: 'category', traits: {"smithy.api#jsonName" => "category"}))
    SensitiveDataItem.add_member(:detections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultDetections, location_name: 'detections', traits: {"smithy.api#jsonName" => "detections"}))
    SensitiveDataItem.add_member(:total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalCount', traits: {"smithy.api#jsonName" => "totalCount"}))
    SensitiveDataItem.type = Types::SensitiveDataItem
    SensitiveDataItemCategory.add_member(:financial_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FINANCIAL_INFORMATION', traits: {"smithy.api#enumValue" => "FINANCIAL_INFORMATION"}))
    SensitiveDataItemCategory.add_member(:personal_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PERSONAL_INFORMATION', traits: {"smithy.api#enumValue" => "PERSONAL_INFORMATION"}))
    SensitiveDataItemCategory.add_member(:credentials, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREDENTIALS', traits: {"smithy.api#enumValue" => "CREDENTIALS"}))
    SensitiveDataItemCategory.add_member(:custom_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM_IDENTIFIER', traits: {"smithy.api#enumValue" => "CUSTOM_IDENTIFIER"}))
    SensitiveDataOccurrences.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SensitiveDataOccurrences.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofdetecteddatadetails)
    SensitivityAggregations.add_member(:classifiable_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'classifiableSizeInBytes', traits: {"smithy.api#jsonName" => "classifiableSizeInBytes"}))
    SensitivityAggregations.add_member(:publicly_accessible_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'publiclyAccessibleCount', traits: {"smithy.api#jsonName" => "publiclyAccessibleCount"}))
    SensitivityAggregations.add_member(:total_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalCount', traits: {"smithy.api#jsonName" => "totalCount"}))
    SensitivityAggregations.add_member(:total_size_in_bytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'totalSizeInBytes', traits: {"smithy.api#jsonName" => "totalSizeInBytes"}))
    SensitivityAggregations.type = Types::SensitivityAggregations
    SensitivityInspectionTemplateExcludes.add_member(:managed_data_identifier_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'managedDataIdentifierIds', traits: {"smithy.api#jsonName" => "managedDataIdentifierIds"}))
    SensitivityInspectionTemplateExcludes.type = Types::SensitivityInspectionTemplateExcludes
    SensitivityInspectionTemplateIncludes.add_member(:allow_list_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'allowListIds', traits: {"smithy.api#jsonName" => "allowListIds"}))
    SensitivityInspectionTemplateIncludes.add_member(:custom_data_identifier_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'customDataIdentifierIds', traits: {"smithy.api#jsonName" => "customDataIdentifierIds"}))
    SensitivityInspectionTemplateIncludes.add_member(:managed_data_identifier_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'managedDataIdentifierIds', traits: {"smithy.api#jsonName" => "managedDataIdentifierIds"}))
    SensitivityInspectionTemplateIncludes.type = Types::SensitivityInspectionTemplateIncludes
    SensitivityInspectionTemplatesEntry.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    SensitivityInspectionTemplatesEntry.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    SensitivityInspectionTemplatesEntry.type = Types::SensitivityInspectionTemplatesEntry
    ServerSideEncryption.add_member(:encryption_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'encryptionType', traits: {"smithy.api#jsonName" => "encryptionType"}))
    ServerSideEncryption.add_member(:kms_master_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'kmsMasterKeyId', traits: {"smithy.api#jsonName" => "kmsMasterKeyId"}))
    ServerSideEncryption.type = Types::ServerSideEncryption
    ServiceLimit.add_member(:is_service_limited, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isServiceLimited', traits: {"smithy.api#jsonName" => "isServiceLimited"}))
    ServiceLimit.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Unit, location_name: 'unit', traits: {"smithy.api#jsonName" => "unit"}))
    ServiceLimit.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'value', traits: {"smithy.api#jsonName" => "value"}))
    ServiceLimit.type = Types::ServiceLimit
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#jsonName" => "message"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SessionContext.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionContextAttributes, location_name: 'attributes', traits: {"smithy.api#jsonName" => "attributes"}))
    SessionContext.add_member(:session_issuer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionIssuer, location_name: 'sessionIssuer', traits: {"smithy.api#jsonName" => "sessionIssuer"}))
    SessionContext.type = Types::SessionContext
    SessionContextAttributes.add_member(:creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'creationDate', traits: {"smithy.api#jsonName" => "creationDate"}))
    SessionContextAttributes.add_member(:mfa_authenticated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'mfaAuthenticated', traits: {"smithy.api#jsonName" => "mfaAuthenticated"}))
    SessionContextAttributes.type = Types::SessionContextAttributes
    SessionIssuer.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    SessionIssuer.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    SessionIssuer.add_member(:principal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#jsonName" => "principalId"}))
    SessionIssuer.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#jsonName" => "type"}))
    SessionIssuer.add_member(:user_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'userName', traits: {"smithy.api#jsonName" => "userName"}))
    SessionIssuer.type = Types::SessionIssuer
    Severity.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityDescription, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    Severity.add_member(:score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'score', traits: {"smithy.api#jsonName" => "score"}))
    Severity.type = Types::Severity
    SeverityDescription.add_member(:low, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Low', traits: {"smithy.api#enumValue" => "Low"}))
    SeverityDescription.add_member(:medium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Medium', traits: {"smithy.api#enumValue" => "Medium"}))
    SeverityDescription.add_member(:high, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'High', traits: {"smithy.api#enumValue" => "High"}))
    SeverityLevel.add_member(:occurrences_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'occurrencesThreshold', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "occurrencesThreshold", "smithy.api#required" => {}}))
    SeverityLevel.add_member(:severity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataIdentifierSeverity, location_name: 'severity', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "severity", "smithy.api#required" => {}}))
    SeverityLevel.type = Types::SeverityLevel
    SeverityLevelList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SeverityLevel)
    SharedAccess.add_member(:external, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL', traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    SharedAccess.add_member(:internal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL', traits: {"smithy.api#enumValue" => "INTERNAL"}))
    SharedAccess.add_member(:not_shared, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_SHARED', traits: {"smithy.api#enumValue" => "NOT_SHARED"}))
    SharedAccess.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    SimpleCriterionForJob.add_member(:comparator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobComparator, location_name: 'comparator', traits: {"smithy.api#jsonName" => "comparator"}))
    SimpleCriterionForJob.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SimpleCriterionKeyForJob, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    SimpleCriterionForJob.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'values', traits: {"smithy.api#jsonName" => "values"}))
    SimpleCriterionForJob.type = Types::SimpleCriterionForJob
    SimpleCriterionKeyForJob.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_ID', traits: {"smithy.api#enumValue" => "ACCOUNT_ID"}))
    SimpleCriterionKeyForJob.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_NAME', traits: {"smithy.api#enumValue" => "S3_BUCKET_NAME"}))
    SimpleCriterionKeyForJob.add_member(:s3_bucket_effective_permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_EFFECTIVE_PERMISSION', traits: {"smithy.api#enumValue" => "S3_BUCKET_EFFECTIVE_PERMISSION"}))
    SimpleCriterionKeyForJob.add_member(:s3_bucket_shared_access, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_BUCKET_SHARED_ACCESS', traits: {"smithy.api#enumValue" => "S3_BUCKET_SHARED_ACCESS"}))
    SimpleScopeTerm.add_member(:comparator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobComparator, location_name: 'comparator', traits: {"smithy.api#jsonName" => "comparator"}))
    SimpleScopeTerm.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeFilterKey, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    SimpleScopeTerm.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'values', traits: {"smithy.api#jsonName" => "values"}))
    SimpleScopeTerm.type = Types::SimpleScopeTerm
    SortCriteria.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'attributeName', traits: {"smithy.api#jsonName" => "attributeName"}))
    SortCriteria.add_member(:order_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#jsonName" => "orderBy"}))
    SortCriteria.type = Types::SortCriteria
    Statistics.add_member(:approximate_number_of_objects_to_process, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'approximateNumberOfObjectsToProcess', traits: {"smithy.api#jsonName" => "approximateNumberOfObjectsToProcess"}))
    Statistics.add_member(:number_of_runs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'numberOfRuns', traits: {"smithy.api#jsonName" => "numberOfRuns"}))
    Statistics.type = Types::Statistics
    StorageClass.add_member(:standard, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    StorageClass.add_member(:reduced_redundancy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDUCED_REDUNDANCY', traits: {"smithy.api#enumValue" => "REDUCED_REDUNDANCY"}))
    StorageClass.add_member(:standard_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD_IA', traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    StorageClass.add_member(:intelligent_tiering, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTELLIGENT_TIERING', traits: {"smithy.api#enumValue" => "INTELLIGENT_TIERING"}))
    StorageClass.add_member(:deep_archive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEEP_ARCHIVE', traits: {"smithy.api#enumValue" => "DEEP_ARCHIVE"}))
    StorageClass.add_member(:onezone_ia, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONEZONE_IA', traits: {"smithy.api#enumValue" => "ONEZONE_IA"}))
    StorageClass.add_member(:glacier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLACIER', traits: {"smithy.api#enumValue" => "GLACIER"}))
    StorageClass.add_member(:glacier_ir, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GLACIER_IR', traits: {"smithy.api#enumValue" => "GLACIER_IR"}))
    StorageClass.add_member(:outposts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OUTPOSTS', traits: {"smithy.api#enumValue" => "OUTPOSTS"}))
    SuppressDataIdentifier.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    SuppressDataIdentifier.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataIdentifierType, location_name: 'type', traits: {"smithy.api#jsonName" => "type"}))
    SuppressDataIdentifier.type = Types::SuppressDataIdentifier
    TagCriterionForJob.add_member(:comparator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobComparator, location_name: 'comparator', traits: {"smithy.api#jsonName" => "comparator"}))
    TagCriterionForJob.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listoftagcriterionpairforjob, location_name: 'tagValues', traits: {"smithy.api#jsonName" => "tagValues"}))
    TagCriterionForJob.type = Types::TagCriterionForJob
    TagCriterionPairForJob.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    TagCriterionPairForJob.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#jsonName" => "value"}))
    TagCriterionPairForJob.type = Types::TagCriterionPairForJob
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TagScopeTerm.add_member(:comparator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobComparator, location_name: 'comparator', traits: {"smithy.api#jsonName" => "comparator"}))
    TagScopeTerm.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    TagScopeTerm.add_member(:tag_values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listoftagvaluepair, location_name: 'tagValues', traits: {"smithy.api#jsonName" => "tagValues"}))
    TagScopeTerm.add_member(:target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagTarget, location_name: 'target', traits: {"smithy.api#jsonName" => "target"}))
    TagScopeTerm.type = Types::TagScopeTerm
    TagTarget.add_member(:s3_object, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_OBJECT', traits: {"smithy.api#enumValue" => "S3_OBJECT"}))
    TagValuePair.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    TagValuePair.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#jsonName" => "value"}))
    TagValuePair.type = Types::TagValuePair
    TestCustomDataIdentifierRequest.add_member(:ignore_words, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'ignoreWords', traits: {"smithy.api#jsonName" => "ignoreWords"}))
    TestCustomDataIdentifierRequest.add_member(:keywords, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'keywords', traits: {"smithy.api#jsonName" => "keywords"}))
    TestCustomDataIdentifierRequest.add_member(:maximum_match_distance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maximumMatchDistance', traits: {"smithy.api#jsonName" => "maximumMatchDistance"}))
    TestCustomDataIdentifierRequest.add_member(:regex, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'regex', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "regex", "smithy.api#required" => {}}))
    TestCustomDataIdentifierRequest.add_member(:sample_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sampleText', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "sampleText", "smithy.api#required" => {}}))
    TestCustomDataIdentifierRequest.type = Types::TestCustomDataIdentifierRequest
    TestCustomDataIdentifierResponse.add_member(:match_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'matchCount', traits: {"smithy.api#jsonName" => "matchCount"}))
    TestCustomDataIdentifierResponse.type = Types::TestCustomDataIdentifierResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#jsonName" => "message"}))
    ThrottlingException.type = Types::ThrottlingException
    TimeRange.add_member(:month_to_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MONTH_TO_DATE', traits: {"smithy.api#enumValue" => "MONTH_TO_DATE"}))
    TimeRange.add_member(:past_30_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PAST_30_DAYS', traits: {"smithy.api#enumValue" => "PAST_30_DAYS"}))
    Type.add_member(:none, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NONE', traits: {"smithy.api#enumValue" => "NONE"}))
    Type.add_member(:aes256, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AES256', traits: {"smithy.api#enumValue" => "AES256"}))
    Type.add_member(:aws_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_kms', traits: {"smithy.api#enumValue" => "aws:kms"}))
    Type.add_member(:aws_kms_dsse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'aws_kms_dsse', traits: {"smithy.api#enumValue" => "aws:kms:dsse"}))
    UnavailabilityReasonCode.add_member(:object_exceeds_size_quota, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_EXCEEDS_SIZE_QUOTA', traits: {"smithy.api#enumValue" => "OBJECT_EXCEEDS_SIZE_QUOTA"}))
    UnavailabilityReasonCode.add_member(:unsupported_object_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_OBJECT_TYPE', traits: {"smithy.api#enumValue" => "UNSUPPORTED_OBJECT_TYPE"}))
    UnavailabilityReasonCode.add_member(:unsupported_finding_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNSUPPORTED_FINDING_TYPE', traits: {"smithy.api#enumValue" => "UNSUPPORTED_FINDING_TYPE"}))
    UnavailabilityReasonCode.add_member(:invalid_classification_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_CLASSIFICATION_RESULT', traits: {"smithy.api#enumValue" => "INVALID_CLASSIFICATION_RESULT"}))
    UnavailabilityReasonCode.add_member(:object_unavailable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OBJECT_UNAVAILABLE', traits: {"smithy.api#enumValue" => "OBJECT_UNAVAILABLE"}))
    UnavailabilityReasonCode.add_member(:account_not_in_organization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT_NOT_IN_ORGANIZATION', traits: {"smithy.api#enumValue" => "ACCOUNT_NOT_IN_ORGANIZATION"}))
    UnavailabilityReasonCode.add_member(:missing_get_member_permission, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISSING_GET_MEMBER_PERMISSION', traits: {"smithy.api#enumValue" => "MISSING_GET_MEMBER_PERMISSION"}))
    UnavailabilityReasonCode.add_member(:role_too_permissive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLE_TOO_PERMISSIVE', traits: {"smithy.api#enumValue" => "ROLE_TOO_PERMISSIVE"}))
    UnavailabilityReasonCode.add_member(:member_role_too_permissive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MEMBER_ROLE_TOO_PERMISSIVE', traits: {"smithy.api#enumValue" => "MEMBER_ROLE_TOO_PERMISSIVE"}))
    UnavailabilityReasonCode.add_member(:invalid_result_signature, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_RESULT_SIGNATURE', traits: {"smithy.api#enumValue" => "INVALID_RESULT_SIGNATURE"}))
    UnavailabilityReasonCode.add_member(:result_not_signed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESULT_NOT_SIGNED', traits: {"smithy.api#enumValue" => "RESULT_NOT_SIGNED"}))
    Unit.add_member(:terabytes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERABYTES', traits: {"smithy.api#enumValue" => "TERABYTES"}))
    UnprocessableEntityException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "message", "smithy.api#required" => {}}))
    UnprocessableEntityException.type = Types::UnprocessableEntityException
    UnprocessedAccount.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    UnprocessedAccount.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'errorCode', traits: {"smithy.api#jsonName" => "errorCode"}))
    UnprocessedAccount.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'errorMessage', traits: {"smithy.api#jsonName" => "errorMessage"}))
    UnprocessedAccount.type = Types::UnprocessedAccount
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'tagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAllowListRequest.add_member(:criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListCriteria, location_name: 'criteria', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "criteria", "smithy.api#required" => {}}))
    UpdateAllowListRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max512patternss, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    UpdateAllowListRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAllowListRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max128pattern, location_name: 'name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "name", "smithy.api#required" => {}}))
    UpdateAllowListRequest.type = Types::UpdateAllowListRequest
    UpdateAllowListResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin71max89patternarnawsawscnawsusgovmacie2az19920d12allowlistaz0922, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    UpdateAllowListResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin22max22patternaz0922, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    UpdateAllowListResponse.type = Types::UpdateAllowListResponse
    UpdateAutomatedDiscoveryConfigurationRequest.add_member(:auto_enable_organization_members, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutoEnableMode, location_name: 'autoEnableOrganizationMembers', traits: {"smithy.api#jsonName" => "autoEnableOrganizationMembers"}))
    UpdateAutomatedDiscoveryConfigurationRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryStatus, location_name: 'status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    UpdateAutomatedDiscoveryConfigurationRequest.type = Types::UpdateAutomatedDiscoveryConfigurationRequest
    UpdateAutomatedDiscoveryConfigurationResponse.type = Types::UpdateAutomatedDiscoveryConfigurationResponse
    UpdateClassificationJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClassificationJobRequest.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobStatus, location_name: 'jobStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "jobStatus", "smithy.api#required" => {}}))
    UpdateClassificationJobRequest.type = Types::UpdateClassificationJobRequest
    UpdateClassificationJobResponse.type = Types::UpdateClassificationJobResponse
    UpdateClassificationScopeRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateClassificationScopeRequest.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3ClassificationScopeUpdate, location_name: 's3', traits: {"smithy.api#jsonName" => "s3"}))
    UpdateClassificationScopeRequest.type = Types::UpdateClassificationScopeRequest
    UpdateClassificationScopeResponse.type = Types::UpdateClassificationScopeResponse
    UpdateFindingsFilterRequest.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: 'action', traits: {"smithy.api#jsonName" => "action"}))
    UpdateFindingsFilterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'clientToken', traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#jsonName" => "clientToken"}))
    UpdateFindingsFilterRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    UpdateFindingsFilterRequest.add_member(:finding_criteria, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingCriteria, location_name: 'findingCriteria', traits: {"smithy.api#jsonName" => "findingCriteria"}))
    UpdateFindingsFilterRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateFindingsFilterRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#jsonName" => "name"}))
    UpdateFindingsFilterRequest.add_member(:position, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'position', traits: {"smithy.api#jsonName" => "position"}))
    UpdateFindingsFilterRequest.type = Types::UpdateFindingsFilterRequest
    UpdateFindingsFilterResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    UpdateFindingsFilterResponse.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#jsonName" => "id"}))
    UpdateFindingsFilterResponse.type = Types::UpdateFindingsFilterResponse
    UpdateMacieSessionRequest.add_member(:finding_publishing_frequency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingPublishingFrequency, location_name: 'findingPublishingFrequency', traits: {"smithy.api#jsonName" => "findingPublishingFrequency"}))
    UpdateMacieSessionRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacieStatus, location_name: 'status', traits: {"smithy.api#jsonName" => "status"}))
    UpdateMacieSessionRequest.type = Types::UpdateMacieSessionRequest
    UpdateMacieSessionResponse.type = Types::UpdateMacieSessionResponse
    UpdateMemberSessionRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateMemberSessionRequest.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MacieStatus, location_name: 'status', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "status", "smithy.api#required" => {}}))
    UpdateMemberSessionRequest.type = Types::UpdateMemberSessionRequest
    UpdateMemberSessionResponse.type = Types::UpdateMemberSessionResponse
    UpdateOrganizationConfigurationRequest.add_member(:auto_enable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'autoEnable', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "autoEnable", "smithy.api#required" => {}}))
    UpdateOrganizationConfigurationRequest.type = Types::UpdateOrganizationConfigurationRequest
    UpdateOrganizationConfigurationResponse.type = Types::UpdateOrganizationConfigurationResponse
    UpdateResourceProfileDetectionsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UpdateResourceProfileDetectionsRequest.add_member(:suppress_data_identifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofsuppressdataidentifier, location_name: 'suppressDataIdentifiers', traits: {"smithy.api#jsonName" => "suppressDataIdentifiers"}))
    UpdateResourceProfileDetectionsRequest.type = Types::UpdateResourceProfileDetectionsRequest
    UpdateResourceProfileDetectionsResponse.type = Types::UpdateResourceProfileDetectionsResponse
    UpdateResourceProfileRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UpdateResourceProfileRequest.add_member(:sensitivity_score_override, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'sensitivityScoreOverride', traits: {"smithy.api#jsonName" => "sensitivityScoreOverride"}))
    UpdateResourceProfileRequest.type = Types::UpdateResourceProfileRequest
    UpdateResourceProfileResponse.type = Types::UpdateResourceProfileResponse
    UpdateRetrievalConfiguration.add_member(:retrieval_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalMode, location_name: 'retrievalMode', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "retrievalMode", "smithy.api#required" => {}}))
    UpdateRetrievalConfiguration.add_member(:role_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin1max64patternw, location_name: 'roleName', traits: {"smithy.api#jsonName" => "roleName"}))
    UpdateRetrievalConfiguration.type = Types::UpdateRetrievalConfiguration
    UpdateRevealConfigurationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevealConfiguration, location_name: 'configuration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#jsonName" => "configuration", "smithy.api#required" => {}}))
    UpdateRevealConfigurationRequest.add_member(:retrieval_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRetrievalConfiguration, location_name: 'retrievalConfiguration', traits: {"smithy.api#jsonName" => "retrievalConfiguration"}))
    UpdateRevealConfigurationRequest.type = Types::UpdateRevealConfigurationRequest
    UpdateRevealConfigurationResponse.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RevealConfiguration, location_name: 'configuration', traits: {"smithy.api#jsonName" => "configuration"}))
    UpdateRevealConfigurationResponse.add_member(:retrieval_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetrievalConfiguration, location_name: 'retrievalConfiguration', traits: {"smithy.api#jsonName" => "retrievalConfiguration"}))
    UpdateRevealConfigurationResponse.type = Types::UpdateRevealConfigurationResponse
    UpdateSensitivityInspectionTemplateRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'description', traits: {"smithy.api#jsonName" => "description"}))
    UpdateSensitivityInspectionTemplateRequest.add_member(:excludes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateExcludes, location_name: 'excludes', traits: {"smithy.api#jsonName" => "excludes"}))
    UpdateSensitivityInspectionTemplateRequest.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSensitivityInspectionTemplateRequest.add_member(:includes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplateIncludes, location_name: 'includes', traits: {"smithy.api#jsonName" => "includes"}))
    UpdateSensitivityInspectionTemplateRequest.type = Types::UpdateSensitivityInspectionTemplateRequest
    UpdateSensitivityInspectionTemplateResponse.type = Types::UpdateSensitivityInspectionTemplateResponse
    UsageByAccount.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Currency, location_name: 'currency', traits: {"smithy.api#jsonName" => "currency"}))
    UsageByAccount.add_member(:estimated_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'estimatedCost', traits: {"smithy.api#jsonName" => "estimatedCost"}))
    UsageByAccount.add_member(:service_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimit, location_name: 'serviceLimit', traits: {"smithy.api#jsonName" => "serviceLimit"}))
    UsageByAccount.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: 'type', traits: {"smithy.api#jsonName" => "type"}))
    UsageByAccount.type = Types::UsageByAccount
    UsageRecord.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    UsageRecord.add_member(:automated_discovery_free_trial_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'automatedDiscoveryFreeTrialStartDate', traits: {"smithy.api#jsonName" => "automatedDiscoveryFreeTrialStartDate"}))
    UsageRecord.add_member(:free_trial_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'freeTrialStartDate', traits: {"smithy.api#jsonName" => "freeTrialStartDate"}))
    UsageRecord.add_member(:usage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Listofusagebyaccount, location_name: 'usage', traits: {"smithy.api#jsonName" => "usage"}))
    UsageRecord.type = Types::UsageRecord
    UsageStatisticsFilter.add_member(:comparator, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatisticsFilterComparator, location_name: 'comparator', traits: {"smithy.api#jsonName" => "comparator"}))
    UsageStatisticsFilter.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatisticsFilterKey, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    UsageStatisticsFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListofString, location_name: 'values', traits: {"smithy.api#jsonName" => "values"}))
    UsageStatisticsFilter.type = Types::UsageStatisticsFilter
    UsageStatisticsFilterComparator.add_member(:gt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GT', traits: {"smithy.api#enumValue" => "GT"}))
    UsageStatisticsFilterComparator.add_member(:gte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GTE', traits: {"smithy.api#enumValue" => "GTE"}))
    UsageStatisticsFilterComparator.add_member(:lt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LT', traits: {"smithy.api#enumValue" => "LT"}))
    UsageStatisticsFilterComparator.add_member(:lte, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LTE', traits: {"smithy.api#enumValue" => "LTE"}))
    UsageStatisticsFilterComparator.add_member(:eq, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EQ', traits: {"smithy.api#enumValue" => "EQ"}))
    UsageStatisticsFilterComparator.add_member(:ne, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NE', traits: {"smithy.api#enumValue" => "NE"}))
    UsageStatisticsFilterComparator.add_member(:contains, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONTAINS', traits: {"smithy.api#enumValue" => "CONTAINS"}))
    UsageStatisticsFilterKey.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'accountId', traits: {"smithy.api#enumValue" => "accountId"}))
    UsageStatisticsFilterKey.add_member(:service_limit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'serviceLimit', traits: {"smithy.api#enumValue" => "serviceLimit"}))
    UsageStatisticsFilterKey.add_member(:free_trial_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'freeTrialStartDate', traits: {"smithy.api#enumValue" => "freeTrialStartDate"}))
    UsageStatisticsFilterKey.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'total', traits: {"smithy.api#enumValue" => "total"}))
    UsageStatisticsSortBy.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatisticsSortKey, location_name: 'key', traits: {"smithy.api#jsonName" => "key"}))
    UsageStatisticsSortBy.add_member(:order_by, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OrderBy, location_name: 'orderBy', traits: {"smithy.api#jsonName" => "orderBy"}))
    UsageStatisticsSortBy.type = Types::UsageStatisticsSortBy
    UsageStatisticsSortKey.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'accountId', traits: {"smithy.api#enumValue" => "accountId"}))
    UsageStatisticsSortKey.add_member(:total, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'total', traits: {"smithy.api#enumValue" => "total"}))
    UsageStatisticsSortKey.add_member(:service_limit_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'serviceLimitValue', traits: {"smithy.api#enumValue" => "serviceLimitValue"}))
    UsageStatisticsSortKey.add_member(:free_trial_start_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'freeTrialStartDate', traits: {"smithy.api#enumValue" => "freeTrialStartDate"}))
    UsageTotal.add_member(:currency, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Currency, location_name: 'currency', traits: {"smithy.api#jsonName" => "currency"}))
    UsageTotal.add_member(:estimated_cost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'estimatedCost', traits: {"smithy.api#jsonName" => "estimatedCost"}))
    UsageTotal.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageType, location_name: 'type', traits: {"smithy.api#jsonName" => "type"}))
    UsageTotal.type = Types::UsageTotal
    UsageType.add_member(:data_inventory_evaluation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DATA_INVENTORY_EVALUATION', traits: {"smithy.api#enumValue" => "DATA_INVENTORY_EVALUATION"}))
    UsageType.add_member(:sensitive_data_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SENSITIVE_DATA_DISCOVERY', traits: {"smithy.api#enumValue" => "SENSITIVE_DATA_DISCOVERY"}))
    UsageType.add_member(:automated_sensitive_data_discovery, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATED_SENSITIVE_DATA_DISCOVERY', traits: {"smithy.api#enumValue" => "AUTOMATED_SENSITIVE_DATA_DISCOVERY"}))
    UsageType.add_member(:automated_object_monitoring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATED_OBJECT_MONITORING', traits: {"smithy.api#enumValue" => "AUTOMATED_OBJECT_MONITORING"}))
    UserIdentity.add_member(:assumed_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssumedRole, location_name: 'assumedRole', traits: {"smithy.api#jsonName" => "assumedRole"}))
    UserIdentity.add_member(:aws_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccount, location_name: 'awsAccount', traits: {"smithy.api#jsonName" => "awsAccount"}))
    UserIdentity.add_member(:aws_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsService, location_name: 'awsService', traits: {"smithy.api#jsonName" => "awsService"}))
    UserIdentity.add_member(:federated_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FederatedUser, location_name: 'federatedUser', traits: {"smithy.api#jsonName" => "federatedUser"}))
    UserIdentity.add_member(:iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamUser, location_name: 'iamUser', traits: {"smithy.api#jsonName" => "iamUser"}))
    UserIdentity.add_member(:root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentityRoot, location_name: 'root', traits: {"smithy.api#jsonName" => "root"}))
    UserIdentity.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UserIdentityType, location_name: 'type', traits: {"smithy.api#jsonName" => "type"}))
    UserIdentity.type = Types::UserIdentity
    UserIdentityRoot.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#jsonName" => "accountId"}))
    UserIdentityRoot.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'arn', traits: {"smithy.api#jsonName" => "arn"}))
    UserIdentityRoot.add_member(:principal_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'principalId', traits: {"smithy.api#jsonName" => "principalId"}))
    UserIdentityRoot.type = Types::UserIdentityRoot
    UserIdentityType.add_member(:assumed_role, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AssumedRole', traits: {"smithy.api#enumValue" => "AssumedRole"}))
    UserIdentityType.add_member(:iam_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAMUser', traits: {"smithy.api#enumValue" => "IAMUser"}))
    UserIdentityType.add_member(:federated_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FederatedUser', traits: {"smithy.api#enumValue" => "FederatedUser"}))
    UserIdentityType.add_member(:root, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Root', traits: {"smithy.api#enumValue" => "Root"}))
    UserIdentityType.add_member(:aws_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSAccount', traits: {"smithy.api#enumValue" => "AWSAccount"}))
    UserIdentityType.add_member(:aws_service, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWSService', traits: {"smithy.api#enumValue" => "AWSService"}))
    UserPausedDetails.add_member(:job_expires_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'jobExpiresAt', traits: {"smithy.api#jsonName" => "jobExpiresAt"}))
    UserPausedDetails.add_member(:job_imminent_expiration_health_event_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobImminentExpirationHealthEventArn', traits: {"smithy.api#jsonName" => "jobImminentExpirationHealthEventArn"}))
    UserPausedDetails.add_member(:job_paused_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestampiso8601, location_name: 'jobPausedAt', traits: {"smithy.api#jsonName" => "jobPausedAt"}))
    UserPausedDetails.type = Types::UserPausedDetails
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#jsonName" => "message"}))
    ValidationException.type = Types::ValidationException
    WeeklySchedule.add_member(:day_of_week, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DayOfWeek, location_name: 'dayOfWeek', traits: {"smithy.api#jsonName" => "dayOfWeek"}))
    WeeklySchedule.type = Types::WeeklySchedule
    Listofadminaccount.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AdminAccount)
    Listofallowlistsummary.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AllowListSummary)
    Listofautomateddiscoveryaccount.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccount)
    Listofautomateddiscoveryaccountupdate.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccountUpdate)
    Listofautomateddiscoveryaccountupdateerror.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AutomatedDiscoveryAccountUpdateError)
    Listofbatchgetcustomdataidentifiersummary.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCustomDataIdentifierSummary)
    Listofbucketmetadata.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BucketMetadata)
    Listofclassificationscopesummary.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClassificationScopeSummary)
    Listofcriteriaforjob.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CriteriaForJob)
    Listofcustomdataidentifiersummary.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDataIdentifierSummary)
    Listofdetecteddatadetails.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DetectedDataDetails)
    Listofdetection.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Detection)
    Listoffinding.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Finding)
    Listoffindingtype.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingType)
    Listoffindingsfilterlistitem.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FindingsFilterListItem)
    Listofgroupcount.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupCount)
    Listofinvitation.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Invitation)
    Listofjobscopeterm.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobScopeTerm)
    Listofjobsummary.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobSummary)
    Listofkeyvaluepair.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyValuePair)
    Listoflistjobsfilterterm.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsFilterTerm)
    Listofmanageddataidentifiersummary.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ManagedDataIdentifierSummary)
    Listofmatchingresource.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MatchingResource)
    Listofmember.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Member)
    Listofresourceprofileartifact.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceProfileArtifact)
    Listofs3bucketdefinitionforjob.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketDefinitionForJob)
    Listofs3bucketname.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketName)
    Listofsearchresourcescriteria.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesCriteria)
    Listofsearchresourcestagcriterionpair.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesTagCriterionPair)
    Listofsensitivityinspectiontemplatesentry.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitivityInspectionTemplatesEntry)
    Listofsuppressdataidentifier.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SuppressDataIdentifier)
    Listoftagcriterionpairforjob.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagCriterionPairForJob)
    Listoftagvaluepair.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValuePair)
    Listofunavailabilityreasoncode.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnavailabilityReasonCode)
    Listofunprocessedaccount.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessedAccount)
    Listofusagebyaccount.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageByAccount)
    Listofusagerecord.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageRecord)
    Listofusagestatisticsfilter.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageStatisticsFilter)
    Listofusagetotal.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageTotal)
    ListofString.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)

    Macie2 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.macie2#Macie2"
      service.name = "Macie2"
      service.version = "2020-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Macie2", "arnNamespace" => "macie2", "cloudFormationName" => "Macie2", "cloudTrailEventSource" => "macie2.amazonaws.com", "endpointPrefix" => "macie2"}, "aws.auth#sigv4" => {"name" => "macie2"}, "aws.protocols#restJson1" => {}, "smithy.api#auth" => ["aws.auth#sigv4"], "smithy.api#title" => "Amazon Macie 2"}
      service.add_operation(:accept_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#AcceptInvitation"
        operation.name = "AcceptInvitation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptInvitationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptInvitationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitations/accept", "code" => 200}}
      end)
      service.add_operation(:batch_get_custom_data_identifiers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#BatchGetCustomDataIdentifiers"
        operation.name = "BatchGetCustomDataIdentifiers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCustomDataIdentifiersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchGetCustomDataIdentifiersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-data-identifiers/get", "code" => 200}}
      end)
      service.add_operation(:batch_update_automated_discovery_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#BatchUpdateAutomatedDiscoveryAccounts"
        operation.name = "BatchUpdateAutomatedDiscoveryAccounts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateAutomatedDiscoveryAccountsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchUpdateAutomatedDiscoveryAccountsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/automated-discovery/accounts", "code" => 200}}
      end)
      service.add_operation(:create_allow_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateAllowList"
        operation.name = "CreateAllowList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAllowListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAllowListResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/allow-lists", "code" => 200}}
      end)
      service.add_operation(:create_classification_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateClassificationJob"
        operation.name = "CreateClassificationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClassificationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateClassificationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobs", "code" => 200}}
      end)
      service.add_operation(:create_custom_data_identifier, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateCustomDataIdentifier"
        operation.name = "CreateCustomDataIdentifier"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDataIdentifierRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomDataIdentifierResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-data-identifiers", "code" => 200}}
      end)
      service.add_operation(:create_findings_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateFindingsFilter"
        operation.name = "CreateFindingsFilter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFindingsFilterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFindingsFilterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/findingsfilters", "code" => 200}}
      end)
      service.add_operation(:create_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateInvitations"
        operation.name = "CreateInvitations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvitationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateInvitationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitations", "code" => 200}}
      end)
      service.add_operation(:create_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateMember"
        operation.name = "CreateMember"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMemberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateMemberResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/members", "code" => 200}}
      end)
      service.add_operation(:create_sample_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#CreateSampleFindings"
        operation.name = "CreateSampleFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSampleFindingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSampleFindingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/findings/sample", "code" => 200}}
      end)
      service.add_operation(:decline_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeclineInvitations"
        operation.name = "DeclineInvitations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeclineInvitationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeclineInvitationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitations/decline", "code" => 200}}
      end)
      service.add_operation(:delete_allow_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeleteAllowList"
        operation.name = "DeleteAllowList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAllowListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAllowListResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/allow-lists/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_custom_data_identifier, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeleteCustomDataIdentifier"
        operation.name = "DeleteCustomDataIdentifier"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomDataIdentifierRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomDataIdentifierResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/custom-data-identifiers/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_findings_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeleteFindingsFilter"
        operation.name = "DeleteFindingsFilter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFindingsFilterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFindingsFilterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/findingsfilters/{id}", "code" => 200}}
      end)
      service.add_operation(:delete_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeleteInvitations"
        operation.name = "DeleteInvitations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInvitationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteInvitationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/invitations/delete", "code" => 200}}
      end)
      service.add_operation(:delete_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DeleteMember"
        operation.name = "DeleteMember"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMemberResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/members/{id}", "code" => 200}}
      end)
      service.add_operation(:describe_buckets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DescribeBuckets"
        operation.name = "DescribeBuckets"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBucketsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBucketsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasources/s3", "code" => 200}}
        operation[:paginator] = Paginators::DescribeBuckets.new
      end)
      service.add_operation(:describe_classification_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DescribeClassificationJob"
        operation.name = "DescribeClassificationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClassificationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeClassificationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:describe_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DescribeOrganizationConfiguration"
        operation.name = "DescribeOrganizationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeOrganizationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/admin/configuration", "code" => 200}}
      end)
      service.add_operation(:disable_macie, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DisableMacie"
        operation.name = "DisableMacie"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableMacieRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableMacieResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/macie", "code" => 200}}
      end)
      service.add_operation(:disable_organization_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DisableOrganizationAdminAccount"
        operation.name = "DisableOrganizationAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableOrganizationAdminAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableOrganizationAdminAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/admin", "code" => 200}}
      end)
      service.add_operation(:disassociate_from_administrator_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DisassociateFromAdministratorAccount"
        operation.name = "DisassociateFromAdministratorAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFromAdministratorAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFromAdministratorAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/administrator/disassociate", "code" => 200}}
      end)
      service.add_operation(:disassociate_from_master_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DisassociateFromMasterAccount"
        operation.name = "DisassociateFromMasterAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFromMasterAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/master/disassociate", "code" => 200}}
      end)
      service.add_operation(:disassociate_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#DisassociateMember"
        operation.name = "DisassociateMember"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateMemberResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/members/disassociate/{id}", "code" => 200}}
      end)
      service.add_operation(:enable_macie, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#EnableMacie"
        operation.name = "EnableMacie"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableMacieRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableMacieResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/macie", "code" => 200}}
      end)
      service.add_operation(:enable_organization_admin_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#EnableOrganizationAdminAccount"
        operation.name = "EnableOrganizationAdminAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnableOrganizationAdminAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/admin", "code" => 200}}
      end)
      service.add_operation(:get_administrator_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetAdministratorAccount"
        operation.name = "GetAdministratorAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdministratorAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAdministratorAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/administrator", "code" => 200}}
      end)
      service.add_operation(:get_allow_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetAllowList"
        operation.name = "GetAllowList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAllowListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAllowListResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/allow-lists/{id}", "code" => 200}}
      end)
      service.add_operation(:get_automated_discovery_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetAutomatedDiscoveryConfiguration"
        operation.name = "GetAutomatedDiscoveryConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedDiscoveryConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetAutomatedDiscoveryConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/automated-discovery/configuration", "code" => 200}}
      end)
      service.add_operation(:get_bucket_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetBucketStatistics"
        operation.name = "GetBucketStatistics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketStatisticsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetBucketStatisticsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasources/s3/statistics", "code" => 200}}
      end)
      service.add_operation(:get_classification_export_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetClassificationExportConfiguration"
        operation.name = "GetClassificationExportConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClassificationExportConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClassificationExportConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/classification-export-configuration", "code" => 200}}
      end)
      service.add_operation(:get_classification_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetClassificationScope"
        operation.name = "GetClassificationScope"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClassificationScopeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetClassificationScopeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/classification-scopes/{id}", "code" => 200}}
      end)
      service.add_operation(:get_custom_data_identifier, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetCustomDataIdentifier"
        operation.name = "GetCustomDataIdentifier"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomDataIdentifierRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCustomDataIdentifierResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/custom-data-identifiers/{id}", "code" => 200}}
      end)
      service.add_operation(:get_finding_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetFindingStatistics"
        operation.name = "GetFindingStatistics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingStatisticsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingStatisticsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/findings/statistics", "code" => 200}}
      end)
      service.add_operation(:get_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetFindings"
        operation.name = "GetFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/findings/describe", "code" => 200}}
      end)
      service.add_operation(:get_findings_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetFindingsFilter"
        operation.name = "GetFindingsFilter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsFilterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsFilterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/findingsfilters/{id}", "code" => 200}}
      end)
      service.add_operation(:get_findings_publication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetFindingsPublicationConfiguration"
        operation.name = "GetFindingsPublicationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsPublicationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetFindingsPublicationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/findings-publication-configuration", "code" => 200}}
      end)
      service.add_operation(:get_invitations_count, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetInvitationsCount"
        operation.name = "GetInvitationsCount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvitationsCountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetInvitationsCountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/invitations/count", "code" => 200}}
      end)
      service.add_operation(:get_macie_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetMacieSession"
        operation.name = "GetMacieSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMacieSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMacieSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/macie", "code" => 200}}
      end)
      service.add_operation(:get_master_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetMasterAccount"
        operation.name = "GetMasterAccount"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMasterAccountRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMasterAccountResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/master", "code" => 200}}
      end)
      service.add_operation(:get_member, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetMember"
        operation.name = "GetMember"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetMemberResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/members/{id}", "code" => 200}}
      end)
      service.add_operation(:get_resource_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetResourceProfile"
        operation.name = "GetResourceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourceProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resource-profiles", "code" => 200}}
      end)
      service.add_operation(:get_reveal_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetRevealConfiguration"
        operation.name = "GetRevealConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRevealConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetRevealConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/reveal-configuration", "code" => 200}}
      end)
      service.add_operation(:get_sensitive_data_occurrences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetSensitiveDataOccurrences"
        operation.name = "GetSensitiveDataOccurrences"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: UnprocessableEntityException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/findings/{findingId}/reveal", "code" => 200}}
      end)
      service.add_operation(:get_sensitive_data_occurrences_availability, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetSensitiveDataOccurrencesAvailability"
        operation.name = "GetSensitiveDataOccurrencesAvailability"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesAvailabilityRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitiveDataOccurrencesAvailabilityResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/findings/{findingId}/reveal/availability", "code" => 200}}
      end)
      service.add_operation(:get_sensitivity_inspection_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetSensitivityInspectionTemplate"
        operation.name = "GetSensitivityInspectionTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitivityInspectionTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSensitivityInspectionTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templates/sensitivity-inspections/{id}", "code" => 200}}
      end)
      service.add_operation(:get_usage_statistics, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetUsageStatistics"
        operation.name = "GetUsageStatistics"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageStatisticsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageStatisticsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/usage/statistics", "code" => 200}}
        operation[:paginator] = Paginators::GetUsageStatistics.new
      end)
      service.add_operation(:get_usage_totals, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#GetUsageTotals"
        operation.name = "GetUsageTotals"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageTotalsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetUsageTotalsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/usage", "code" => 200}}
      end)
      service.add_operation(:list_allow_lists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListAllowLists"
        operation.name = "ListAllowLists"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowListsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowListsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/allow-lists", "code" => 200}}
        operation[:paginator] = Paginators::ListAllowLists.new
      end)
      service.add_operation(:list_automated_discovery_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListAutomatedDiscoveryAccounts"
        operation.name = "ListAutomatedDiscoveryAccounts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedDiscoveryAccountsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAutomatedDiscoveryAccountsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/automated-discovery/accounts", "code" => 200}}
        operation[:paginator] = Paginators::ListAutomatedDiscoveryAccounts.new
      end)
      service.add_operation(:list_classification_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListClassificationJobs"
        operation.name = "ListClassificationJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClassificationJobsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClassificationJobsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/jobs/list", "code" => 200}}
        operation[:paginator] = Paginators::ListClassificationJobs.new
      end)
      service.add_operation(:list_classification_scopes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListClassificationScopes"
        operation.name = "ListClassificationScopes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClassificationScopesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListClassificationScopesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/classification-scopes", "code" => 200}}
        operation[:paginator] = Paginators::ListClassificationScopes.new
      end)
      service.add_operation(:list_custom_data_identifiers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListCustomDataIdentifiers"
        operation.name = "ListCustomDataIdentifiers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomDataIdentifiersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListCustomDataIdentifiersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-data-identifiers/list", "code" => 200}}
        operation[:paginator] = Paginators::ListCustomDataIdentifiers.new
      end)
      service.add_operation(:list_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListFindings"
        operation.name = "ListFindings"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/findings", "code" => 200}}
        operation[:paginator] = Paginators::ListFindings.new
      end)
      service.add_operation(:list_findings_filters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListFindingsFilters"
        operation.name = "ListFindingsFilters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsFiltersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFindingsFiltersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/findingsfilters", "code" => 200}}
        operation[:paginator] = Paginators::ListFindingsFilters.new
      end)
      service.add_operation(:list_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListInvitations"
        operation.name = "ListInvitations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvitationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListInvitationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/invitations", "code" => 200}}
        operation[:paginator] = Paginators::ListInvitations.new
      end)
      service.add_operation(:list_managed_data_identifiers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListManagedDataIdentifiers"
        operation.name = "ListManagedDataIdentifiers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedDataIdentifiersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListManagedDataIdentifiersResponse)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/managed-data-identifiers/list", "code" => 200}}
        operation[:paginator] = Paginators::ListManagedDataIdentifiers.new
      end)
      service.add_operation(:list_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListMembers"
        operation.name = "ListMembers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListMembersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/members", "code" => 200}}
        operation[:paginator] = Paginators::ListMembers.new
      end)
      service.add_operation(:list_organization_admin_accounts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListOrganizationAdminAccounts"
        operation.name = "ListOrganizationAdminAccounts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListOrganizationAdminAccountsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/admin", "code" => 200}}
        operation[:paginator] = Paginators::ListOrganizationAdminAccounts.new
      end)
      service.add_operation(:list_resource_profile_artifacts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListResourceProfileArtifacts"
        operation.name = "ListResourceProfileArtifacts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceProfileArtifactsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceProfileArtifactsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resource-profiles/artifacts", "code" => 200}}
        operation[:paginator] = Paginators::ListResourceProfileArtifacts.new
      end)
      service.add_operation(:list_resource_profile_detections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListResourceProfileDetections"
        operation.name = "ListResourceProfileDetections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceProfileDetectionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListResourceProfileDetectionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resource-profiles/detections", "code" => 200}}
        operation[:paginator] = Paginators::ListResourceProfileDetections.new
      end)
      service.add_operation(:list_sensitivity_inspection_templates, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListSensitivityInspectionTemplates"
        operation.name = "ListSensitivityInspectionTemplates"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSensitivityInspectionTemplatesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSensitivityInspectionTemplatesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/templates/sensitivity-inspections", "code" => 200}}
        operation[:paginator] = Paginators::ListSensitivityInspectionTemplates.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:put_classification_export_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#PutClassificationExportConfiguration"
        operation.name = "PutClassificationExportConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutClassificationExportConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutClassificationExportConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/classification-export-configuration", "code" => 200}}
      end)
      service.add_operation(:put_findings_publication_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#PutFindingsPublicationConfiguration"
        operation.name = "PutFindingsPublicationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutFindingsPublicationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutFindingsPublicationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/findings-publication-configuration", "code" => 200}}
      end)
      service.add_operation(:search_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#SearchResources"
        operation.name = "SearchResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/datasources/search-resources", "code" => 200}}
        operation[:paginator] = Paginators::SearchResources.new
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:test_custom_data_identifier, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#TestCustomDataIdentifier"
        operation.name = "TestCustomDataIdentifier"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCustomDataIdentifierRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCustomDataIdentifierResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/custom-data-identifiers/test", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:update_allow_list, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateAllowList"
        operation.name = "UpdateAllowList"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAllowListRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAllowListResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/allow-lists/{id}", "code" => 200}}
      end)
      service.add_operation(:update_automated_discovery_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateAutomatedDiscoveryConfiguration"
        operation.name = "UpdateAutomatedDiscoveryConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomatedDiscoveryConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAutomatedDiscoveryConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/automated-discovery/configuration", "code" => 200}}
      end)
      service.add_operation(:update_classification_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateClassificationJob"
        operation.name = "UpdateClassificationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClassificationJobRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClassificationJobResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:update_classification_scope, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateClassificationScope"
        operation.name = "UpdateClassificationScope"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClassificationScopeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateClassificationScopeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/classification-scopes/{id}", "code" => 200}}
      end)
      service.add_operation(:update_findings_filter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateFindingsFilter"
        operation.name = "UpdateFindingsFilter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFindingsFilterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFindingsFilterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/findingsfilters/{id}", "code" => 200}}
      end)
      service.add_operation(:update_macie_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateMacieSession"
        operation.name = "UpdateMacieSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMacieSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMacieSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/macie", "code" => 200}}
      end)
      service.add_operation(:update_member_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateMemberSession"
        operation.name = "UpdateMemberSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMemberSessionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateMemberSessionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/macie/members/{id}", "code" => 200}}
      end)
      service.add_operation(:update_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateOrganizationConfiguration"
        operation.name = "UpdateOrganizationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateOrganizationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/admin/configuration", "code" => 200}}
      end)
      service.add_operation(:update_resource_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateResourceProfile"
        operation.name = "UpdateResourceProfile"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceProfileRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceProfileResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/resource-profiles", "code" => 200}}
      end)
      service.add_operation(:update_resource_profile_detections, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateResourceProfileDetections"
        operation.name = "UpdateResourceProfileDetections"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceProfileDetectionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateResourceProfileDetectionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/resource-profiles/detections", "code" => 200}}
      end)
      service.add_operation(:update_reveal_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateRevealConfiguration"
        operation.name = "UpdateRevealConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRevealConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRevealConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/reveal-configuration", "code" => 200}}
      end)
      service.add_operation(:update_sensitivity_inspection_template, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.macie2#UpdateSensitivityInspectionTemplate"
        operation.name = "UpdateSensitivityInspectionTemplate"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSensitivityInspectionTemplateRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSensitivityInspectionTemplateResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/templates/sensitivity-inspections/{id}", "code" => 200}}
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
