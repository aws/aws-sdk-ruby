# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
    ApiCallDetails = Shapes::StructureShape.new(name: 'ApiCallDetails')
    AssumedRole = Shapes::StructureShape.new(name: 'AssumedRole')
    AwsAccount = Shapes::StructureShape.new(name: 'AwsAccount')
    AwsService = Shapes::StructureShape.new(name: 'AwsService')
    BatchGetCustomDataIdentifierSummary = Shapes::StructureShape.new(name: 'BatchGetCustomDataIdentifierSummary')
    BatchGetCustomDataIdentifiersRequest = Shapes::StructureShape.new(name: 'BatchGetCustomDataIdentifiersRequest')
    BatchGetCustomDataIdentifiersResponse = Shapes::StructureShape.new(name: 'BatchGetCustomDataIdentifiersResponse')
    BlockPublicAccess = Shapes::StructureShape.new(name: 'BlockPublicAccess')
    BucketCountByEffectivePermission = Shapes::StructureShape.new(name: 'BucketCountByEffectivePermission')
    BucketCountByEncryptionType = Shapes::StructureShape.new(name: 'BucketCountByEncryptionType')
    BucketCountBySharedAccessType = Shapes::StructureShape.new(name: 'BucketCountBySharedAccessType')
    BucketCriteria = Shapes::MapShape.new(name: 'BucketCriteria')
    BucketCriteriaAdditionalProperties = Shapes::StructureShape.new(name: 'BucketCriteriaAdditionalProperties')
    BucketLevelPermissions = Shapes::StructureShape.new(name: 'BucketLevelPermissions')
    BucketMetadata = Shapes::StructureShape.new(name: 'BucketMetadata')
    BucketPermissionConfiguration = Shapes::StructureShape.new(name: 'BucketPermissionConfiguration')
    BucketPolicy = Shapes::StructureShape.new(name: 'BucketPolicy')
    BucketPublicAccess = Shapes::StructureShape.new(name: 'BucketPublicAccess')
    BucketSortCriteria = Shapes::StructureShape.new(name: 'BucketSortCriteria')
    Cell = Shapes::StructureShape.new(name: 'Cell')
    Cells = Shapes::ListShape.new(name: 'Cells')
    ClassificationDetails = Shapes::StructureShape.new(name: 'ClassificationDetails')
    ClassificationExportConfiguration = Shapes::StructureShape.new(name: 'ClassificationExportConfiguration')
    ClassificationResult = Shapes::StructureShape.new(name: 'ClassificationResult')
    ClassificationResultStatus = Shapes::StructureShape.new(name: 'ClassificationResultStatus')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
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
    Criterion = Shapes::MapShape.new(name: 'Criterion')
    CriterionAdditionalProperties = Shapes::StructureShape.new(name: 'CriterionAdditionalProperties')
    Currency = Shapes::StringShape.new(name: 'Currency')
    CustomDataIdentifierSummary = Shapes::StructureShape.new(name: 'CustomDataIdentifierSummary')
    CustomDataIdentifiers = Shapes::StructureShape.new(name: 'CustomDataIdentifiers')
    CustomDetection = Shapes::StructureShape.new(name: 'CustomDetection')
    CustomDetections = Shapes::ListShape.new(name: 'CustomDetections')
    DailySchedule = Shapes::StructureShape.new(name: 'DailySchedule')
    DayOfWeek = Shapes::StringShape.new(name: 'DayOfWeek')
    DeclineInvitationsRequest = Shapes::StructureShape.new(name: 'DeclineInvitationsRequest')
    DeclineInvitationsResponse = Shapes::StructureShape.new(name: 'DeclineInvitationsResponse')
    DefaultDetection = Shapes::StructureShape.new(name: 'DefaultDetection')
    DefaultDetections = Shapes::ListShape.new(name: 'DefaultDetections')
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
    DisableMacieRequest = Shapes::StructureShape.new(name: 'DisableMacieRequest')
    DisableMacieResponse = Shapes::StructureShape.new(name: 'DisableMacieResponse')
    DisableOrganizationAdminAccountRequest = Shapes::StructureShape.new(name: 'DisableOrganizationAdminAccountRequest')
    DisableOrganizationAdminAccountResponse = Shapes::StructureShape.new(name: 'DisableOrganizationAdminAccountResponse')
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
    GetBucketStatisticsRequest = Shapes::StructureShape.new(name: 'GetBucketStatisticsRequest')
    GetBucketStatisticsResponse = Shapes::StructureShape.new(name: 'GetBucketStatisticsResponse')
    GetClassificationExportConfigurationRequest = Shapes::StructureShape.new(name: 'GetClassificationExportConfigurationRequest')
    GetClassificationExportConfigurationResponse = Shapes::StructureShape.new(name: 'GetClassificationExportConfigurationResponse')
    GetCustomDataIdentifierRequest = Shapes::StructureShape.new(name: 'GetCustomDataIdentifierRequest')
    GetCustomDataIdentifierResponse = Shapes::StructureShape.new(name: 'GetCustomDataIdentifierResponse')
    GetFindingStatisticsRequest = Shapes::StructureShape.new(name: 'GetFindingStatisticsRequest')
    GetFindingStatisticsResponse = Shapes::StructureShape.new(name: 'GetFindingStatisticsResponse')
    GetFindingsFilterRequest = Shapes::StructureShape.new(name: 'GetFindingsFilterRequest')
    GetFindingsFilterResponse = Shapes::StructureShape.new(name: 'GetFindingsFilterResponse')
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
    JobComparator = Shapes::StringShape.new(name: 'JobComparator')
    JobScheduleFrequency = Shapes::StructureShape.new(name: 'JobScheduleFrequency')
    JobScopeTerm = Shapes::StructureShape.new(name: 'JobScopeTerm')
    JobScopingBlock = Shapes::StructureShape.new(name: 'JobScopingBlock')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    JobSummary = Shapes::StructureShape.new(name: 'JobSummary')
    JobType = Shapes::StringShape.new(name: 'JobType')
    KeyValuePair = Shapes::StructureShape.new(name: 'KeyValuePair')
    KeyValuePairList = Shapes::ListShape.new(name: 'KeyValuePairList')
    ListClassificationJobsRequest = Shapes::StructureShape.new(name: 'ListClassificationJobsRequest')
    ListClassificationJobsResponse = Shapes::StructureShape.new(name: 'ListClassificationJobsResponse')
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
    ListMembersRequest = Shapes::StructureShape.new(name: 'ListMembersRequest')
    ListMembersResponse = Shapes::StructureShape.new(name: 'ListMembersResponse')
    ListOrganizationAdminAccountsRequest = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsRequest')
    ListOrganizationAdminAccountsResponse = Shapes::StructureShape.new(name: 'ListOrganizationAdminAccountsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MacieStatus = Shapes::StringShape.new(name: 'MacieStatus')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Member = Shapes::StructureShape.new(name: 'Member')
    MonthlySchedule = Shapes::StructureShape.new(name: 'MonthlySchedule')
    ObjectCountByEncryptionType = Shapes::StructureShape.new(name: 'ObjectCountByEncryptionType')
    ObjectLevelStatistics = Shapes::StructureShape.new(name: 'ObjectLevelStatistics')
    Occurrences = Shapes::StructureShape.new(name: 'Occurrences')
    OrderBy = Shapes::StringShape.new(name: 'OrderBy')
    Page = Shapes::StructureShape.new(name: 'Page')
    Pages = Shapes::ListShape.new(name: 'Pages')
    PolicyDetails = Shapes::StructureShape.new(name: 'PolicyDetails')
    PutClassificationExportConfigurationRequest = Shapes::StructureShape.new(name: 'PutClassificationExportConfigurationRequest')
    PutClassificationExportConfigurationResponse = Shapes::StructureShape.new(name: 'PutClassificationExportConfigurationResponse')
    Range = Shapes::StructureShape.new(name: 'Range')
    Ranges = Shapes::ListShape.new(name: 'Ranges')
    Record = Shapes::StructureShape.new(name: 'Record')
    Records = Shapes::ListShape.new(name: 'Records')
    RelationshipStatus = Shapes::StringShape.new(name: 'RelationshipStatus')
    ReplicationDetails = Shapes::StructureShape.new(name: 'ReplicationDetails')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcesAffected = Shapes::StructureShape.new(name: 'ResourcesAffected')
    S3Bucket = Shapes::StructureShape.new(name: 'S3Bucket')
    S3BucketDefinitionForJob = Shapes::StructureShape.new(name: 'S3BucketDefinitionForJob')
    S3BucketOwner = Shapes::StructureShape.new(name: 'S3BucketOwner')
    S3Destination = Shapes::StructureShape.new(name: 'S3Destination')
    S3JobDefinition = Shapes::StructureShape.new(name: 'S3JobDefinition')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    ScopeFilterKey = Shapes::StringShape.new(name: 'ScopeFilterKey')
    Scoping = Shapes::StructureShape.new(name: 'Scoping')
    SensitiveData = Shapes::ListShape.new(name: 'SensitiveData')
    SensitiveDataItem = Shapes::StructureShape.new(name: 'SensitiveDataItem')
    SensitiveDataItemCategory = Shapes::StringShape.new(name: 'SensitiveDataItemCategory')
    ServerSideEncryption = Shapes::StructureShape.new(name: 'ServerSideEncryption')
    ServiceLimit = Shapes::StructureShape.new(name: 'ServiceLimit')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionContext = Shapes::StructureShape.new(name: 'SessionContext')
    SessionContextAttributes = Shapes::StructureShape.new(name: 'SessionContextAttributes')
    SessionIssuer = Shapes::StructureShape.new(name: 'SessionIssuer')
    Severity = Shapes::StructureShape.new(name: 'Severity')
    SeverityDescription = Shapes::StringShape.new(name: 'SeverityDescription')
    SharedAccess = Shapes::StringShape.new(name: 'SharedAccess')
    SimpleScopeTerm = Shapes::StructureShape.new(name: 'SimpleScopeTerm')
    SortCriteria = Shapes::StructureShape.new(name: 'SortCriteria')
    Statistics = Shapes::StructureShape.new(name: 'Statistics')
    StorageClass = Shapes::StringShape.new(name: 'StorageClass')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagScopeTerm = Shapes::StructureShape.new(name: 'TagScopeTerm')
    TagTarget = Shapes::StringShape.new(name: 'TagTarget')
    TagValuePair = Shapes::StructureShape.new(name: 'TagValuePair')
    TestCustomDataIdentifierRequest = Shapes::StructureShape.new(name: 'TestCustomDataIdentifierRequest')
    TestCustomDataIdentifierResponse = Shapes::StructureShape.new(name: 'TestCustomDataIdentifierResponse')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UnprocessedAccount = Shapes::StructureShape.new(name: 'UnprocessedAccount')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateClassificationJobRequest = Shapes::StructureShape.new(name: 'UpdateClassificationJobRequest')
    UpdateClassificationJobResponse = Shapes::StructureShape.new(name: 'UpdateClassificationJobResponse')
    UpdateFindingsFilterRequest = Shapes::StructureShape.new(name: 'UpdateFindingsFilterRequest')
    UpdateFindingsFilterResponse = Shapes::StructureShape.new(name: 'UpdateFindingsFilterResponse')
    UpdateMacieSessionRequest = Shapes::StructureShape.new(name: 'UpdateMacieSessionRequest')
    UpdateMacieSessionResponse = Shapes::StructureShape.new(name: 'UpdateMacieSessionResponse')
    UpdateMemberSessionRequest = Shapes::StructureShape.new(name: 'UpdateMemberSessionRequest')
    UpdateMemberSessionResponse = Shapes::StructureShape.new(name: 'UpdateMemberSessionResponse')
    UpdateOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationRequest')
    UpdateOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateOrganizationConfigurationResponse')
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
    __listOfBatchGetCustomDataIdentifierSummary = Shapes::ListShape.new(name: '__listOfBatchGetCustomDataIdentifierSummary')
    __listOfBucketMetadata = Shapes::ListShape.new(name: '__listOfBucketMetadata')
    __listOfCustomDataIdentifierSummary = Shapes::ListShape.new(name: '__listOfCustomDataIdentifierSummary')
    __listOfFinding = Shapes::ListShape.new(name: '__listOfFinding')
    __listOfFindingType = Shapes::ListShape.new(name: '__listOfFindingType')
    __listOfFindingsFilterListItem = Shapes::ListShape.new(name: '__listOfFindingsFilterListItem')
    __listOfGroupCount = Shapes::ListShape.new(name: '__listOfGroupCount')
    __listOfInvitation = Shapes::ListShape.new(name: '__listOfInvitation')
    __listOfJobScopeTerm = Shapes::ListShape.new(name: '__listOfJobScopeTerm')
    __listOfJobSummary = Shapes::ListShape.new(name: '__listOfJobSummary')
    __listOfKeyValuePair = Shapes::ListShape.new(name: '__listOfKeyValuePair')
    __listOfListJobsFilterTerm = Shapes::ListShape.new(name: '__listOfListJobsFilterTerm')
    __listOfMember = Shapes::ListShape.new(name: '__listOfMember')
    __listOfS3BucketDefinitionForJob = Shapes::ListShape.new(name: '__listOfS3BucketDefinitionForJob')
    __listOfTagValuePair = Shapes::ListShape.new(name: '__listOfTagValuePair')
    __listOfUnprocessedAccount = Shapes::ListShape.new(name: '__listOfUnprocessedAccount')
    __listOfUsageByAccount = Shapes::ListShape.new(name: '__listOfUsageByAccount')
    __listOfUsageRecord = Shapes::ListShape.new(name: '__listOfUsageRecord')
    __listOfUsageStatisticsFilter = Shapes::ListShape.new(name: '__listOfUsageStatisticsFilter')
    __listOfUsageTotal = Shapes::ListShape.new(name: '__listOfUsageTotal')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    AcceptInvitationRequest.add_member(:invitation_id, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "invitationId"))
    AcceptInvitationRequest.add_member(:master_account, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "masterAccount"))
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
    BucketCountByEncryptionType.struct_class = Types::BucketCountByEncryptionType

    BucketCountBySharedAccessType.add_member(:external, Shapes::ShapeRef.new(shape: __long, location_name: "external"))
    BucketCountBySharedAccessType.add_member(:internal, Shapes::ShapeRef.new(shape: __long, location_name: "internal"))
    BucketCountBySharedAccessType.add_member(:not_shared, Shapes::ShapeRef.new(shape: __long, location_name: "notShared"))
    BucketCountBySharedAccessType.add_member(:unknown, Shapes::ShapeRef.new(shape: __long, location_name: "unknown"))
    BucketCountBySharedAccessType.struct_class = Types::BucketCountBySharedAccessType

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
    BucketMetadata.add_member(:bucket_arn, Shapes::ShapeRef.new(shape: __string, location_name: "bucketArn"))
    BucketMetadata.add_member(:bucket_created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "bucketCreatedAt"))
    BucketMetadata.add_member(:bucket_name, Shapes::ShapeRef.new(shape: __string, location_name: "bucketName"))
    BucketMetadata.add_member(:classifiable_object_count, Shapes::ShapeRef.new(shape: __long, location_name: "classifiableObjectCount"))
    BucketMetadata.add_member(:classifiable_size_in_bytes, Shapes::ShapeRef.new(shape: __long, location_name: "classifiableSizeInBytes"))
    BucketMetadata.add_member(:last_updated, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastUpdated"))
    BucketMetadata.add_member(:object_count, Shapes::ShapeRef.new(shape: __long, location_name: "objectCount"))
    BucketMetadata.add_member(:object_count_by_encryption_type, Shapes::ShapeRef.new(shape: ObjectCountByEncryptionType, location_name: "objectCountByEncryptionType"))
    BucketMetadata.add_member(:public_access, Shapes::ShapeRef.new(shape: BucketPublicAccess, location_name: "publicAccess"))
    BucketMetadata.add_member(:region, Shapes::ShapeRef.new(shape: __string, location_name: "region"))
    BucketMetadata.add_member(:replication_details, Shapes::ShapeRef.new(shape: ReplicationDetails, location_name: "replicationDetails"))
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

    BucketSortCriteria.add_member(:attribute_name, Shapes::ShapeRef.new(shape: __string, location_name: "attributeName"))
    BucketSortCriteria.add_member(:order_by, Shapes::ShapeRef.new(shape: OrderBy, location_name: "orderBy"))
    BucketSortCriteria.struct_class = Types::BucketSortCriteria

    Cell.add_member(:cell_reference, Shapes::ShapeRef.new(shape: __string, location_name: "cellReference"))
    Cell.add_member(:column, Shapes::ShapeRef.new(shape: __long, location_name: "column"))
    Cell.add_member(:column_name, Shapes::ShapeRef.new(shape: __string, location_name: "columnName"))
    Cell.add_member(:row, Shapes::ShapeRef.new(shape: __long, location_name: "row"))
    Cell.struct_class = Types::Cell

    Cells.member = Shapes::ShapeRef.new(shape: Cell)

    ClassificationDetails.add_member(:detailed_results_location, Shapes::ShapeRef.new(shape: __string, location_name: "detailedResultsLocation"))
    ClassificationDetails.add_member(:job_arn, Shapes::ShapeRef.new(shape: __string, location_name: "jobArn"))
    ClassificationDetails.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
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

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateClassificationJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateClassificationJobRequest.add_member(:custom_data_identifier_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "customDataIdentifierIds"))
    CreateClassificationJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    CreateClassificationJobRequest.add_member(:initial_run, Shapes::ShapeRef.new(shape: __boolean, location_name: "initialRun"))
    CreateClassificationJobRequest.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, required: true, location_name: "jobType"))
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
    CreateCustomDataIdentifierRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    CreateCustomDataIdentifierRequest.add_member(:regex, Shapes::ShapeRef.new(shape: __string, location_name: "regex"))
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

    Criterion.key = Shapes::ShapeRef.new(shape: __string)
    Criterion.value = Shapes::ShapeRef.new(shape: CriterionAdditionalProperties)

    CriterionAdditionalProperties.add_member(:eq, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "eq"))
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

    DescribeClassificationJobResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: __string, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DescribeClassificationJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    DescribeClassificationJobResponse.add_member(:custom_data_identifier_ids, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "customDataIdentifierIds"))
    DescribeClassificationJobResponse.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    DescribeClassificationJobResponse.add_member(:initial_run, Shapes::ShapeRef.new(shape: __boolean, location_name: "initialRun"))
    DescribeClassificationJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: __string, location_name: "jobArn"))
    DescribeClassificationJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    DescribeClassificationJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "jobStatus"))
    DescribeClassificationJobResponse.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "jobType"))
    DescribeClassificationJobResponse.add_member(:last_run_time, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "lastRunTime"))
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

    DisableMacieRequest.struct_class = Types::DisableMacieRequest

    DisableMacieResponse.struct_class = Types::DisableMacieResponse

    DisableOrganizationAdminAccountRequest.add_member(:admin_account_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "querystring", location_name: "adminAccountId"))
    DisableOrganizationAdminAccountRequest.struct_class = Types::DisableOrganizationAdminAccountRequest

    DisableOrganizationAdminAccountResponse.struct_class = Types::DisableOrganizationAdminAccountResponse

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

    GetBucketStatisticsRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    GetBucketStatisticsRequest.struct_class = Types::GetBucketStatisticsRequest

    GetBucketStatisticsResponse.add_member(:bucket_count, Shapes::ShapeRef.new(shape: __long, location_name: "bucketCount"))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_effective_permission, Shapes::ShapeRef.new(shape: BucketCountByEffectivePermission, location_name: "bucketCountByEffectivePermission"))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_encryption_type, Shapes::ShapeRef.new(shape: BucketCountByEncryptionType, location_name: "bucketCountByEncryptionType"))
    GetBucketStatisticsResponse.add_member(:bucket_count_by_shared_access_type, Shapes::ShapeRef.new(shape: BucketCountBySharedAccessType, location_name: "bucketCountBySharedAccessType"))
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
    GetMemberResponse.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    GetMemberResponse.add_member(:email, Shapes::ShapeRef.new(shape: __string, location_name: "email"))
    GetMemberResponse.add_member(:invited_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "invitedAt"))
    GetMemberResponse.add_member(:master_account_id, Shapes::ShapeRef.new(shape: __string, location_name: "masterAccountId"))
    GetMemberResponse.add_member(:relationship_status, Shapes::ShapeRef.new(shape: RelationshipStatus, location_name: "relationshipStatus"))
    GetMemberResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetMemberResponse.add_member(:updated_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "updatedAt"))
    GetMemberResponse.struct_class = Types::GetMemberResponse

    GetUsageStatisticsRequest.add_member(:filter_by, Shapes::ShapeRef.new(shape: __listOfUsageStatisticsFilter, location_name: "filterBy"))
    GetUsageStatisticsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    GetUsageStatisticsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    GetUsageStatisticsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: UsageStatisticsSortBy, location_name: "sortBy"))
    GetUsageStatisticsRequest.struct_class = Types::GetUsageStatisticsRequest

    GetUsageStatisticsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    GetUsageStatisticsResponse.add_member(:records, Shapes::ShapeRef.new(shape: __listOfUsageRecord, location_name: "records"))
    GetUsageStatisticsResponse.struct_class = Types::GetUsageStatisticsResponse

    GetUsageTotalsRequest.struct_class = Types::GetUsageTotalsRequest

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

    JobScheduleFrequency.add_member(:daily_schedule, Shapes::ShapeRef.new(shape: DailySchedule, location_name: "dailySchedule"))
    JobScheduleFrequency.add_member(:monthly_schedule, Shapes::ShapeRef.new(shape: MonthlySchedule, location_name: "monthlySchedule"))
    JobScheduleFrequency.add_member(:weekly_schedule, Shapes::ShapeRef.new(shape: WeeklySchedule, location_name: "weeklySchedule"))
    JobScheduleFrequency.struct_class = Types::JobScheduleFrequency

    JobScopeTerm.add_member(:simple_scope_term, Shapes::ShapeRef.new(shape: SimpleScopeTerm, location_name: "simpleScopeTerm"))
    JobScopeTerm.add_member(:tag_scope_term, Shapes::ShapeRef.new(shape: TagScopeTerm, location_name: "tagScopeTerm"))
    JobScopeTerm.struct_class = Types::JobScopeTerm

    JobScopingBlock.add_member(:and, Shapes::ShapeRef.new(shape: __listOfJobScopeTerm, location_name: "and"))
    JobScopingBlock.struct_class = Types::JobScopingBlock

    JobSummary.add_member(:bucket_definitions, Shapes::ShapeRef.new(shape: __listOfS3BucketDefinitionForJob, location_name: "bucketDefinitions"))
    JobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    JobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, location_name: "jobId"))
    JobSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, location_name: "jobStatus"))
    JobSummary.add_member(:job_type, Shapes::ShapeRef.new(shape: JobType, location_name: "jobType"))
    JobSummary.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    JobSummary.add_member(:user_paused_details, Shapes::ShapeRef.new(shape: UserPausedDetails, location_name: "userPausedDetails"))
    JobSummary.struct_class = Types::JobSummary

    KeyValuePair.add_member(:key, Shapes::ShapeRef.new(shape: __string, location_name: "key"))
    KeyValuePair.add_member(:value, Shapes::ShapeRef.new(shape: __string, location_name: "value"))
    KeyValuePair.struct_class = Types::KeyValuePair

    KeyValuePairList.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    ListClassificationJobsRequest.add_member(:filter_criteria, Shapes::ShapeRef.new(shape: ListJobsFilterCriteria, location_name: "filterCriteria"))
    ListClassificationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: __integer, location_name: "maxResults"))
    ListClassificationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListClassificationJobsRequest.add_member(:sort_criteria, Shapes::ShapeRef.new(shape: ListJobsSortCriteria, location_name: "sortCriteria"))
    ListClassificationJobsRequest.struct_class = Types::ListClassificationJobsRequest

    ListClassificationJobsResponse.add_member(:items, Shapes::ShapeRef.new(shape: __listOfJobSummary, location_name: "items"))
    ListClassificationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListClassificationJobsResponse.struct_class = Types::ListClassificationJobsResponse

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

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Member.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
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

    Range.add_member(:end, Shapes::ShapeRef.new(shape: __long, location_name: "end"))
    Range.add_member(:start, Shapes::ShapeRef.new(shape: __long, location_name: "start"))
    Range.add_member(:start_column, Shapes::ShapeRef.new(shape: __long, location_name: "startColumn"))
    Range.struct_class = Types::Range

    Ranges.member = Shapes::ShapeRef.new(shape: Range)

    Record.add_member(:record_index, Shapes::ShapeRef.new(shape: __long, location_name: "recordIndex"))
    Record.struct_class = Types::Record

    Records.member = Shapes::ShapeRef.new(shape: Record)

    ReplicationDetails.add_member(:replicated, Shapes::ShapeRef.new(shape: __boolean, location_name: "replicated"))
    ReplicationDetails.add_member(:replicated_externally, Shapes::ShapeRef.new(shape: __boolean, location_name: "replicatedExternally"))
    ReplicationDetails.add_member(:replication_accounts, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "replicationAccounts"))
    ReplicationDetails.struct_class = Types::ReplicationDetails

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcesAffected.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    ResourcesAffected.add_member(:s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "s3Object"))
    ResourcesAffected.struct_class = Types::ResourcesAffected

    S3Bucket.add_member(:arn, Shapes::ShapeRef.new(shape: __string, location_name: "arn"))
    S3Bucket.add_member(:created_at, Shapes::ShapeRef.new(shape: __timestampIso8601, location_name: "createdAt"))
    S3Bucket.add_member(:default_server_side_encryption, Shapes::ShapeRef.new(shape: ServerSideEncryption, location_name: "defaultServerSideEncryption"))
    S3Bucket.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    S3Bucket.add_member(:owner, Shapes::ShapeRef.new(shape: S3BucketOwner, location_name: "owner"))
    S3Bucket.add_member(:public_access, Shapes::ShapeRef.new(shape: BucketPublicAccess, location_name: "publicAccess"))
    S3Bucket.add_member(:tags, Shapes::ShapeRef.new(shape: KeyValuePairList, location_name: "tags"))
    S3Bucket.struct_class = Types::S3Bucket

    S3BucketDefinitionForJob.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    S3BucketDefinitionForJob.add_member(:buckets, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "buckets"))
    S3BucketDefinitionForJob.struct_class = Types::S3BucketDefinitionForJob

    S3BucketOwner.add_member(:display_name, Shapes::ShapeRef.new(shape: __string, location_name: "displayName"))
    S3BucketOwner.add_member(:id, Shapes::ShapeRef.new(shape: __string, location_name: "id"))
    S3BucketOwner.struct_class = Types::S3BucketOwner

    S3Destination.add_member(:bucket_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "bucketName"))
    S3Destination.add_member(:key_prefix, Shapes::ShapeRef.new(shape: __string, location_name: "keyPrefix"))
    S3Destination.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "kmsKeyArn"))
    S3Destination.struct_class = Types::S3Destination

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

    Scoping.add_member(:excludes, Shapes::ShapeRef.new(shape: JobScopingBlock, location_name: "excludes"))
    Scoping.add_member(:includes, Shapes::ShapeRef.new(shape: JobScopingBlock, location_name: "includes"))
    Scoping.struct_class = Types::Scoping

    SensitiveData.member = Shapes::ShapeRef.new(shape: SensitiveDataItem)

    SensitiveDataItem.add_member(:category, Shapes::ShapeRef.new(shape: SensitiveDataItemCategory, location_name: "category"))
    SensitiveDataItem.add_member(:detections, Shapes::ShapeRef.new(shape: DefaultDetections, location_name: "detections"))
    SensitiveDataItem.add_member(:total_count, Shapes::ShapeRef.new(shape: __long, location_name: "totalCount"))
    SensitiveDataItem.struct_class = Types::SensitiveDataItem

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

    UnprocessedAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
    UnprocessedAccount.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    UnprocessedAccount.add_member(:error_message, Shapes::ShapeRef.new(shape: __string, location_name: "errorMessage"))
    UnprocessedAccount.struct_class = Types::UnprocessedAccount

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateClassificationJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "jobId"))
    UpdateClassificationJobRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "jobStatus"))
    UpdateClassificationJobRequest.struct_class = Types::UpdateClassificationJobRequest

    UpdateClassificationJobResponse.struct_class = Types::UpdateClassificationJobResponse

    UpdateFindingsFilterRequest.add_member(:action, Shapes::ShapeRef.new(shape: FindingsFilterAction, location_name: "action"))
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

    UsageByAccount.add_member(:currency, Shapes::ShapeRef.new(shape: Currency, location_name: "currency"))
    UsageByAccount.add_member(:estimated_cost, Shapes::ShapeRef.new(shape: __string, location_name: "estimatedCost"))
    UsageByAccount.add_member(:service_limit, Shapes::ShapeRef.new(shape: ServiceLimit, location_name: "serviceLimit"))
    UsageByAccount.add_member(:type, Shapes::ShapeRef.new(shape: UsageType, location_name: "type"))
    UsageByAccount.struct_class = Types::UsageByAccount

    UsageRecord.add_member(:account_id, Shapes::ShapeRef.new(shape: __string, location_name: "accountId"))
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

    __listOfBatchGetCustomDataIdentifierSummary.member = Shapes::ShapeRef.new(shape: BatchGetCustomDataIdentifierSummary)

    __listOfBucketMetadata.member = Shapes::ShapeRef.new(shape: BucketMetadata)

    __listOfCustomDataIdentifierSummary.member = Shapes::ShapeRef.new(shape: CustomDataIdentifierSummary)

    __listOfFinding.member = Shapes::ShapeRef.new(shape: Finding)

    __listOfFindingType.member = Shapes::ShapeRef.new(shape: FindingType)

    __listOfFindingsFilterListItem.member = Shapes::ShapeRef.new(shape: FindingsFilterListItem)

    __listOfGroupCount.member = Shapes::ShapeRef.new(shape: GroupCount)

    __listOfInvitation.member = Shapes::ShapeRef.new(shape: Invitation)

    __listOfJobScopeTerm.member = Shapes::ShapeRef.new(shape: JobScopeTerm)

    __listOfJobSummary.member = Shapes::ShapeRef.new(shape: JobSummary)

    __listOfKeyValuePair.member = Shapes::ShapeRef.new(shape: KeyValuePair)

    __listOfListJobsFilterTerm.member = Shapes::ShapeRef.new(shape: ListJobsFilterTerm)

    __listOfMember.member = Shapes::ShapeRef.new(shape: Member)

    __listOfS3BucketDefinitionForJob.member = Shapes::ShapeRef.new(shape: S3BucketDefinitionForJob)

    __listOfTagValuePair.member = Shapes::ShapeRef.new(shape: TagValuePair)

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
    end

  end
end
