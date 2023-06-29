# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WellArchitected
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountSummary = Shapes::MapShape.new(name: 'AccountSummary')
    AdditionalResourceType = Shapes::StringShape.new(name: 'AdditionalResourceType')
    AdditionalResources = Shapes::StructureShape.new(name: 'AdditionalResources')
    AdditionalResourcesList = Shapes::ListShape.new(name: 'AdditionalResourcesList')
    Answer = Shapes::StructureShape.new(name: 'Answer')
    AnswerReason = Shapes::StringShape.new(name: 'AnswerReason')
    AnswerSummaries = Shapes::ListShape.new(name: 'AnswerSummaries')
    AnswerSummary = Shapes::StructureShape.new(name: 'AnswerSummary')
    ApplicationArn = Shapes::StringShape.new(name: 'ApplicationArn')
    AssociateLensesInput = Shapes::StructureShape.new(name: 'AssociateLensesInput')
    AssociateProfilesInput = Shapes::StructureShape.new(name: 'AssociateProfilesInput')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsRegion = Shapes::StringShape.new(name: 'AwsRegion')
    Base64String = Shapes::StringShape.new(name: 'Base64String')
    BestPractice = Shapes::StructureShape.new(name: 'BestPractice')
    BestPractices = Shapes::ListShape.new(name: 'BestPractices')
    CheckDescription = Shapes::StringShape.new(name: 'CheckDescription')
    CheckDetail = Shapes::StructureShape.new(name: 'CheckDetail')
    CheckDetails = Shapes::ListShape.new(name: 'CheckDetails')
    CheckFailureReason = Shapes::StringShape.new(name: 'CheckFailureReason')
    CheckId = Shapes::StringShape.new(name: 'CheckId')
    CheckName = Shapes::StringShape.new(name: 'CheckName')
    CheckProvider = Shapes::StringShape.new(name: 'CheckProvider')
    CheckStatus = Shapes::StringShape.new(name: 'CheckStatus')
    CheckStatusCount = Shapes::IntegerShape.new(name: 'CheckStatusCount')
    CheckSummaries = Shapes::ListShape.new(name: 'CheckSummaries')
    CheckSummary = Shapes::StructureShape.new(name: 'CheckSummary')
    Choice = Shapes::StructureShape.new(name: 'Choice')
    ChoiceAnswer = Shapes::StructureShape.new(name: 'ChoiceAnswer')
    ChoiceAnswerSummaries = Shapes::ListShape.new(name: 'ChoiceAnswerSummaries')
    ChoiceAnswerSummary = Shapes::StructureShape.new(name: 'ChoiceAnswerSummary')
    ChoiceAnswers = Shapes::ListShape.new(name: 'ChoiceAnswers')
    ChoiceContent = Shapes::StructureShape.new(name: 'ChoiceContent')
    ChoiceContentDisplayText = Shapes::StringShape.new(name: 'ChoiceContentDisplayText')
    ChoiceContentUrl = Shapes::StringShape.new(name: 'ChoiceContentUrl')
    ChoiceDescription = Shapes::StringShape.new(name: 'ChoiceDescription')
    ChoiceId = Shapes::StringShape.new(name: 'ChoiceId')
    ChoiceImprovementPlan = Shapes::StructureShape.new(name: 'ChoiceImprovementPlan')
    ChoiceImprovementPlans = Shapes::ListShape.new(name: 'ChoiceImprovementPlans')
    ChoiceNotes = Shapes::StringShape.new(name: 'ChoiceNotes')
    ChoiceReason = Shapes::StringShape.new(name: 'ChoiceReason')
    ChoiceStatus = Shapes::StringShape.new(name: 'ChoiceStatus')
    ChoiceTitle = Shapes::StringShape.new(name: 'ChoiceTitle')
    ChoiceUpdate = Shapes::StructureShape.new(name: 'ChoiceUpdate')
    ChoiceUpdates = Shapes::MapShape.new(name: 'ChoiceUpdates')
    Choices = Shapes::ListShape.new(name: 'Choices')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConsolidatedReportMetric = Shapes::StructureShape.new(name: 'ConsolidatedReportMetric')
    ConsolidatedReportMetrics = Shapes::ListShape.new(name: 'ConsolidatedReportMetrics')
    Count = Shapes::IntegerShape.new(name: 'Count')
    CreateLensShareInput = Shapes::StructureShape.new(name: 'CreateLensShareInput')
    CreateLensShareOutput = Shapes::StructureShape.new(name: 'CreateLensShareOutput')
    CreateLensVersionInput = Shapes::StructureShape.new(name: 'CreateLensVersionInput')
    CreateLensVersionOutput = Shapes::StructureShape.new(name: 'CreateLensVersionOutput')
    CreateMilestoneInput = Shapes::StructureShape.new(name: 'CreateMilestoneInput')
    CreateMilestoneOutput = Shapes::StructureShape.new(name: 'CreateMilestoneOutput')
    CreateProfileInput = Shapes::StructureShape.new(name: 'CreateProfileInput')
    CreateProfileOutput = Shapes::StructureShape.new(name: 'CreateProfileOutput')
    CreateProfileShareInput = Shapes::StructureShape.new(name: 'CreateProfileShareInput')
    CreateProfileShareOutput = Shapes::StructureShape.new(name: 'CreateProfileShareOutput')
    CreateWorkloadInput = Shapes::StructureShape.new(name: 'CreateWorkloadInput')
    CreateWorkloadOutput = Shapes::StructureShape.new(name: 'CreateWorkloadOutput')
    CreateWorkloadShareInput = Shapes::StructureShape.new(name: 'CreateWorkloadShareInput')
    CreateWorkloadShareOutput = Shapes::StructureShape.new(name: 'CreateWorkloadShareOutput')
    DefinitionType = Shapes::StringShape.new(name: 'DefinitionType')
    DeleteLensInput = Shapes::StructureShape.new(name: 'DeleteLensInput')
    DeleteLensShareInput = Shapes::StructureShape.new(name: 'DeleteLensShareInput')
    DeleteProfileInput = Shapes::StructureShape.new(name: 'DeleteProfileInput')
    DeleteProfileShareInput = Shapes::StructureShape.new(name: 'DeleteProfileShareInput')
    DeleteWorkloadInput = Shapes::StructureShape.new(name: 'DeleteWorkloadInput')
    DeleteWorkloadShareInput = Shapes::StructureShape.new(name: 'DeleteWorkloadShareInput')
    DifferenceStatus = Shapes::StringShape.new(name: 'DifferenceStatus')
    DisassociateLensesInput = Shapes::StructureShape.new(name: 'DisassociateLensesInput')
    DisassociateProfilesInput = Shapes::StructureShape.new(name: 'DisassociateProfilesInput')
    DiscoveryIntegrationStatus = Shapes::StringShape.new(name: 'DiscoveryIntegrationStatus')
    DisplayText = Shapes::StringShape.new(name: 'DisplayText')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExceptionResourceId = Shapes::StringShape.new(name: 'ExceptionResourceId')
    ExceptionResourceType = Shapes::StringShape.new(name: 'ExceptionResourceType')
    ExportLensInput = Shapes::StructureShape.new(name: 'ExportLensInput')
    ExportLensOutput = Shapes::StructureShape.new(name: 'ExportLensOutput')
    FlaggedResources = Shapes::IntegerShape.new(name: 'FlaggedResources')
    GetAnswerInput = Shapes::StructureShape.new(name: 'GetAnswerInput')
    GetAnswerOutput = Shapes::StructureShape.new(name: 'GetAnswerOutput')
    GetConsolidatedReportInput = Shapes::StructureShape.new(name: 'GetConsolidatedReportInput')
    GetConsolidatedReportMaxResults = Shapes::IntegerShape.new(name: 'GetConsolidatedReportMaxResults')
    GetConsolidatedReportOutput = Shapes::StructureShape.new(name: 'GetConsolidatedReportOutput')
    GetLensInput = Shapes::StructureShape.new(name: 'GetLensInput')
    GetLensOutput = Shapes::StructureShape.new(name: 'GetLensOutput')
    GetLensReviewInput = Shapes::StructureShape.new(name: 'GetLensReviewInput')
    GetLensReviewOutput = Shapes::StructureShape.new(name: 'GetLensReviewOutput')
    GetLensReviewReportInput = Shapes::StructureShape.new(name: 'GetLensReviewReportInput')
    GetLensReviewReportOutput = Shapes::StructureShape.new(name: 'GetLensReviewReportOutput')
    GetLensVersionDifferenceInput = Shapes::StructureShape.new(name: 'GetLensVersionDifferenceInput')
    GetLensVersionDifferenceOutput = Shapes::StructureShape.new(name: 'GetLensVersionDifferenceOutput')
    GetMilestoneInput = Shapes::StructureShape.new(name: 'GetMilestoneInput')
    GetMilestoneOutput = Shapes::StructureShape.new(name: 'GetMilestoneOutput')
    GetProfileInput = Shapes::StructureShape.new(name: 'GetProfileInput')
    GetProfileOutput = Shapes::StructureShape.new(name: 'GetProfileOutput')
    GetProfileTemplateInput = Shapes::StructureShape.new(name: 'GetProfileTemplateInput')
    GetProfileTemplateOutput = Shapes::StructureShape.new(name: 'GetProfileTemplateOutput')
    GetWorkloadInput = Shapes::StructureShape.new(name: 'GetWorkloadInput')
    GetWorkloadOutput = Shapes::StructureShape.new(name: 'GetWorkloadOutput')
    HelpfulResourceUrl = Shapes::StringShape.new(name: 'HelpfulResourceUrl')
    ImportLensInput = Shapes::StructureShape.new(name: 'ImportLensInput')
    ImportLensOutput = Shapes::StructureShape.new(name: 'ImportLensOutput')
    ImportLensStatus = Shapes::StringShape.new(name: 'ImportLensStatus')
    ImprovementPlanUrl = Shapes::StringShape.new(name: 'ImprovementPlanUrl')
    ImprovementSummaries = Shapes::ListShape.new(name: 'ImprovementSummaries')
    ImprovementSummary = Shapes::StructureShape.new(name: 'ImprovementSummary')
    IncludeSharedResources = Shapes::BooleanShape.new(name: 'IncludeSharedResources')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsApplicable = Shapes::BooleanShape.new(name: 'IsApplicable')
    IsMajorVersion = Shapes::BooleanShape.new(name: 'IsMajorVersion')
    IsReviewOwnerUpdateAcknowledged = Shapes::BooleanShape.new(name: 'IsReviewOwnerUpdateAcknowledged')
    Lens = Shapes::StructureShape.new(name: 'Lens')
    LensAlias = Shapes::StringShape.new(name: 'LensAlias')
    LensAliases = Shapes::ListShape.new(name: 'LensAliases')
    LensArn = Shapes::StringShape.new(name: 'LensArn')
    LensDescription = Shapes::StringShape.new(name: 'LensDescription')
    LensJSON = Shapes::StringShape.new(name: 'LensJSON')
    LensMetric = Shapes::StructureShape.new(name: 'LensMetric')
    LensMetrics = Shapes::ListShape.new(name: 'LensMetrics')
    LensName = Shapes::StringShape.new(name: 'LensName')
    LensNamePrefix = Shapes::StringShape.new(name: 'LensNamePrefix')
    LensOwner = Shapes::StringShape.new(name: 'LensOwner')
    LensReview = Shapes::StructureShape.new(name: 'LensReview')
    LensReviewReport = Shapes::StructureShape.new(name: 'LensReviewReport')
    LensReviewSummaries = Shapes::ListShape.new(name: 'LensReviewSummaries')
    LensReviewSummary = Shapes::StructureShape.new(name: 'LensReviewSummary')
    LensShareSummaries = Shapes::ListShape.new(name: 'LensShareSummaries')
    LensShareSummary = Shapes::StructureShape.new(name: 'LensShareSummary')
    LensStatus = Shapes::StringShape.new(name: 'LensStatus')
    LensStatusType = Shapes::StringShape.new(name: 'LensStatusType')
    LensSummaries = Shapes::ListShape.new(name: 'LensSummaries')
    LensSummary = Shapes::StructureShape.new(name: 'LensSummary')
    LensType = Shapes::StringShape.new(name: 'LensType')
    LensUpgradeSummary = Shapes::StructureShape.new(name: 'LensUpgradeSummary')
    LensVersion = Shapes::StringShape.new(name: 'LensVersion')
    LensesAppliedCount = Shapes::IntegerShape.new(name: 'LensesAppliedCount')
    ListAnswersInput = Shapes::StructureShape.new(name: 'ListAnswersInput')
    ListAnswersMaxResults = Shapes::IntegerShape.new(name: 'ListAnswersMaxResults')
    ListAnswersOutput = Shapes::StructureShape.new(name: 'ListAnswersOutput')
    ListCheckDetailsInput = Shapes::StructureShape.new(name: 'ListCheckDetailsInput')
    ListCheckDetailsOutput = Shapes::StructureShape.new(name: 'ListCheckDetailsOutput')
    ListCheckSummariesInput = Shapes::StructureShape.new(name: 'ListCheckSummariesInput')
    ListCheckSummariesOutput = Shapes::StructureShape.new(name: 'ListCheckSummariesOutput')
    ListLensReviewImprovementsInput = Shapes::StructureShape.new(name: 'ListLensReviewImprovementsInput')
    ListLensReviewImprovementsMaxResults = Shapes::IntegerShape.new(name: 'ListLensReviewImprovementsMaxResults')
    ListLensReviewImprovementsOutput = Shapes::StructureShape.new(name: 'ListLensReviewImprovementsOutput')
    ListLensReviewsInput = Shapes::StructureShape.new(name: 'ListLensReviewsInput')
    ListLensReviewsOutput = Shapes::StructureShape.new(name: 'ListLensReviewsOutput')
    ListLensSharesInput = Shapes::StructureShape.new(name: 'ListLensSharesInput')
    ListLensSharesOutput = Shapes::StructureShape.new(name: 'ListLensSharesOutput')
    ListLensesInput = Shapes::StructureShape.new(name: 'ListLensesInput')
    ListLensesOutput = Shapes::StructureShape.new(name: 'ListLensesOutput')
    ListMilestonesInput = Shapes::StructureShape.new(name: 'ListMilestonesInput')
    ListMilestonesOutput = Shapes::StructureShape.new(name: 'ListMilestonesOutput')
    ListNotificationsInput = Shapes::StructureShape.new(name: 'ListNotificationsInput')
    ListNotificationsMaxResults = Shapes::IntegerShape.new(name: 'ListNotificationsMaxResults')
    ListNotificationsOutput = Shapes::StructureShape.new(name: 'ListNotificationsOutput')
    ListProfileNotificationsInput = Shapes::StructureShape.new(name: 'ListProfileNotificationsInput')
    ListProfileNotificationsOutput = Shapes::StructureShape.new(name: 'ListProfileNotificationsOutput')
    ListProfileSharesInput = Shapes::StructureShape.new(name: 'ListProfileSharesInput')
    ListProfileSharesMaxResults = Shapes::IntegerShape.new(name: 'ListProfileSharesMaxResults')
    ListProfileSharesOutput = Shapes::StructureShape.new(name: 'ListProfileSharesOutput')
    ListProfilesInput = Shapes::StructureShape.new(name: 'ListProfilesInput')
    ListProfilesOutput = Shapes::StructureShape.new(name: 'ListProfilesOutput')
    ListShareInvitationsInput = Shapes::StructureShape.new(name: 'ListShareInvitationsInput')
    ListShareInvitationsMaxResults = Shapes::IntegerShape.new(name: 'ListShareInvitationsMaxResults')
    ListShareInvitationsOutput = Shapes::StructureShape.new(name: 'ListShareInvitationsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ListWorkloadSharesInput = Shapes::StructureShape.new(name: 'ListWorkloadSharesInput')
    ListWorkloadSharesMaxResults = Shapes::IntegerShape.new(name: 'ListWorkloadSharesMaxResults')
    ListWorkloadSharesOutput = Shapes::StructureShape.new(name: 'ListWorkloadSharesOutput')
    ListWorkloadsInput = Shapes::StructureShape.new(name: 'ListWorkloadsInput')
    ListWorkloadsMaxResults = Shapes::IntegerShape.new(name: 'ListWorkloadsMaxResults')
    ListWorkloadsOutput = Shapes::StructureShape.new(name: 'ListWorkloadsOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxSelectedProfileChoices = Shapes::IntegerShape.new(name: 'MaxSelectedProfileChoices')
    MetricType = Shapes::StringShape.new(name: 'MetricType')
    Milestone = Shapes::StructureShape.new(name: 'Milestone')
    MilestoneName = Shapes::StringShape.new(name: 'MilestoneName')
    MilestoneNumber = Shapes::IntegerShape.new(name: 'MilestoneNumber')
    MilestoneSummaries = Shapes::ListShape.new(name: 'MilestoneSummaries')
    MilestoneSummary = Shapes::StructureShape.new(name: 'MilestoneSummary')
    MinSelectedProfileChoices = Shapes::IntegerShape.new(name: 'MinSelectedProfileChoices')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Notes = Shapes::StringShape.new(name: 'Notes')
    NotificationSummaries = Shapes::ListShape.new(name: 'NotificationSummaries')
    NotificationSummary = Shapes::StructureShape.new(name: 'NotificationSummary')
    NotificationType = Shapes::StringShape.new(name: 'NotificationType')
    OrganizationSharingStatus = Shapes::StringShape.new(name: 'OrganizationSharingStatus')
    PermissionType = Shapes::StringShape.new(name: 'PermissionType')
    PillarDifference = Shapes::StructureShape.new(name: 'PillarDifference')
    PillarDifferences = Shapes::ListShape.new(name: 'PillarDifferences')
    PillarId = Shapes::StringShape.new(name: 'PillarId')
    PillarMetric = Shapes::StructureShape.new(name: 'PillarMetric')
    PillarMetrics = Shapes::ListShape.new(name: 'PillarMetrics')
    PillarName = Shapes::StringShape.new(name: 'PillarName')
    PillarNotes = Shapes::MapShape.new(name: 'PillarNotes')
    PillarReviewSummaries = Shapes::ListShape.new(name: 'PillarReviewSummaries')
    PillarReviewSummary = Shapes::StructureShape.new(name: 'PillarReviewSummary')
    Profile = Shapes::StructureShape.new(name: 'Profile')
    ProfileArn = Shapes::StringShape.new(name: 'ProfileArn')
    ProfileArns = Shapes::ListShape.new(name: 'ProfileArns')
    ProfileChoice = Shapes::StructureShape.new(name: 'ProfileChoice')
    ProfileDescription = Shapes::StringShape.new(name: 'ProfileDescription')
    ProfileName = Shapes::StringShape.new(name: 'ProfileName')
    ProfileNamePrefix = Shapes::StringShape.new(name: 'ProfileNamePrefix')
    ProfileNotificationSummaries = Shapes::ListShape.new(name: 'ProfileNotificationSummaries')
    ProfileNotificationSummary = Shapes::StructureShape.new(name: 'ProfileNotificationSummary')
    ProfileNotificationType = Shapes::StringShape.new(name: 'ProfileNotificationType')
    ProfileOwnerType = Shapes::StringShape.new(name: 'ProfileOwnerType')
    ProfileQuestion = Shapes::StructureShape.new(name: 'ProfileQuestion')
    ProfileQuestionChoices = Shapes::ListShape.new(name: 'ProfileQuestionChoices')
    ProfileQuestionUpdate = Shapes::StructureShape.new(name: 'ProfileQuestionUpdate')
    ProfileQuestionUpdates = Shapes::ListShape.new(name: 'ProfileQuestionUpdates')
    ProfileQuestions = Shapes::ListShape.new(name: 'ProfileQuestions')
    ProfileShareSummaries = Shapes::ListShape.new(name: 'ProfileShareSummaries')
    ProfileShareSummary = Shapes::StructureShape.new(name: 'ProfileShareSummary')
    ProfileSummaries = Shapes::ListShape.new(name: 'ProfileSummaries')
    ProfileSummary = Shapes::StructureShape.new(name: 'ProfileSummary')
    ProfileTemplate = Shapes::StructureShape.new(name: 'ProfileTemplate')
    ProfileTemplateChoice = Shapes::StructureShape.new(name: 'ProfileTemplateChoice')
    ProfileTemplateQuestion = Shapes::StructureShape.new(name: 'ProfileTemplateQuestion')
    ProfileTemplateQuestionChoices = Shapes::ListShape.new(name: 'ProfileTemplateQuestionChoices')
    ProfileVersion = Shapes::StringShape.new(name: 'ProfileVersion')
    QuestionDescription = Shapes::StringShape.new(name: 'QuestionDescription')
    QuestionDifference = Shapes::StructureShape.new(name: 'QuestionDifference')
    QuestionDifferences = Shapes::ListShape.new(name: 'QuestionDifferences')
    QuestionId = Shapes::StringShape.new(name: 'QuestionId')
    QuestionMetric = Shapes::StructureShape.new(name: 'QuestionMetric')
    QuestionMetrics = Shapes::ListShape.new(name: 'QuestionMetrics')
    QuestionPriority = Shapes::StringShape.new(name: 'QuestionPriority')
    QuestionTitle = Shapes::StringShape.new(name: 'QuestionTitle')
    QuestionType = Shapes::StringShape.new(name: 'QuestionType')
    QuotaCode = Shapes::StringShape.new(name: 'QuotaCode')
    ReportFormat = Shapes::StringShape.new(name: 'ReportFormat')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Risk = Shapes::StringShape.new(name: 'Risk')
    RiskCounts = Shapes::MapShape.new(name: 'RiskCounts')
    SelectedChoiceIds = Shapes::ListShape.new(name: 'SelectedChoiceIds')
    SelectedChoices = Shapes::ListShape.new(name: 'SelectedChoices')
    SelectedProfileChoiceIds = Shapes::ListShape.new(name: 'SelectedProfileChoiceIds')
    ServiceCode = Shapes::StringShape.new(name: 'ServiceCode')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ShareId = Shapes::StringShape.new(name: 'ShareId')
    ShareInvitation = Shapes::StructureShape.new(name: 'ShareInvitation')
    ShareInvitationAction = Shapes::StringShape.new(name: 'ShareInvitationAction')
    ShareInvitationId = Shapes::StringShape.new(name: 'ShareInvitationId')
    ShareInvitationSummaries = Shapes::ListShape.new(name: 'ShareInvitationSummaries')
    ShareInvitationSummary = Shapes::StructureShape.new(name: 'ShareInvitationSummary')
    ShareResourceType = Shapes::StringShape.new(name: 'ShareResourceType')
    ShareStatus = Shapes::StringShape.new(name: 'ShareStatus')
    SharedWith = Shapes::StringShape.new(name: 'SharedWith')
    SharedWithPrefix = Shapes::StringShape.new(name: 'SharedWithPrefix')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemplateQuestions = Shapes::ListShape.new(name: 'TemplateQuestions')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TrustedAdvisorIntegrationStatus = Shapes::StringShape.new(name: 'TrustedAdvisorIntegrationStatus')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateAnswerInput = Shapes::StructureShape.new(name: 'UpdateAnswerInput')
    UpdateAnswerOutput = Shapes::StructureShape.new(name: 'UpdateAnswerOutput')
    UpdateGlobalSettingsInput = Shapes::StructureShape.new(name: 'UpdateGlobalSettingsInput')
    UpdateLensReviewInput = Shapes::StructureShape.new(name: 'UpdateLensReviewInput')
    UpdateLensReviewOutput = Shapes::StructureShape.new(name: 'UpdateLensReviewOutput')
    UpdateProfileInput = Shapes::StructureShape.new(name: 'UpdateProfileInput')
    UpdateProfileOutput = Shapes::StructureShape.new(name: 'UpdateProfileOutput')
    UpdateShareInvitationInput = Shapes::StructureShape.new(name: 'UpdateShareInvitationInput')
    UpdateShareInvitationOutput = Shapes::StructureShape.new(name: 'UpdateShareInvitationOutput')
    UpdateWorkloadInput = Shapes::StructureShape.new(name: 'UpdateWorkloadInput')
    UpdateWorkloadOutput = Shapes::StructureShape.new(name: 'UpdateWorkloadOutput')
    UpdateWorkloadShareInput = Shapes::StructureShape.new(name: 'UpdateWorkloadShareInput')
    UpdateWorkloadShareOutput = Shapes::StructureShape.new(name: 'UpdateWorkloadShareOutput')
    UpgradeLensReviewInput = Shapes::StructureShape.new(name: 'UpgradeLensReviewInput')
    UpgradeProfileVersionInput = Shapes::StructureShape.new(name: 'UpgradeProfileVersionInput')
    Urls = Shapes::ListShape.new(name: 'Urls')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionFieldName = Shapes::StringShape.new(name: 'ValidationExceptionFieldName')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    VersionDifferences = Shapes::StructureShape.new(name: 'VersionDifferences')
    Workload = Shapes::StructureShape.new(name: 'Workload')
    WorkloadAccountIds = Shapes::ListShape.new(name: 'WorkloadAccountIds')
    WorkloadApplications = Shapes::ListShape.new(name: 'WorkloadApplications')
    WorkloadArchitecturalDesign = Shapes::StringShape.new(name: 'WorkloadArchitecturalDesign')
    WorkloadArn = Shapes::StringShape.new(name: 'WorkloadArn')
    WorkloadAwsRegions = Shapes::ListShape.new(name: 'WorkloadAwsRegions')
    WorkloadDescription = Shapes::StringShape.new(name: 'WorkloadDescription')
    WorkloadDiscoveryConfig = Shapes::StructureShape.new(name: 'WorkloadDiscoveryConfig')
    WorkloadEnvironment = Shapes::StringShape.new(name: 'WorkloadEnvironment')
    WorkloadId = Shapes::StringShape.new(name: 'WorkloadId')
    WorkloadImprovementStatus = Shapes::StringShape.new(name: 'WorkloadImprovementStatus')
    WorkloadIndustry = Shapes::StringShape.new(name: 'WorkloadIndustry')
    WorkloadIndustryType = Shapes::StringShape.new(name: 'WorkloadIndustryType')
    WorkloadLenses = Shapes::ListShape.new(name: 'WorkloadLenses')
    WorkloadName = Shapes::StringShape.new(name: 'WorkloadName')
    WorkloadNamePrefix = Shapes::StringShape.new(name: 'WorkloadNamePrefix')
    WorkloadNonAwsRegion = Shapes::StringShape.new(name: 'WorkloadNonAwsRegion')
    WorkloadNonAwsRegions = Shapes::ListShape.new(name: 'WorkloadNonAwsRegions')
    WorkloadPillarPriorities = Shapes::ListShape.new(name: 'WorkloadPillarPriorities')
    WorkloadProfile = Shapes::StructureShape.new(name: 'WorkloadProfile')
    WorkloadProfileArns = Shapes::ListShape.new(name: 'WorkloadProfileArns')
    WorkloadProfiles = Shapes::ListShape.new(name: 'WorkloadProfiles')
    WorkloadResourceDefinition = Shapes::ListShape.new(name: 'WorkloadResourceDefinition')
    WorkloadReviewOwner = Shapes::StringShape.new(name: 'WorkloadReviewOwner')
    WorkloadShare = Shapes::StructureShape.new(name: 'WorkloadShare')
    WorkloadShareSummaries = Shapes::ListShape.new(name: 'WorkloadShareSummaries')
    WorkloadShareSummary = Shapes::StructureShape.new(name: 'WorkloadShareSummary')
    WorkloadSummaries = Shapes::ListShape.new(name: 'WorkloadSummaries')
    WorkloadSummary = Shapes::StructureShape.new(name: 'WorkloadSummary')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountSummary.key = Shapes::ShapeRef.new(shape: CheckStatus)
    AccountSummary.value = Shapes::ShapeRef.new(shape: CheckStatusCount)

    AdditionalResources.add_member(:type, Shapes::ShapeRef.new(shape: AdditionalResourceType, location_name: "Type"))
    AdditionalResources.add_member(:content, Shapes::ShapeRef.new(shape: Urls, location_name: "Content"))
    AdditionalResources.struct_class = Types::AdditionalResources

    AdditionalResourcesList.member = Shapes::ShapeRef.new(shape: AdditionalResources)

    Answer.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, location_name: "QuestionId"))
    Answer.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, location_name: "PillarId"))
    Answer.add_member(:question_title, Shapes::ShapeRef.new(shape: QuestionTitle, location_name: "QuestionTitle"))
    Answer.add_member(:question_description, Shapes::ShapeRef.new(shape: QuestionDescription, location_name: "QuestionDescription"))
    Answer.add_member(:improvement_plan_url, Shapes::ShapeRef.new(shape: ImprovementPlanUrl, location_name: "ImprovementPlanUrl"))
    Answer.add_member(:helpful_resource_url, Shapes::ShapeRef.new(shape: HelpfulResourceUrl, location_name: "HelpfulResourceUrl"))
    Answer.add_member(:helpful_resource_display_text, Shapes::ShapeRef.new(shape: DisplayText, location_name: "HelpfulResourceDisplayText"))
    Answer.add_member(:choices, Shapes::ShapeRef.new(shape: Choices, location_name: "Choices"))
    Answer.add_member(:selected_choices, Shapes::ShapeRef.new(shape: SelectedChoices, location_name: "SelectedChoices"))
    Answer.add_member(:choice_answers, Shapes::ShapeRef.new(shape: ChoiceAnswers, location_name: "ChoiceAnswers"))
    Answer.add_member(:is_applicable, Shapes::ShapeRef.new(shape: IsApplicable, location_name: "IsApplicable"))
    Answer.add_member(:risk, Shapes::ShapeRef.new(shape: Risk, location_name: "Risk"))
    Answer.add_member(:notes, Shapes::ShapeRef.new(shape: Notes, location_name: "Notes"))
    Answer.add_member(:reason, Shapes::ShapeRef.new(shape: AnswerReason, location_name: "Reason"))
    Answer.struct_class = Types::Answer

    AnswerSummaries.member = Shapes::ShapeRef.new(shape: AnswerSummary)

    AnswerSummary.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, location_name: "QuestionId"))
    AnswerSummary.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, location_name: "PillarId"))
    AnswerSummary.add_member(:question_title, Shapes::ShapeRef.new(shape: QuestionTitle, location_name: "QuestionTitle"))
    AnswerSummary.add_member(:choices, Shapes::ShapeRef.new(shape: Choices, location_name: "Choices"))
    AnswerSummary.add_member(:selected_choices, Shapes::ShapeRef.new(shape: SelectedChoices, location_name: "SelectedChoices"))
    AnswerSummary.add_member(:choice_answer_summaries, Shapes::ShapeRef.new(shape: ChoiceAnswerSummaries, location_name: "ChoiceAnswerSummaries"))
    AnswerSummary.add_member(:is_applicable, Shapes::ShapeRef.new(shape: IsApplicable, location_name: "IsApplicable"))
    AnswerSummary.add_member(:risk, Shapes::ShapeRef.new(shape: Risk, location_name: "Risk"))
    AnswerSummary.add_member(:reason, Shapes::ShapeRef.new(shape: AnswerReason, location_name: "Reason"))
    AnswerSummary.add_member(:question_type, Shapes::ShapeRef.new(shape: QuestionType, location_name: "QuestionType"))
    AnswerSummary.struct_class = Types::AnswerSummary

    AssociateLensesInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    AssociateLensesInput.add_member(:lens_aliases, Shapes::ShapeRef.new(shape: LensAliases, required: true, location_name: "LensAliases"))
    AssociateLensesInput.struct_class = Types::AssociateLensesInput

    AssociateProfilesInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    AssociateProfilesInput.add_member(:profile_arns, Shapes::ShapeRef.new(shape: ProfileArns, required: true, location_name: "ProfileArns"))
    AssociateProfilesInput.struct_class = Types::AssociateProfilesInput

    BestPractice.add_member(:choice_id, Shapes::ShapeRef.new(shape: ChoiceId, location_name: "ChoiceId"))
    BestPractice.add_member(:choice_title, Shapes::ShapeRef.new(shape: ChoiceTitle, location_name: "ChoiceTitle"))
    BestPractice.struct_class = Types::BestPractice

    BestPractices.member = Shapes::ShapeRef.new(shape: BestPractice)

    CheckDetail.add_member(:id, Shapes::ShapeRef.new(shape: CheckId, location_name: "Id"))
    CheckDetail.add_member(:name, Shapes::ShapeRef.new(shape: CheckName, location_name: "Name"))
    CheckDetail.add_member(:description, Shapes::ShapeRef.new(shape: CheckDescription, location_name: "Description"))
    CheckDetail.add_member(:provider, Shapes::ShapeRef.new(shape: CheckProvider, location_name: "Provider"))
    CheckDetail.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    CheckDetail.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, location_name: "PillarId"))
    CheckDetail.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, location_name: "QuestionId"))
    CheckDetail.add_member(:choice_id, Shapes::ShapeRef.new(shape: ChoiceId, location_name: "ChoiceId"))
    CheckDetail.add_member(:status, Shapes::ShapeRef.new(shape: CheckStatus, location_name: "Status"))
    CheckDetail.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AccountId"))
    CheckDetail.add_member(:flagged_resources, Shapes::ShapeRef.new(shape: FlaggedResources, location_name: "FlaggedResources"))
    CheckDetail.add_member(:reason, Shapes::ShapeRef.new(shape: CheckFailureReason, location_name: "Reason"))
    CheckDetail.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    CheckDetail.struct_class = Types::CheckDetail

    CheckDetails.member = Shapes::ShapeRef.new(shape: CheckDetail)

    CheckSummaries.member = Shapes::ShapeRef.new(shape: CheckSummary)

    CheckSummary.add_member(:id, Shapes::ShapeRef.new(shape: CheckId, location_name: "Id"))
    CheckSummary.add_member(:name, Shapes::ShapeRef.new(shape: CheckName, location_name: "Name"))
    CheckSummary.add_member(:provider, Shapes::ShapeRef.new(shape: CheckProvider, location_name: "Provider"))
    CheckSummary.add_member(:description, Shapes::ShapeRef.new(shape: CheckDescription, location_name: "Description"))
    CheckSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    CheckSummary.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    CheckSummary.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, location_name: "PillarId"))
    CheckSummary.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, location_name: "QuestionId"))
    CheckSummary.add_member(:choice_id, Shapes::ShapeRef.new(shape: ChoiceId, location_name: "ChoiceId"))
    CheckSummary.add_member(:status, Shapes::ShapeRef.new(shape: CheckStatus, location_name: "Status"))
    CheckSummary.add_member(:account_summary, Shapes::ShapeRef.new(shape: AccountSummary, location_name: "AccountSummary"))
    CheckSummary.struct_class = Types::CheckSummary

    Choice.add_member(:choice_id, Shapes::ShapeRef.new(shape: ChoiceId, location_name: "ChoiceId"))
    Choice.add_member(:title, Shapes::ShapeRef.new(shape: ChoiceTitle, location_name: "Title"))
    Choice.add_member(:description, Shapes::ShapeRef.new(shape: ChoiceDescription, location_name: "Description"))
    Choice.add_member(:helpful_resource, Shapes::ShapeRef.new(shape: ChoiceContent, location_name: "HelpfulResource"))
    Choice.add_member(:improvement_plan, Shapes::ShapeRef.new(shape: ChoiceContent, location_name: "ImprovementPlan"))
    Choice.add_member(:additional_resources, Shapes::ShapeRef.new(shape: AdditionalResourcesList, location_name: "AdditionalResources"))
    Choice.struct_class = Types::Choice

    ChoiceAnswer.add_member(:choice_id, Shapes::ShapeRef.new(shape: ChoiceId, location_name: "ChoiceId"))
    ChoiceAnswer.add_member(:status, Shapes::ShapeRef.new(shape: ChoiceStatus, location_name: "Status"))
    ChoiceAnswer.add_member(:reason, Shapes::ShapeRef.new(shape: ChoiceReason, location_name: "Reason"))
    ChoiceAnswer.add_member(:notes, Shapes::ShapeRef.new(shape: ChoiceNotes, location_name: "Notes"))
    ChoiceAnswer.struct_class = Types::ChoiceAnswer

    ChoiceAnswerSummaries.member = Shapes::ShapeRef.new(shape: ChoiceAnswerSummary)

    ChoiceAnswerSummary.add_member(:choice_id, Shapes::ShapeRef.new(shape: ChoiceId, location_name: "ChoiceId"))
    ChoiceAnswerSummary.add_member(:status, Shapes::ShapeRef.new(shape: ChoiceStatus, location_name: "Status"))
    ChoiceAnswerSummary.add_member(:reason, Shapes::ShapeRef.new(shape: ChoiceReason, location_name: "Reason"))
    ChoiceAnswerSummary.struct_class = Types::ChoiceAnswerSummary

    ChoiceAnswers.member = Shapes::ShapeRef.new(shape: ChoiceAnswer)

    ChoiceContent.add_member(:display_text, Shapes::ShapeRef.new(shape: ChoiceContentDisplayText, location_name: "DisplayText"))
    ChoiceContent.add_member(:url, Shapes::ShapeRef.new(shape: ChoiceContentUrl, location_name: "Url"))
    ChoiceContent.struct_class = Types::ChoiceContent

    ChoiceImprovementPlan.add_member(:choice_id, Shapes::ShapeRef.new(shape: ChoiceId, location_name: "ChoiceId"))
    ChoiceImprovementPlan.add_member(:display_text, Shapes::ShapeRef.new(shape: DisplayText, location_name: "DisplayText"))
    ChoiceImprovementPlan.add_member(:improvement_plan_url, Shapes::ShapeRef.new(shape: ImprovementPlanUrl, location_name: "ImprovementPlanUrl"))
    ChoiceImprovementPlan.struct_class = Types::ChoiceImprovementPlan

    ChoiceImprovementPlans.member = Shapes::ShapeRef.new(shape: ChoiceImprovementPlan)

    ChoiceUpdate.add_member(:status, Shapes::ShapeRef.new(shape: ChoiceStatus, required: true, location_name: "Status"))
    ChoiceUpdate.add_member(:reason, Shapes::ShapeRef.new(shape: ChoiceReason, location_name: "Reason"))
    ChoiceUpdate.add_member(:notes, Shapes::ShapeRef.new(shape: ChoiceNotes, location_name: "Notes"))
    ChoiceUpdate.struct_class = Types::ChoiceUpdate

    ChoiceUpdates.key = Shapes::ShapeRef.new(shape: ChoiceId)
    ChoiceUpdates.value = Shapes::ShapeRef.new(shape: ChoiceUpdate)

    Choices.member = Shapes::ShapeRef.new(shape: Choice)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "Message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ExceptionResourceId, required: true, location_name: "ResourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, required: true, location_name: "ResourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConsolidatedReportMetric.add_member(:metric_type, Shapes::ShapeRef.new(shape: MetricType, location_name: "MetricType"))
    ConsolidatedReportMetric.add_member(:risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "RiskCounts"))
    ConsolidatedReportMetric.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    ConsolidatedReportMetric.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "WorkloadName"))
    ConsolidatedReportMetric.add_member(:workload_arn, Shapes::ShapeRef.new(shape: WorkloadArn, location_name: "WorkloadArn"))
    ConsolidatedReportMetric.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    ConsolidatedReportMetric.add_member(:lenses, Shapes::ShapeRef.new(shape: LensMetrics, location_name: "Lenses"))
    ConsolidatedReportMetric.add_member(:lenses_applied_count, Shapes::ShapeRef.new(shape: LensesAppliedCount, location_name: "LensesAppliedCount"))
    ConsolidatedReportMetric.struct_class = Types::ConsolidatedReportMetric

    ConsolidatedReportMetrics.member = Shapes::ShapeRef.new(shape: ConsolidatedReportMetric)

    CreateLensShareInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    CreateLensShareInput.add_member(:shared_with, Shapes::ShapeRef.new(shape: SharedWith, required: true, location_name: "SharedWith"))
    CreateLensShareInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateLensShareInput.struct_class = Types::CreateLensShareInput

    CreateLensShareOutput.add_member(:share_id, Shapes::ShapeRef.new(shape: ShareId, location_name: "ShareId"))
    CreateLensShareOutput.struct_class = Types::CreateLensShareOutput

    CreateLensVersionInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    CreateLensVersionInput.add_member(:lens_version, Shapes::ShapeRef.new(shape: LensVersion, required: true, location_name: "LensVersion"))
    CreateLensVersionInput.add_member(:is_major_version, Shapes::ShapeRef.new(shape: IsMajorVersion, location_name: "IsMajorVersion"))
    CreateLensVersionInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateLensVersionInput.struct_class = Types::CreateLensVersionInput

    CreateLensVersionOutput.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    CreateLensVersionOutput.add_member(:lens_version, Shapes::ShapeRef.new(shape: LensVersion, location_name: "LensVersion"))
    CreateLensVersionOutput.struct_class = Types::CreateLensVersionOutput

    CreateMilestoneInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    CreateMilestoneInput.add_member(:milestone_name, Shapes::ShapeRef.new(shape: MilestoneName, required: true, location_name: "MilestoneName"))
    CreateMilestoneInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateMilestoneInput.struct_class = Types::CreateMilestoneInput

    CreateMilestoneOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    CreateMilestoneOutput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: "MilestoneNumber"))
    CreateMilestoneOutput.struct_class = Types::CreateMilestoneOutput

    CreateProfileInput.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, required: true, location_name: "ProfileName"))
    CreateProfileInput.add_member(:profile_description, Shapes::ShapeRef.new(shape: ProfileDescription, required: true, location_name: "ProfileDescription"))
    CreateProfileInput.add_member(:profile_questions, Shapes::ShapeRef.new(shape: ProfileQuestionUpdates, required: true, location_name: "ProfileQuestions"))
    CreateProfileInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateProfileInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateProfileInput.struct_class = Types::CreateProfileInput

    CreateProfileOutput.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, location_name: "ProfileArn"))
    CreateProfileOutput.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "ProfileVersion"))
    CreateProfileOutput.struct_class = Types::CreateProfileOutput

    CreateProfileShareInput.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, required: true, location: "uri", location_name: "ProfileArn"))
    CreateProfileShareInput.add_member(:shared_with, Shapes::ShapeRef.new(shape: SharedWith, required: true, location_name: "SharedWith"))
    CreateProfileShareInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateProfileShareInput.struct_class = Types::CreateProfileShareInput

    CreateProfileShareOutput.add_member(:share_id, Shapes::ShapeRef.new(shape: ShareId, location_name: "ShareId"))
    CreateProfileShareOutput.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, location_name: "ProfileArn"))
    CreateProfileShareOutput.struct_class = Types::CreateProfileShareOutput

    CreateWorkloadInput.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, required: true, location_name: "WorkloadName"))
    CreateWorkloadInput.add_member(:description, Shapes::ShapeRef.new(shape: WorkloadDescription, required: true, location_name: "Description"))
    CreateWorkloadInput.add_member(:environment, Shapes::ShapeRef.new(shape: WorkloadEnvironment, required: true, location_name: "Environment"))
    CreateWorkloadInput.add_member(:account_ids, Shapes::ShapeRef.new(shape: WorkloadAccountIds, location_name: "AccountIds"))
    CreateWorkloadInput.add_member(:aws_regions, Shapes::ShapeRef.new(shape: WorkloadAwsRegions, location_name: "AwsRegions"))
    CreateWorkloadInput.add_member(:non_aws_regions, Shapes::ShapeRef.new(shape: WorkloadNonAwsRegions, location_name: "NonAwsRegions"))
    CreateWorkloadInput.add_member(:pillar_priorities, Shapes::ShapeRef.new(shape: WorkloadPillarPriorities, location_name: "PillarPriorities"))
    CreateWorkloadInput.add_member(:architectural_design, Shapes::ShapeRef.new(shape: WorkloadArchitecturalDesign, location_name: "ArchitecturalDesign"))
    CreateWorkloadInput.add_member(:review_owner, Shapes::ShapeRef.new(shape: WorkloadReviewOwner, location_name: "ReviewOwner"))
    CreateWorkloadInput.add_member(:industry_type, Shapes::ShapeRef.new(shape: WorkloadIndustryType, location_name: "IndustryType"))
    CreateWorkloadInput.add_member(:industry, Shapes::ShapeRef.new(shape: WorkloadIndustry, location_name: "Industry"))
    CreateWorkloadInput.add_member(:lenses, Shapes::ShapeRef.new(shape: WorkloadLenses, required: true, location_name: "Lenses"))
    CreateWorkloadInput.add_member(:notes, Shapes::ShapeRef.new(shape: Notes, location_name: "Notes"))
    CreateWorkloadInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateWorkloadInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateWorkloadInput.add_member(:discovery_config, Shapes::ShapeRef.new(shape: WorkloadDiscoveryConfig, location_name: "DiscoveryConfig"))
    CreateWorkloadInput.add_member(:applications, Shapes::ShapeRef.new(shape: WorkloadApplications, location_name: "Applications"))
    CreateWorkloadInput.add_member(:profile_arns, Shapes::ShapeRef.new(shape: WorkloadProfileArns, location_name: "ProfileArns"))
    CreateWorkloadInput.struct_class = Types::CreateWorkloadInput

    CreateWorkloadOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    CreateWorkloadOutput.add_member(:workload_arn, Shapes::ShapeRef.new(shape: WorkloadArn, location_name: "WorkloadArn"))
    CreateWorkloadOutput.struct_class = Types::CreateWorkloadOutput

    CreateWorkloadShareInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    CreateWorkloadShareInput.add_member(:shared_with, Shapes::ShapeRef.new(shape: SharedWith, required: true, location_name: "SharedWith"))
    CreateWorkloadShareInput.add_member(:permission_type, Shapes::ShapeRef.new(shape: PermissionType, required: true, location_name: "PermissionType"))
    CreateWorkloadShareInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateWorkloadShareInput.struct_class = Types::CreateWorkloadShareInput

    CreateWorkloadShareOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    CreateWorkloadShareOutput.add_member(:share_id, Shapes::ShapeRef.new(shape: ShareId, location_name: "ShareId"))
    CreateWorkloadShareOutput.struct_class = Types::CreateWorkloadShareOutput

    DeleteLensInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    DeleteLensInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location: "querystring", location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteLensInput.add_member(:lens_status, Shapes::ShapeRef.new(shape: LensStatusType, required: true, location: "querystring", location_name: "LensStatus"))
    DeleteLensInput.struct_class = Types::DeleteLensInput

    DeleteLensShareInput.add_member(:share_id, Shapes::ShapeRef.new(shape: ShareId, required: true, location: "uri", location_name: "ShareId"))
    DeleteLensShareInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    DeleteLensShareInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location: "querystring", location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteLensShareInput.struct_class = Types::DeleteLensShareInput

    DeleteProfileInput.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, required: true, location: "uri", location_name: "ProfileArn"))
    DeleteProfileInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location: "querystring", location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteProfileInput.struct_class = Types::DeleteProfileInput

    DeleteProfileShareInput.add_member(:share_id, Shapes::ShapeRef.new(shape: ShareId, required: true, location: "uri", location_name: "ShareId"))
    DeleteProfileShareInput.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, required: true, location: "uri", location_name: "ProfileArn"))
    DeleteProfileShareInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location: "querystring", location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteProfileShareInput.struct_class = Types::DeleteProfileShareInput

    DeleteWorkloadInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    DeleteWorkloadInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location: "querystring", location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteWorkloadInput.struct_class = Types::DeleteWorkloadInput

    DeleteWorkloadShareInput.add_member(:share_id, Shapes::ShapeRef.new(shape: ShareId, required: true, location: "uri", location_name: "ShareId"))
    DeleteWorkloadShareInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    DeleteWorkloadShareInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location: "querystring", location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    DeleteWorkloadShareInput.struct_class = Types::DeleteWorkloadShareInput

    DisassociateLensesInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    DisassociateLensesInput.add_member(:lens_aliases, Shapes::ShapeRef.new(shape: LensAliases, required: true, location_name: "LensAliases"))
    DisassociateLensesInput.struct_class = Types::DisassociateLensesInput

    DisassociateProfilesInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    DisassociateProfilesInput.add_member(:profile_arns, Shapes::ShapeRef.new(shape: ProfileArns, required: true, location_name: "ProfileArns"))
    DisassociateProfilesInput.struct_class = Types::DisassociateProfilesInput

    ExportLensInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    ExportLensInput.add_member(:lens_version, Shapes::ShapeRef.new(shape: LensVersion, location: "querystring", location_name: "LensVersion"))
    ExportLensInput.struct_class = Types::ExportLensInput

    ExportLensOutput.add_member(:lens_json, Shapes::ShapeRef.new(shape: LensJSON, location_name: "LensJSON"))
    ExportLensOutput.struct_class = Types::ExportLensOutput

    GetAnswerInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    GetAnswerInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    GetAnswerInput.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, required: true, location: "uri", location_name: "QuestionId"))
    GetAnswerInput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location: "querystring", location_name: "MilestoneNumber"))
    GetAnswerInput.struct_class = Types::GetAnswerInput

    GetAnswerOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    GetAnswerOutput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: "MilestoneNumber"))
    GetAnswerOutput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    GetAnswerOutput.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    GetAnswerOutput.add_member(:answer, Shapes::ShapeRef.new(shape: Answer, location_name: "Answer"))
    GetAnswerOutput.struct_class = Types::GetAnswerOutput

    GetConsolidatedReportInput.add_member(:format, Shapes::ShapeRef.new(shape: ReportFormat, required: true, location: "querystring", location_name: "Format"))
    GetConsolidatedReportInput.add_member(:include_shared_resources, Shapes::ShapeRef.new(shape: IncludeSharedResources, location: "querystring", location_name: "IncludeSharedResources"))
    GetConsolidatedReportInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    GetConsolidatedReportInput.add_member(:max_results, Shapes::ShapeRef.new(shape: GetConsolidatedReportMaxResults, location: "querystring", location_name: "MaxResults"))
    GetConsolidatedReportInput.struct_class = Types::GetConsolidatedReportInput

    GetConsolidatedReportOutput.add_member(:metrics, Shapes::ShapeRef.new(shape: ConsolidatedReportMetrics, location_name: "Metrics"))
    GetConsolidatedReportOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    GetConsolidatedReportOutput.add_member(:base_64_string, Shapes::ShapeRef.new(shape: Base64String, location_name: "Base64String"))
    GetConsolidatedReportOutput.struct_class = Types::GetConsolidatedReportOutput

    GetLensInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    GetLensInput.add_member(:lens_version, Shapes::ShapeRef.new(shape: LensVersion, location: "querystring", location_name: "LensVersion"))
    GetLensInput.struct_class = Types::GetLensInput

    GetLensOutput.add_member(:lens, Shapes::ShapeRef.new(shape: Lens, location_name: "Lens"))
    GetLensOutput.struct_class = Types::GetLensOutput

    GetLensReviewInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    GetLensReviewInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    GetLensReviewInput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location: "querystring", location_name: "MilestoneNumber"))
    GetLensReviewInput.struct_class = Types::GetLensReviewInput

    GetLensReviewOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    GetLensReviewOutput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: "MilestoneNumber"))
    GetLensReviewOutput.add_member(:lens_review, Shapes::ShapeRef.new(shape: LensReview, location_name: "LensReview"))
    GetLensReviewOutput.struct_class = Types::GetLensReviewOutput

    GetLensReviewReportInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    GetLensReviewReportInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    GetLensReviewReportInput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location: "querystring", location_name: "MilestoneNumber"))
    GetLensReviewReportInput.struct_class = Types::GetLensReviewReportInput

    GetLensReviewReportOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    GetLensReviewReportOutput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: "MilestoneNumber"))
    GetLensReviewReportOutput.add_member(:lens_review_report, Shapes::ShapeRef.new(shape: LensReviewReport, location_name: "LensReviewReport"))
    GetLensReviewReportOutput.struct_class = Types::GetLensReviewReportOutput

    GetLensVersionDifferenceInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    GetLensVersionDifferenceInput.add_member(:base_lens_version, Shapes::ShapeRef.new(shape: LensVersion, location: "querystring", location_name: "BaseLensVersion"))
    GetLensVersionDifferenceInput.add_member(:target_lens_version, Shapes::ShapeRef.new(shape: LensVersion, location: "querystring", location_name: "TargetLensVersion"))
    GetLensVersionDifferenceInput.struct_class = Types::GetLensVersionDifferenceInput

    GetLensVersionDifferenceOutput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    GetLensVersionDifferenceOutput.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    GetLensVersionDifferenceOutput.add_member(:base_lens_version, Shapes::ShapeRef.new(shape: LensVersion, location_name: "BaseLensVersion"))
    GetLensVersionDifferenceOutput.add_member(:target_lens_version, Shapes::ShapeRef.new(shape: LensVersion, location_name: "TargetLensVersion"))
    GetLensVersionDifferenceOutput.add_member(:latest_lens_version, Shapes::ShapeRef.new(shape: LensVersion, location_name: "LatestLensVersion"))
    GetLensVersionDifferenceOutput.add_member(:version_differences, Shapes::ShapeRef.new(shape: VersionDifferences, location_name: "VersionDifferences"))
    GetLensVersionDifferenceOutput.struct_class = Types::GetLensVersionDifferenceOutput

    GetMilestoneInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    GetMilestoneInput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, required: true, location: "uri", location_name: "MilestoneNumber"))
    GetMilestoneInput.struct_class = Types::GetMilestoneInput

    GetMilestoneOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    GetMilestoneOutput.add_member(:milestone, Shapes::ShapeRef.new(shape: Milestone, location_name: "Milestone"))
    GetMilestoneOutput.struct_class = Types::GetMilestoneOutput

    GetProfileInput.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, required: true, location: "uri", location_name: "ProfileArn"))
    GetProfileInput.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location: "querystring", location_name: "ProfileVersion"))
    GetProfileInput.struct_class = Types::GetProfileInput

    GetProfileOutput.add_member(:profile, Shapes::ShapeRef.new(shape: Profile, location_name: "Profile"))
    GetProfileOutput.struct_class = Types::GetProfileOutput

    GetProfileTemplateInput.struct_class = Types::GetProfileTemplateInput

    GetProfileTemplateOutput.add_member(:profile_template, Shapes::ShapeRef.new(shape: ProfileTemplate, location_name: "ProfileTemplate"))
    GetProfileTemplateOutput.struct_class = Types::GetProfileTemplateOutput

    GetWorkloadInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    GetWorkloadInput.struct_class = Types::GetWorkloadInput

    GetWorkloadOutput.add_member(:workload, Shapes::ShapeRef.new(shape: Workload, location_name: "Workload"))
    GetWorkloadOutput.struct_class = Types::GetWorkloadOutput

    ImportLensInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    ImportLensInput.add_member(:json_string, Shapes::ShapeRef.new(shape: LensJSON, required: true, location_name: "JSONString"))
    ImportLensInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, required: true, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    ImportLensInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ImportLensInput.struct_class = Types::ImportLensInput

    ImportLensOutput.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    ImportLensOutput.add_member(:status, Shapes::ShapeRef.new(shape: ImportLensStatus, location_name: "Status"))
    ImportLensOutput.struct_class = Types::ImportLensOutput

    ImprovementSummaries.member = Shapes::ShapeRef.new(shape: ImprovementSummary)

    ImprovementSummary.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, location_name: "QuestionId"))
    ImprovementSummary.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, location_name: "PillarId"))
    ImprovementSummary.add_member(:question_title, Shapes::ShapeRef.new(shape: QuestionTitle, location_name: "QuestionTitle"))
    ImprovementSummary.add_member(:risk, Shapes::ShapeRef.new(shape: Risk, location_name: "Risk"))
    ImprovementSummary.add_member(:improvement_plan_url, Shapes::ShapeRef.new(shape: ImprovementPlanUrl, location_name: "ImprovementPlanUrl"))
    ImprovementSummary.add_member(:improvement_plans, Shapes::ShapeRef.new(shape: ChoiceImprovementPlans, location_name: "ImprovementPlans"))
    ImprovementSummary.struct_class = Types::ImprovementSummary

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    Lens.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    Lens.add_member(:lens_version, Shapes::ShapeRef.new(shape: LensVersion, location_name: "LensVersion"))
    Lens.add_member(:name, Shapes::ShapeRef.new(shape: LensName, location_name: "Name"))
    Lens.add_member(:description, Shapes::ShapeRef.new(shape: LensDescription, location_name: "Description"))
    Lens.add_member(:owner, Shapes::ShapeRef.new(shape: LensOwner, location_name: "Owner"))
    Lens.add_member(:share_invitation_id, Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: "ShareInvitationId"))
    Lens.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Lens.struct_class = Types::Lens

    LensAliases.member = Shapes::ShapeRef.new(shape: LensAlias)

    LensMetric.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    LensMetric.add_member(:pillars, Shapes::ShapeRef.new(shape: PillarMetrics, location_name: "Pillars"))
    LensMetric.add_member(:risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "RiskCounts"))
    LensMetric.struct_class = Types::LensMetric

    LensMetrics.member = Shapes::ShapeRef.new(shape: LensMetric)

    LensReview.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    LensReview.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    LensReview.add_member(:lens_version, Shapes::ShapeRef.new(shape: LensVersion, location_name: "LensVersion"))
    LensReview.add_member(:lens_name, Shapes::ShapeRef.new(shape: LensName, location_name: "LensName"))
    LensReview.add_member(:lens_status, Shapes::ShapeRef.new(shape: LensStatus, location_name: "LensStatus"))
    LensReview.add_member(:pillar_review_summaries, Shapes::ShapeRef.new(shape: PillarReviewSummaries, location_name: "PillarReviewSummaries"))
    LensReview.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    LensReview.add_member(:notes, Shapes::ShapeRef.new(shape: Notes, location_name: "Notes"))
    LensReview.add_member(:risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "RiskCounts"))
    LensReview.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    LensReview.add_member(:profiles, Shapes::ShapeRef.new(shape: WorkloadProfiles, location_name: "Profiles"))
    LensReview.add_member(:prioritized_risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "PrioritizedRiskCounts"))
    LensReview.struct_class = Types::LensReview

    LensReviewReport.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    LensReviewReport.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    LensReviewReport.add_member(:base_64_string, Shapes::ShapeRef.new(shape: Base64String, location_name: "Base64String"))
    LensReviewReport.struct_class = Types::LensReviewReport

    LensReviewSummaries.member = Shapes::ShapeRef.new(shape: LensReviewSummary)

    LensReviewSummary.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    LensReviewSummary.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    LensReviewSummary.add_member(:lens_version, Shapes::ShapeRef.new(shape: LensVersion, location_name: "LensVersion"))
    LensReviewSummary.add_member(:lens_name, Shapes::ShapeRef.new(shape: LensName, location_name: "LensName"))
    LensReviewSummary.add_member(:lens_status, Shapes::ShapeRef.new(shape: LensStatus, location_name: "LensStatus"))
    LensReviewSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    LensReviewSummary.add_member(:risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "RiskCounts"))
    LensReviewSummary.add_member(:profiles, Shapes::ShapeRef.new(shape: WorkloadProfiles, location_name: "Profiles"))
    LensReviewSummary.add_member(:prioritized_risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "PrioritizedRiskCounts"))
    LensReviewSummary.struct_class = Types::LensReviewSummary

    LensShareSummaries.member = Shapes::ShapeRef.new(shape: LensShareSummary)

    LensShareSummary.add_member(:share_id, Shapes::ShapeRef.new(shape: ShareId, location_name: "ShareId"))
    LensShareSummary.add_member(:shared_with, Shapes::ShapeRef.new(shape: SharedWith, location_name: "SharedWith"))
    LensShareSummary.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "Status"))
    LensShareSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    LensShareSummary.struct_class = Types::LensShareSummary

    LensSummaries.member = Shapes::ShapeRef.new(shape: LensSummary)

    LensSummary.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    LensSummary.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    LensSummary.add_member(:lens_name, Shapes::ShapeRef.new(shape: LensName, location_name: "LensName"))
    LensSummary.add_member(:lens_type, Shapes::ShapeRef.new(shape: LensType, location_name: "LensType"))
    LensSummary.add_member(:description, Shapes::ShapeRef.new(shape: LensDescription, location_name: "Description"))
    LensSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    LensSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    LensSummary.add_member(:lens_version, Shapes::ShapeRef.new(shape: LensVersion, location_name: "LensVersion"))
    LensSummary.add_member(:owner, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "Owner"))
    LensSummary.add_member(:lens_status, Shapes::ShapeRef.new(shape: LensStatus, location_name: "LensStatus"))
    LensSummary.struct_class = Types::LensSummary

    LensUpgradeSummary.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    LensUpgradeSummary.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "WorkloadName"))
    LensUpgradeSummary.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    LensUpgradeSummary.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    LensUpgradeSummary.add_member(:current_lens_version, Shapes::ShapeRef.new(shape: LensVersion, location_name: "CurrentLensVersion"))
    LensUpgradeSummary.add_member(:latest_lens_version, Shapes::ShapeRef.new(shape: LensVersion, location_name: "LatestLensVersion"))
    LensUpgradeSummary.struct_class = Types::LensUpgradeSummary

    ListAnswersInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    ListAnswersInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    ListAnswersInput.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, location: "querystring", location_name: "PillarId"))
    ListAnswersInput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location: "querystring", location_name: "MilestoneNumber"))
    ListAnswersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListAnswersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListAnswersMaxResults, location: "querystring", location_name: "MaxResults"))
    ListAnswersInput.add_member(:question_priority, Shapes::ShapeRef.new(shape: QuestionPriority, location: "querystring", location_name: "QuestionPriority"))
    ListAnswersInput.struct_class = Types::ListAnswersInput

    ListAnswersOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    ListAnswersOutput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: "MilestoneNumber"))
    ListAnswersOutput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    ListAnswersOutput.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    ListAnswersOutput.add_member(:answer_summaries, Shapes::ShapeRef.new(shape: AnswerSummaries, location_name: "AnswerSummaries"))
    ListAnswersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListAnswersOutput.struct_class = Types::ListAnswersOutput

    ListCheckDetailsInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    ListCheckDetailsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCheckDetailsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCheckDetailsInput.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, required: true, location_name: "LensArn"))
    ListCheckDetailsInput.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, required: true, location_name: "PillarId"))
    ListCheckDetailsInput.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, required: true, location_name: "QuestionId"))
    ListCheckDetailsInput.add_member(:choice_id, Shapes::ShapeRef.new(shape: ChoiceId, required: true, location_name: "ChoiceId"))
    ListCheckDetailsInput.struct_class = Types::ListCheckDetailsInput

    ListCheckDetailsOutput.add_member(:check_details, Shapes::ShapeRef.new(shape: CheckDetails, location_name: "CheckDetails"))
    ListCheckDetailsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCheckDetailsOutput.struct_class = Types::ListCheckDetailsOutput

    ListCheckSummariesInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    ListCheckSummariesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCheckSummariesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCheckSummariesInput.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, required: true, location_name: "LensArn"))
    ListCheckSummariesInput.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, required: true, location_name: "PillarId"))
    ListCheckSummariesInput.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, required: true, location_name: "QuestionId"))
    ListCheckSummariesInput.add_member(:choice_id, Shapes::ShapeRef.new(shape: ChoiceId, required: true, location_name: "ChoiceId"))
    ListCheckSummariesInput.struct_class = Types::ListCheckSummariesInput

    ListCheckSummariesOutput.add_member(:check_summaries, Shapes::ShapeRef.new(shape: CheckSummaries, location_name: "CheckSummaries"))
    ListCheckSummariesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCheckSummariesOutput.struct_class = Types::ListCheckSummariesOutput

    ListLensReviewImprovementsInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    ListLensReviewImprovementsInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    ListLensReviewImprovementsInput.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, location: "querystring", location_name: "PillarId"))
    ListLensReviewImprovementsInput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location: "querystring", location_name: "MilestoneNumber"))
    ListLensReviewImprovementsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListLensReviewImprovementsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListLensReviewImprovementsMaxResults, location: "querystring", location_name: "MaxResults"))
    ListLensReviewImprovementsInput.add_member(:question_priority, Shapes::ShapeRef.new(shape: QuestionPriority, location: "querystring", location_name: "QuestionPriority"))
    ListLensReviewImprovementsInput.struct_class = Types::ListLensReviewImprovementsInput

    ListLensReviewImprovementsOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    ListLensReviewImprovementsOutput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: "MilestoneNumber"))
    ListLensReviewImprovementsOutput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    ListLensReviewImprovementsOutput.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    ListLensReviewImprovementsOutput.add_member(:improvement_summaries, Shapes::ShapeRef.new(shape: ImprovementSummaries, location_name: "ImprovementSummaries"))
    ListLensReviewImprovementsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLensReviewImprovementsOutput.struct_class = Types::ListLensReviewImprovementsOutput

    ListLensReviewsInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    ListLensReviewsInput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location: "querystring", location_name: "MilestoneNumber"))
    ListLensReviewsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListLensReviewsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListLensReviewsInput.struct_class = Types::ListLensReviewsInput

    ListLensReviewsOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    ListLensReviewsOutput.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: "MilestoneNumber"))
    ListLensReviewsOutput.add_member(:lens_review_summaries, Shapes::ShapeRef.new(shape: LensReviewSummaries, location_name: "LensReviewSummaries"))
    ListLensReviewsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLensReviewsOutput.struct_class = Types::ListLensReviewsOutput

    ListLensSharesInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    ListLensSharesInput.add_member(:shared_with_prefix, Shapes::ShapeRef.new(shape: SharedWithPrefix, location: "querystring", location_name: "SharedWithPrefix"))
    ListLensSharesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListLensSharesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkloadSharesMaxResults, location: "querystring", location_name: "MaxResults"))
    ListLensSharesInput.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatus, location: "querystring", location_name: "Status"))
    ListLensSharesInput.struct_class = Types::ListLensSharesInput

    ListLensSharesOutput.add_member(:lens_share_summaries, Shapes::ShapeRef.new(shape: LensShareSummaries, location_name: "LensShareSummaries"))
    ListLensSharesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLensSharesOutput.struct_class = Types::ListLensSharesOutput

    ListLensesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListLensesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListLensesInput.add_member(:lens_type, Shapes::ShapeRef.new(shape: LensType, location: "querystring", location_name: "LensType"))
    ListLensesInput.add_member(:lens_status, Shapes::ShapeRef.new(shape: LensStatusType, location: "querystring", location_name: "LensStatus"))
    ListLensesInput.add_member(:lens_name, Shapes::ShapeRef.new(shape: LensName, location: "querystring", location_name: "LensName"))
    ListLensesInput.struct_class = Types::ListLensesInput

    ListLensesOutput.add_member(:lens_summaries, Shapes::ShapeRef.new(shape: LensSummaries, location_name: "LensSummaries"))
    ListLensesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListLensesOutput.struct_class = Types::ListLensesOutput

    ListMilestonesInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    ListMilestonesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMilestonesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListMilestonesInput.struct_class = Types::ListMilestonesInput

    ListMilestonesOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    ListMilestonesOutput.add_member(:milestone_summaries, Shapes::ShapeRef.new(shape: MilestoneSummaries, location_name: "MilestoneSummaries"))
    ListMilestonesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListMilestonesOutput.struct_class = Types::ListMilestonesOutput

    ListNotificationsInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    ListNotificationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotificationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListNotificationsMaxResults, location_name: "MaxResults"))
    ListNotificationsInput.struct_class = Types::ListNotificationsInput

    ListNotificationsOutput.add_member(:notification_summaries, Shapes::ShapeRef.new(shape: NotificationSummaries, location_name: "NotificationSummaries"))
    ListNotificationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListNotificationsOutput.struct_class = Types::ListNotificationsOutput

    ListProfileNotificationsInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location: "querystring", location_name: "WorkloadId"))
    ListProfileNotificationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListProfileNotificationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListProfileNotificationsInput.struct_class = Types::ListProfileNotificationsInput

    ListProfileNotificationsOutput.add_member(:notification_summaries, Shapes::ShapeRef.new(shape: ProfileNotificationSummaries, location_name: "NotificationSummaries"))
    ListProfileNotificationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProfileNotificationsOutput.struct_class = Types::ListProfileNotificationsOutput

    ListProfileSharesInput.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, required: true, location: "uri", location_name: "ProfileArn"))
    ListProfileSharesInput.add_member(:shared_with_prefix, Shapes::ShapeRef.new(shape: SharedWithPrefix, location: "querystring", location_name: "SharedWithPrefix"))
    ListProfileSharesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListProfileSharesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListProfileSharesMaxResults, location: "querystring", location_name: "MaxResults"))
    ListProfileSharesInput.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatus, location: "querystring", location_name: "Status"))
    ListProfileSharesInput.struct_class = Types::ListProfileSharesInput

    ListProfileSharesOutput.add_member(:profile_share_summaries, Shapes::ShapeRef.new(shape: ProfileShareSummaries, location_name: "ProfileShareSummaries"))
    ListProfileSharesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProfileSharesOutput.struct_class = Types::ListProfileSharesOutput

    ListProfilesInput.add_member(:profile_name_prefix, Shapes::ShapeRef.new(shape: ProfileNamePrefix, location: "querystring", location_name: "ProfileNamePrefix"))
    ListProfilesInput.add_member(:profile_owner_type, Shapes::ShapeRef.new(shape: ProfileOwnerType, location: "querystring", location_name: "ProfileOwnerType"))
    ListProfilesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListProfilesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListProfilesInput.struct_class = Types::ListProfilesInput

    ListProfilesOutput.add_member(:profile_summaries, Shapes::ShapeRef.new(shape: ProfileSummaries, location_name: "ProfileSummaries"))
    ListProfilesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListProfilesOutput.struct_class = Types::ListProfilesOutput

    ListShareInvitationsInput.add_member(:workload_name_prefix, Shapes::ShapeRef.new(shape: WorkloadNamePrefix, location: "querystring", location_name: "WorkloadNamePrefix"))
    ListShareInvitationsInput.add_member(:lens_name_prefix, Shapes::ShapeRef.new(shape: LensNamePrefix, location: "querystring", location_name: "LensNamePrefix"))
    ListShareInvitationsInput.add_member(:share_resource_type, Shapes::ShapeRef.new(shape: ShareResourceType, location: "querystring", location_name: "ShareResourceType"))
    ListShareInvitationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListShareInvitationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListShareInvitationsMaxResults, location: "querystring", location_name: "MaxResults"))
    ListShareInvitationsInput.add_member(:profile_name_prefix, Shapes::ShapeRef.new(shape: ProfileNamePrefix, location: "querystring", location_name: "ProfileNamePrefix"))
    ListShareInvitationsInput.struct_class = Types::ListShareInvitationsInput

    ListShareInvitationsOutput.add_member(:share_invitation_summaries, Shapes::ShapeRef.new(shape: ShareInvitationSummaries, location_name: "ShareInvitationSummaries"))
    ListShareInvitationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListShareInvitationsOutput.struct_class = Types::ListShareInvitationsOutput

    ListTagsForResourceInput.add_member(:workload_arn, Shapes::ShapeRef.new(shape: WorkloadArn, required: true, location: "uri", location_name: "WorkloadArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ListWorkloadSharesInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    ListWorkloadSharesInput.add_member(:shared_with_prefix, Shapes::ShapeRef.new(shape: SharedWithPrefix, location: "querystring", location_name: "SharedWithPrefix"))
    ListWorkloadSharesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListWorkloadSharesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkloadSharesMaxResults, location: "querystring", location_name: "MaxResults"))
    ListWorkloadSharesInput.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatus, location: "querystring", location_name: "Status"))
    ListWorkloadSharesInput.struct_class = Types::ListWorkloadSharesInput

    ListWorkloadSharesOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    ListWorkloadSharesOutput.add_member(:workload_share_summaries, Shapes::ShapeRef.new(shape: WorkloadShareSummaries, location_name: "WorkloadShareSummaries"))
    ListWorkloadSharesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkloadSharesOutput.struct_class = Types::ListWorkloadSharesOutput

    ListWorkloadsInput.add_member(:workload_name_prefix, Shapes::ShapeRef.new(shape: WorkloadNamePrefix, location_name: "WorkloadNamePrefix"))
    ListWorkloadsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkloadsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListWorkloadsMaxResults, location_name: "MaxResults"))
    ListWorkloadsInput.struct_class = Types::ListWorkloadsInput

    ListWorkloadsOutput.add_member(:workload_summaries, Shapes::ShapeRef.new(shape: WorkloadSummaries, location_name: "WorkloadSummaries"))
    ListWorkloadsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListWorkloadsOutput.struct_class = Types::ListWorkloadsOutput

    Milestone.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: "MilestoneNumber"))
    Milestone.add_member(:milestone_name, Shapes::ShapeRef.new(shape: MilestoneName, location_name: "MilestoneName"))
    Milestone.add_member(:recorded_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RecordedAt"))
    Milestone.add_member(:workload, Shapes::ShapeRef.new(shape: Workload, location_name: "Workload"))
    Milestone.struct_class = Types::Milestone

    MilestoneSummaries.member = Shapes::ShapeRef.new(shape: MilestoneSummary)

    MilestoneSummary.add_member(:milestone_number, Shapes::ShapeRef.new(shape: MilestoneNumber, location_name: "MilestoneNumber"))
    MilestoneSummary.add_member(:milestone_name, Shapes::ShapeRef.new(shape: MilestoneName, location_name: "MilestoneName"))
    MilestoneSummary.add_member(:recorded_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "RecordedAt"))
    MilestoneSummary.add_member(:workload_summary, Shapes::ShapeRef.new(shape: WorkloadSummary, location_name: "WorkloadSummary"))
    MilestoneSummary.struct_class = Types::MilestoneSummary

    NotificationSummaries.member = Shapes::ShapeRef.new(shape: NotificationSummary)

    NotificationSummary.add_member(:type, Shapes::ShapeRef.new(shape: NotificationType, location_name: "Type"))
    NotificationSummary.add_member(:lens_upgrade_summary, Shapes::ShapeRef.new(shape: LensUpgradeSummary, location_name: "LensUpgradeSummary"))
    NotificationSummary.struct_class = Types::NotificationSummary

    PillarDifference.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, location_name: "PillarId"))
    PillarDifference.add_member(:pillar_name, Shapes::ShapeRef.new(shape: PillarName, location_name: "PillarName"))
    PillarDifference.add_member(:difference_status, Shapes::ShapeRef.new(shape: DifferenceStatus, location_name: "DifferenceStatus"))
    PillarDifference.add_member(:question_differences, Shapes::ShapeRef.new(shape: QuestionDifferences, location_name: "QuestionDifferences"))
    PillarDifference.struct_class = Types::PillarDifference

    PillarDifferences.member = Shapes::ShapeRef.new(shape: PillarDifference)

    PillarMetric.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, location_name: "PillarId"))
    PillarMetric.add_member(:risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "RiskCounts"))
    PillarMetric.add_member(:questions, Shapes::ShapeRef.new(shape: QuestionMetrics, location_name: "Questions"))
    PillarMetric.struct_class = Types::PillarMetric

    PillarMetrics.member = Shapes::ShapeRef.new(shape: PillarMetric)

    PillarNotes.key = Shapes::ShapeRef.new(shape: PillarId)
    PillarNotes.value = Shapes::ShapeRef.new(shape: Notes)

    PillarReviewSummaries.member = Shapes::ShapeRef.new(shape: PillarReviewSummary)

    PillarReviewSummary.add_member(:pillar_id, Shapes::ShapeRef.new(shape: PillarId, location_name: "PillarId"))
    PillarReviewSummary.add_member(:pillar_name, Shapes::ShapeRef.new(shape: PillarName, location_name: "PillarName"))
    PillarReviewSummary.add_member(:notes, Shapes::ShapeRef.new(shape: Notes, location_name: "Notes"))
    PillarReviewSummary.add_member(:risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "RiskCounts"))
    PillarReviewSummary.add_member(:prioritized_risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "PrioritizedRiskCounts"))
    PillarReviewSummary.struct_class = Types::PillarReviewSummary

    Profile.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, location_name: "ProfileArn"))
    Profile.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "ProfileVersion"))
    Profile.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "ProfileName"))
    Profile.add_member(:profile_description, Shapes::ShapeRef.new(shape: ProfileDescription, location_name: "ProfileDescription"))
    Profile.add_member(:profile_questions, Shapes::ShapeRef.new(shape: ProfileQuestions, location_name: "ProfileQuestions"))
    Profile.add_member(:owner, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "Owner"))
    Profile.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Profile.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    Profile.add_member(:share_invitation_id, Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: "ShareInvitationId"))
    Profile.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Profile.struct_class = Types::Profile

    ProfileArns.member = Shapes::ShapeRef.new(shape: ProfileArn)

    ProfileChoice.add_member(:choice_id, Shapes::ShapeRef.new(shape: ChoiceId, location_name: "ChoiceId"))
    ProfileChoice.add_member(:choice_title, Shapes::ShapeRef.new(shape: ChoiceTitle, location_name: "ChoiceTitle"))
    ProfileChoice.add_member(:choice_description, Shapes::ShapeRef.new(shape: ChoiceDescription, location_name: "ChoiceDescription"))
    ProfileChoice.struct_class = Types::ProfileChoice

    ProfileNotificationSummaries.member = Shapes::ShapeRef.new(shape: ProfileNotificationSummary)

    ProfileNotificationSummary.add_member(:current_profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "CurrentProfileVersion"))
    ProfileNotificationSummary.add_member(:latest_profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "LatestProfileVersion"))
    ProfileNotificationSummary.add_member(:type, Shapes::ShapeRef.new(shape: ProfileNotificationType, location_name: "Type"))
    ProfileNotificationSummary.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, location_name: "ProfileArn"))
    ProfileNotificationSummary.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "ProfileName"))
    ProfileNotificationSummary.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    ProfileNotificationSummary.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "WorkloadName"))
    ProfileNotificationSummary.struct_class = Types::ProfileNotificationSummary

    ProfileQuestion.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, location_name: "QuestionId"))
    ProfileQuestion.add_member(:question_title, Shapes::ShapeRef.new(shape: QuestionTitle, location_name: "QuestionTitle"))
    ProfileQuestion.add_member(:question_description, Shapes::ShapeRef.new(shape: QuestionDescription, location_name: "QuestionDescription"))
    ProfileQuestion.add_member(:question_choices, Shapes::ShapeRef.new(shape: ProfileQuestionChoices, location_name: "QuestionChoices"))
    ProfileQuestion.add_member(:selected_choice_ids, Shapes::ShapeRef.new(shape: SelectedChoiceIds, location_name: "SelectedChoiceIds"))
    ProfileQuestion.add_member(:min_selected_choices, Shapes::ShapeRef.new(shape: MinSelectedProfileChoices, location_name: "MinSelectedChoices"))
    ProfileQuestion.add_member(:max_selected_choices, Shapes::ShapeRef.new(shape: MaxSelectedProfileChoices, location_name: "MaxSelectedChoices"))
    ProfileQuestion.struct_class = Types::ProfileQuestion

    ProfileQuestionChoices.member = Shapes::ShapeRef.new(shape: ProfileChoice)

    ProfileQuestionUpdate.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, location_name: "QuestionId"))
    ProfileQuestionUpdate.add_member(:selected_choice_ids, Shapes::ShapeRef.new(shape: SelectedProfileChoiceIds, location_name: "SelectedChoiceIds"))
    ProfileQuestionUpdate.struct_class = Types::ProfileQuestionUpdate

    ProfileQuestionUpdates.member = Shapes::ShapeRef.new(shape: ProfileQuestionUpdate)

    ProfileQuestions.member = Shapes::ShapeRef.new(shape: ProfileQuestion)

    ProfileShareSummaries.member = Shapes::ShapeRef.new(shape: ProfileShareSummary)

    ProfileShareSummary.add_member(:share_id, Shapes::ShapeRef.new(shape: ShareId, location_name: "ShareId"))
    ProfileShareSummary.add_member(:shared_with, Shapes::ShapeRef.new(shape: SharedWith, location_name: "SharedWith"))
    ProfileShareSummary.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "Status"))
    ProfileShareSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    ProfileShareSummary.struct_class = Types::ProfileShareSummary

    ProfileSummaries.member = Shapes::ShapeRef.new(shape: ProfileSummary)

    ProfileSummary.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, location_name: "ProfileArn"))
    ProfileSummary.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "ProfileVersion"))
    ProfileSummary.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "ProfileName"))
    ProfileSummary.add_member(:profile_description, Shapes::ShapeRef.new(shape: ProfileDescription, location_name: "ProfileDescription"))
    ProfileSummary.add_member(:owner, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "Owner"))
    ProfileSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ProfileSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    ProfileSummary.struct_class = Types::ProfileSummary

    ProfileTemplate.add_member(:template_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "TemplateName"))
    ProfileTemplate.add_member(:template_questions, Shapes::ShapeRef.new(shape: TemplateQuestions, location_name: "TemplateQuestions"))
    ProfileTemplate.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ProfileTemplate.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    ProfileTemplate.struct_class = Types::ProfileTemplate

    ProfileTemplateChoice.add_member(:choice_id, Shapes::ShapeRef.new(shape: ChoiceId, location_name: "ChoiceId"))
    ProfileTemplateChoice.add_member(:choice_title, Shapes::ShapeRef.new(shape: ChoiceTitle, location_name: "ChoiceTitle"))
    ProfileTemplateChoice.add_member(:choice_description, Shapes::ShapeRef.new(shape: ChoiceDescription, location_name: "ChoiceDescription"))
    ProfileTemplateChoice.struct_class = Types::ProfileTemplateChoice

    ProfileTemplateQuestion.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, location_name: "QuestionId"))
    ProfileTemplateQuestion.add_member(:question_title, Shapes::ShapeRef.new(shape: QuestionTitle, location_name: "QuestionTitle"))
    ProfileTemplateQuestion.add_member(:question_description, Shapes::ShapeRef.new(shape: QuestionDescription, location_name: "QuestionDescription"))
    ProfileTemplateQuestion.add_member(:question_choices, Shapes::ShapeRef.new(shape: ProfileTemplateQuestionChoices, location_name: "QuestionChoices"))
    ProfileTemplateQuestion.add_member(:min_selected_choices, Shapes::ShapeRef.new(shape: MinSelectedProfileChoices, location_name: "MinSelectedChoices"))
    ProfileTemplateQuestion.add_member(:max_selected_choices, Shapes::ShapeRef.new(shape: MaxSelectedProfileChoices, location_name: "MaxSelectedChoices"))
    ProfileTemplateQuestion.struct_class = Types::ProfileTemplateQuestion

    ProfileTemplateQuestionChoices.member = Shapes::ShapeRef.new(shape: ProfileTemplateChoice)

    QuestionDifference.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, location_name: "QuestionId"))
    QuestionDifference.add_member(:question_title, Shapes::ShapeRef.new(shape: QuestionTitle, location_name: "QuestionTitle"))
    QuestionDifference.add_member(:difference_status, Shapes::ShapeRef.new(shape: DifferenceStatus, location_name: "DifferenceStatus"))
    QuestionDifference.struct_class = Types::QuestionDifference

    QuestionDifferences.member = Shapes::ShapeRef.new(shape: QuestionDifference)

    QuestionMetric.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, location_name: "QuestionId"))
    QuestionMetric.add_member(:risk, Shapes::ShapeRef.new(shape: Risk, location_name: "Risk"))
    QuestionMetric.add_member(:best_practices, Shapes::ShapeRef.new(shape: BestPractices, location_name: "BestPractices"))
    QuestionMetric.struct_class = Types::QuestionMetric

    QuestionMetrics.member = Shapes::ShapeRef.new(shape: QuestionMetric)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ExceptionResourceId, required: true, location_name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, required: true, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RiskCounts.key = Shapes::ShapeRef.new(shape: Risk)
    RiskCounts.value = Shapes::ShapeRef.new(shape: Count)

    SelectedChoiceIds.member = Shapes::ShapeRef.new(shape: ChoiceId)

    SelectedChoices.member = Shapes::ShapeRef.new(shape: ChoiceId)

    SelectedProfileChoiceIds.member = Shapes::ShapeRef.new(shape: ChoiceId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "Message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ExceptionResourceId, location_name: "ResourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: "ResourceType"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, required: true, location_name: "QuotaCode"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, required: true, location_name: "ServiceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ShareInvitation.add_member(:share_invitation_id, Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: "ShareInvitationId"))
    ShareInvitation.add_member(:share_resource_type, Shapes::ShapeRef.new(shape: ShareResourceType, location_name: "ShareResourceType"))
    ShareInvitation.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    ShareInvitation.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    ShareInvitation.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    ShareInvitation.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, location_name: "ProfileArn"))
    ShareInvitation.struct_class = Types::ShareInvitation

    ShareInvitationSummaries.member = Shapes::ShapeRef.new(shape: ShareInvitationSummary)

    ShareInvitationSummary.add_member(:share_invitation_id, Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: "ShareInvitationId"))
    ShareInvitationSummary.add_member(:shared_by, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "SharedBy"))
    ShareInvitationSummary.add_member(:shared_with, Shapes::ShapeRef.new(shape: SharedWith, location_name: "SharedWith"))
    ShareInvitationSummary.add_member(:permission_type, Shapes::ShapeRef.new(shape: PermissionType, location_name: "PermissionType"))
    ShareInvitationSummary.add_member(:share_resource_type, Shapes::ShapeRef.new(shape: ShareResourceType, location_name: "ShareResourceType"))
    ShareInvitationSummary.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "WorkloadName"))
    ShareInvitationSummary.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    ShareInvitationSummary.add_member(:lens_name, Shapes::ShapeRef.new(shape: LensName, location_name: "LensName"))
    ShareInvitationSummary.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    ShareInvitationSummary.add_member(:profile_name, Shapes::ShapeRef.new(shape: ProfileName, location_name: "ProfileName"))
    ShareInvitationSummary.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, location_name: "ProfileArn"))
    ShareInvitationSummary.struct_class = Types::ShareInvitationSummary

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:workload_arn, Shapes::ShapeRef.new(shape: WorkloadArn, required: true, location: "uri", location_name: "WorkloadArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TemplateQuestions.member = Shapes::ShapeRef.new(shape: ProfileTemplateQuestion)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "Message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: QuotaCode, location_name: "QuotaCode"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: ServiceCode, location_name: "ServiceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:workload_arn, Shapes::ShapeRef.new(shape: WorkloadArn, required: true, location: "uri", location_name: "WorkloadArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateAnswerInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    UpdateAnswerInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    UpdateAnswerInput.add_member(:question_id, Shapes::ShapeRef.new(shape: QuestionId, required: true, location: "uri", location_name: "QuestionId"))
    UpdateAnswerInput.add_member(:selected_choices, Shapes::ShapeRef.new(shape: SelectedChoices, location_name: "SelectedChoices"))
    UpdateAnswerInput.add_member(:choice_updates, Shapes::ShapeRef.new(shape: ChoiceUpdates, location_name: "ChoiceUpdates"))
    UpdateAnswerInput.add_member(:notes, Shapes::ShapeRef.new(shape: Notes, location_name: "Notes"))
    UpdateAnswerInput.add_member(:is_applicable, Shapes::ShapeRef.new(shape: IsApplicable, location_name: "IsApplicable"))
    UpdateAnswerInput.add_member(:reason, Shapes::ShapeRef.new(shape: AnswerReason, location_name: "Reason"))
    UpdateAnswerInput.struct_class = Types::UpdateAnswerInput

    UpdateAnswerOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    UpdateAnswerOutput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, location_name: "LensAlias"))
    UpdateAnswerOutput.add_member(:lens_arn, Shapes::ShapeRef.new(shape: LensArn, location_name: "LensArn"))
    UpdateAnswerOutput.add_member(:answer, Shapes::ShapeRef.new(shape: Answer, location_name: "Answer"))
    UpdateAnswerOutput.struct_class = Types::UpdateAnswerOutput

    UpdateGlobalSettingsInput.add_member(:organization_sharing_status, Shapes::ShapeRef.new(shape: OrganizationSharingStatus, location_name: "OrganizationSharingStatus"))
    UpdateGlobalSettingsInput.add_member(:discovery_integration_status, Shapes::ShapeRef.new(shape: DiscoveryIntegrationStatus, location_name: "DiscoveryIntegrationStatus"))
    UpdateGlobalSettingsInput.struct_class = Types::UpdateGlobalSettingsInput

    UpdateLensReviewInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    UpdateLensReviewInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    UpdateLensReviewInput.add_member(:lens_notes, Shapes::ShapeRef.new(shape: Notes, location_name: "LensNotes"))
    UpdateLensReviewInput.add_member(:pillar_notes, Shapes::ShapeRef.new(shape: PillarNotes, location_name: "PillarNotes"))
    UpdateLensReviewInput.struct_class = Types::UpdateLensReviewInput

    UpdateLensReviewOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    UpdateLensReviewOutput.add_member(:lens_review, Shapes::ShapeRef.new(shape: LensReview, location_name: "LensReview"))
    UpdateLensReviewOutput.struct_class = Types::UpdateLensReviewOutput

    UpdateProfileInput.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, required: true, location: "uri", location_name: "ProfileArn"))
    UpdateProfileInput.add_member(:profile_description, Shapes::ShapeRef.new(shape: ProfileDescription, location_name: "ProfileDescription"))
    UpdateProfileInput.add_member(:profile_questions, Shapes::ShapeRef.new(shape: ProfileQuestionUpdates, location_name: "ProfileQuestions"))
    UpdateProfileInput.struct_class = Types::UpdateProfileInput

    UpdateProfileOutput.add_member(:profile, Shapes::ShapeRef.new(shape: Profile, location_name: "Profile"))
    UpdateProfileOutput.struct_class = Types::UpdateProfileOutput

    UpdateShareInvitationInput.add_member(:share_invitation_id, Shapes::ShapeRef.new(shape: ShareInvitationId, required: true, location: "uri", location_name: "ShareInvitationId"))
    UpdateShareInvitationInput.add_member(:share_invitation_action, Shapes::ShapeRef.new(shape: ShareInvitationAction, required: true, location_name: "ShareInvitationAction"))
    UpdateShareInvitationInput.struct_class = Types::UpdateShareInvitationInput

    UpdateShareInvitationOutput.add_member(:share_invitation, Shapes::ShapeRef.new(shape: ShareInvitation, location_name: "ShareInvitation"))
    UpdateShareInvitationOutput.struct_class = Types::UpdateShareInvitationOutput

    UpdateWorkloadInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    UpdateWorkloadInput.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "WorkloadName"))
    UpdateWorkloadInput.add_member(:description, Shapes::ShapeRef.new(shape: WorkloadDescription, location_name: "Description"))
    UpdateWorkloadInput.add_member(:environment, Shapes::ShapeRef.new(shape: WorkloadEnvironment, location_name: "Environment"))
    UpdateWorkloadInput.add_member(:account_ids, Shapes::ShapeRef.new(shape: WorkloadAccountIds, location_name: "AccountIds"))
    UpdateWorkloadInput.add_member(:aws_regions, Shapes::ShapeRef.new(shape: WorkloadAwsRegions, location_name: "AwsRegions"))
    UpdateWorkloadInput.add_member(:non_aws_regions, Shapes::ShapeRef.new(shape: WorkloadNonAwsRegions, location_name: "NonAwsRegions"))
    UpdateWorkloadInput.add_member(:pillar_priorities, Shapes::ShapeRef.new(shape: WorkloadPillarPriorities, location_name: "PillarPriorities"))
    UpdateWorkloadInput.add_member(:architectural_design, Shapes::ShapeRef.new(shape: WorkloadArchitecturalDesign, location_name: "ArchitecturalDesign"))
    UpdateWorkloadInput.add_member(:review_owner, Shapes::ShapeRef.new(shape: WorkloadReviewOwner, location_name: "ReviewOwner"))
    UpdateWorkloadInput.add_member(:is_review_owner_update_acknowledged, Shapes::ShapeRef.new(shape: IsReviewOwnerUpdateAcknowledged, location_name: "IsReviewOwnerUpdateAcknowledged"))
    UpdateWorkloadInput.add_member(:industry_type, Shapes::ShapeRef.new(shape: WorkloadIndustryType, location_name: "IndustryType"))
    UpdateWorkloadInput.add_member(:industry, Shapes::ShapeRef.new(shape: WorkloadIndustry, location_name: "Industry"))
    UpdateWorkloadInput.add_member(:notes, Shapes::ShapeRef.new(shape: Notes, location_name: "Notes"))
    UpdateWorkloadInput.add_member(:improvement_status, Shapes::ShapeRef.new(shape: WorkloadImprovementStatus, location_name: "ImprovementStatus"))
    UpdateWorkloadInput.add_member(:discovery_config, Shapes::ShapeRef.new(shape: WorkloadDiscoveryConfig, location_name: "DiscoveryConfig"))
    UpdateWorkloadInput.add_member(:applications, Shapes::ShapeRef.new(shape: WorkloadApplications, location_name: "Applications"))
    UpdateWorkloadInput.struct_class = Types::UpdateWorkloadInput

    UpdateWorkloadOutput.add_member(:workload, Shapes::ShapeRef.new(shape: Workload, location_name: "Workload"))
    UpdateWorkloadOutput.struct_class = Types::UpdateWorkloadOutput

    UpdateWorkloadShareInput.add_member(:share_id, Shapes::ShapeRef.new(shape: ShareId, required: true, location: "uri", location_name: "ShareId"))
    UpdateWorkloadShareInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    UpdateWorkloadShareInput.add_member(:permission_type, Shapes::ShapeRef.new(shape: PermissionType, required: true, location_name: "PermissionType"))
    UpdateWorkloadShareInput.struct_class = Types::UpdateWorkloadShareInput

    UpdateWorkloadShareOutput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    UpdateWorkloadShareOutput.add_member(:workload_share, Shapes::ShapeRef.new(shape: WorkloadShare, location_name: "WorkloadShare"))
    UpdateWorkloadShareOutput.struct_class = Types::UpdateWorkloadShareOutput

    UpgradeLensReviewInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    UpgradeLensReviewInput.add_member(:lens_alias, Shapes::ShapeRef.new(shape: LensAlias, required: true, location: "uri", location_name: "LensAlias"))
    UpgradeLensReviewInput.add_member(:milestone_name, Shapes::ShapeRef.new(shape: MilestoneName, required: true, location_name: "MilestoneName"))
    UpgradeLensReviewInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken"))
    UpgradeLensReviewInput.struct_class = Types::UpgradeLensReviewInput

    UpgradeProfileVersionInput.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, required: true, location: "uri", location_name: "WorkloadId"))
    UpgradeProfileVersionInput.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, required: true, location: "uri", location_name: "ProfileArn"))
    UpgradeProfileVersionInput.add_member(:milestone_name, Shapes::ShapeRef.new(shape: MilestoneName, location_name: "MilestoneName"))
    UpgradeProfileVersionInput.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpgradeProfileVersionInput.struct_class = Types::UpgradeProfileVersionInput

    Urls.member = Shapes::ShapeRef.new(shape: ChoiceContent)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "Reason"))
    ValidationException.add_member(:fields, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "Fields"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: ValidationExceptionFieldName, required: true, location_name: "Name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, required: true, location_name: "Message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    VersionDifferences.add_member(:pillar_differences, Shapes::ShapeRef.new(shape: PillarDifferences, location_name: "PillarDifferences"))
    VersionDifferences.struct_class = Types::VersionDifferences

    Workload.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    Workload.add_member(:workload_arn, Shapes::ShapeRef.new(shape: WorkloadArn, location_name: "WorkloadArn"))
    Workload.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "WorkloadName"))
    Workload.add_member(:description, Shapes::ShapeRef.new(shape: WorkloadDescription, location_name: "Description"))
    Workload.add_member(:environment, Shapes::ShapeRef.new(shape: WorkloadEnvironment, location_name: "Environment"))
    Workload.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    Workload.add_member(:account_ids, Shapes::ShapeRef.new(shape: WorkloadAccountIds, location_name: "AccountIds"))
    Workload.add_member(:aws_regions, Shapes::ShapeRef.new(shape: WorkloadAwsRegions, location_name: "AwsRegions"))
    Workload.add_member(:non_aws_regions, Shapes::ShapeRef.new(shape: WorkloadNonAwsRegions, location_name: "NonAwsRegions"))
    Workload.add_member(:architectural_design, Shapes::ShapeRef.new(shape: WorkloadArchitecturalDesign, location_name: "ArchitecturalDesign"))
    Workload.add_member(:review_owner, Shapes::ShapeRef.new(shape: WorkloadReviewOwner, location_name: "ReviewOwner"))
    Workload.add_member(:review_restriction_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReviewRestrictionDate"))
    Workload.add_member(:is_review_owner_update_acknowledged, Shapes::ShapeRef.new(shape: IsReviewOwnerUpdateAcknowledged, location_name: "IsReviewOwnerUpdateAcknowledged"))
    Workload.add_member(:industry_type, Shapes::ShapeRef.new(shape: WorkloadIndustryType, location_name: "IndustryType"))
    Workload.add_member(:industry, Shapes::ShapeRef.new(shape: WorkloadIndustry, location_name: "Industry"))
    Workload.add_member(:notes, Shapes::ShapeRef.new(shape: Notes, location_name: "Notes"))
    Workload.add_member(:improvement_status, Shapes::ShapeRef.new(shape: WorkloadImprovementStatus, location_name: "ImprovementStatus"))
    Workload.add_member(:risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "RiskCounts"))
    Workload.add_member(:pillar_priorities, Shapes::ShapeRef.new(shape: WorkloadPillarPriorities, location_name: "PillarPriorities"))
    Workload.add_member(:lenses, Shapes::ShapeRef.new(shape: WorkloadLenses, location_name: "Lenses"))
    Workload.add_member(:owner, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "Owner"))
    Workload.add_member(:share_invitation_id, Shapes::ShapeRef.new(shape: ShareInvitationId, location_name: "ShareInvitationId"))
    Workload.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Workload.add_member(:discovery_config, Shapes::ShapeRef.new(shape: WorkloadDiscoveryConfig, location_name: "DiscoveryConfig"))
    Workload.add_member(:applications, Shapes::ShapeRef.new(shape: WorkloadApplications, location_name: "Applications"))
    Workload.add_member(:profiles, Shapes::ShapeRef.new(shape: WorkloadProfiles, location_name: "Profiles"))
    Workload.add_member(:prioritized_risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "PrioritizedRiskCounts"))
    Workload.struct_class = Types::Workload

    WorkloadAccountIds.member = Shapes::ShapeRef.new(shape: AwsAccountId)

    WorkloadApplications.member = Shapes::ShapeRef.new(shape: ApplicationArn)

    WorkloadAwsRegions.member = Shapes::ShapeRef.new(shape: AwsRegion)

    WorkloadDiscoveryConfig.add_member(:trusted_advisor_integration_status, Shapes::ShapeRef.new(shape: TrustedAdvisorIntegrationStatus, location_name: "TrustedAdvisorIntegrationStatus"))
    WorkloadDiscoveryConfig.add_member(:workload_resource_definition, Shapes::ShapeRef.new(shape: WorkloadResourceDefinition, location_name: "WorkloadResourceDefinition"))
    WorkloadDiscoveryConfig.struct_class = Types::WorkloadDiscoveryConfig

    WorkloadLenses.member = Shapes::ShapeRef.new(shape: LensAlias)

    WorkloadNonAwsRegions.member = Shapes::ShapeRef.new(shape: WorkloadNonAwsRegion)

    WorkloadPillarPriorities.member = Shapes::ShapeRef.new(shape: PillarId)

    WorkloadProfile.add_member(:profile_arn, Shapes::ShapeRef.new(shape: ProfileArn, location_name: "ProfileArn"))
    WorkloadProfile.add_member(:profile_version, Shapes::ShapeRef.new(shape: ProfileVersion, location_name: "ProfileVersion"))
    WorkloadProfile.struct_class = Types::WorkloadProfile

    WorkloadProfileArns.member = Shapes::ShapeRef.new(shape: ProfileArn)

    WorkloadProfiles.member = Shapes::ShapeRef.new(shape: WorkloadProfile)

    WorkloadResourceDefinition.member = Shapes::ShapeRef.new(shape: DefinitionType)

    WorkloadShare.add_member(:share_id, Shapes::ShapeRef.new(shape: ShareId, location_name: "ShareId"))
    WorkloadShare.add_member(:shared_by, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "SharedBy"))
    WorkloadShare.add_member(:shared_with, Shapes::ShapeRef.new(shape: SharedWith, location_name: "SharedWith"))
    WorkloadShare.add_member(:permission_type, Shapes::ShapeRef.new(shape: PermissionType, location_name: "PermissionType"))
    WorkloadShare.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "Status"))
    WorkloadShare.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "WorkloadName"))
    WorkloadShare.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    WorkloadShare.struct_class = Types::WorkloadShare

    WorkloadShareSummaries.member = Shapes::ShapeRef.new(shape: WorkloadShareSummary)

    WorkloadShareSummary.add_member(:share_id, Shapes::ShapeRef.new(shape: ShareId, location_name: "ShareId"))
    WorkloadShareSummary.add_member(:shared_with, Shapes::ShapeRef.new(shape: SharedWith, location_name: "SharedWith"))
    WorkloadShareSummary.add_member(:permission_type, Shapes::ShapeRef.new(shape: PermissionType, location_name: "PermissionType"))
    WorkloadShareSummary.add_member(:status, Shapes::ShapeRef.new(shape: ShareStatus, location_name: "Status"))
    WorkloadShareSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    WorkloadShareSummary.struct_class = Types::WorkloadShareSummary

    WorkloadSummaries.member = Shapes::ShapeRef.new(shape: WorkloadSummary)

    WorkloadSummary.add_member(:workload_id, Shapes::ShapeRef.new(shape: WorkloadId, location_name: "WorkloadId"))
    WorkloadSummary.add_member(:workload_arn, Shapes::ShapeRef.new(shape: WorkloadArn, location_name: "WorkloadArn"))
    WorkloadSummary.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "WorkloadName"))
    WorkloadSummary.add_member(:owner, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "Owner"))
    WorkloadSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    WorkloadSummary.add_member(:lenses, Shapes::ShapeRef.new(shape: WorkloadLenses, location_name: "Lenses"))
    WorkloadSummary.add_member(:risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "RiskCounts"))
    WorkloadSummary.add_member(:improvement_status, Shapes::ShapeRef.new(shape: WorkloadImprovementStatus, location_name: "ImprovementStatus"))
    WorkloadSummary.add_member(:profiles, Shapes::ShapeRef.new(shape: WorkloadProfiles, location_name: "Profiles"))
    WorkloadSummary.add_member(:prioritized_risk_counts, Shapes::ShapeRef.new(shape: RiskCounts, location_name: "PrioritizedRiskCounts"))
    WorkloadSummary.struct_class = Types::WorkloadSummary


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-03-31"

      api.metadata = {
        "apiVersion" => "2020-03-31",
        "endpointPrefix" => "wellarchitected",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Well-Architected",
        "serviceFullName" => "AWS Well-Architected Tool",
        "serviceId" => "WellArchitected",
        "signatureVersion" => "v4",
        "signingName" => "wellarchitected",
        "uid" => "wellarchitected-2020-03-31",
      }

      api.add_operation(:associate_lenses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateLenses"
        o.http_method = "PATCH"
        o.http_request_uri = "/workloads/{WorkloadId}/associateLenses"
        o.input = Shapes::ShapeRef.new(shape: AssociateLensesInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:associate_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateProfiles"
        o.http_method = "PATCH"
        o.http_request_uri = "/workloads/{WorkloadId}/associateProfiles"
        o.input = Shapes::ShapeRef.new(shape: AssociateProfilesInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_lens_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLensShare"
        o.http_method = "POST"
        o.http_request_uri = "/lenses/{LensAlias}/shares"
        o.input = Shapes::ShapeRef.new(shape: CreateLensShareInput)
        o.output = Shapes::ShapeRef.new(shape: CreateLensShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_lens_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLensVersion"
        o.http_method = "POST"
        o.http_request_uri = "/lenses/{LensAlias}/versions"
        o.input = Shapes::ShapeRef.new(shape: CreateLensVersionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateLensVersionOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_milestone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateMilestone"
        o.http_method = "POST"
        o.http_request_uri = "/workloads/{WorkloadId}/milestones"
        o.input = Shapes::ShapeRef.new(shape: CreateMilestoneInput)
        o.output = Shapes::ShapeRef.new(shape: CreateMilestoneOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateProfileInput)
        o.output = Shapes::ShapeRef.new(shape: CreateProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_profile_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfileShare"
        o.http_method = "POST"
        o.http_request_uri = "/profiles/{ProfileArn}/shares"
        o.input = Shapes::ShapeRef.new(shape: CreateProfileShareInput)
        o.output = Shapes::ShapeRef.new(shape: CreateProfileShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_workload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkload"
        o.http_method = "POST"
        o.http_request_uri = "/workloads"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkloadInput)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkloadOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_workload_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkloadShare"
        o.http_method = "POST"
        o.http_request_uri = "/workloads/{WorkloadId}/shares"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkloadShareInput)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkloadShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_lens, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLens"
        o.http_method = "DELETE"
        o.http_request_uri = "/lenses/{LensAlias}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLensInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_lens_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLensShare"
        o.http_method = "DELETE"
        o.http_request_uri = "/lenses/{LensAlias}/shares/{ShareId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteLensShareInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfile"
        o.http_method = "DELETE"
        o.http_request_uri = "/profiles/{ProfileArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_profile_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfileShare"
        o.http_method = "DELETE"
        o.http_request_uri = "/profiles/{ProfileArn}/shares/{ShareId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileShareInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_workload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkload"
        o.http_method = "DELETE"
        o.http_request_uri = "/workloads/{WorkloadId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkloadInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_workload_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkloadShare"
        o.http_method = "DELETE"
        o.http_request_uri = "/workloads/{WorkloadId}/shares/{ShareId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkloadShareInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_lenses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateLenses"
        o.http_method = "PATCH"
        o.http_request_uri = "/workloads/{WorkloadId}/disassociateLenses"
        o.input = Shapes::ShapeRef.new(shape: DisassociateLensesInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateProfiles"
        o.http_method = "PATCH"
        o.http_request_uri = "/workloads/{WorkloadId}/disassociateProfiles"
        o.input = Shapes::ShapeRef.new(shape: DisassociateProfilesInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:export_lens, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ExportLens"
        o.http_method = "GET"
        o.http_request_uri = "/lenses/{LensAlias}/export"
        o.input = Shapes::ShapeRef.new(shape: ExportLensInput)
        o.output = Shapes::ShapeRef.new(shape: ExportLensOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_answer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAnswer"
        o.http_method = "GET"
        o.http_request_uri = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}"
        o.input = Shapes::ShapeRef.new(shape: GetAnswerInput)
        o.output = Shapes::ShapeRef.new(shape: GetAnswerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_consolidated_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConsolidatedReport"
        o.http_method = "GET"
        o.http_request_uri = "/consolidatedReport"
        o.input = Shapes::ShapeRef.new(shape: GetConsolidatedReportInput)
        o.output = Shapes::ShapeRef.new(shape: GetConsolidatedReportOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_lens, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLens"
        o.http_method = "GET"
        o.http_request_uri = "/lenses/{LensAlias}"
        o.input = Shapes::ShapeRef.new(shape: GetLensInput)
        o.output = Shapes::ShapeRef.new(shape: GetLensOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_lens_review, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLensReview"
        o.http_method = "GET"
        o.http_request_uri = "/workloads/{WorkloadId}/lensReviews/{LensAlias}"
        o.input = Shapes::ShapeRef.new(shape: GetLensReviewInput)
        o.output = Shapes::ShapeRef.new(shape: GetLensReviewOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_lens_review_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLensReviewReport"
        o.http_method = "GET"
        o.http_request_uri = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/report"
        o.input = Shapes::ShapeRef.new(shape: GetLensReviewReportInput)
        o.output = Shapes::ShapeRef.new(shape: GetLensReviewReportOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_lens_version_difference, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLensVersionDifference"
        o.http_method = "GET"
        o.http_request_uri = "/lenses/{LensAlias}/versionDifference"
        o.input = Shapes::ShapeRef.new(shape: GetLensVersionDifferenceInput)
        o.output = Shapes::ShapeRef.new(shape: GetLensVersionDifferenceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_milestone, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMilestone"
        o.http_method = "GET"
        o.http_request_uri = "/workloads/{WorkloadId}/milestones/{MilestoneNumber}"
        o.input = Shapes::ShapeRef.new(shape: GetMilestoneInput)
        o.output = Shapes::ShapeRef.new(shape: GetMilestoneOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfile"
        o.http_method = "GET"
        o.http_request_uri = "/profiles/{ProfileArn}"
        o.input = Shapes::ShapeRef.new(shape: GetProfileInput)
        o.output = Shapes::ShapeRef.new(shape: GetProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_profile_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfileTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/profileTemplate"
        o.input = Shapes::ShapeRef.new(shape: GetProfileTemplateInput)
        o.output = Shapes::ShapeRef.new(shape: GetProfileTemplateOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_workload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkload"
        o.http_method = "GET"
        o.http_request_uri = "/workloads/{WorkloadId}"
        o.input = Shapes::ShapeRef.new(shape: GetWorkloadInput)
        o.output = Shapes::ShapeRef.new(shape: GetWorkloadOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:import_lens, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportLens"
        o.http_method = "PUT"
        o.http_request_uri = "/importLens"
        o.input = Shapes::ShapeRef.new(shape: ImportLensInput)
        o.output = Shapes::ShapeRef.new(shape: ImportLensOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_answers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnswers"
        o.http_method = "GET"
        o.http_request_uri = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers"
        o.input = Shapes::ShapeRef.new(shape: ListAnswersInput)
        o.output = Shapes::ShapeRef.new(shape: ListAnswersOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_check_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCheckDetails"
        o.http_method = "POST"
        o.http_request_uri = "/workloads/{WorkloadId}/checks"
        o.input = Shapes::ShapeRef.new(shape: ListCheckDetailsInput)
        o.output = Shapes::ShapeRef.new(shape: ListCheckDetailsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_check_summaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCheckSummaries"
        o.http_method = "POST"
        o.http_request_uri = "/workloads/{WorkloadId}/checkSummaries"
        o.input = Shapes::ShapeRef.new(shape: ListCheckSummariesInput)
        o.output = Shapes::ShapeRef.new(shape: ListCheckSummariesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_lens_review_improvements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLensReviewImprovements"
        o.http_method = "GET"
        o.http_request_uri = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/improvements"
        o.input = Shapes::ShapeRef.new(shape: ListLensReviewImprovementsInput)
        o.output = Shapes::ShapeRef.new(shape: ListLensReviewImprovementsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_lens_reviews, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLensReviews"
        o.http_method = "GET"
        o.http_request_uri = "/workloads/{WorkloadId}/lensReviews"
        o.input = Shapes::ShapeRef.new(shape: ListLensReviewsInput)
        o.output = Shapes::ShapeRef.new(shape: ListLensReviewsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_lens_shares, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLensShares"
        o.http_method = "GET"
        o.http_request_uri = "/lenses/{LensAlias}/shares"
        o.input = Shapes::ShapeRef.new(shape: ListLensSharesInput)
        o.output = Shapes::ShapeRef.new(shape: ListLensSharesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_lenses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLenses"
        o.http_method = "GET"
        o.http_request_uri = "/lenses"
        o.input = Shapes::ShapeRef.new(shape: ListLensesInput)
        o.output = Shapes::ShapeRef.new(shape: ListLensesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_milestones, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMilestones"
        o.http_method = "POST"
        o.http_request_uri = "/workloads/{WorkloadId}/milestonesSummaries"
        o.input = Shapes::ShapeRef.new(shape: ListMilestonesInput)
        o.output = Shapes::ShapeRef.new(shape: ListMilestonesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_notifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNotifications"
        o.http_method = "POST"
        o.http_request_uri = "/notifications"
        o.input = Shapes::ShapeRef.new(shape: ListNotificationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListNotificationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_profile_notifications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileNotifications"
        o.http_method = "GET"
        o.http_request_uri = "/profileNotifications/"
        o.input = Shapes::ShapeRef.new(shape: ListProfileNotificationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListProfileNotificationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_profile_shares, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileShares"
        o.http_method = "GET"
        o.http_request_uri = "/profiles/{ProfileArn}/shares"
        o.input = Shapes::ShapeRef.new(shape: ListProfileSharesInput)
        o.output = Shapes::ShapeRef.new(shape: ListProfileSharesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfiles"
        o.http_method = "GET"
        o.http_request_uri = "/profileSummaries"
        o.input = Shapes::ShapeRef.new(shape: ListProfilesInput)
        o.output = Shapes::ShapeRef.new(shape: ListProfilesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_share_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListShareInvitations"
        o.http_method = "GET"
        o.http_request_uri = "/shareInvitations"
        o.input = Shapes::ShapeRef.new(shape: ListShareInvitationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListShareInvitationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/tags/{WorkloadArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_workload_shares, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkloadShares"
        o.http_method = "GET"
        o.http_request_uri = "/workloads/{WorkloadId}/shares"
        o.input = Shapes::ShapeRef.new(shape: ListWorkloadSharesInput)
        o.output = Shapes::ShapeRef.new(shape: ListWorkloadSharesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workloads, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkloads"
        o.http_method = "POST"
        o.http_request_uri = "/workloadsSummaries"
        o.input = Shapes::ShapeRef.new(shape: ListWorkloadsInput)
        o.output = Shapes::ShapeRef.new(shape: ListWorkloadsOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.http_request_uri = "/tags/{WorkloadArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{WorkloadArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_answer, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAnswer"
        o.http_method = "PATCH"
        o.http_request_uri = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAnswerInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAnswerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_global_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGlobalSettings"
        o.http_method = "PATCH"
        o.http_request_uri = "/global-settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateGlobalSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_lens_review, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLensReview"
        o.http_method = "PATCH"
        o.http_request_uri = "/workloads/{WorkloadId}/lensReviews/{LensAlias}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLensReviewInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateLensReviewOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfile"
        o.http_method = "PATCH"
        o.http_request_uri = "/profiles/{ProfileArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateProfileInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateProfileOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_share_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateShareInvitation"
        o.http_method = "PATCH"
        o.http_request_uri = "/shareInvitations/{ShareInvitationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateShareInvitationInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateShareInvitationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_workload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkload"
        o.http_method = "PATCH"
        o.http_request_uri = "/workloads/{WorkloadId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkloadInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkloadOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_workload_share, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateWorkloadShare"
        o.http_method = "PATCH"
        o.http_request_uri = "/workloads/{WorkloadId}/shares/{ShareId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateWorkloadShareInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateWorkloadShareOutput)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:upgrade_lens_review, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpgradeLensReview"
        o.http_method = "PUT"
        o.http_request_uri = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/upgrade"
        o.input = Shapes::ShapeRef.new(shape: UpgradeLensReviewInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:upgrade_profile_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpgradeProfileVersion"
        o.http_method = "PUT"
        o.http_request_uri = "/workloads/{WorkloadId}/profiles/{ProfileArn}/upgrade"
        o.input = Shapes::ShapeRef.new(shape: UpgradeProfileVersionInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
