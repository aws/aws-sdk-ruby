# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::PartnerCentralSelling
  # @api private
  module ClientApi

    include Seahorse::Model

    AcceptEngagementInvitationRequest = Shapes::StructureShape.new(name: 'AcceptEngagementInvitationRequest')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Account = Shapes::StructureShape.new(name: 'Account')
    AccountCompanyNameString = Shapes::StringShape.new(name: 'AccountCompanyNameString')
    AccountOtherIndustryString = Shapes::StringShape.new(name: 'AccountOtherIndustryString')
    AccountReceiver = Shapes::StructureShape.new(name: 'AccountReceiver')
    AccountSummary = Shapes::StructureShape.new(name: 'AccountSummary')
    AccountSummaryCompanyNameString = Shapes::StringShape.new(name: 'AccountSummaryCompanyNameString')
    AccountSummaryOtherIndustryString = Shapes::StringShape.new(name: 'AccountSummaryOtherIndustryString')
    Address = Shapes::StructureShape.new(name: 'Address')
    AddressCityString = Shapes::StringShape.new(name: 'AddressCityString')
    AddressPart = Shapes::StringShape.new(name: 'AddressPart')
    AddressPostalCodeString = Shapes::StringShape.new(name: 'AddressPostalCodeString')
    AddressStreetAddressString = Shapes::StringShape.new(name: 'AddressStreetAddressString')
    AddressSummary = Shapes::StructureShape.new(name: 'AddressSummary')
    AddressSummaryCityString = Shapes::StringShape.new(name: 'AddressSummaryCityString')
    AddressSummaryPostalCodeString = Shapes::StringShape.new(name: 'AddressSummaryPostalCodeString')
    Alias = Shapes::StringShape.new(name: 'Alias')
    Amount = Shapes::StringShape.new(name: 'Amount')
    ApnPrograms = Shapes::ListShape.new(name: 'ApnPrograms')
    AssignOpportunityRequest = Shapes::StructureShape.new(name: 'AssignOpportunityRequest')
    AssigneeContact = Shapes::StructureShape.new(name: 'AssigneeContact')
    AssigneeContactFirstNameString = Shapes::StringShape.new(name: 'AssigneeContactFirstNameString')
    AssigneeContactLastNameString = Shapes::StringShape.new(name: 'AssigneeContactLastNameString')
    AssociateOpportunityRequest = Shapes::StructureShape.new(name: 'AssociateOpportunityRequest')
    AssociateOpportunityRequestRelatedEntityIdentifierString = Shapes::StringShape.new(name: 'AssociateOpportunityRequestRelatedEntityIdentifierString')
    AwsAccount = Shapes::StringShape.new(name: 'AwsAccount')
    AwsAccountIdOrAliasList = Shapes::ListShape.new(name: 'AwsAccountIdOrAliasList')
    AwsAccountList = Shapes::ListShape.new(name: 'AwsAccountList')
    AwsClosedLostReason = Shapes::StringShape.new(name: 'AwsClosedLostReason')
    AwsFundingUsed = Shapes::StringShape.new(name: 'AwsFundingUsed')
    AwsMarketplaceOfferIdentifier = Shapes::StringShape.new(name: 'AwsMarketplaceOfferIdentifier')
    AwsMarketplaceOfferIdentifiers = Shapes::ListShape.new(name: 'AwsMarketplaceOfferIdentifiers')
    AwsMemberBusinessTitle = Shapes::StringShape.new(name: 'AwsMemberBusinessTitle')
    AwsOpportunityCustomer = Shapes::StructureShape.new(name: 'AwsOpportunityCustomer')
    AwsOpportunityInsights = Shapes::StructureShape.new(name: 'AwsOpportunityInsights')
    AwsOpportunityLifeCycle = Shapes::StructureShape.new(name: 'AwsOpportunityLifeCycle')
    AwsOpportunityLifeCycleNextStepsHistoryList = Shapes::ListShape.new(name: 'AwsOpportunityLifeCycleNextStepsHistoryList')
    AwsOpportunityLifeCycleNextStepsString = Shapes::StringShape.new(name: 'AwsOpportunityLifeCycleNextStepsString')
    AwsOpportunityProject = Shapes::StructureShape.new(name: 'AwsOpportunityProject')
    AwsOpportunityRelatedEntities = Shapes::StructureShape.new(name: 'AwsOpportunityRelatedEntities')
    AwsOpportunityStage = Shapes::StringShape.new(name: 'AwsOpportunityStage')
    AwsOpportunityTeamMembersList = Shapes::ListShape.new(name: 'AwsOpportunityTeamMembersList')
    AwsProductIdentifier = Shapes::StringShape.new(name: 'AwsProductIdentifier')
    AwsProductIdentifiers = Shapes::ListShape.new(name: 'AwsProductIdentifiers')
    AwsSubmission = Shapes::StructureShape.new(name: 'AwsSubmission')
    AwsTeamMember = Shapes::StructureShape.new(name: 'AwsTeamMember')
    AwsTeamMemberFirstNameString = Shapes::StringShape.new(name: 'AwsTeamMemberFirstNameString')
    AwsTeamMemberLastNameString = Shapes::StringShape.new(name: 'AwsTeamMemberLastNameString')
    CatalogIdentifier = Shapes::StringShape.new(name: 'CatalogIdentifier')
    Channel = Shapes::StringShape.new(name: 'Channel')
    Channels = Shapes::ListShape.new(name: 'Channels')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ClosedLostReason = Shapes::StringShape.new(name: 'ClosedLostReason')
    CompanyName = Shapes::StringShape.new(name: 'CompanyName')
    CompanyWebsiteUrl = Shapes::StringShape.new(name: 'CompanyWebsiteUrl')
    CompetitorName = Shapes::StringShape.new(name: 'CompetitorName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Contact = Shapes::StructureShape.new(name: 'Contact')
    ContactFirstNameString = Shapes::StringShape.new(name: 'ContactFirstNameString')
    ContactLastNameString = Shapes::StringShape.new(name: 'ContactLastNameString')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CreateEngagementInvitationRequest = Shapes::StructureShape.new(name: 'CreateEngagementInvitationRequest')
    CreateEngagementInvitationResponse = Shapes::StructureShape.new(name: 'CreateEngagementInvitationResponse')
    CreateEngagementRequest = Shapes::StructureShape.new(name: 'CreateEngagementRequest')
    CreateEngagementRequestClientTokenString = Shapes::StringShape.new(name: 'CreateEngagementRequestClientTokenString')
    CreateEngagementResponse = Shapes::StructureShape.new(name: 'CreateEngagementResponse')
    CreateOpportunityRequest = Shapes::StructureShape.new(name: 'CreateOpportunityRequest')
    CreateOpportunityRequestClientTokenString = Shapes::StringShape.new(name: 'CreateOpportunityRequestClientTokenString')
    CreateOpportunityRequestPartnerOpportunityIdentifierString = Shapes::StringShape.new(name: 'CreateOpportunityRequestPartnerOpportunityIdentifierString')
    CreateOpportunityResponse = Shapes::StructureShape.new(name: 'CreateOpportunityResponse')
    CreateResourceSnapshotJobRequest = Shapes::StructureShape.new(name: 'CreateResourceSnapshotJobRequest')
    CreateResourceSnapshotJobRequestClientTokenString = Shapes::StringShape.new(name: 'CreateResourceSnapshotJobRequestClientTokenString')
    CreateResourceSnapshotJobResponse = Shapes::StructureShape.new(name: 'CreateResourceSnapshotJobResponse')
    CreateResourceSnapshotRequest = Shapes::StructureShape.new(name: 'CreateResourceSnapshotRequest')
    CreateResourceSnapshotRequestClientTokenString = Shapes::StringShape.new(name: 'CreateResourceSnapshotRequestClientTokenString')
    CreateResourceSnapshotResponse = Shapes::StructureShape.new(name: 'CreateResourceSnapshotResponse')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    Customer = Shapes::StructureShape.new(name: 'Customer')
    CustomerContactsList = Shapes::ListShape.new(name: 'CustomerContactsList')
    CustomerProjectsContext = Shapes::StructureShape.new(name: 'CustomerProjectsContext')
    CustomerSummary = Shapes::StructureShape.new(name: 'CustomerSummary')
    Date = Shapes::StringShape.new(name: 'Date')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DeleteResourceSnapshotJobRequest = Shapes::StructureShape.new(name: 'DeleteResourceSnapshotJobRequest')
    DeliveryModel = Shapes::StringShape.new(name: 'DeliveryModel')
    DeliveryModels = Shapes::ListShape.new(name: 'DeliveryModels')
    DisassociateOpportunityRequest = Shapes::StructureShape.new(name: 'DisassociateOpportunityRequest')
    DisassociateOpportunityRequestRelatedEntityIdentifierString = Shapes::StringShape.new(name: 'DisassociateOpportunityRequestRelatedEntityIdentifierString')
    DunsNumber = Shapes::StringShape.new(name: 'DunsNumber')
    Email = Shapes::StringShape.new(name: 'Email')
    EngagementArn = Shapes::StringShape.new(name: 'EngagementArn')
    EngagementArnOrIdentifier = Shapes::StringShape.new(name: 'EngagementArnOrIdentifier')
    EngagementContextDetails = Shapes::StructureShape.new(name: 'EngagementContextDetails')
    EngagementContextPayload = Shapes::UnionShape.new(name: 'EngagementContextPayload')
    EngagementContextType = Shapes::StringShape.new(name: 'EngagementContextType')
    EngagementContexts = Shapes::ListShape.new(name: 'EngagementContexts')
    EngagementCustomer = Shapes::StructureShape.new(name: 'EngagementCustomer')
    EngagementCustomerBusinessProblem = Shapes::StringShape.new(name: 'EngagementCustomerBusinessProblem')
    EngagementCustomerProjectDetails = Shapes::StructureShape.new(name: 'EngagementCustomerProjectDetails')
    EngagementCustomerProjectDetailsTargetCompletionDateString = Shapes::StringShape.new(name: 'EngagementCustomerProjectDetailsTargetCompletionDateString')
    EngagementCustomerProjectTitle = Shapes::StringShape.new(name: 'EngagementCustomerProjectTitle')
    EngagementDescription = Shapes::StringShape.new(name: 'EngagementDescription')
    EngagementIdentifier = Shapes::StringShape.new(name: 'EngagementIdentifier')
    EngagementIdentifiers = Shapes::ListShape.new(name: 'EngagementIdentifiers')
    EngagementInvitationArn = Shapes::StringShape.new(name: 'EngagementInvitationArn')
    EngagementInvitationArnOrIdentifier = Shapes::StringShape.new(name: 'EngagementInvitationArnOrIdentifier')
    EngagementInvitationIdentifier = Shapes::StringShape.new(name: 'EngagementInvitationIdentifier')
    EngagementInvitationIdentifiers = Shapes::ListShape.new(name: 'EngagementInvitationIdentifiers')
    EngagementInvitationPayloadType = Shapes::StringShape.new(name: 'EngagementInvitationPayloadType')
    EngagementInvitationSummaries = Shapes::ListShape.new(name: 'EngagementInvitationSummaries')
    EngagementInvitationSummary = Shapes::StructureShape.new(name: 'EngagementInvitationSummary')
    EngagementInvitationSummarySenderCompanyNameString = Shapes::StringShape.new(name: 'EngagementInvitationSummarySenderCompanyNameString')
    EngagementInvitationsPayloadType = Shapes::ListShape.new(name: 'EngagementInvitationsPayloadType')
    EngagementMember = Shapes::StructureShape.new(name: 'EngagementMember')
    EngagementMemberSummaries = Shapes::ListShape.new(name: 'EngagementMemberSummaries')
    EngagementMemberSummary = Shapes::StructureShape.new(name: 'EngagementMemberSummary')
    EngagementMembers = Shapes::ListShape.new(name: 'EngagementMembers')
    EngagementPageSize = Shapes::IntegerShape.new(name: 'EngagementPageSize')
    EngagementResourceAssociationSummary = Shapes::StructureShape.new(name: 'EngagementResourceAssociationSummary')
    EngagementResourceAssociationSummaryList = Shapes::ListShape.new(name: 'EngagementResourceAssociationSummaryList')
    EngagementScore = Shapes::StringShape.new(name: 'EngagementScore')
    EngagementSort = Shapes::StructureShape.new(name: 'EngagementSort')
    EngagementSortName = Shapes::StringShape.new(name: 'EngagementSortName')
    EngagementSummary = Shapes::StructureShape.new(name: 'EngagementSummary')
    EngagementSummaryList = Shapes::ListShape.new(name: 'EngagementSummaryList')
    EngagementTitle = Shapes::StringShape.new(name: 'EngagementTitle')
    ExpectedCustomerSpend = Shapes::StructureShape.new(name: 'ExpectedCustomerSpend')
    ExpectedCustomerSpendCurrencyCodeEnum = Shapes::StringShape.new(name: 'ExpectedCustomerSpendCurrencyCodeEnum')
    ExpectedCustomerSpendList = Shapes::ListShape.new(name: 'ExpectedCustomerSpendList')
    ExpectedCustomerSpendTargetCompanyString = Shapes::StringShape.new(name: 'ExpectedCustomerSpendTargetCompanyString')
    GetAwsOpportunitySummaryRequest = Shapes::StructureShape.new(name: 'GetAwsOpportunitySummaryRequest')
    GetAwsOpportunitySummaryResponse = Shapes::StructureShape.new(name: 'GetAwsOpportunitySummaryResponse')
    GetEngagementInvitationRequest = Shapes::StructureShape.new(name: 'GetEngagementInvitationRequest')
    GetEngagementInvitationResponse = Shapes::StructureShape.new(name: 'GetEngagementInvitationResponse')
    GetEngagementInvitationResponseSenderCompanyNameString = Shapes::StringShape.new(name: 'GetEngagementInvitationResponseSenderCompanyNameString')
    GetEngagementRequest = Shapes::StructureShape.new(name: 'GetEngagementRequest')
    GetEngagementResponse = Shapes::StructureShape.new(name: 'GetEngagementResponse')
    GetOpportunityRequest = Shapes::StructureShape.new(name: 'GetOpportunityRequest')
    GetOpportunityResponse = Shapes::StructureShape.new(name: 'GetOpportunityResponse')
    GetOpportunityResponsePartnerOpportunityIdentifierString = Shapes::StringShape.new(name: 'GetOpportunityResponsePartnerOpportunityIdentifierString')
    GetResourceSnapshotJobRequest = Shapes::StructureShape.new(name: 'GetResourceSnapshotJobRequest')
    GetResourceSnapshotJobResponse = Shapes::StructureShape.new(name: 'GetResourceSnapshotJobResponse')
    GetResourceSnapshotRequest = Shapes::StructureShape.new(name: 'GetResourceSnapshotRequest')
    GetResourceSnapshotResponse = Shapes::StructureShape.new(name: 'GetResourceSnapshotResponse')
    GetSellingSystemSettingsRequest = Shapes::StructureShape.new(name: 'GetSellingSystemSettingsRequest')
    GetSellingSystemSettingsResponse = Shapes::StructureShape.new(name: 'GetSellingSystemSettingsResponse')
    Industry = Shapes::StringShape.new(name: 'Industry')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Invitation = Shapes::StructureShape.new(name: 'Invitation')
    InvitationMessage = Shapes::StringShape.new(name: 'InvitationMessage')
    InvitationStatus = Shapes::StringShape.new(name: 'InvitationStatus')
    InvitationStatusList = Shapes::ListShape.new(name: 'InvitationStatusList')
    InvolvementTypeChangeReason = Shapes::StringShape.new(name: 'InvolvementTypeChangeReason')
    JobTitle = Shapes::StringShape.new(name: 'JobTitle')
    LastModifiedDate = Shapes::StructureShape.new(name: 'LastModifiedDate')
    LifeCycle = Shapes::StructureShape.new(name: 'LifeCycle')
    LifeCycleForView = Shapes::StructureShape.new(name: 'LifeCycleForView')
    LifeCycleForViewNextStepsString = Shapes::StringShape.new(name: 'LifeCycleForViewNextStepsString')
    LifeCycleNextStepsHistoryList = Shapes::ListShape.new(name: 'LifeCycleNextStepsHistoryList')
    LifeCycleNextStepsString = Shapes::StringShape.new(name: 'LifeCycleNextStepsString')
    LifeCycleSummary = Shapes::StructureShape.new(name: 'LifeCycleSummary')
    LifeCycleSummaryNextStepsString = Shapes::StringShape.new(name: 'LifeCycleSummaryNextStepsString')
    ListEngagementByAcceptingInvitationTaskSummaries = Shapes::ListShape.new(name: 'ListEngagementByAcceptingInvitationTaskSummaries')
    ListEngagementByAcceptingInvitationTaskSummary = Shapes::StructureShape.new(name: 'ListEngagementByAcceptingInvitationTaskSummary')
    ListEngagementByAcceptingInvitationTasksRequest = Shapes::StructureShape.new(name: 'ListEngagementByAcceptingInvitationTasksRequest')
    ListEngagementByAcceptingInvitationTasksRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEngagementByAcceptingInvitationTasksRequestMaxResultsInteger')
    ListEngagementByAcceptingInvitationTasksRequestNextTokenString = Shapes::StringShape.new(name: 'ListEngagementByAcceptingInvitationTasksRequestNextTokenString')
    ListEngagementByAcceptingInvitationTasksResponse = Shapes::StructureShape.new(name: 'ListEngagementByAcceptingInvitationTasksResponse')
    ListEngagementFromOpportunityTaskSummaries = Shapes::ListShape.new(name: 'ListEngagementFromOpportunityTaskSummaries')
    ListEngagementFromOpportunityTaskSummary = Shapes::StructureShape.new(name: 'ListEngagementFromOpportunityTaskSummary')
    ListEngagementFromOpportunityTasksRequest = Shapes::StructureShape.new(name: 'ListEngagementFromOpportunityTasksRequest')
    ListEngagementFromOpportunityTasksRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEngagementFromOpportunityTasksRequestMaxResultsInteger')
    ListEngagementFromOpportunityTasksRequestNextTokenString = Shapes::StringShape.new(name: 'ListEngagementFromOpportunityTasksRequestNextTokenString')
    ListEngagementFromOpportunityTasksResponse = Shapes::StructureShape.new(name: 'ListEngagementFromOpportunityTasksResponse')
    ListEngagementInvitationsRequest = Shapes::StructureShape.new(name: 'ListEngagementInvitationsRequest')
    ListEngagementInvitationsResponse = Shapes::StructureShape.new(name: 'ListEngagementInvitationsResponse')
    ListEngagementMembersRequest = Shapes::StructureShape.new(name: 'ListEngagementMembersRequest')
    ListEngagementMembersResponse = Shapes::StructureShape.new(name: 'ListEngagementMembersResponse')
    ListEngagementResourceAssociationsRequest = Shapes::StructureShape.new(name: 'ListEngagementResourceAssociationsRequest')
    ListEngagementResourceAssociationsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListEngagementResourceAssociationsRequestMaxResultsInteger')
    ListEngagementResourceAssociationsResponse = Shapes::StructureShape.new(name: 'ListEngagementResourceAssociationsResponse')
    ListEngagementsRequest = Shapes::StructureShape.new(name: 'ListEngagementsRequest')
    ListEngagementsResponse = Shapes::StructureShape.new(name: 'ListEngagementsResponse')
    ListOpportunitiesRequest = Shapes::StructureShape.new(name: 'ListOpportunitiesRequest')
    ListOpportunitiesRequestCustomerCompanyNameList = Shapes::ListShape.new(name: 'ListOpportunitiesRequestCustomerCompanyNameList')
    ListOpportunitiesRequestIdentifierList = Shapes::ListShape.new(name: 'ListOpportunitiesRequestIdentifierList')
    ListOpportunitiesRequestLifeCycleReviewStatusList = Shapes::ListShape.new(name: 'ListOpportunitiesRequestLifeCycleReviewStatusList')
    ListOpportunitiesRequestLifeCycleStageList = Shapes::ListShape.new(name: 'ListOpportunitiesRequestLifeCycleStageList')
    ListOpportunitiesResponse = Shapes::StructureShape.new(name: 'ListOpportunitiesResponse')
    ListResourceSnapshotJobsRequest = Shapes::StructureShape.new(name: 'ListResourceSnapshotJobsRequest')
    ListResourceSnapshotJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListResourceSnapshotJobsRequestMaxResultsInteger')
    ListResourceSnapshotJobsResponse = Shapes::StructureShape.new(name: 'ListResourceSnapshotJobsResponse')
    ListResourceSnapshotsRequest = Shapes::StructureShape.new(name: 'ListResourceSnapshotsRequest')
    ListResourceSnapshotsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListResourceSnapshotsRequestMaxResultsInteger')
    ListResourceSnapshotsResponse = Shapes::StructureShape.new(name: 'ListResourceSnapshotsResponse')
    ListSolutionsRequest = Shapes::StructureShape.new(name: 'ListSolutionsRequest')
    ListSolutionsRequestCategoryList = Shapes::ListShape.new(name: 'ListSolutionsRequestCategoryList')
    ListSolutionsRequestIdentifierList = Shapes::ListShape.new(name: 'ListSolutionsRequestIdentifierList')
    ListSolutionsRequestStatusList = Shapes::ListShape.new(name: 'ListSolutionsRequestStatusList')
    ListSolutionsResponse = Shapes::StructureShape.new(name: 'ListSolutionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTasksSortBase = Shapes::StructureShape.new(name: 'ListTasksSortBase')
    ListTasksSortName = Shapes::StringShape.new(name: 'ListTasksSortName')
    Marketing = Shapes::StructureShape.new(name: 'Marketing')
    MarketingSource = Shapes::StringShape.new(name: 'MarketingSource')
    MemberCompanyName = Shapes::StringShape.new(name: 'MemberCompanyName')
    MemberPageSize = Shapes::IntegerShape.new(name: 'MemberPageSize')
    MonetaryValue = Shapes::StructureShape.new(name: 'MonetaryValue')
    MonetaryValueAmountString = Shapes::StringShape.new(name: 'MonetaryValueAmountString')
    Name = Shapes::StringShape.new(name: 'Name')
    NationalSecurity = Shapes::StringShape.new(name: 'NationalSecurity')
    NextStepsHistory = Shapes::StructureShape.new(name: 'NextStepsHistory')
    OpportunityArn = Shapes::StringShape.new(name: 'OpportunityArn')
    OpportunityEngagementInvitationSort = Shapes::StructureShape.new(name: 'OpportunityEngagementInvitationSort')
    OpportunityEngagementInvitationSortName = Shapes::StringShape.new(name: 'OpportunityEngagementInvitationSortName')
    OpportunityIdentifier = Shapes::StringShape.new(name: 'OpportunityIdentifier')
    OpportunityIdentifiers = Shapes::ListShape.new(name: 'OpportunityIdentifiers')
    OpportunityInvitationPayload = Shapes::StructureShape.new(name: 'OpportunityInvitationPayload')
    OpportunityOrigin = Shapes::StringShape.new(name: 'OpportunityOrigin')
    OpportunitySort = Shapes::StructureShape.new(name: 'OpportunitySort')
    OpportunitySortName = Shapes::StringShape.new(name: 'OpportunitySortName')
    OpportunitySummaries = Shapes::ListShape.new(name: 'OpportunitySummaries')
    OpportunitySummary = Shapes::StructureShape.new(name: 'OpportunitySummary')
    OpportunitySummaryView = Shapes::StructureShape.new(name: 'OpportunitySummaryView')
    OpportunityType = Shapes::StringShape.new(name: 'OpportunityType')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    ParticipantType = Shapes::StringShape.new(name: 'ParticipantType')
    PartnerOpportunityTeamMembersList = Shapes::ListShape.new(name: 'PartnerOpportunityTeamMembersList')
    Payload = Shapes::UnionShape.new(name: 'Payload')
    PaymentFrequency = Shapes::StringShape.new(name: 'PaymentFrequency')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    PrimaryNeedFromAws = Shapes::StringShape.new(name: 'PrimaryNeedFromAws')
    PrimaryNeedsFromAws = Shapes::ListShape.new(name: 'PrimaryNeedsFromAws')
    ProfileNextStepsHistory = Shapes::StructureShape.new(name: 'ProfileNextStepsHistory')
    Project = Shapes::StructureShape.new(name: 'Project')
    ProjectAdditionalCommentsString = Shapes::StringShape.new(name: 'ProjectAdditionalCommentsString')
    ProjectCustomerBusinessProblemString = Shapes::StringShape.new(name: 'ProjectCustomerBusinessProblemString')
    ProjectDetails = Shapes::StructureShape.new(name: 'ProjectDetails')
    ProjectDetailsTitleString = Shapes::StringShape.new(name: 'ProjectDetailsTitleString')
    ProjectOtherCompetitorNamesString = Shapes::StringShape.new(name: 'ProjectOtherCompetitorNamesString')
    ProjectOtherSolutionDescriptionString = Shapes::StringShape.new(name: 'ProjectOtherSolutionDescriptionString')
    ProjectSummary = Shapes::StructureShape.new(name: 'ProjectSummary')
    ProjectTitleString = Shapes::StringShape.new(name: 'ProjectTitleString')
    ProjectView = Shapes::StructureShape.new(name: 'ProjectView')
    ProjectViewOtherSolutionDescriptionString = Shapes::StringShape.new(name: 'ProjectViewOtherSolutionDescriptionString')
    PutSellingSystemSettingsRequest = Shapes::StructureShape.new(name: 'PutSellingSystemSettingsRequest')
    PutSellingSystemSettingsResponse = Shapes::StructureShape.new(name: 'PutSellingSystemSettingsResponse')
    ReasonCode = Shapes::StringShape.new(name: 'ReasonCode')
    Receiver = Shapes::UnionShape.new(name: 'Receiver')
    ReceiverResponsibility = Shapes::StringShape.new(name: 'ReceiverResponsibility')
    ReceiverResponsibilityList = Shapes::ListShape.new(name: 'ReceiverResponsibilityList')
    RejectEngagementInvitationRequest = Shapes::StructureShape.new(name: 'RejectEngagementInvitationRequest')
    RejectionReasonString = Shapes::StringShape.new(name: 'RejectionReasonString')
    RelatedEntityIdentifiers = Shapes::StructureShape.new(name: 'RelatedEntityIdentifiers')
    RelatedEntityType = Shapes::StringShape.new(name: 'RelatedEntityType')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceIdentifier = Shapes::StringShape.new(name: 'ResourceIdentifier')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceSnapshotArn = Shapes::StringShape.new(name: 'ResourceSnapshotArn')
    ResourceSnapshotJobArn = Shapes::StringShape.new(name: 'ResourceSnapshotJobArn')
    ResourceSnapshotJobIdentifier = Shapes::StringShape.new(name: 'ResourceSnapshotJobIdentifier')
    ResourceSnapshotJobRoleArn = Shapes::StringShape.new(name: 'ResourceSnapshotJobRoleArn')
    ResourceSnapshotJobRoleIdentifier = Shapes::StringShape.new(name: 'ResourceSnapshotJobRoleIdentifier')
    ResourceSnapshotJobStatus = Shapes::StringShape.new(name: 'ResourceSnapshotJobStatus')
    ResourceSnapshotJobSummary = Shapes::StructureShape.new(name: 'ResourceSnapshotJobSummary')
    ResourceSnapshotJobSummaryList = Shapes::ListShape.new(name: 'ResourceSnapshotJobSummaryList')
    ResourceSnapshotPayload = Shapes::UnionShape.new(name: 'ResourceSnapshotPayload')
    ResourceSnapshotRevision = Shapes::IntegerShape.new(name: 'ResourceSnapshotRevision')
    ResourceSnapshotSummary = Shapes::StructureShape.new(name: 'ResourceSnapshotSummary')
    ResourceSnapshotSummaryList = Shapes::ListShape.new(name: 'ResourceSnapshotSummaryList')
    ResourceTemplateName = Shapes::StringShape.new(name: 'ResourceTemplateName')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RevenueModel = Shapes::StringShape.new(name: 'RevenueModel')
    ReviewStatus = Shapes::StringShape.new(name: 'ReviewStatus')
    SalesActivities = Shapes::ListShape.new(name: 'SalesActivities')
    SalesActivity = Shapes::StringShape.new(name: 'SalesActivity')
    SalesInvolvementType = Shapes::StringShape.new(name: 'SalesInvolvementType')
    SenderContact = Shapes::StructureShape.new(name: 'SenderContact')
    SenderContactEmail = Shapes::StringShape.new(name: 'SenderContactEmail')
    SenderContactList = Shapes::ListShape.new(name: 'SenderContactList')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SoftwareRevenue = Shapes::StructureShape.new(name: 'SoftwareRevenue')
    SolutionArn = Shapes::StringShape.new(name: 'SolutionArn')
    SolutionBase = Shapes::StructureShape.new(name: 'SolutionBase')
    SolutionIdentifier = Shapes::StringShape.new(name: 'SolutionIdentifier')
    SolutionIdentifiers = Shapes::ListShape.new(name: 'SolutionIdentifiers')
    SolutionList = Shapes::ListShape.new(name: 'SolutionList')
    SolutionSort = Shapes::StructureShape.new(name: 'SolutionSort')
    SolutionSortName = Shapes::StringShape.new(name: 'SolutionSortName')
    SolutionStatus = Shapes::StringShape.new(name: 'SolutionStatus')
    SortBy = Shapes::StringShape.new(name: 'SortBy')
    SortObject = Shapes::StructureShape.new(name: 'SortObject')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    Stage = Shapes::StringShape.new(name: 'Stage')
    StartEngagementByAcceptingInvitationTaskRequest = Shapes::StructureShape.new(name: 'StartEngagementByAcceptingInvitationTaskRequest')
    StartEngagementByAcceptingInvitationTaskRequestClientTokenString = Shapes::StringShape.new(name: 'StartEngagementByAcceptingInvitationTaskRequestClientTokenString')
    StartEngagementByAcceptingInvitationTaskResponse = Shapes::StructureShape.new(name: 'StartEngagementByAcceptingInvitationTaskResponse')
    StartEngagementFromOpportunityTaskRequest = Shapes::StructureShape.new(name: 'StartEngagementFromOpportunityTaskRequest')
    StartEngagementFromOpportunityTaskRequestClientTokenString = Shapes::StringShape.new(name: 'StartEngagementFromOpportunityTaskRequestClientTokenString')
    StartEngagementFromOpportunityTaskResponse = Shapes::StructureShape.new(name: 'StartEngagementFromOpportunityTaskResponse')
    StartResourceSnapshotJobRequest = Shapes::StructureShape.new(name: 'StartResourceSnapshotJobRequest')
    StopResourceSnapshotJobRequest = Shapes::StructureShape.new(name: 'StopResourceSnapshotJobRequest')
    String = Shapes::StringShape.new(name: 'String')
    SubmitOpportunityRequest = Shapes::StructureShape.new(name: 'SubmitOpportunityRequest')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaggableResourceArn = Shapes::StringShape.new(name: 'TaggableResourceArn')
    TaskArn = Shapes::StringShape.new(name: 'TaskArn')
    TaskArnOrIdentifier = Shapes::StringShape.new(name: 'TaskArnOrIdentifier')
    TaskIdentifier = Shapes::StringShape.new(name: 'TaskIdentifier')
    TaskIdentifiers = Shapes::ListShape.new(name: 'TaskIdentifiers')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    TaskStatuses = Shapes::ListShape.new(name: 'TaskStatuses')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateOpportunityRequest = Shapes::StructureShape.new(name: 'UpdateOpportunityRequest')
    UpdateOpportunityRequestPartnerOpportunityIdentifierString = Shapes::StringShape.new(name: 'UpdateOpportunityRequestPartnerOpportunityIdentifierString')
    UpdateOpportunityResponse = Shapes::StructureShape.new(name: 'UpdateOpportunityResponse')
    UseCases = Shapes::ListShape.new(name: 'UseCases')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionError = Shapes::StructureShape.new(name: 'ValidationExceptionError')
    ValidationExceptionErrorCode = Shapes::StringShape.new(name: 'ValidationExceptionErrorCode')
    ValidationExceptionErrorList = Shapes::ListShape.new(name: 'ValidationExceptionErrorList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Visibility = Shapes::StringShape.new(name: 'Visibility')
    WebsiteUrl = Shapes::StringShape.new(name: 'WebsiteUrl')

    AcceptEngagementInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    AcceptEngagementInvitationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier, required: true, location_name: "Identifier"))
    AcceptEngagementInvitationRequest.struct_class = Types::AcceptEngagementInvitationRequest

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Account.add_member(:industry, Shapes::ShapeRef.new(shape: Industry, location_name: "Industry"))
    Account.add_member(:other_industry, Shapes::ShapeRef.new(shape: AccountOtherIndustryString, location_name: "OtherIndustry"))
    Account.add_member(:company_name, Shapes::ShapeRef.new(shape: AccountCompanyNameString, required: true, location_name: "CompanyName"))
    Account.add_member(:website_url, Shapes::ShapeRef.new(shape: WebsiteUrl, location_name: "WebsiteUrl"))
    Account.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "AwsAccountId"))
    Account.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    Account.add_member(:duns, Shapes::ShapeRef.new(shape: DunsNumber, location_name: "Duns"))
    Account.struct_class = Types::Account

    AccountReceiver.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    AccountReceiver.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccount, required: true, location_name: "AwsAccountId"))
    AccountReceiver.struct_class = Types::AccountReceiver

    AccountSummary.add_member(:industry, Shapes::ShapeRef.new(shape: Industry, location_name: "Industry"))
    AccountSummary.add_member(:other_industry, Shapes::ShapeRef.new(shape: AccountSummaryOtherIndustryString, location_name: "OtherIndustry"))
    AccountSummary.add_member(:company_name, Shapes::ShapeRef.new(shape: AccountSummaryCompanyNameString, required: true, location_name: "CompanyName"))
    AccountSummary.add_member(:website_url, Shapes::ShapeRef.new(shape: WebsiteUrl, location_name: "WebsiteUrl"))
    AccountSummary.add_member(:address, Shapes::ShapeRef.new(shape: AddressSummary, location_name: "Address"))
    AccountSummary.struct_class = Types::AccountSummary

    Address.add_member(:city, Shapes::ShapeRef.new(shape: AddressCityString, location_name: "City"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: AddressPostalCodeString, location_name: "PostalCode"))
    Address.add_member(:state_or_region, Shapes::ShapeRef.new(shape: AddressPart, location_name: "StateOrRegion"))
    Address.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, location_name: "CountryCode"))
    Address.add_member(:street_address, Shapes::ShapeRef.new(shape: AddressStreetAddressString, location_name: "StreetAddress"))
    Address.struct_class = Types::Address

    AddressSummary.add_member(:city, Shapes::ShapeRef.new(shape: AddressSummaryCityString, location_name: "City"))
    AddressSummary.add_member(:postal_code, Shapes::ShapeRef.new(shape: AddressSummaryPostalCodeString, location_name: "PostalCode"))
    AddressSummary.add_member(:state_or_region, Shapes::ShapeRef.new(shape: AddressPart, location_name: "StateOrRegion"))
    AddressSummary.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, location_name: "CountryCode"))
    AddressSummary.struct_class = Types::AddressSummary

    ApnPrograms.member = Shapes::ShapeRef.new(shape: String)

    AssignOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    AssignOpportunityRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Identifier"))
    AssignOpportunityRequest.add_member(:assignee, Shapes::ShapeRef.new(shape: AssigneeContact, required: true, location_name: "Assignee"))
    AssignOpportunityRequest.struct_class = Types::AssignOpportunityRequest

    AssigneeContact.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "Email"))
    AssigneeContact.add_member(:first_name, Shapes::ShapeRef.new(shape: AssigneeContactFirstNameString, required: true, location_name: "FirstName"))
    AssigneeContact.add_member(:last_name, Shapes::ShapeRef.new(shape: AssigneeContactLastNameString, required: true, location_name: "LastName"))
    AssigneeContact.add_member(:business_title, Shapes::ShapeRef.new(shape: JobTitle, required: true, location_name: "BusinessTitle"))
    AssigneeContact.struct_class = Types::AssigneeContact

    AssociateOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    AssociateOpportunityRequest.add_member(:opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "OpportunityIdentifier"))
    AssociateOpportunityRequest.add_member(:related_entity_type, Shapes::ShapeRef.new(shape: RelatedEntityType, required: true, location_name: "RelatedEntityType"))
    AssociateOpportunityRequest.add_member(:related_entity_identifier, Shapes::ShapeRef.new(shape: AssociateOpportunityRequestRelatedEntityIdentifierString, required: true, location_name: "RelatedEntityIdentifier"))
    AssociateOpportunityRequest.struct_class = Types::AssociateOpportunityRequest

    AwsAccountIdOrAliasList.member = Shapes::ShapeRef.new(shape: AwsAccount)

    AwsAccountList.member = Shapes::ShapeRef.new(shape: AwsAccount)

    AwsMarketplaceOfferIdentifiers.member = Shapes::ShapeRef.new(shape: AwsMarketplaceOfferIdentifier)

    AwsOpportunityCustomer.add_member(:contacts, Shapes::ShapeRef.new(shape: CustomerContactsList, location_name: "Contacts"))
    AwsOpportunityCustomer.struct_class = Types::AwsOpportunityCustomer

    AwsOpportunityInsights.add_member(:next_best_actions, Shapes::ShapeRef.new(shape: String, location_name: "NextBestActions"))
    AwsOpportunityInsights.add_member(:engagement_score, Shapes::ShapeRef.new(shape: EngagementScore, location_name: "EngagementScore"))
    AwsOpportunityInsights.struct_class = Types::AwsOpportunityInsights

    AwsOpportunityLifeCycle.add_member(:target_close_date, Shapes::ShapeRef.new(shape: Date, location_name: "TargetCloseDate"))
    AwsOpportunityLifeCycle.add_member(:closed_lost_reason, Shapes::ShapeRef.new(shape: AwsClosedLostReason, location_name: "ClosedLostReason"))
    AwsOpportunityLifeCycle.add_member(:stage, Shapes::ShapeRef.new(shape: AwsOpportunityStage, location_name: "Stage"))
    AwsOpportunityLifeCycle.add_member(:next_steps, Shapes::ShapeRef.new(shape: AwsOpportunityLifeCycleNextStepsString, location_name: "NextSteps"))
    AwsOpportunityLifeCycle.add_member(:next_steps_history, Shapes::ShapeRef.new(shape: AwsOpportunityLifeCycleNextStepsHistoryList, location_name: "NextStepsHistory"))
    AwsOpportunityLifeCycle.struct_class = Types::AwsOpportunityLifeCycle

    AwsOpportunityLifeCycleNextStepsHistoryList.member = Shapes::ShapeRef.new(shape: ProfileNextStepsHistory)

    AwsOpportunityProject.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, location_name: "ExpectedCustomerSpend"))
    AwsOpportunityProject.struct_class = Types::AwsOpportunityProject

    AwsOpportunityRelatedEntities.add_member(:aws_products, Shapes::ShapeRef.new(shape: AwsProductIdentifiers, location_name: "AwsProducts"))
    AwsOpportunityRelatedEntities.add_member(:solutions, Shapes::ShapeRef.new(shape: SolutionIdentifiers, location_name: "Solutions"))
    AwsOpportunityRelatedEntities.struct_class = Types::AwsOpportunityRelatedEntities

    AwsOpportunityTeamMembersList.member = Shapes::ShapeRef.new(shape: AwsTeamMember)

    AwsProductIdentifiers.member = Shapes::ShapeRef.new(shape: AwsProductIdentifier)

    AwsSubmission.add_member(:involvement_type, Shapes::ShapeRef.new(shape: SalesInvolvementType, required: true, location_name: "InvolvementType"))
    AwsSubmission.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    AwsSubmission.struct_class = Types::AwsSubmission

    AwsTeamMember.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    AwsTeamMember.add_member(:first_name, Shapes::ShapeRef.new(shape: AwsTeamMemberFirstNameString, location_name: "FirstName"))
    AwsTeamMember.add_member(:last_name, Shapes::ShapeRef.new(shape: AwsTeamMemberLastNameString, location_name: "LastName"))
    AwsTeamMember.add_member(:business_title, Shapes::ShapeRef.new(shape: AwsMemberBusinessTitle, location_name: "BusinessTitle"))
    AwsTeamMember.struct_class = Types::AwsTeamMember

    Channels.member = Shapes::ShapeRef.new(shape: Channel)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    Contact.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    Contact.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactFirstNameString, location_name: "FirstName"))
    Contact.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactLastNameString, location_name: "LastName"))
    Contact.add_member(:business_title, Shapes::ShapeRef.new(shape: JobTitle, location_name: "BusinessTitle"))
    Contact.add_member(:phone, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "Phone"))
    Contact.struct_class = Types::Contact

    CreateEngagementInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CreateEngagementInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateEngagementInvitationRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifier, required: true, location_name: "EngagementIdentifier"))
    CreateEngagementInvitationRequest.add_member(:invitation, Shapes::ShapeRef.new(shape: Invitation, required: true, location_name: "Invitation"))
    CreateEngagementInvitationRequest.struct_class = Types::CreateEngagementInvitationRequest

    CreateEngagementInvitationResponse.add_member(:id, Shapes::ShapeRef.new(shape: EngagementInvitationIdentifier, required: true, location_name: "Id"))
    CreateEngagementInvitationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EngagementInvitationArn, required: true, location_name: "Arn"))
    CreateEngagementInvitationResponse.struct_class = Types::CreateEngagementInvitationResponse

    CreateEngagementRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CreateEngagementRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateEngagementRequestClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateEngagementRequest.add_member(:title, Shapes::ShapeRef.new(shape: EngagementTitle, required: true, location_name: "Title"))
    CreateEngagementRequest.add_member(:description, Shapes::ShapeRef.new(shape: EngagementDescription, required: true, location_name: "Description"))
    CreateEngagementRequest.add_member(:contexts, Shapes::ShapeRef.new(shape: EngagementContexts, location_name: "Contexts"))
    CreateEngagementRequest.struct_class = Types::CreateEngagementRequest

    CreateEngagementResponse.add_member(:id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "Id"))
    CreateEngagementResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EngagementArn, location_name: "Arn"))
    CreateEngagementResponse.struct_class = Types::CreateEngagementResponse

    CreateOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CreateOpportunityRequest.add_member(:primary_needs_from_aws, Shapes::ShapeRef.new(shape: PrimaryNeedsFromAws, location_name: "PrimaryNeedsFromAws"))
    CreateOpportunityRequest.add_member(:national_security, Shapes::ShapeRef.new(shape: NationalSecurity, location_name: "NationalSecurity"))
    CreateOpportunityRequest.add_member(:partner_opportunity_identifier, Shapes::ShapeRef.new(shape: CreateOpportunityRequestPartnerOpportunityIdentifierString, location_name: "PartnerOpportunityIdentifier"))
    CreateOpportunityRequest.add_member(:customer, Shapes::ShapeRef.new(shape: Customer, location_name: "Customer"))
    CreateOpportunityRequest.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "Project"))
    CreateOpportunityRequest.add_member(:opportunity_type, Shapes::ShapeRef.new(shape: OpportunityType, location_name: "OpportunityType"))
    CreateOpportunityRequest.add_member(:marketing, Shapes::ShapeRef.new(shape: Marketing, location_name: "Marketing"))
    CreateOpportunityRequest.add_member(:software_revenue, Shapes::ShapeRef.new(shape: SoftwareRevenue, location_name: "SoftwareRevenue"))
    CreateOpportunityRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateOpportunityRequestClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateOpportunityRequest.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "LifeCycle"))
    CreateOpportunityRequest.add_member(:origin, Shapes::ShapeRef.new(shape: OpportunityOrigin, location_name: "Origin"))
    CreateOpportunityRequest.add_member(:opportunity_team, Shapes::ShapeRef.new(shape: PartnerOpportunityTeamMembersList, location_name: "OpportunityTeam"))
    CreateOpportunityRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateOpportunityRequest.struct_class = Types::CreateOpportunityRequest

    CreateOpportunityResponse.add_member(:id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Id"))
    CreateOpportunityResponse.add_member(:partner_opportunity_identifier, Shapes::ShapeRef.new(shape: String, location_name: "PartnerOpportunityIdentifier"))
    CreateOpportunityResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    CreateOpportunityResponse.struct_class = Types::CreateOpportunityResponse

    CreateResourceSnapshotJobRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CreateResourceSnapshotJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateResourceSnapshotJobRequestClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateResourceSnapshotJobRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifier, required: true, location_name: "EngagementIdentifier"))
    CreateResourceSnapshotJobRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    CreateResourceSnapshotJobRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "ResourceIdentifier"))
    CreateResourceSnapshotJobRequest.add_member(:resource_snapshot_template_identifier, Shapes::ShapeRef.new(shape: ResourceTemplateName, required: true, location_name: "ResourceSnapshotTemplateIdentifier"))
    CreateResourceSnapshotJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateResourceSnapshotJobRequest.struct_class = Types::CreateResourceSnapshotJobRequest

    CreateResourceSnapshotJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, location_name: "Id"))
    CreateResourceSnapshotJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceSnapshotJobArn, location_name: "Arn"))
    CreateResourceSnapshotJobResponse.struct_class = Types::CreateResourceSnapshotJobResponse

    CreateResourceSnapshotRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CreateResourceSnapshotRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifier, required: true, location_name: "EngagementIdentifier"))
    CreateResourceSnapshotRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    CreateResourceSnapshotRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "ResourceIdentifier"))
    CreateResourceSnapshotRequest.add_member(:resource_snapshot_template_identifier, Shapes::ShapeRef.new(shape: ResourceTemplateName, required: true, location_name: "ResourceSnapshotTemplateIdentifier"))
    CreateResourceSnapshotRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateResourceSnapshotRequestClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateResourceSnapshotRequest.struct_class = Types::CreateResourceSnapshotRequest

    CreateResourceSnapshotResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    CreateResourceSnapshotResponse.add_member(:revision, Shapes::ShapeRef.new(shape: ResourceSnapshotRevision, location_name: "Revision"))
    CreateResourceSnapshotResponse.struct_class = Types::CreateResourceSnapshotResponse

    Customer.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    Customer.add_member(:contacts, Shapes::ShapeRef.new(shape: CustomerContactsList, location_name: "Contacts"))
    Customer.struct_class = Types::Customer

    CustomerContactsList.member = Shapes::ShapeRef.new(shape: Contact)

    CustomerProjectsContext.add_member(:customer, Shapes::ShapeRef.new(shape: EngagementCustomer, location_name: "Customer"))
    CustomerProjectsContext.add_member(:project, Shapes::ShapeRef.new(shape: EngagementCustomerProjectDetails, location_name: "Project"))
    CustomerProjectsContext.struct_class = Types::CustomerProjectsContext

    CustomerSummary.add_member(:account, Shapes::ShapeRef.new(shape: AccountSummary, location_name: "Account"))
    CustomerSummary.struct_class = Types::CustomerSummary

    DeleteResourceSnapshotJobRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    DeleteResourceSnapshotJobRequest.add_member(:resource_snapshot_job_identifier, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, required: true, location_name: "ResourceSnapshotJobIdentifier"))
    DeleteResourceSnapshotJobRequest.struct_class = Types::DeleteResourceSnapshotJobRequest

    DeliveryModels.member = Shapes::ShapeRef.new(shape: DeliveryModel)

    DisassociateOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    DisassociateOpportunityRequest.add_member(:opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "OpportunityIdentifier"))
    DisassociateOpportunityRequest.add_member(:related_entity_type, Shapes::ShapeRef.new(shape: RelatedEntityType, required: true, location_name: "RelatedEntityType"))
    DisassociateOpportunityRequest.add_member(:related_entity_identifier, Shapes::ShapeRef.new(shape: DisassociateOpportunityRequestRelatedEntityIdentifierString, required: true, location_name: "RelatedEntityIdentifier"))
    DisassociateOpportunityRequest.struct_class = Types::DisassociateOpportunityRequest

    EngagementContextDetails.add_member(:type, Shapes::ShapeRef.new(shape: EngagementContextType, required: true, location_name: "Type"))
    EngagementContextDetails.add_member(:payload, Shapes::ShapeRef.new(shape: EngagementContextPayload, location_name: "Payload"))
    EngagementContextDetails.struct_class = Types::EngagementContextDetails

    EngagementContextPayload.add_member(:customer_project, Shapes::ShapeRef.new(shape: CustomerProjectsContext, location_name: "CustomerProject"))
    EngagementContextPayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EngagementContextPayload.add_member_subclass(:customer_project, Types::EngagementContextPayload::CustomerProject)
    EngagementContextPayload.add_member_subclass(:unknown, Types::EngagementContextPayload::Unknown)
    EngagementContextPayload.struct_class = Types::EngagementContextPayload

    EngagementContexts.member = Shapes::ShapeRef.new(shape: EngagementContextDetails)

    EngagementCustomer.add_member(:industry, Shapes::ShapeRef.new(shape: Industry, required: true, location_name: "Industry"))
    EngagementCustomer.add_member(:company_name, Shapes::ShapeRef.new(shape: CompanyName, required: true, location_name: "CompanyName"))
    EngagementCustomer.add_member(:website_url, Shapes::ShapeRef.new(shape: CompanyWebsiteUrl, required: true, location_name: "WebsiteUrl"))
    EngagementCustomer.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, required: true, location_name: "CountryCode"))
    EngagementCustomer.struct_class = Types::EngagementCustomer

    EngagementCustomerProjectDetails.add_member(:title, Shapes::ShapeRef.new(shape: EngagementCustomerProjectTitle, required: true, location_name: "Title"))
    EngagementCustomerProjectDetails.add_member(:business_problem, Shapes::ShapeRef.new(shape: EngagementCustomerBusinessProblem, required: true, location_name: "BusinessProblem"))
    EngagementCustomerProjectDetails.add_member(:target_completion_date, Shapes::ShapeRef.new(shape: EngagementCustomerProjectDetailsTargetCompletionDateString, required: true, location_name: "TargetCompletionDate"))
    EngagementCustomerProjectDetails.struct_class = Types::EngagementCustomerProjectDetails

    EngagementIdentifiers.member = Shapes::ShapeRef.new(shape: EngagementArnOrIdentifier)

    EngagementInvitationIdentifiers.member = Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier)

    EngagementInvitationSummaries.member = Shapes::ShapeRef.new(shape: EngagementInvitationSummary)

    EngagementInvitationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    EngagementInvitationSummary.add_member(:payload_type, Shapes::ShapeRef.new(shape: EngagementInvitationPayloadType, location_name: "PayloadType"))
    EngagementInvitationSummary.add_member(:id, Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier, required: true, location_name: "Id"))
    EngagementInvitationSummary.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    EngagementInvitationSummary.add_member(:engagement_title, Shapes::ShapeRef.new(shape: EngagementTitle, location_name: "EngagementTitle"))
    EngagementInvitationSummary.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatus, location_name: "Status"))
    EngagementInvitationSummary.add_member(:invitation_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "InvitationDate"))
    EngagementInvitationSummary.add_member(:expiration_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpirationDate"))
    EngagementInvitationSummary.add_member(:sender_aws_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "SenderAwsAccountId"))
    EngagementInvitationSummary.add_member(:sender_company_name, Shapes::ShapeRef.new(shape: EngagementInvitationSummarySenderCompanyNameString, location_name: "SenderCompanyName"))
    EngagementInvitationSummary.add_member(:receiver, Shapes::ShapeRef.new(shape: Receiver, location_name: "Receiver"))
    EngagementInvitationSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    EngagementInvitationSummary.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, location_name: "ParticipantType"))
    EngagementInvitationSummary.struct_class = Types::EngagementInvitationSummary

    EngagementInvitationsPayloadType.member = Shapes::ShapeRef.new(shape: EngagementInvitationPayloadType)

    EngagementMember.add_member(:company_name, Shapes::ShapeRef.new(shape: MemberCompanyName, location_name: "CompanyName"))
    EngagementMember.add_member(:website_url, Shapes::ShapeRef.new(shape: String, location_name: "WebsiteUrl"))
    EngagementMember.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "AccountId"))
    EngagementMember.struct_class = Types::EngagementMember

    EngagementMemberSummaries.member = Shapes::ShapeRef.new(shape: EngagementMemberSummary)

    EngagementMemberSummary.add_member(:company_name, Shapes::ShapeRef.new(shape: MemberCompanyName, location_name: "CompanyName"))
    EngagementMemberSummary.add_member(:website_url, Shapes::ShapeRef.new(shape: String, location_name: "WebsiteUrl"))
    EngagementMemberSummary.struct_class = Types::EngagementMemberSummary

    EngagementMembers.member = Shapes::ShapeRef.new(shape: EngagementMember)

    EngagementResourceAssociationSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    EngagementResourceAssociationSummary.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    EngagementResourceAssociationSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    EngagementResourceAssociationSummary.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceId"))
    EngagementResourceAssociationSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "CreatedBy"))
    EngagementResourceAssociationSummary.struct_class = Types::EngagementResourceAssociationSummary

    EngagementResourceAssociationSummaryList.member = Shapes::ShapeRef.new(shape: EngagementResourceAssociationSummary)

    EngagementSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    EngagementSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: EngagementSortName, required: true, location_name: "SortBy"))
    EngagementSort.struct_class = Types::EngagementSort

    EngagementSummary.add_member(:arn, Shapes::ShapeRef.new(shape: EngagementArn, location_name: "Arn"))
    EngagementSummary.add_member(:id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "Id"))
    EngagementSummary.add_member(:title, Shapes::ShapeRef.new(shape: EngagementTitle, location_name: "Title"))
    EngagementSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    EngagementSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "CreatedBy"))
    EngagementSummary.add_member(:member_count, Shapes::ShapeRef.new(shape: Integer, location_name: "MemberCount"))
    EngagementSummary.struct_class = Types::EngagementSummary

    EngagementSummaryList.member = Shapes::ShapeRef.new(shape: EngagementSummary)

    ExpectedCustomerSpend.add_member(:amount, Shapes::ShapeRef.new(shape: Amount, required: true, location_name: "Amount"))
    ExpectedCustomerSpend.add_member(:currency_code, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendCurrencyCodeEnum, required: true, location_name: "CurrencyCode"))
    ExpectedCustomerSpend.add_member(:frequency, Shapes::ShapeRef.new(shape: PaymentFrequency, required: true, location_name: "Frequency"))
    ExpectedCustomerSpend.add_member(:target_company, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendTargetCompanyString, required: true, location_name: "TargetCompany"))
    ExpectedCustomerSpend.add_member(:estimation_url, Shapes::ShapeRef.new(shape: WebsiteUrl, location_name: "EstimationUrl"))
    ExpectedCustomerSpend.struct_class = Types::ExpectedCustomerSpend

    ExpectedCustomerSpendList.member = Shapes::ShapeRef.new(shape: ExpectedCustomerSpend)

    GetAwsOpportunitySummaryRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetAwsOpportunitySummaryRequest.add_member(:related_opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "RelatedOpportunityIdentifier"))
    GetAwsOpportunitySummaryRequest.struct_class = Types::GetAwsOpportunitySummaryRequest

    GetAwsOpportunitySummaryResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetAwsOpportunitySummaryResponse.add_member(:related_opportunity_id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "RelatedOpportunityId"))
    GetAwsOpportunitySummaryResponse.add_member(:origin, Shapes::ShapeRef.new(shape: OpportunityOrigin, location_name: "Origin"))
    GetAwsOpportunitySummaryResponse.add_member(:involvement_type, Shapes::ShapeRef.new(shape: SalesInvolvementType, location_name: "InvolvementType"))
    GetAwsOpportunitySummaryResponse.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    GetAwsOpportunitySummaryResponse.add_member(:life_cycle, Shapes::ShapeRef.new(shape: AwsOpportunityLifeCycle, location_name: "LifeCycle"))
    GetAwsOpportunitySummaryResponse.add_member(:opportunity_team, Shapes::ShapeRef.new(shape: AwsOpportunityTeamMembersList, location_name: "OpportunityTeam"))
    GetAwsOpportunitySummaryResponse.add_member(:insights, Shapes::ShapeRef.new(shape: AwsOpportunityInsights, location_name: "Insights"))
    GetAwsOpportunitySummaryResponse.add_member(:involvement_type_change_reason, Shapes::ShapeRef.new(shape: InvolvementTypeChangeReason, location_name: "InvolvementTypeChangeReason"))
    GetAwsOpportunitySummaryResponse.add_member(:related_entity_ids, Shapes::ShapeRef.new(shape: AwsOpportunityRelatedEntities, location_name: "RelatedEntityIds"))
    GetAwsOpportunitySummaryResponse.add_member(:customer, Shapes::ShapeRef.new(shape: AwsOpportunityCustomer, location_name: "Customer"))
    GetAwsOpportunitySummaryResponse.add_member(:project, Shapes::ShapeRef.new(shape: AwsOpportunityProject, location_name: "Project"))
    GetAwsOpportunitySummaryResponse.struct_class = Types::GetAwsOpportunitySummaryResponse

    GetEngagementInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetEngagementInvitationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier, required: true, location_name: "Identifier"))
    GetEngagementInvitationRequest.struct_class = Types::GetEngagementInvitationRequest

    GetEngagementInvitationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    GetEngagementInvitationResponse.add_member(:payload_type, Shapes::ShapeRef.new(shape: EngagementInvitationPayloadType, location_name: "PayloadType"))
    GetEngagementInvitationResponse.add_member(:id, Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier, required: true, location_name: "Id"))
    GetEngagementInvitationResponse.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    GetEngagementInvitationResponse.add_member(:engagement_title, Shapes::ShapeRef.new(shape: EngagementTitle, location_name: "EngagementTitle"))
    GetEngagementInvitationResponse.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatus, location_name: "Status"))
    GetEngagementInvitationResponse.add_member(:invitation_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "InvitationDate"))
    GetEngagementInvitationResponse.add_member(:expiration_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpirationDate"))
    GetEngagementInvitationResponse.add_member(:sender_aws_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "SenderAwsAccountId"))
    GetEngagementInvitationResponse.add_member(:sender_company_name, Shapes::ShapeRef.new(shape: GetEngagementInvitationResponseSenderCompanyNameString, location_name: "SenderCompanyName"))
    GetEngagementInvitationResponse.add_member(:receiver, Shapes::ShapeRef.new(shape: Receiver, location_name: "Receiver"))
    GetEngagementInvitationResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetEngagementInvitationResponse.add_member(:rejection_reason, Shapes::ShapeRef.new(shape: RejectionReasonString, location_name: "RejectionReason"))
    GetEngagementInvitationResponse.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "Payload"))
    GetEngagementInvitationResponse.add_member(:invitation_message, Shapes::ShapeRef.new(shape: InvitationMessage, location_name: "InvitationMessage"))
    GetEngagementInvitationResponse.add_member(:engagement_description, Shapes::ShapeRef.new(shape: EngagementDescription, location_name: "EngagementDescription"))
    GetEngagementInvitationResponse.add_member(:existing_members, Shapes::ShapeRef.new(shape: EngagementMemberSummaries, location_name: "ExistingMembers"))
    GetEngagementInvitationResponse.struct_class = Types::GetEngagementInvitationResponse

    GetEngagementRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetEngagementRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: EngagementArnOrIdentifier, required: true, location_name: "Identifier"))
    GetEngagementRequest.struct_class = Types::GetEngagementRequest

    GetEngagementResponse.add_member(:id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "Id"))
    GetEngagementResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EngagementArn, location_name: "Arn"))
    GetEngagementResponse.add_member(:title, Shapes::ShapeRef.new(shape: EngagementTitle, location_name: "Title"))
    GetEngagementResponse.add_member(:description, Shapes::ShapeRef.new(shape: EngagementDescription, location_name: "Description"))
    GetEngagementResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    GetEngagementResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "CreatedBy"))
    GetEngagementResponse.add_member(:member_count, Shapes::ShapeRef.new(shape: Integer, location_name: "MemberCount"))
    GetEngagementResponse.add_member(:contexts, Shapes::ShapeRef.new(shape: EngagementContexts, location_name: "Contexts"))
    GetEngagementResponse.struct_class = Types::GetEngagementResponse

    GetOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetOpportunityRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Identifier"))
    GetOpportunityRequest.struct_class = Types::GetOpportunityRequest

    GetOpportunityResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetOpportunityResponse.add_member(:primary_needs_from_aws, Shapes::ShapeRef.new(shape: PrimaryNeedsFromAws, location_name: "PrimaryNeedsFromAws"))
    GetOpportunityResponse.add_member(:national_security, Shapes::ShapeRef.new(shape: NationalSecurity, location_name: "NationalSecurity"))
    GetOpportunityResponse.add_member(:partner_opportunity_identifier, Shapes::ShapeRef.new(shape: GetOpportunityResponsePartnerOpportunityIdentifierString, location_name: "PartnerOpportunityIdentifier"))
    GetOpportunityResponse.add_member(:customer, Shapes::ShapeRef.new(shape: Customer, location_name: "Customer"))
    GetOpportunityResponse.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "Project"))
    GetOpportunityResponse.add_member(:opportunity_type, Shapes::ShapeRef.new(shape: OpportunityType, location_name: "OpportunityType"))
    GetOpportunityResponse.add_member(:marketing, Shapes::ShapeRef.new(shape: Marketing, location_name: "Marketing"))
    GetOpportunityResponse.add_member(:software_revenue, Shapes::ShapeRef.new(shape: SoftwareRevenue, location_name: "SoftwareRevenue"))
    GetOpportunityResponse.add_member(:id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Id"))
    GetOpportunityResponse.add_member(:arn, Shapes::ShapeRef.new(shape: OpportunityArn, location_name: "Arn"))
    GetOpportunityResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastModifiedDate"))
    GetOpportunityResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedDate"))
    GetOpportunityResponse.add_member(:related_entity_identifiers, Shapes::ShapeRef.new(shape: RelatedEntityIdentifiers, required: true, location_name: "RelatedEntityIdentifiers"))
    GetOpportunityResponse.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "LifeCycle"))
    GetOpportunityResponse.add_member(:opportunity_team, Shapes::ShapeRef.new(shape: PartnerOpportunityTeamMembersList, location_name: "OpportunityTeam"))
    GetOpportunityResponse.struct_class = Types::GetOpportunityResponse

    GetResourceSnapshotJobRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetResourceSnapshotJobRequest.add_member(:resource_snapshot_job_identifier, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, required: true, location_name: "ResourceSnapshotJobIdentifier"))
    GetResourceSnapshotJobRequest.struct_class = Types::GetResourceSnapshotJobRequest

    GetResourceSnapshotJobResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetResourceSnapshotJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, location_name: "Id"))
    GetResourceSnapshotJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceSnapshotJobArn, location_name: "Arn"))
    GetResourceSnapshotJobResponse.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    GetResourceSnapshotJobResponse.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    GetResourceSnapshotJobResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceId"))
    GetResourceSnapshotJobResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    GetResourceSnapshotJobResponse.add_member(:resource_snapshot_template_name, Shapes::ShapeRef.new(shape: ResourceTemplateName, location_name: "ResourceSnapshotTemplateName"))
    GetResourceSnapshotJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    GetResourceSnapshotJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: ResourceSnapshotJobStatus, location_name: "Status"))
    GetResourceSnapshotJobResponse.add_member(:last_successful_execution_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastSuccessfulExecutionDate"))
    GetResourceSnapshotJobResponse.add_member(:last_failure, Shapes::ShapeRef.new(shape: String, location_name: "LastFailure"))
    GetResourceSnapshotJobResponse.struct_class = Types::GetResourceSnapshotJobResponse

    GetResourceSnapshotRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetResourceSnapshotRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifier, required: true, location_name: "EngagementIdentifier"))
    GetResourceSnapshotRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "ResourceType"))
    GetResourceSnapshotRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, required: true, location_name: "ResourceIdentifier"))
    GetResourceSnapshotRequest.add_member(:resource_snapshot_template_identifier, Shapes::ShapeRef.new(shape: ResourceTemplateName, required: true, location_name: "ResourceSnapshotTemplateIdentifier"))
    GetResourceSnapshotRequest.add_member(:revision, Shapes::ShapeRef.new(shape: ResourceSnapshotRevision, location_name: "Revision"))
    GetResourceSnapshotRequest.struct_class = Types::GetResourceSnapshotRequest

    GetResourceSnapshotResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetResourceSnapshotResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    GetResourceSnapshotResponse.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "CreatedBy"))
    GetResourceSnapshotResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    GetResourceSnapshotResponse.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    GetResourceSnapshotResponse.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    GetResourceSnapshotResponse.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceId"))
    GetResourceSnapshotResponse.add_member(:resource_snapshot_template_name, Shapes::ShapeRef.new(shape: ResourceTemplateName, location_name: "ResourceSnapshotTemplateName"))
    GetResourceSnapshotResponse.add_member(:revision, Shapes::ShapeRef.new(shape: ResourceSnapshotRevision, location_name: "Revision"))
    GetResourceSnapshotResponse.add_member(:payload, Shapes::ShapeRef.new(shape: ResourceSnapshotPayload, location_name: "Payload"))
    GetResourceSnapshotResponse.struct_class = Types::GetResourceSnapshotResponse

    GetSellingSystemSettingsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetSellingSystemSettingsRequest.struct_class = Types::GetSellingSystemSettingsRequest

    GetSellingSystemSettingsResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetSellingSystemSettingsResponse.add_member(:resource_snapshot_job_role_arn, Shapes::ShapeRef.new(shape: ResourceSnapshotJobRoleArn, location_name: "ResourceSnapshotJobRoleArn"))
    GetSellingSystemSettingsResponse.struct_class = Types::GetSellingSystemSettingsResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    Invitation.add_member(:message, Shapes::ShapeRef.new(shape: InvitationMessage, required: true, location_name: "Message"))
    Invitation.add_member(:receiver, Shapes::ShapeRef.new(shape: Receiver, required: true, location_name: "Receiver"))
    Invitation.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, required: true, location_name: "Payload"))
    Invitation.struct_class = Types::Invitation

    InvitationStatusList.member = Shapes::ShapeRef.new(shape: InvitationStatus)

    LastModifiedDate.add_member(:after_last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "AfterLastModifiedDate"))
    LastModifiedDate.add_member(:before_last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "BeforeLastModifiedDate"))
    LastModifiedDate.struct_class = Types::LastModifiedDate

    LifeCycle.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "Stage"))
    LifeCycle.add_member(:closed_lost_reason, Shapes::ShapeRef.new(shape: ClosedLostReason, location_name: "ClosedLostReason"))
    LifeCycle.add_member(:next_steps, Shapes::ShapeRef.new(shape: LifeCycleNextStepsString, location_name: "NextSteps"))
    LifeCycle.add_member(:target_close_date, Shapes::ShapeRef.new(shape: Date, location_name: "TargetCloseDate"))
    LifeCycle.add_member(:review_status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "ReviewStatus"))
    LifeCycle.add_member(:review_comments, Shapes::ShapeRef.new(shape: String, location_name: "ReviewComments"))
    LifeCycle.add_member(:review_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "ReviewStatusReason"))
    LifeCycle.add_member(:next_steps_history, Shapes::ShapeRef.new(shape: LifeCycleNextStepsHistoryList, location_name: "NextStepsHistory"))
    LifeCycle.struct_class = Types::LifeCycle

    LifeCycleForView.add_member(:target_close_date, Shapes::ShapeRef.new(shape: Date, location_name: "TargetCloseDate"))
    LifeCycleForView.add_member(:review_status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "ReviewStatus"))
    LifeCycleForView.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "Stage"))
    LifeCycleForView.add_member(:next_steps, Shapes::ShapeRef.new(shape: LifeCycleForViewNextStepsString, location_name: "NextSteps"))
    LifeCycleForView.struct_class = Types::LifeCycleForView

    LifeCycleNextStepsHistoryList.member = Shapes::ShapeRef.new(shape: NextStepsHistory)

    LifeCycleSummary.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "Stage"))
    LifeCycleSummary.add_member(:closed_lost_reason, Shapes::ShapeRef.new(shape: ClosedLostReason, location_name: "ClosedLostReason"))
    LifeCycleSummary.add_member(:next_steps, Shapes::ShapeRef.new(shape: LifeCycleSummaryNextStepsString, location_name: "NextSteps"))
    LifeCycleSummary.add_member(:target_close_date, Shapes::ShapeRef.new(shape: Date, location_name: "TargetCloseDate"))
    LifeCycleSummary.add_member(:review_status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "ReviewStatus"))
    LifeCycleSummary.add_member(:review_comments, Shapes::ShapeRef.new(shape: String, location_name: "ReviewComments"))
    LifeCycleSummary.add_member(:review_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "ReviewStatusReason"))
    LifeCycleSummary.struct_class = Types::LifeCycleSummary

    ListEngagementByAcceptingInvitationTaskSummaries.member = Shapes::ShapeRef.new(shape: ListEngagementByAcceptingInvitationTaskSummary)

    ListEngagementByAcceptingInvitationTaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskIdentifier, location_name: "TaskId"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "TaskStatus"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:reason_code, Shapes::ShapeRef.new(shape: ReasonCode, location_name: "ReasonCode"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:opportunity_id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "OpportunityId"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:resource_snapshot_job_id, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, location_name: "ResourceSnapshotJobId"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:engagement_invitation_id, Shapes::ShapeRef.new(shape: EngagementInvitationIdentifier, location_name: "EngagementInvitationId"))
    ListEngagementByAcceptingInvitationTaskSummary.struct_class = Types::ListEngagementByAcceptingInvitationTaskSummary

    ListEngagementByAcceptingInvitationTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEngagementByAcceptingInvitationTasksRequestMaxResultsInteger, location_name: "MaxResults"))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListEngagementByAcceptingInvitationTasksRequestNextTokenString, location_name: "NextToken"))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:sort, Shapes::ShapeRef.new(shape: ListTasksSortBase, location_name: "Sort"))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatuses, location_name: "TaskStatus"))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifiers, location_name: "OpportunityIdentifier"))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:engagement_invitation_identifier, Shapes::ShapeRef.new(shape: EngagementInvitationIdentifiers, location_name: "EngagementInvitationIdentifier"))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:task_identifier, Shapes::ShapeRef.new(shape: TaskIdentifiers, location_name: "TaskIdentifier"))
    ListEngagementByAcceptingInvitationTasksRequest.struct_class = Types::ListEngagementByAcceptingInvitationTasksRequest

    ListEngagementByAcceptingInvitationTasksResponse.add_member(:task_summaries, Shapes::ShapeRef.new(shape: ListEngagementByAcceptingInvitationTaskSummaries, location_name: "TaskSummaries"))
    ListEngagementByAcceptingInvitationTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementByAcceptingInvitationTasksResponse.struct_class = Types::ListEngagementByAcceptingInvitationTasksResponse

    ListEngagementFromOpportunityTaskSummaries.member = Shapes::ShapeRef.new(shape: ListEngagementFromOpportunityTaskSummary)

    ListEngagementFromOpportunityTaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskIdentifier, location_name: "TaskId"))
    ListEngagementFromOpportunityTaskSummary.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    ListEngagementFromOpportunityTaskSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    ListEngagementFromOpportunityTaskSummary.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "TaskStatus"))
    ListEngagementFromOpportunityTaskSummary.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ListEngagementFromOpportunityTaskSummary.add_member(:reason_code, Shapes::ShapeRef.new(shape: ReasonCode, location_name: "ReasonCode"))
    ListEngagementFromOpportunityTaskSummary.add_member(:opportunity_id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "OpportunityId"))
    ListEngagementFromOpportunityTaskSummary.add_member(:resource_snapshot_job_id, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, location_name: "ResourceSnapshotJobId"))
    ListEngagementFromOpportunityTaskSummary.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    ListEngagementFromOpportunityTaskSummary.add_member(:engagement_invitation_id, Shapes::ShapeRef.new(shape: EngagementInvitationIdentifier, location_name: "EngagementInvitationId"))
    ListEngagementFromOpportunityTaskSummary.struct_class = Types::ListEngagementFromOpportunityTaskSummary

    ListEngagementFromOpportunityTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEngagementFromOpportunityTasksRequestMaxResultsInteger, location_name: "MaxResults"))
    ListEngagementFromOpportunityTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListEngagementFromOpportunityTasksRequestNextTokenString, location_name: "NextToken"))
    ListEngagementFromOpportunityTasksRequest.add_member(:sort, Shapes::ShapeRef.new(shape: ListTasksSortBase, location_name: "Sort"))
    ListEngagementFromOpportunityTasksRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListEngagementFromOpportunityTasksRequest.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatuses, location_name: "TaskStatus"))
    ListEngagementFromOpportunityTasksRequest.add_member(:task_identifier, Shapes::ShapeRef.new(shape: TaskIdentifiers, location_name: "TaskIdentifier"))
    ListEngagementFromOpportunityTasksRequest.add_member(:opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifiers, location_name: "OpportunityIdentifier"))
    ListEngagementFromOpportunityTasksRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifiers, location_name: "EngagementIdentifier"))
    ListEngagementFromOpportunityTasksRequest.struct_class = Types::ListEngagementFromOpportunityTasksRequest

    ListEngagementFromOpportunityTasksResponse.add_member(:task_summaries, Shapes::ShapeRef.new(shape: ListEngagementFromOpportunityTaskSummaries, location_name: "TaskSummaries"))
    ListEngagementFromOpportunityTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementFromOpportunityTasksResponse.struct_class = Types::ListEngagementFromOpportunityTasksResponse

    ListEngagementInvitationsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListEngagementInvitationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListEngagementInvitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementInvitationsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: OpportunityEngagementInvitationSort, location_name: "Sort"))
    ListEngagementInvitationsRequest.add_member(:payload_type, Shapes::ShapeRef.new(shape: EngagementInvitationsPayloadType, location_name: "PayloadType"))
    ListEngagementInvitationsRequest.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, required: true, location_name: "ParticipantType"))
    ListEngagementInvitationsRequest.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatusList, location_name: "Status"))
    ListEngagementInvitationsRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifiers, location_name: "EngagementIdentifier"))
    ListEngagementInvitationsRequest.add_member(:sender_aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountIdOrAliasList, location_name: "SenderAwsAccountId"))
    ListEngagementInvitationsRequest.struct_class = Types::ListEngagementInvitationsRequest

    ListEngagementInvitationsResponse.add_member(:engagement_invitation_summaries, Shapes::ShapeRef.new(shape: EngagementInvitationSummaries, location_name: "EngagementInvitationSummaries"))
    ListEngagementInvitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementInvitationsResponse.struct_class = Types::ListEngagementInvitationsResponse

    ListEngagementMembersRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListEngagementMembersRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: EngagementArnOrIdentifier, required: true, location_name: "Identifier"))
    ListEngagementMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MemberPageSize, location_name: "MaxResults"))
    ListEngagementMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementMembersRequest.struct_class = Types::ListEngagementMembersRequest

    ListEngagementMembersResponse.add_member(:engagement_member_list, Shapes::ShapeRef.new(shape: EngagementMembers, required: true, location_name: "EngagementMemberList"))
    ListEngagementMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementMembersResponse.struct_class = Types::ListEngagementMembersResponse

    ListEngagementResourceAssociationsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListEngagementResourceAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListEngagementResourceAssociationsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListEngagementResourceAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementResourceAssociationsRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementIdentifier"))
    ListEngagementResourceAssociationsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ListEngagementResourceAssociationsRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceIdentifier"))
    ListEngagementResourceAssociationsRequest.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "CreatedBy"))
    ListEngagementResourceAssociationsRequest.struct_class = Types::ListEngagementResourceAssociationsRequest

    ListEngagementResourceAssociationsResponse.add_member(:engagement_resource_association_summaries, Shapes::ShapeRef.new(shape: EngagementResourceAssociationSummaryList, required: true, location_name: "EngagementResourceAssociationSummaries"))
    ListEngagementResourceAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementResourceAssociationsResponse.struct_class = Types::ListEngagementResourceAssociationsResponse

    ListEngagementsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListEngagementsRequest.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsAccountList, location_name: "CreatedBy"))
    ListEngagementsRequest.add_member(:exclude_created_by, Shapes::ShapeRef.new(shape: AwsAccountList, location_name: "ExcludeCreatedBy"))
    ListEngagementsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: EngagementSort, location_name: "Sort"))
    ListEngagementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: EngagementPageSize, location_name: "MaxResults"))
    ListEngagementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementsRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifiers, location_name: "EngagementIdentifier"))
    ListEngagementsRequest.struct_class = Types::ListEngagementsRequest

    ListEngagementsResponse.add_member(:engagement_summary_list, Shapes::ShapeRef.new(shape: EngagementSummaryList, required: true, location_name: "EngagementSummaryList"))
    ListEngagementsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementsResponse.struct_class = Types::ListEngagementsResponse

    ListOpportunitiesRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListOpportunitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListOpportunitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpportunitiesRequest.add_member(:sort, Shapes::ShapeRef.new(shape: OpportunitySort, location_name: "Sort"))
    ListOpportunitiesRequest.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: "LastModifiedDate"))
    ListOpportunitiesRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ListOpportunitiesRequestIdentifierList, location_name: "Identifier"))
    ListOpportunitiesRequest.add_member(:life_cycle_stage, Shapes::ShapeRef.new(shape: ListOpportunitiesRequestLifeCycleStageList, location_name: "LifeCycleStage"))
    ListOpportunitiesRequest.add_member(:life_cycle_review_status, Shapes::ShapeRef.new(shape: ListOpportunitiesRequestLifeCycleReviewStatusList, location_name: "LifeCycleReviewStatus"))
    ListOpportunitiesRequest.add_member(:customer_company_name, Shapes::ShapeRef.new(shape: ListOpportunitiesRequestCustomerCompanyNameList, location_name: "CustomerCompanyName"))
    ListOpportunitiesRequest.struct_class = Types::ListOpportunitiesRequest

    ListOpportunitiesRequestCustomerCompanyNameList.member = Shapes::ShapeRef.new(shape: String)

    ListOpportunitiesRequestIdentifierList.member = Shapes::ShapeRef.new(shape: OpportunityIdentifier)

    ListOpportunitiesRequestLifeCycleReviewStatusList.member = Shapes::ShapeRef.new(shape: ReviewStatus)

    ListOpportunitiesRequestLifeCycleStageList.member = Shapes::ShapeRef.new(shape: Stage)

    ListOpportunitiesResponse.add_member(:opportunity_summaries, Shapes::ShapeRef.new(shape: OpportunitySummaries, required: true, location_name: "OpportunitySummaries"))
    ListOpportunitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpportunitiesResponse.struct_class = Types::ListOpportunitiesResponse

    ListResourceSnapshotJobsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListResourceSnapshotJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceSnapshotJobsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListResourceSnapshotJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListResourceSnapshotJobsRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementIdentifier"))
    ListResourceSnapshotJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ResourceSnapshotJobStatus, location_name: "Status"))
    ListResourceSnapshotJobsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: SortObject, location_name: "Sort"))
    ListResourceSnapshotJobsRequest.struct_class = Types::ListResourceSnapshotJobsRequest

    ListResourceSnapshotJobsResponse.add_member(:resource_snapshot_job_summaries, Shapes::ShapeRef.new(shape: ResourceSnapshotJobSummaryList, required: true, location_name: "ResourceSnapshotJobSummaries"))
    ListResourceSnapshotJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListResourceSnapshotJobsResponse.struct_class = Types::ListResourceSnapshotJobsResponse

    ListResourceSnapshotsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListResourceSnapshotsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListResourceSnapshotsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListResourceSnapshotsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListResourceSnapshotsRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifier, required: true, location_name: "EngagementIdentifier"))
    ListResourceSnapshotsRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ListResourceSnapshotsRequest.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceIdentifier"))
    ListResourceSnapshotsRequest.add_member(:resource_snapshot_template_identifier, Shapes::ShapeRef.new(shape: ResourceTemplateName, location_name: "ResourceSnapshotTemplateIdentifier"))
    ListResourceSnapshotsRequest.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "CreatedBy"))
    ListResourceSnapshotsRequest.struct_class = Types::ListResourceSnapshotsRequest

    ListResourceSnapshotsResponse.add_member(:resource_snapshot_summaries, Shapes::ShapeRef.new(shape: ResourceSnapshotSummaryList, required: true, location_name: "ResourceSnapshotSummaries"))
    ListResourceSnapshotsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListResourceSnapshotsResponse.struct_class = Types::ListResourceSnapshotsResponse

    ListSolutionsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListSolutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListSolutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSolutionsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: SolutionSort, location_name: "Sort"))
    ListSolutionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ListSolutionsRequestStatusList, location_name: "Status"))
    ListSolutionsRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ListSolutionsRequestIdentifierList, location_name: "Identifier"))
    ListSolutionsRequest.add_member(:category, Shapes::ShapeRef.new(shape: ListSolutionsRequestCategoryList, location_name: "Category"))
    ListSolutionsRequest.struct_class = Types::ListSolutionsRequest

    ListSolutionsRequestCategoryList.member = Shapes::ShapeRef.new(shape: String)

    ListSolutionsRequestIdentifierList.member = Shapes::ShapeRef.new(shape: SolutionIdentifier)

    ListSolutionsRequestStatusList.member = Shapes::ShapeRef.new(shape: SolutionStatus)

    ListSolutionsResponse.add_member(:solution_summaries, Shapes::ShapeRef.new(shape: SolutionList, required: true, location_name: "SolutionSummaries"))
    ListSolutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSolutionsResponse.struct_class = Types::ListSolutionsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTasksSortBase.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    ListTasksSortBase.add_member(:sort_by, Shapes::ShapeRef.new(shape: ListTasksSortName, required: true, location_name: "SortBy"))
    ListTasksSortBase.struct_class = Types::ListTasksSortBase

    Marketing.add_member(:campaign_name, Shapes::ShapeRef.new(shape: String, location_name: "CampaignName"))
    Marketing.add_member(:source, Shapes::ShapeRef.new(shape: MarketingSource, location_name: "Source"))
    Marketing.add_member(:use_cases, Shapes::ShapeRef.new(shape: UseCases, location_name: "UseCases"))
    Marketing.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "Channels"))
    Marketing.add_member(:aws_funding_used, Shapes::ShapeRef.new(shape: AwsFundingUsed, location_name: "AwsFundingUsed"))
    Marketing.struct_class = Types::Marketing

    MonetaryValue.add_member(:amount, Shapes::ShapeRef.new(shape: MonetaryValueAmountString, required: true, location_name: "Amount"))
    MonetaryValue.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "CurrencyCode"))
    MonetaryValue.struct_class = Types::MonetaryValue

    NextStepsHistory.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    NextStepsHistory.add_member(:time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "Time"))
    NextStepsHistory.struct_class = Types::NextStepsHistory

    OpportunityEngagementInvitationSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    OpportunityEngagementInvitationSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: OpportunityEngagementInvitationSortName, required: true, location_name: "SortBy"))
    OpportunityEngagementInvitationSort.struct_class = Types::OpportunityEngagementInvitationSort

    OpportunityIdentifiers.member = Shapes::ShapeRef.new(shape: OpportunityIdentifier)

    OpportunityInvitationPayload.add_member(:sender_contacts, Shapes::ShapeRef.new(shape: SenderContactList, location_name: "SenderContacts"))
    OpportunityInvitationPayload.add_member(:receiver_responsibilities, Shapes::ShapeRef.new(shape: ReceiverResponsibilityList, required: true, location_name: "ReceiverResponsibilities"))
    OpportunityInvitationPayload.add_member(:customer, Shapes::ShapeRef.new(shape: EngagementCustomer, required: true, location_name: "Customer"))
    OpportunityInvitationPayload.add_member(:project, Shapes::ShapeRef.new(shape: ProjectDetails, required: true, location_name: "Project"))
    OpportunityInvitationPayload.struct_class = Types::OpportunityInvitationPayload

    OpportunitySort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    OpportunitySort.add_member(:sort_by, Shapes::ShapeRef.new(shape: OpportunitySortName, required: true, location_name: "SortBy"))
    OpportunitySort.struct_class = Types::OpportunitySort

    OpportunitySummaries.member = Shapes::ShapeRef.new(shape: OpportunitySummary)

    OpportunitySummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    OpportunitySummary.add_member(:id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "Id"))
    OpportunitySummary.add_member(:arn, Shapes::ShapeRef.new(shape: OpportunityArn, location_name: "Arn"))
    OpportunitySummary.add_member(:partner_opportunity_identifier, Shapes::ShapeRef.new(shape: String, location_name: "PartnerOpportunityIdentifier"))
    OpportunitySummary.add_member(:opportunity_type, Shapes::ShapeRef.new(shape: OpportunityType, location_name: "OpportunityType"))
    OpportunitySummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    OpportunitySummary.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    OpportunitySummary.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycleSummary, location_name: "LifeCycle"))
    OpportunitySummary.add_member(:customer, Shapes::ShapeRef.new(shape: CustomerSummary, location_name: "Customer"))
    OpportunitySummary.add_member(:project, Shapes::ShapeRef.new(shape: ProjectSummary, location_name: "Project"))
    OpportunitySummary.struct_class = Types::OpportunitySummary

    OpportunitySummaryView.add_member(:opportunity_type, Shapes::ShapeRef.new(shape: OpportunityType, location_name: "OpportunityType"))
    OpportunitySummaryView.add_member(:lifecycle, Shapes::ShapeRef.new(shape: LifeCycleForView, location_name: "Lifecycle"))
    OpportunitySummaryView.add_member(:opportunity_team, Shapes::ShapeRef.new(shape: PartnerOpportunityTeamMembersList, location_name: "OpportunityTeam"))
    OpportunitySummaryView.add_member(:primary_needs_from_aws, Shapes::ShapeRef.new(shape: PrimaryNeedsFromAws, location_name: "PrimaryNeedsFromAws"))
    OpportunitySummaryView.add_member(:customer, Shapes::ShapeRef.new(shape: Customer, location_name: "Customer"))
    OpportunitySummaryView.add_member(:project, Shapes::ShapeRef.new(shape: ProjectView, location_name: "Project"))
    OpportunitySummaryView.add_member(:related_entity_identifiers, Shapes::ShapeRef.new(shape: RelatedEntityIdentifiers, location_name: "RelatedEntityIdentifiers"))
    OpportunitySummaryView.struct_class = Types::OpportunitySummaryView

    PartnerOpportunityTeamMembersList.member = Shapes::ShapeRef.new(shape: Contact)

    Payload.add_member(:opportunity_invitation, Shapes::ShapeRef.new(shape: OpportunityInvitationPayload, location_name: "OpportunityInvitation"))
    Payload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Payload.add_member_subclass(:opportunity_invitation, Types::Payload::OpportunityInvitation)
    Payload.add_member_subclass(:unknown, Types::Payload::Unknown)
    Payload.struct_class = Types::Payload

    PrimaryNeedsFromAws.member = Shapes::ShapeRef.new(shape: PrimaryNeedFromAws)

    ProfileNextStepsHistory.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    ProfileNextStepsHistory.add_member(:time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "Time"))
    ProfileNextStepsHistory.struct_class = Types::ProfileNextStepsHistory

    Project.add_member(:delivery_models, Shapes::ShapeRef.new(shape: DeliveryModels, location_name: "DeliveryModels"))
    Project.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, location_name: "ExpectedCustomerSpend"))
    Project.add_member(:title, Shapes::ShapeRef.new(shape: ProjectTitleString, location_name: "Title"))
    Project.add_member(:apn_programs, Shapes::ShapeRef.new(shape: ApnPrograms, location_name: "ApnPrograms"))
    Project.add_member(:customer_business_problem, Shapes::ShapeRef.new(shape: ProjectCustomerBusinessProblemString, location_name: "CustomerBusinessProblem"))
    Project.add_member(:customer_use_case, Shapes::ShapeRef.new(shape: String, location_name: "CustomerUseCase"))
    Project.add_member(:related_opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "RelatedOpportunityIdentifier"))
    Project.add_member(:sales_activities, Shapes::ShapeRef.new(shape: SalesActivities, location_name: "SalesActivities"))
    Project.add_member(:competitor_name, Shapes::ShapeRef.new(shape: CompetitorName, location_name: "CompetitorName"))
    Project.add_member(:other_competitor_names, Shapes::ShapeRef.new(shape: ProjectOtherCompetitorNamesString, location_name: "OtherCompetitorNames"))
    Project.add_member(:other_solution_description, Shapes::ShapeRef.new(shape: ProjectOtherSolutionDescriptionString, location_name: "OtherSolutionDescription"))
    Project.add_member(:additional_comments, Shapes::ShapeRef.new(shape: ProjectAdditionalCommentsString, location_name: "AdditionalComments"))
    Project.struct_class = Types::Project

    ProjectDetails.add_member(:business_problem, Shapes::ShapeRef.new(shape: EngagementCustomerBusinessProblem, required: true, location_name: "BusinessProblem"))
    ProjectDetails.add_member(:title, Shapes::ShapeRef.new(shape: ProjectDetailsTitleString, required: true, location_name: "Title"))
    ProjectDetails.add_member(:target_completion_date, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "TargetCompletionDate"))
    ProjectDetails.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, required: true, location_name: "ExpectedCustomerSpend"))
    ProjectDetails.struct_class = Types::ProjectDetails

    ProjectSummary.add_member(:delivery_models, Shapes::ShapeRef.new(shape: DeliveryModels, location_name: "DeliveryModels"))
    ProjectSummary.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, location_name: "ExpectedCustomerSpend"))
    ProjectSummary.struct_class = Types::ProjectSummary

    ProjectView.add_member(:delivery_models, Shapes::ShapeRef.new(shape: DeliveryModels, location_name: "DeliveryModels"))
    ProjectView.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, location_name: "ExpectedCustomerSpend"))
    ProjectView.add_member(:customer_use_case, Shapes::ShapeRef.new(shape: String, location_name: "CustomerUseCase"))
    ProjectView.add_member(:sales_activities, Shapes::ShapeRef.new(shape: SalesActivities, location_name: "SalesActivities"))
    ProjectView.add_member(:other_solution_description, Shapes::ShapeRef.new(shape: ProjectViewOtherSolutionDescriptionString, location_name: "OtherSolutionDescription"))
    ProjectView.struct_class = Types::ProjectView

    PutSellingSystemSettingsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    PutSellingSystemSettingsRequest.add_member(:resource_snapshot_job_role_identifier, Shapes::ShapeRef.new(shape: ResourceSnapshotJobRoleIdentifier, location_name: "ResourceSnapshotJobRoleIdentifier"))
    PutSellingSystemSettingsRequest.struct_class = Types::PutSellingSystemSettingsRequest

    PutSellingSystemSettingsResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    PutSellingSystemSettingsResponse.add_member(:resource_snapshot_job_role_arn, Shapes::ShapeRef.new(shape: ResourceSnapshotJobRoleArn, location_name: "ResourceSnapshotJobRoleArn"))
    PutSellingSystemSettingsResponse.struct_class = Types::PutSellingSystemSettingsResponse

    Receiver.add_member(:account, Shapes::ShapeRef.new(shape: AccountReceiver, location_name: "Account"))
    Receiver.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Receiver.add_member_subclass(:account, Types::Receiver::Account)
    Receiver.add_member_subclass(:unknown, Types::Receiver::Unknown)
    Receiver.struct_class = Types::Receiver

    ReceiverResponsibilityList.member = Shapes::ShapeRef.new(shape: ReceiverResponsibility)

    RejectEngagementInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    RejectEngagementInvitationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier, required: true, location_name: "Identifier"))
    RejectEngagementInvitationRequest.add_member(:rejection_reason, Shapes::ShapeRef.new(shape: RejectionReasonString, location_name: "RejectionReason"))
    RejectEngagementInvitationRequest.struct_class = Types::RejectEngagementInvitationRequest

    RelatedEntityIdentifiers.add_member(:aws_marketplace_offers, Shapes::ShapeRef.new(shape: AwsMarketplaceOfferIdentifiers, location_name: "AwsMarketplaceOffers"))
    RelatedEntityIdentifiers.add_member(:solutions, Shapes::ShapeRef.new(shape: SolutionIdentifiers, location_name: "Solutions"))
    RelatedEntityIdentifiers.add_member(:aws_products, Shapes::ShapeRef.new(shape: AwsProductIdentifiers, location_name: "AwsProducts"))
    RelatedEntityIdentifiers.struct_class = Types::RelatedEntityIdentifiers

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceSnapshotJobSummary.add_member(:id, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, location_name: "Id"))
    ResourceSnapshotJobSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceSnapshotJobArn, location_name: "Arn"))
    ResourceSnapshotJobSummary.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    ResourceSnapshotJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceSnapshotJobStatus, location_name: "Status"))
    ResourceSnapshotJobSummary.struct_class = Types::ResourceSnapshotJobSummary

    ResourceSnapshotJobSummaryList.member = Shapes::ShapeRef.new(shape: ResourceSnapshotJobSummary)

    ResourceSnapshotPayload.add_member(:opportunity_summary, Shapes::ShapeRef.new(shape: OpportunitySummaryView, location_name: "OpportunitySummary"))
    ResourceSnapshotPayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceSnapshotPayload.add_member_subclass(:opportunity_summary, Types::ResourceSnapshotPayload::OpportunitySummary)
    ResourceSnapshotPayload.add_member_subclass(:unknown, Types::ResourceSnapshotPayload::Unknown)
    ResourceSnapshotPayload.struct_class = Types::ResourceSnapshotPayload

    ResourceSnapshotSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceSnapshotArn, location_name: "Arn"))
    ResourceSnapshotSummary.add_member(:revision, Shapes::ShapeRef.new(shape: ResourceSnapshotRevision, location_name: "Revision"))
    ResourceSnapshotSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceSnapshotSummary.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceId"))
    ResourceSnapshotSummary.add_member(:resource_snapshot_template_name, Shapes::ShapeRef.new(shape: ResourceTemplateName, location_name: "ResourceSnapshotTemplateName"))
    ResourceSnapshotSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "CreatedBy"))
    ResourceSnapshotSummary.struct_class = Types::ResourceSnapshotSummary

    ResourceSnapshotSummaryList.member = Shapes::ShapeRef.new(shape: ResourceSnapshotSummary)

    SalesActivities.member = Shapes::ShapeRef.new(shape: SalesActivity)

    SenderContact.add_member(:email, Shapes::ShapeRef.new(shape: SenderContactEmail, required: true, location_name: "Email"))
    SenderContact.add_member(:first_name, Shapes::ShapeRef.new(shape: Name, location_name: "FirstName"))
    SenderContact.add_member(:last_name, Shapes::ShapeRef.new(shape: Name, location_name: "LastName"))
    SenderContact.add_member(:business_title, Shapes::ShapeRef.new(shape: JobTitle, location_name: "BusinessTitle"))
    SenderContact.add_member(:phone, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "Phone"))
    SenderContact.struct_class = Types::SenderContact

    SenderContactList.member = Shapes::ShapeRef.new(shape: SenderContact)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SoftwareRevenue.add_member(:delivery_model, Shapes::ShapeRef.new(shape: RevenueModel, location_name: "DeliveryModel"))
    SoftwareRevenue.add_member(:value, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "Value"))
    SoftwareRevenue.add_member(:effective_date, Shapes::ShapeRef.new(shape: Date, location_name: "EffectiveDate"))
    SoftwareRevenue.add_member(:expiration_date, Shapes::ShapeRef.new(shape: Date, location_name: "ExpirationDate"))
    SoftwareRevenue.struct_class = Types::SoftwareRevenue

    SolutionBase.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    SolutionBase.add_member(:id, Shapes::ShapeRef.new(shape: SolutionIdentifier, required: true, location_name: "Id"))
    SolutionBase.add_member(:arn, Shapes::ShapeRef.new(shape: SolutionArn, location_name: "Arn"))
    SolutionBase.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    SolutionBase.add_member(:status, Shapes::ShapeRef.new(shape: SolutionStatus, required: true, location_name: "Status"))
    SolutionBase.add_member(:category, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Category"))
    SolutionBase.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedDate"))
    SolutionBase.struct_class = Types::SolutionBase

    SolutionIdentifiers.member = Shapes::ShapeRef.new(shape: SolutionIdentifier)

    SolutionList.member = Shapes::ShapeRef.new(shape: SolutionBase)

    SolutionSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    SolutionSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: SolutionSortName, required: true, location_name: "SortBy"))
    SolutionSort.struct_class = Types::SolutionSort

    SortObject.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    SortObject.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    SortObject.struct_class = Types::SortObject

    StartEngagementByAcceptingInvitationTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    StartEngagementByAcceptingInvitationTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: StartEngagementByAcceptingInvitationTaskRequestClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartEngagementByAcceptingInvitationTaskRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier, required: true, location_name: "Identifier"))
    StartEngagementByAcceptingInvitationTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartEngagementByAcceptingInvitationTaskRequest.struct_class = Types::StartEngagementByAcceptingInvitationTaskRequest

    StartEngagementByAcceptingInvitationTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskIdentifier, location_name: "TaskId"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "TaskStatus"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:reason_code, Shapes::ShapeRef.new(shape: ReasonCode, location_name: "ReasonCode"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:opportunity_id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "OpportunityId"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:resource_snapshot_job_id, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, location_name: "ResourceSnapshotJobId"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:engagement_invitation_id, Shapes::ShapeRef.new(shape: EngagementInvitationIdentifier, location_name: "EngagementInvitationId"))
    StartEngagementByAcceptingInvitationTaskResponse.struct_class = Types::StartEngagementByAcceptingInvitationTaskResponse

    StartEngagementFromOpportunityTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    StartEngagementFromOpportunityTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: StartEngagementFromOpportunityTaskRequestClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartEngagementFromOpportunityTaskRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Identifier"))
    StartEngagementFromOpportunityTaskRequest.add_member(:aws_submission, Shapes::ShapeRef.new(shape: AwsSubmission, required: true, location_name: "AwsSubmission"))
    StartEngagementFromOpportunityTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartEngagementFromOpportunityTaskRequest.struct_class = Types::StartEngagementFromOpportunityTaskRequest

    StartEngagementFromOpportunityTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskIdentifier, location_name: "TaskId"))
    StartEngagementFromOpportunityTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    StartEngagementFromOpportunityTaskResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    StartEngagementFromOpportunityTaskResponse.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "TaskStatus"))
    StartEngagementFromOpportunityTaskResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    StartEngagementFromOpportunityTaskResponse.add_member(:reason_code, Shapes::ShapeRef.new(shape: ReasonCode, location_name: "ReasonCode"))
    StartEngagementFromOpportunityTaskResponse.add_member(:opportunity_id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "OpportunityId"))
    StartEngagementFromOpportunityTaskResponse.add_member(:resource_snapshot_job_id, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, location_name: "ResourceSnapshotJobId"))
    StartEngagementFromOpportunityTaskResponse.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    StartEngagementFromOpportunityTaskResponse.add_member(:engagement_invitation_id, Shapes::ShapeRef.new(shape: EngagementInvitationIdentifier, location_name: "EngagementInvitationId"))
    StartEngagementFromOpportunityTaskResponse.struct_class = Types::StartEngagementFromOpportunityTaskResponse

    StartResourceSnapshotJobRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    StartResourceSnapshotJobRequest.add_member(:resource_snapshot_job_identifier, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, required: true, location_name: "ResourceSnapshotJobIdentifier"))
    StartResourceSnapshotJobRequest.struct_class = Types::StartResourceSnapshotJobRequest

    StopResourceSnapshotJobRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    StopResourceSnapshotJobRequest.add_member(:resource_snapshot_job_identifier, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, required: true, location_name: "ResourceSnapshotJobIdentifier"))
    StopResourceSnapshotJobRequest.struct_class = Types::StopResourceSnapshotJobRequest

    SubmitOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    SubmitOpportunityRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Identifier"))
    SubmitOpportunityRequest.add_member(:involvement_type, Shapes::ShapeRef.new(shape: SalesInvolvementType, required: true, location_name: "InvolvementType"))
    SubmitOpportunityRequest.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    SubmitOpportunityRequest.struct_class = Types::SubmitOpportunityRequest

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TaskIdentifiers.member = Shapes::ShapeRef.new(shape: TaskArnOrIdentifier)

    TaskStatuses.member = Shapes::ShapeRef.new(shape: TaskStatus)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    UpdateOpportunityRequest.add_member(:primary_needs_from_aws, Shapes::ShapeRef.new(shape: PrimaryNeedsFromAws, location_name: "PrimaryNeedsFromAws"))
    UpdateOpportunityRequest.add_member(:national_security, Shapes::ShapeRef.new(shape: NationalSecurity, location_name: "NationalSecurity"))
    UpdateOpportunityRequest.add_member(:partner_opportunity_identifier, Shapes::ShapeRef.new(shape: UpdateOpportunityRequestPartnerOpportunityIdentifierString, location_name: "PartnerOpportunityIdentifier"))
    UpdateOpportunityRequest.add_member(:customer, Shapes::ShapeRef.new(shape: Customer, location_name: "Customer"))
    UpdateOpportunityRequest.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "Project"))
    UpdateOpportunityRequest.add_member(:opportunity_type, Shapes::ShapeRef.new(shape: OpportunityType, location_name: "OpportunityType"))
    UpdateOpportunityRequest.add_member(:marketing, Shapes::ShapeRef.new(shape: Marketing, location_name: "Marketing"))
    UpdateOpportunityRequest.add_member(:software_revenue, Shapes::ShapeRef.new(shape: SoftwareRevenue, location_name: "SoftwareRevenue"))
    UpdateOpportunityRequest.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastModifiedDate"))
    UpdateOpportunityRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Identifier"))
    UpdateOpportunityRequest.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "LifeCycle"))
    UpdateOpportunityRequest.struct_class = Types::UpdateOpportunityRequest

    UpdateOpportunityResponse.add_member(:id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Id"))
    UpdateOpportunityResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastModifiedDate"))
    UpdateOpportunityResponse.struct_class = Types::UpdateOpportunityResponse

    UseCases.member = Shapes::ShapeRef.new(shape: String)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "Reason"))
    ValidationException.add_member(:error_list, Shapes::ShapeRef.new(shape: ValidationExceptionErrorList, location_name: "ErrorList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionError.add_member(:field_name, Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    ValidationExceptionError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationExceptionError.add_member(:code, Shapes::ShapeRef.new(shape: ValidationExceptionErrorCode, required: true, location_name: "Code"))
    ValidationExceptionError.struct_class = Types::ValidationExceptionError

    ValidationExceptionErrorList.member = Shapes::ShapeRef.new(shape: ValidationExceptionError)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-07-26"

      api.metadata = {
        "apiVersion" => "2022-07-26",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "partnercentral-selling",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "Partner Central Selling API",
        "serviceId" => "PartnerCentral Selling",
        "signatureVersion" => "v4",
        "signingName" => "partnercentral-selling",
        "targetPrefix" => "AWSPartnerCentralSelling",
        "uid" => "partnercentral-selling-2022-07-26",
      }

      api.add_operation(:accept_engagement_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AcceptEngagementInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AcceptEngagementInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:assign_opportunity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssignOpportunity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssignOpportunityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:associate_opportunity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateOpportunity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateOpportunityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_engagement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEngagement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEngagementRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEngagementResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_engagement_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEngagementInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEngagementInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEngagementInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_opportunity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOpportunity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOpportunityRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOpportunityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_resource_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourceSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_resource_snapshot_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateResourceSnapshotJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateResourceSnapshotJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateResourceSnapshotJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_resource_snapshot_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteResourceSnapshotJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteResourceSnapshotJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_opportunity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateOpportunity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateOpportunityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_aws_opportunity_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAwsOpportunitySummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetAwsOpportunitySummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAwsOpportunitySummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_engagement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEngagement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEngagementRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEngagementResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_engagement_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEngagementInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEngagementInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEngagementInvitationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_opportunity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOpportunity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOpportunityRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOpportunityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_resource_snapshot, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceSnapshot"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourceSnapshotRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceSnapshotResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_resource_snapshot_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResourceSnapshotJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourceSnapshotJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetResourceSnapshotJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_selling_system_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSellingSystemSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetSellingSystemSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSellingSystemSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_engagement_by_accepting_invitation_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagementByAcceptingInvitationTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementByAcceptingInvitationTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementByAcceptingInvitationTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_engagement_from_opportunity_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagementFromOpportunityTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementFromOpportunityTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementFromOpportunityTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_engagement_invitations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagementInvitations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementInvitationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementInvitationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_engagement_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagementMembers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_engagement_resource_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagementResourceAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementResourceAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementResourceAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_engagements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_opportunities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOpportunities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOpportunitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOpportunitiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_snapshot_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceSnapshotJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceSnapshotJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceSnapshotJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_resource_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceSnapshotsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_solutions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSolutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSolutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSolutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_selling_system_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSellingSystemSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutSellingSystemSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: PutSellingSystemSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:reject_engagement_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectEngagementInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectEngagementInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_engagement_by_accepting_invitation_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartEngagementByAcceptingInvitationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartEngagementByAcceptingInvitationTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartEngagementByAcceptingInvitationTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_engagement_from_opportunity_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartEngagementFromOpportunityTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartEngagementFromOpportunityTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartEngagementFromOpportunityTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_resource_snapshot_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartResourceSnapshotJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartResourceSnapshotJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:stop_resource_snapshot_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopResourceSnapshotJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopResourceSnapshotJobRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:submit_opportunity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SubmitOpportunity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SubmitOpportunityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_opportunity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateOpportunity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateOpportunityRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateOpportunityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
