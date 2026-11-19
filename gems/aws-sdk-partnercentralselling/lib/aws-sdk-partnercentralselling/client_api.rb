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
    AccessDeniedExceptionErrorCode = Shapes::StringShape.new(name: 'AccessDeniedExceptionErrorCode')
    Account = Shapes::StructureShape.new(name: 'Account')
    AccountCompanyNameString = Shapes::StringShape.new(name: 'AccountCompanyNameString')
    AccountCustomer = Shapes::StructureShape.new(name: 'AccountCustomer')
    AccountFilterStringList = Shapes::ListShape.new(name: 'AccountFilterStringList')
    AccountFilterStringListMemberString = Shapes::StringShape.new(name: 'AccountFilterStringListMemberString')
    AccountOtherIndustryString = Shapes::StringShape.new(name: 'AccountOtherIndustryString')
    AccountPlanningInvitationPayload = Shapes::StructureShape.new(name: 'AccountPlanningInvitationPayload')
    AccountReceiver = Shapes::StructureShape.new(name: 'AccountReceiver')
    AccountSummary = Shapes::StructureShape.new(name: 'AccountSummary')
    AccountSummaryCompanyNameString = Shapes::StringShape.new(name: 'AccountSummaryCompanyNameString')
    AccountSummaryOtherIndustryString = Shapes::StringShape.new(name: 'AccountSummaryOtherIndustryString')
    AccountWebsiteUrl = Shapes::StringShape.new(name: 'AccountWebsiteUrl')
    Address = Shapes::StructureShape.new(name: 'Address')
    AddressCityString = Shapes::StringShape.new(name: 'AddressCityString')
    AddressPart = Shapes::StringShape.new(name: 'AddressPart')
    AddressPostalCodeString = Shapes::StringShape.new(name: 'AddressPostalCodeString')
    AddressStreetAddressString = Shapes::StringShape.new(name: 'AddressStreetAddressString')
    AddressSummary = Shapes::StructureShape.new(name: 'AddressSummary')
    AddressSummaryCityString = Shapes::StringShape.new(name: 'AddressSummaryCityString')
    AddressSummaryPostalCodeString = Shapes::StringShape.new(name: 'AddressSummaryPostalCodeString')
    AggregatableField = Shapes::StringShape.new(name: 'AggregatableField')
    AggregatableFieldList = Shapes::ListShape.new(name: 'AggregatableFieldList')
    AggregationRequest = Shapes::StructureShape.new(name: 'AggregationRequest')
    AggregationRequestGroupByList = Shapes::ListShape.new(name: 'AggregationRequestGroupByList')
    AggregationRequestList = Shapes::ListShape.new(name: 'AggregationRequestList')
    AggregationResult = Shapes::StructureShape.new(name: 'AggregationResult')
    AggregationResultList = Shapes::ListShape.new(name: 'AggregationResultList')
    Alias = Shapes::StringShape.new(name: 'Alias')
    Amount = Shapes::StringShape.new(name: 'Amount')
    AmountMap = Shapes::MapShape.new(name: 'AmountMap')
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
    AwsEnrichment = Shapes::StructureShape.new(name: 'AwsEnrichment')
    AwsEnrichmentCustomer = Shapes::StructureShape.new(name: 'AwsEnrichmentCustomer')
    AwsEnrichmentCustomerSummary = Shapes::StructureShape.new(name: 'AwsEnrichmentCustomerSummary')
    AwsEnrichmentInsights = Shapes::StructureShape.new(name: 'AwsEnrichmentInsights')
    AwsEnrichmentInsightsSummary = Shapes::StructureShape.new(name: 'AwsEnrichmentInsightsSummary')
    AwsEnrichmentSummary = Shapes::StructureShape.new(name: 'AwsEnrichmentSummary')
    AwsFundingUsed = Shapes::StringShape.new(name: 'AwsFundingUsed')
    AwsMarketplaceOfferIdentifier = Shapes::StringShape.new(name: 'AwsMarketplaceOfferIdentifier')
    AwsMarketplaceOfferIdentifiers = Shapes::ListShape.new(name: 'AwsMarketplaceOfferIdentifiers')
    AwsMarketplaceOfferSetIdentifier = Shapes::StringShape.new(name: 'AwsMarketplaceOfferSetIdentifier')
    AwsMarketplaceOfferSetIdentifiers = Shapes::ListShape.new(name: 'AwsMarketplaceOfferSetIdentifiers')
    AwsMarketplaceProductArn = Shapes::StringShape.new(name: 'AwsMarketplaceProductArn')
    AwsMarketplaceProductIdentifiers = Shapes::ListShape.new(name: 'AwsMarketplaceProductIdentifiers')
    AwsMarketplaceSolutionArn = Shapes::StringShape.new(name: 'AwsMarketplaceSolutionArn')
    AwsMarketplaceSolutionIdentifier = Shapes::StringShape.new(name: 'AwsMarketplaceSolutionIdentifier')
    AwsMarketplaceSolutionIdentifiers = Shapes::ListShape.new(name: 'AwsMarketplaceSolutionIdentifiers')
    AwsMaturity = Shapes::StringShape.new(name: 'AwsMaturity')
    AwsMemberBusinessTitle = Shapes::StringShape.new(name: 'AwsMemberBusinessTitle')
    AwsOpportunityCustomer = Shapes::StructureShape.new(name: 'AwsOpportunityCustomer')
    AwsOpportunityInsights = Shapes::StructureShape.new(name: 'AwsOpportunityInsights')
    AwsOpportunityLifeCycle = Shapes::StructureShape.new(name: 'AwsOpportunityLifeCycle')
    AwsOpportunityLifeCycleNextStepsHistoryList = Shapes::ListShape.new(name: 'AwsOpportunityLifeCycleNextStepsHistoryList')
    AwsOpportunityLifeCycleNextStepsString = Shapes::StringShape.new(name: 'AwsOpportunityLifeCycleNextStepsString')
    AwsOpportunityProject = Shapes::StructureShape.new(name: 'AwsOpportunityProject')
    AwsOpportunityRelatedEntities = Shapes::StructureShape.new(name: 'AwsOpportunityRelatedEntities')
    AwsOpportunityStage = Shapes::StringShape.new(name: 'AwsOpportunityStage')
    AwsOpportunitySummaryFullView = Shapes::StructureShape.new(name: 'AwsOpportunitySummaryFullView')
    AwsOpportunityTeamMembersList = Shapes::ListShape.new(name: 'AwsOpportunityTeamMembersList')
    AwsPartition = Shapes::StringShape.new(name: 'AwsPartition')
    AwsProductDetails = Shapes::StructureShape.new(name: 'AwsProductDetails')
    AwsProductDetailsCategoriesList = Shapes::ListShape.new(name: 'AwsProductDetailsCategoriesList')
    AwsProductIdentifier = Shapes::StringShape.new(name: 'AwsProductIdentifier')
    AwsProductIdentifiers = Shapes::ListShape.new(name: 'AwsProductIdentifiers')
    AwsProductInsights = Shapes::StructureShape.new(name: 'AwsProductInsights')
    AwsProductOptimization = Shapes::StructureShape.new(name: 'AwsProductOptimization')
    AwsProductOptimizationsList = Shapes::ListShape.new(name: 'AwsProductOptimizationsList')
    AwsProductsList = Shapes::ListShape.new(name: 'AwsProductsList')
    AwsProductsSpendInsightsBySource = Shapes::StructureShape.new(name: 'AwsProductsSpendInsightsBySource')
    AwsSoftwareRevenue = Shapes::StructureShape.new(name: 'AwsSoftwareRevenue')
    AwsSubmission = Shapes::StructureShape.new(name: 'AwsSubmission')
    AwsTeamMember = Shapes::StructureShape.new(name: 'AwsTeamMember')
    AwsTeamMemberFirstNameString = Shapes::StringShape.new(name: 'AwsTeamMemberFirstNameString')
    AwsTeamMemberLastNameString = Shapes::StringShape.new(name: 'AwsTeamMemberLastNameString')
    BestOutreachWindow = Shapes::StructureShape.new(name: 'BestOutreachWindow')
    BestOutreachWindowList = Shapes::ListShape.new(name: 'BestOutreachWindowList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Bucket = Shapes::StructureShape.new(name: 'Bucket')
    BucketList = Shapes::ListShape.new(name: 'BucketList')
    BucketValueList = Shapes::ListShape.new(name: 'BucketValueList')
    BulkFileFormat = Shapes::StringShape.new(name: 'BulkFileFormat')
    BulkFileName = Shapes::StringShape.new(name: 'BulkFileName')
    BulkJobArn = Shapes::StringShape.new(name: 'BulkJobArn')
    BulkJobArnOrIdentifier = Shapes::StringShape.new(name: 'BulkJobArnOrIdentifier')
    BulkJobId = Shapes::StringShape.new(name: 'BulkJobId')
    BulkJobResult = Shapes::StructureShape.new(name: 'BulkJobResult')
    BulkJobResultList = Shapes::ListShape.new(name: 'BulkJobResultList')
    BulkJobStatus = Shapes::StringShape.new(name: 'BulkJobStatus')
    BulkOperationType = Shapes::StringShape.new(name: 'BulkOperationType')
    BulkRecordStatus = Shapes::StringShape.new(name: 'BulkRecordStatus')
    BulkReportStatus = Shapes::StringShape.new(name: 'BulkReportStatus')
    BulkReportType = Shapes::StringShape.new(name: 'BulkReportType')
    BulkReportUrl = Shapes::StringShape.new(name: 'BulkReportUrl')
    CatalogIdentifier = Shapes::StringShape.new(name: 'CatalogIdentifier')
    Channel = Shapes::StringShape.new(name: 'Channel')
    ChannelName = Shapes::StringShape.new(name: 'ChannelName')
    ChannelRecommendation = Shapes::StructureShape.new(name: 'ChannelRecommendation')
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
    ContactWindow = Shapes::StringShape.new(name: 'ContactWindow')
    ContextIdentifier = Shapes::StringShape.new(name: 'ContextIdentifier')
    ContextIdentifiers = Shapes::ListShape.new(name: 'ContextIdentifiers')
    CosellMotion = Shapes::StringShape.new(name: 'CosellMotion')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CreateCustomerAccountRequest = Shapes::StructureShape.new(name: 'CreateCustomerAccountRequest')
    CreateCustomerAccountResponse = Shapes::StructureShape.new(name: 'CreateCustomerAccountResponse')
    CreateEngagementContextRequest = Shapes::StructureShape.new(name: 'CreateEngagementContextRequest')
    CreateEngagementContextResponse = Shapes::StructureShape.new(name: 'CreateEngagementContextResponse')
    CreateEngagementInvitationRequest = Shapes::StructureShape.new(name: 'CreateEngagementInvitationRequest')
    CreateEngagementInvitationResponse = Shapes::StructureShape.new(name: 'CreateEngagementInvitationResponse')
    CreateEngagementRequest = Shapes::StructureShape.new(name: 'CreateEngagementRequest')
    CreateEngagementResponse = Shapes::StructureShape.new(name: 'CreateEngagementResponse')
    CreateOpportunityRequest = Shapes::StructureShape.new(name: 'CreateOpportunityRequest')
    CreateOpportunityRequestPartnerOpportunityIdentifierString = Shapes::StringShape.new(name: 'CreateOpportunityRequestPartnerOpportunityIdentifierString')
    CreateOpportunityResponse = Shapes::StructureShape.new(name: 'CreateOpportunityResponse')
    CreateResourceSnapshotJobRequest = Shapes::StructureShape.new(name: 'CreateResourceSnapshotJobRequest')
    CreateResourceSnapshotJobResponse = Shapes::StructureShape.new(name: 'CreateResourceSnapshotJobResponse')
    CreateResourceSnapshotRequest = Shapes::StructureShape.new(name: 'CreateResourceSnapshotRequest')
    CreateResourceSnapshotResponse = Shapes::StructureShape.new(name: 'CreateResourceSnapshotResponse')
    CreatedDateFilter = Shapes::StructureShape.new(name: 'CreatedDateFilter')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    Customer = Shapes::StructureShape.new(name: 'Customer')
    CustomerAccountArn = Shapes::StringShape.new(name: 'CustomerAccountArn')
    CustomerAccountArnOrIdentifier = Shapes::StringShape.new(name: 'CustomerAccountArnOrIdentifier')
    CustomerAccountBulkJobFilter = Shapes::StructureShape.new(name: 'CustomerAccountBulkJobFilter')
    CustomerAccountBulkJobSummary = Shapes::StructureShape.new(name: 'CustomerAccountBulkJobSummary')
    CustomerAccountBulkJobSummaryList = Shapes::ListShape.new(name: 'CustomerAccountBulkJobSummaryList')
    CustomerAccountContext = Shapes::StructureShape.new(name: 'CustomerAccountContext')
    CustomerAccountData = Shapes::StructureShape.new(name: 'CustomerAccountData')
    CustomerAccountDataCompanyNameString = Shapes::StringShape.new(name: 'CustomerAccountDataCompanyNameString')
    CustomerAccountDataDunsString = Shapes::StringShape.new(name: 'CustomerAccountDataDunsString')
    CustomerAccountDataOtherIndustryString = Shapes::StringShape.new(name: 'CustomerAccountDataOtherIndustryString')
    CustomerAccountDataParentCompanyNameString = Shapes::StringShape.new(name: 'CustomerAccountDataParentCompanyNameString')
    CustomerAccountDataWebsiteUrlString = Shapes::StringShape.new(name: 'CustomerAccountDataWebsiteUrlString')
    CustomerAccountDetailsSummary = Shapes::StructureShape.new(name: 'CustomerAccountDetailsSummary')
    CustomerAccountDetailsSummaryCompanyNameString = Shapes::StringShape.new(name: 'CustomerAccountDetailsSummaryCompanyNameString')
    CustomerAccountFailureReason = Shapes::StringShape.new(name: 'CustomerAccountFailureReason')
    CustomerAccountId = Shapes::StringShape.new(name: 'CustomerAccountId')
    CustomerAccountSort = Shapes::StructureShape.new(name: 'CustomerAccountSort')
    CustomerAccountSummary = Shapes::StructureShape.new(name: 'CustomerAccountSummary')
    CustomerAccountSummaryList = Shapes::ListShape.new(name: 'CustomerAccountSummaryList')
    CustomerAccountTagList = Shapes::ListShape.new(name: 'CustomerAccountTagList')
    CustomerAction = Shapes::StringShape.new(name: 'CustomerAction')
    CustomerContactsList = Shapes::ListShape.new(name: 'CustomerContactsList')
    CustomerProjectsContext = Shapes::StructureShape.new(name: 'CustomerProjectsContext')
    CustomerSummary = Shapes::StructureShape.new(name: 'CustomerSummary')
    Date = Shapes::StringShape.new(name: 'Date')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DayOfWeek = Shapes::StringShape.new(name: 'DayOfWeek')
    DeleteCustomerAccountRequest = Shapes::StructureShape.new(name: 'DeleteCustomerAccountRequest')
    DeleteCustomerAccountResponse = Shapes::StructureShape.new(name: 'DeleteCustomerAccountResponse')
    DeleteResourceSnapshotJobRequest = Shapes::StructureShape.new(name: 'DeleteResourceSnapshotJobRequest')
    DeliveryModel = Shapes::StringShape.new(name: 'DeliveryModel')
    DeliveryModels = Shapes::ListShape.new(name: 'DeliveryModels')
    DisassociateOpportunityRequest = Shapes::StructureShape.new(name: 'DisassociateOpportunityRequest')
    DisassociateOpportunityRequestRelatedEntityIdentifierString = Shapes::StringShape.new(name: 'DisassociateOpportunityRequestRelatedEntityIdentifierString')
    Domain = Shapes::StringShape.new(name: 'Domain')
    Double = Shapes::FloatShape.new(name: 'Double')
    DunsNumber = Shapes::StringShape.new(name: 'DunsNumber')
    EligibleProgramList = Shapes::ListShape.new(name: 'EligibleProgramList')
    EligibleProgramsList = Shapes::ListShape.new(name: 'EligibleProgramsList')
    Email = Shapes::StringShape.new(name: 'Email')
    EngagementArn = Shapes::StringShape.new(name: 'EngagementArn')
    EngagementArnOrIdentifier = Shapes::StringShape.new(name: 'EngagementArnOrIdentifier')
    EngagementContextDetails = Shapes::StructureShape.new(name: 'EngagementContextDetails')
    EngagementContextIdentifier = Shapes::StringShape.new(name: 'EngagementContextIdentifier')
    EngagementContextPayload = Shapes::UnionShape.new(name: 'EngagementContextPayload')
    EngagementContextType = Shapes::StringShape.new(name: 'EngagementContextType')
    EngagementContextTypeList = Shapes::ListShape.new(name: 'EngagementContextTypeList')
    EngagementContexts = Shapes::ListShape.new(name: 'EngagementContexts')
    EngagementCustomer = Shapes::StructureShape.new(name: 'EngagementCustomer')
    EngagementCustomerBusinessProblem = Shapes::StringShape.new(name: 'EngagementCustomerBusinessProblem')
    EngagementCustomerProjectDetails = Shapes::StructureShape.new(name: 'EngagementCustomerProjectDetails')
    EngagementCustomerProjectDetailsTargetCompletionDateString = Shapes::StringShape.new(name: 'EngagementCustomerProjectDetailsTargetCompletionDateString')
    EngagementCustomerProjectTitle = Shapes::StringShape.new(name: 'EngagementCustomerProjectTitle')
    EngagementDescription = Shapes::StringShape.new(name: 'EngagementDescription')
    EngagementGroupArn = Shapes::StringShape.new(name: 'EngagementGroupArn')
    EngagementGroupArnOrIdentifier = Shapes::StringShape.new(name: 'EngagementGroupArnOrIdentifier')
    EngagementGroupDescription = Shapes::StringShape.new(name: 'EngagementGroupDescription')
    EngagementGroupIdentifiers = Shapes::ListShape.new(name: 'EngagementGroupIdentifiers')
    EngagementGroupName = Shapes::StringShape.new(name: 'EngagementGroupName')
    EngagementGroupSort = Shapes::StructureShape.new(name: 'EngagementGroupSort')
    EngagementGroupSortName = Shapes::StringShape.new(name: 'EngagementGroupSortName')
    EngagementGroupSummaries = Shapes::ListShape.new(name: 'EngagementGroupSummaries')
    EngagementGroupSummary = Shapes::StructureShape.new(name: 'EngagementGroupSummary')
    EngagementIdentifier = Shapes::StringShape.new(name: 'EngagementIdentifier')
    EngagementIdentifierList = Shapes::ListShape.new(name: 'EngagementIdentifierList')
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
    EngagementProspectingResult = Shapes::StructureShape.new(name: 'EngagementProspectingResult')
    EngagementProspectingResultEngagementContextIdString = Shapes::StringShape.new(name: 'EngagementProspectingResultEngagementContextIdString')
    EngagementProspectingResultList = Shapes::ListShape.new(name: 'EngagementProspectingResultList')
    EngagementResourceAssociationSummary = Shapes::StructureShape.new(name: 'EngagementResourceAssociationSummary')
    EngagementResourceAssociationSummaryList = Shapes::ListShape.new(name: 'EngagementResourceAssociationSummaryList')
    EngagementScore = Shapes::StringShape.new(name: 'EngagementScore')
    EngagementScoreLevel = Shapes::StringShape.new(name: 'EngagementScoreLevel')
    EngagementSearchFilter = Shapes::StructureShape.new(name: 'EngagementSearchFilter')
    EngagementSearchFilterList = Shapes::ListShape.new(name: 'EngagementSearchFilterList')
    EngagementSearchFilterName = Shapes::StringShape.new(name: 'EngagementSearchFilterName')
    EngagementSearchFilterValue = Shapes::UnionShape.new(name: 'EngagementSearchFilterValue')
    EngagementSearchFilterValues = Shapes::ListShape.new(name: 'EngagementSearchFilterValues')
    EngagementSearchKeyword = Shapes::StringShape.new(name: 'EngagementSearchKeyword')
    EngagementSearchPredicate = Shapes::StructureShape.new(name: 'EngagementSearchPredicate')
    EngagementSearchSort = Shapes::StructureShape.new(name: 'EngagementSearchSort')
    EngagementSearchSortName = Shapes::StringShape.new(name: 'EngagementSearchSortName')
    EngagementSearchStringValue = Shapes::StringShape.new(name: 'EngagementSearchStringValue')
    EngagementSearchSummary = Shapes::StructureShape.new(name: 'EngagementSearchSummary')
    EngagementSearchSummaryList = Shapes::ListShape.new(name: 'EngagementSearchSummaryList')
    EngagementSort = Shapes::StructureShape.new(name: 'EngagementSort')
    EngagementSortName = Shapes::StringShape.new(name: 'EngagementSortName')
    EngagementSummary = Shapes::StructureShape.new(name: 'EngagementSummary')
    EngagementSummaryList = Shapes::ListShape.new(name: 'EngagementSummaryList')
    EngagementTitle = Shapes::StringShape.new(name: 'EngagementTitle')
    EngagementUseCase = Shapes::StringShape.new(name: 'EngagementUseCase')
    EnrichmentContext = Shapes::StructureShape.new(name: 'EnrichmentContext')
    EnrichmentStatus = Shapes::StringShape.new(name: 'EnrichmentStatus')
    EnrichmentValue = Shapes::StringShape.new(name: 'EnrichmentValue')
    EstimationUrl = Shapes::StringShape.new(name: 'EstimationUrl')
    ExpectedContractDuration = Shapes::StructureShape.new(name: 'ExpectedContractDuration')
    ExpectedContractDurationTerm = Shapes::StringShape.new(name: 'ExpectedContractDurationTerm')
    ExpectedCustomerSpend = Shapes::StructureShape.new(name: 'ExpectedCustomerSpend')
    ExpectedCustomerSpendList = Shapes::ListShape.new(name: 'ExpectedCustomerSpendList')
    ExpectedCustomerSpendTargetCompanyString = Shapes::StringShape.new(name: 'ExpectedCustomerSpendTargetCompanyString')
    FileName = Shapes::StringShape.new(name: 'FileName')
    FileUri = Shapes::StringShape.new(name: 'FileUri')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterCondition = Shapes::StructureShape.new(name: 'FilterCondition')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterValue = Shapes::UnionShape.new(name: 'FilterValue')
    FilterableField = Shapes::StringShape.new(name: 'FilterableField')
    GetAwsOpportunitySummaryRequest = Shapes::StructureShape.new(name: 'GetAwsOpportunitySummaryRequest')
    GetAwsOpportunitySummaryResponse = Shapes::StructureShape.new(name: 'GetAwsOpportunitySummaryResponse')
    GetCustomerAccountBulkJobReportUrlRequest = Shapes::StructureShape.new(name: 'GetCustomerAccountBulkJobReportUrlRequest')
    GetCustomerAccountBulkJobReportUrlResponse = Shapes::StructureShape.new(name: 'GetCustomerAccountBulkJobReportUrlResponse')
    GetCustomerAccountBulkJobRequest = Shapes::StructureShape.new(name: 'GetCustomerAccountBulkJobRequest')
    GetCustomerAccountBulkJobResponse = Shapes::StructureShape.new(name: 'GetCustomerAccountBulkJobResponse')
    GetCustomerAccountRequest = Shapes::StructureShape.new(name: 'GetCustomerAccountRequest')
    GetCustomerAccountResponse = Shapes::StructureShape.new(name: 'GetCustomerAccountResponse')
    GetCustomerAccountStatisticsRequest = Shapes::StructureShape.new(name: 'GetCustomerAccountStatisticsRequest')
    GetCustomerAccountStatisticsResponse = Shapes::StructureShape.new(name: 'GetCustomerAccountStatisticsResponse')
    GetEngagementInvitationRequest = Shapes::StructureShape.new(name: 'GetEngagementInvitationRequest')
    GetEngagementInvitationResponse = Shapes::StructureShape.new(name: 'GetEngagementInvitationResponse')
    GetEngagementInvitationResponseSenderCompanyNameString = Shapes::StringShape.new(name: 'GetEngagementInvitationResponseSenderCompanyNameString')
    GetEngagementRequest = Shapes::StructureShape.new(name: 'GetEngagementRequest')
    GetEngagementResponse = Shapes::StructureShape.new(name: 'GetEngagementResponse')
    GetOpportunityBulkJobReportUrlRequest = Shapes::StructureShape.new(name: 'GetOpportunityBulkJobReportUrlRequest')
    GetOpportunityBulkJobReportUrlResponse = Shapes::StructureShape.new(name: 'GetOpportunityBulkJobReportUrlResponse')
    GetOpportunityRequest = Shapes::StructureShape.new(name: 'GetOpportunityRequest')
    GetOpportunityResponse = Shapes::StructureShape.new(name: 'GetOpportunityResponse')
    GetOpportunityResponsePartnerOpportunityIdentifierString = Shapes::StringShape.new(name: 'GetOpportunityResponsePartnerOpportunityIdentifierString')
    GetProspectingFromEngagementTaskRequest = Shapes::StructureShape.new(name: 'GetProspectingFromEngagementTaskRequest')
    GetProspectingFromEngagementTaskResponse = Shapes::StructureShape.new(name: 'GetProspectingFromEngagementTaskResponse')
    GetResourceSnapshotJobRequest = Shapes::StructureShape.new(name: 'GetResourceSnapshotJobRequest')
    GetResourceSnapshotJobResponse = Shapes::StructureShape.new(name: 'GetResourceSnapshotJobResponse')
    GetResourceSnapshotRequest = Shapes::StructureShape.new(name: 'GetResourceSnapshotRequest')
    GetResourceSnapshotResponse = Shapes::StructureShape.new(name: 'GetResourceSnapshotResponse')
    GetSellingSystemSettingsRequest = Shapes::StructureShape.new(name: 'GetSellingSystemSettingsRequest')
    GetSellingSystemSettingsResponse = Shapes::StructureShape.new(name: 'GetSellingSystemSettingsResponse')
    GroupId = Shapes::StringShape.new(name: 'GroupId')
    Industry = Shapes::StringShape.new(name: 'Industry')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Invitation = Shapes::StructureShape.new(name: 'Invitation')
    InvitationMessage = Shapes::StringShape.new(name: 'InvitationMessage')
    InvitationProspectingResultAws = Shapes::StructureShape.new(name: 'InvitationProspectingResultAws')
    InvitationStatus = Shapes::StringShape.new(name: 'InvitationStatus')
    InvitationStatusList = Shapes::ListShape.new(name: 'InvitationStatusList')
    InvolvementTypeChangeReason = Shapes::StringShape.new(name: 'InvolvementTypeChangeReason')
    Issue = Shapes::StructureShape.new(name: 'Issue')
    IssueList = Shapes::ListShape.new(name: 'IssueList')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobTitle = Shapes::StringShape.new(name: 'JobTitle')
    LastModifiedDate = Shapes::StructureShape.new(name: 'LastModifiedDate')
    LeadAddress = Shapes::StructureShape.new(name: 'LeadAddress')
    LeadAddressCityString = Shapes::StringShape.new(name: 'LeadAddressCityString')
    LeadAddressPostalCodeString = Shapes::StringShape.new(name: 'LeadAddressPostalCodeString')
    LeadAddressStateOrRegionString = Shapes::StringShape.new(name: 'LeadAddressStateOrRegionString')
    LeadBusinessProblem = Shapes::StringShape.new(name: 'LeadBusinessProblem')
    LeadContact = Shapes::StructureShape.new(name: 'LeadContact')
    LeadContext = Shapes::StructureShape.new(name: 'LeadContext')
    LeadCountryCode = Shapes::StringShape.new(name: 'LeadCountryCode')
    LeadCustomer = Shapes::StructureShape.new(name: 'LeadCustomer')
    LeadEmail = Shapes::StringShape.new(name: 'LeadEmail')
    LeadIndustry = Shapes::StringShape.new(name: 'LeadIndustry')
    LeadInsights = Shapes::StructureShape.new(name: 'LeadInsights')
    LeadInteraction = Shapes::StructureShape.new(name: 'LeadInteraction')
    LeadInteractionList = Shapes::ListShape.new(name: 'LeadInteractionList')
    LeadInvitationCustomer = Shapes::StructureShape.new(name: 'LeadInvitationCustomer')
    LeadInvitationInteraction = Shapes::StructureShape.new(name: 'LeadInvitationInteraction')
    LeadInvitationPayload = Shapes::StructureShape.new(name: 'LeadInvitationPayload')
    LeadJobTitle = Shapes::StringShape.new(name: 'LeadJobTitle')
    LeadMarketSegment = Shapes::StringShape.new(name: 'LeadMarketSegment')
    LeadPhoneNumber = Shapes::StringShape.new(name: 'LeadPhoneNumber')
    LeadQualificationStatus = Shapes::StringShape.new(name: 'LeadQualificationStatus')
    LeadSourceId = Shapes::StringShape.new(name: 'LeadSourceId')
    LeadSourceName = Shapes::StringShape.new(name: 'LeadSourceName')
    LeadSourceType = Shapes::StringShape.new(name: 'LeadSourceType')
    LeadWebsiteUrl = Shapes::StringShape.new(name: 'LeadWebsiteUrl')
    LeadsNextToken = Shapes::StringShape.new(name: 'LeadsNextToken')
    LifeCycle = Shapes::StructureShape.new(name: 'LifeCycle')
    LifeCycleForView = Shapes::StructureShape.new(name: 'LifeCycleForView')
    LifeCycleForViewNextStepsString = Shapes::StringShape.new(name: 'LifeCycleForViewNextStepsString')
    LifeCycleNextStepsHistoryList = Shapes::ListShape.new(name: 'LifeCycleNextStepsHistoryList')
    LifeCycleNextStepsString = Shapes::StringShape.new(name: 'LifeCycleNextStepsString')
    LifeCycleSummary = Shapes::StructureShape.new(name: 'LifeCycleSummary')
    LifeCycleSummaryNextStepsString = Shapes::StringShape.new(name: 'LifeCycleSummaryNextStepsString')
    ListCustomerAccountBulkJobResultsRequest = Shapes::StructureShape.new(name: 'ListCustomerAccountBulkJobResultsRequest')
    ListCustomerAccountBulkJobResultsResponse = Shapes::StructureShape.new(name: 'ListCustomerAccountBulkJobResultsResponse')
    ListCustomerAccountBulkJobsRequest = Shapes::StructureShape.new(name: 'ListCustomerAccountBulkJobsRequest')
    ListCustomerAccountBulkJobsResponse = Shapes::StructureShape.new(name: 'ListCustomerAccountBulkJobsResponse')
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
    ListEngagementGroupsRequest = Shapes::StructureShape.new(name: 'ListEngagementGroupsRequest')
    ListEngagementGroupsResponse = Shapes::StructureShape.new(name: 'ListEngagementGroupsResponse')
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
    ListOpportunityBulkJobResultsRequest = Shapes::StructureShape.new(name: 'ListOpportunityBulkJobResultsRequest')
    ListOpportunityBulkJobResultsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOpportunityBulkJobResultsRequestMaxResultsInteger')
    ListOpportunityBulkJobResultsResponse = Shapes::StructureShape.new(name: 'ListOpportunityBulkJobResultsResponse')
    ListOpportunityBulkJobsRequest = Shapes::StructureShape.new(name: 'ListOpportunityBulkJobsRequest')
    ListOpportunityBulkJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOpportunityBulkJobsRequestMaxResultsInteger')
    ListOpportunityBulkJobsResponse = Shapes::StructureShape.new(name: 'ListOpportunityBulkJobsResponse')
    ListOpportunityFromEngagementTaskSummaries = Shapes::ListShape.new(name: 'ListOpportunityFromEngagementTaskSummaries')
    ListOpportunityFromEngagementTaskSummary = Shapes::StructureShape.new(name: 'ListOpportunityFromEngagementTaskSummary')
    ListOpportunityFromEngagementTasksRequest = Shapes::StructureShape.new(name: 'ListOpportunityFromEngagementTasksRequest')
    ListOpportunityFromEngagementTasksRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListOpportunityFromEngagementTasksRequestMaxResultsInteger')
    ListOpportunityFromEngagementTasksRequestNextTokenString = Shapes::StringShape.new(name: 'ListOpportunityFromEngagementTasksRequestNextTokenString')
    ListOpportunityFromEngagementTasksResponse = Shapes::StructureShape.new(name: 'ListOpportunityFromEngagementTasksResponse')
    ListProspectingFromEngagementTasksRequest = Shapes::StructureShape.new(name: 'ListProspectingFromEngagementTasksRequest')
    ListProspectingFromEngagementTasksResponse = Shapes::StructureShape.new(name: 'ListProspectingFromEngagementTasksResponse')
    ListProspectingFromEngagementTasksResponseNextTokenString = Shapes::StringShape.new(name: 'ListProspectingFromEngagementTasksResponseNextTokenString')
    ListResourceSnapshotJobsRequest = Shapes::StructureShape.new(name: 'ListResourceSnapshotJobsRequest')
    ListResourceSnapshotJobsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListResourceSnapshotJobsRequestMaxResultsInteger')
    ListResourceSnapshotJobsResponse = Shapes::StructureShape.new(name: 'ListResourceSnapshotJobsResponse')
    ListResourceSnapshotsRequest = Shapes::StructureShape.new(name: 'ListResourceSnapshotsRequest')
    ListResourceSnapshotsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListResourceSnapshotsRequestMaxResultsInteger')
    ListResourceSnapshotsResponse = Shapes::StructureShape.new(name: 'ListResourceSnapshotsResponse')
    ListSolutionsRequest = Shapes::StructureShape.new(name: 'ListSolutionsRequest')
    ListSolutionsRequestAwsMarketplaceSolutionArnList = Shapes::ListShape.new(name: 'ListSolutionsRequestAwsMarketplaceSolutionArnList')
    ListSolutionsRequestCategoryList = Shapes::ListShape.new(name: 'ListSolutionsRequestCategoryList')
    ListSolutionsRequestIdentifierList = Shapes::ListShape.new(name: 'ListSolutionsRequestIdentifierList')
    ListSolutionsRequestStatusList = Shapes::ListShape.new(name: 'ListSolutionsRequestStatusList')
    ListSolutionsResponse = Shapes::StructureShape.new(name: 'ListSolutionsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTasksSortBase = Shapes::StructureShape.new(name: 'ListTasksSortBase')
    ListTasksSortName = Shapes::StringShape.new(name: 'ListTasksSortName')
    Long = Shapes::IntegerShape.new(name: 'Long')
    Marketing = Shapes::StructureShape.new(name: 'Marketing')
    MarketingSource = Shapes::StringShape.new(name: 'MarketingSource')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberCompanyName = Shapes::StringShape.new(name: 'MemberCompanyName')
    MemberPageSize = Shapes::IntegerShape.new(name: 'MemberPageSize')
    MonetaryAmount = Shapes::StringShape.new(name: 'MonetaryAmount')
    MonetaryValue = Shapes::StructureShape.new(name: 'MonetaryValue')
    MonetaryValueAmountString = Shapes::StringShape.new(name: 'MonetaryValueAmountString')
    Name = Shapes::StringShape.new(name: 'Name')
    NationalSecurity = Shapes::StringShape.new(name: 'NationalSecurity')
    NextStepsHistory = Shapes::StructureShape.new(name: 'NextStepsHistory')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OpportunityArn = Shapes::StringShape.new(name: 'OpportunityArn')
    OpportunityBulkJobSummary = Shapes::StructureShape.new(name: 'OpportunityBulkJobSummary')
    OpportunityBulkJobSummaryList = Shapes::ListShape.new(name: 'OpportunityBulkJobSummaryList')
    OpportunityEngagementInvitationSort = Shapes::StructureShape.new(name: 'OpportunityEngagementInvitationSort')
    OpportunityEngagementInvitationSortName = Shapes::StringShape.new(name: 'OpportunityEngagementInvitationSortName')
    OpportunityIdentifier = Shapes::StringShape.new(name: 'OpportunityIdentifier')
    OpportunityIdentifiers = Shapes::ListShape.new(name: 'OpportunityIdentifiers')
    OpportunityInvitationPayload = Shapes::StructureShape.new(name: 'OpportunityInvitationPayload')
    OpportunityOrigin = Shapes::StringShape.new(name: 'OpportunityOrigin')
    OpportunityQuality = Shapes::StructureShape.new(name: 'OpportunityQuality')
    OpportunityQualityScoreInteger = Shapes::IntegerShape.new(name: 'OpportunityQualityScoreInteger')
    OpportunitySearchAccount = Shapes::StructureShape.new(name: 'OpportunitySearchAccount')
    OpportunitySearchAccountCompanyNameString = Shapes::StringShape.new(name: 'OpportunitySearchAccountCompanyNameString')
    OpportunitySearchAddress = Shapes::StructureShape.new(name: 'OpportunitySearchAddress')
    OpportunitySearchAwsSummary = Shapes::StructureShape.new(name: 'OpportunitySearchAwsSummary')
    OpportunitySearchCustomer = Shapes::StructureShape.new(name: 'OpportunitySearchCustomer')
    OpportunitySearchExpectedCustomerSpend = Shapes::StructureShape.new(name: 'OpportunitySearchExpectedCustomerSpend')
    OpportunitySearchExpectedCustomerSpendList = Shapes::ListShape.new(name: 'OpportunitySearchExpectedCustomerSpendList')
    OpportunitySearchFilter = Shapes::StructureShape.new(name: 'OpportunitySearchFilter')
    OpportunitySearchFilterList = Shapes::ListShape.new(name: 'OpportunitySearchFilterList')
    OpportunitySearchFilterName = Shapes::StringShape.new(name: 'OpportunitySearchFilterName')
    OpportunitySearchFilterValue = Shapes::UnionShape.new(name: 'OpportunitySearchFilterValue')
    OpportunitySearchFilterValues = Shapes::ListShape.new(name: 'OpportunitySearchFilterValues')
    OpportunitySearchInsights = Shapes::StructureShape.new(name: 'OpportunitySearchInsights')
    OpportunitySearchLifeCycle = Shapes::StructureShape.new(name: 'OpportunitySearchLifeCycle')
    OpportunitySearchLifeCycleNextStepsString = Shapes::StringShape.new(name: 'OpportunitySearchLifeCycleNextStepsString')
    OpportunitySearchOpportunityQuality = Shapes::StructureShape.new(name: 'OpportunitySearchOpportunityQuality')
    OpportunitySearchOpportunityQualityScoreInteger = Shapes::IntegerShape.new(name: 'OpportunitySearchOpportunityQualityScoreInteger')
    OpportunitySearchPredicate = Shapes::StructureShape.new(name: 'OpportunitySearchPredicate')
    OpportunitySearchProject = Shapes::StructureShape.new(name: 'OpportunitySearchProject')
    OpportunitySearchProjectTitleString = Shapes::StringShape.new(name: 'OpportunitySearchProjectTitleString')
    OpportunitySearchRelatedEntityIdentifiers = Shapes::StructureShape.new(name: 'OpportunitySearchRelatedEntityIdentifiers')
    OpportunitySearchSort = Shapes::StructureShape.new(name: 'OpportunitySearchSort')
    OpportunitySearchSortName = Shapes::StringShape.new(name: 'OpportunitySearchSortName')
    OpportunitySearchSummaries = Shapes::ListShape.new(name: 'OpportunitySearchSummaries')
    OpportunitySearchSummary = Shapes::StructureShape.new(name: 'OpportunitySearchSummary')
    OpportunitySearchSummaryPartnerOpportunityIdentifierString = Shapes::StringShape.new(name: 'OpportunitySearchSummaryPartnerOpportunityIdentifierString')
    OpportunitySearchTeamMember = Shapes::StructureShape.new(name: 'OpportunitySearchTeamMember')
    OpportunitySearchTeamMemberFirstNameString = Shapes::StringShape.new(name: 'OpportunitySearchTeamMemberFirstNameString')
    OpportunitySearchTeamMemberLastNameString = Shapes::StringShape.new(name: 'OpportunitySearchTeamMemberLastNameString')
    OpportunitySearchTeamMembersList = Shapes::ListShape.new(name: 'OpportunitySearchTeamMembersList')
    OpportunitySort = Shapes::StructureShape.new(name: 'OpportunitySort')
    OpportunitySortName = Shapes::StringShape.new(name: 'OpportunitySortName')
    OpportunitySummaries = Shapes::ListShape.new(name: 'OpportunitySummaries')
    OpportunitySummary = Shapes::StructureShape.new(name: 'OpportunitySummary')
    OpportunitySummaryView = Shapes::StructureShape.new(name: 'OpportunitySummaryView')
    OpportunityType = Shapes::StringShape.new(name: 'OpportunityType')
    PageSize = Shapes::IntegerShape.new(name: 'PageSize')
    ParticipantType = Shapes::StringShape.new(name: 'ParticipantType')
    PartnerAccountIdentifier = Shapes::StringShape.new(name: 'PartnerAccountIdentifier')
    PartnerOpportunityTeamMembersList = Shapes::ListShape.new(name: 'PartnerOpportunityTeamMembersList')
    Payload = Shapes::UnionShape.new(name: 'Payload')
    PaymentFrequency = Shapes::StringShape.new(name: 'PaymentFrequency')
    PhoneNumber = Shapes::StringShape.new(name: 'PhoneNumber')
    PreferredContactWindow = Shapes::StructureShape.new(name: 'PreferredContactWindow')
    PreferredContactWindowTimezoneString = Shapes::StringShape.new(name: 'PreferredContactWindowTimezoneString')
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
    ProspectingAccountName = Shapes::StringShape.new(name: 'ProspectingAccountName')
    ProspectingCompanySize = Shapes::StringShape.new(name: 'ProspectingCompanySize')
    ProspectingFromEngagementTaskSort = Shapes::StructureShape.new(name: 'ProspectingFromEngagementTaskSort')
    ProspectingFromEngagementTaskSortName = Shapes::StringShape.new(name: 'ProspectingFromEngagementTaskSortName')
    ProspectingGeo = Shapes::StringShape.new(name: 'ProspectingGeo')
    ProspectingInsights = Shapes::StructureShape.new(name: 'ProspectingInsights')
    ProspectingPublicProfileSummary = Shapes::StringShape.new(name: 'ProspectingPublicProfileSummary')
    ProspectingRegion = Shapes::StringShape.new(name: 'ProspectingRegion')
    ProspectingResult = Shapes::StructureShape.new(name: 'ProspectingResult')
    ProspectingResultAws = Shapes::StructureShape.new(name: 'ProspectingResultAws')
    ProspectingResultCustomer = Shapes::StructureShape.new(name: 'ProspectingResultCustomer')
    ProspectingSegment = Shapes::StringShape.new(name: 'ProspectingSegment')
    ProspectingSubIndustry = Shapes::StringShape.new(name: 'ProspectingSubIndustry')
    ProspectingSubRegion = Shapes::StringShape.new(name: 'ProspectingSubRegion')
    ProspectingTaskArn = Shapes::StringShape.new(name: 'ProspectingTaskArn')
    ProspectingTaskIdentifier = Shapes::StringShape.new(name: 'ProspectingTaskIdentifier')
    ProspectingTaskStatus = Shapes::StringShape.new(name: 'ProspectingTaskStatus')
    ProspectingTaskSummary = Shapes::StructureShape.new(name: 'ProspectingTaskSummary')
    ProspectingTaskSummaryList = Shapes::ListShape.new(name: 'ProspectingTaskSummaryList')
    PutSellingSystemSettingsRequest = Shapes::StructureShape.new(name: 'PutSellingSystemSettingsRequest')
    PutSellingSystemSettingsResponse = Shapes::StructureShape.new(name: 'PutSellingSystemSettingsResponse')
    ReadinessLevel = Shapes::StringShape.new(name: 'ReadinessLevel')
    ReasonCode = Shapes::StringShape.new(name: 'ReasonCode')
    Receiver = Shapes::UnionShape.new(name: 'Receiver')
    ReceiverResponsibility = Shapes::StringShape.new(name: 'ReceiverResponsibility')
    ReceiverResponsibilityList = Shapes::ListShape.new(name: 'ReceiverResponsibilityList')
    Recommendation = Shapes::StructureShape.new(name: 'Recommendation')
    RecommendationAttributeMap = Shapes::MapShape.new(name: 'RecommendationAttributeMap')
    RecommendationList = Shapes::ListShape.new(name: 'RecommendationList')
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
    SearchAwsAccount = Shapes::StringShape.new(name: 'SearchAwsAccount')
    SearchCustomerAccountsRequest = Shapes::StructureShape.new(name: 'SearchCustomerAccountsRequest')
    SearchCustomerAccountsRequestMaxResultsInteger = Shapes::IntegerShape.new(name: 'SearchCustomerAccountsRequestMaxResultsInteger')
    SearchCustomerAccountsResponse = Shapes::StructureShape.new(name: 'SearchCustomerAccountsResponse')
    SearchEngagementScore = Shapes::StringShape.new(name: 'SearchEngagementScore')
    SearchEngagementsRequest = Shapes::StructureShape.new(name: 'SearchEngagementsRequest')
    SearchEngagementsResponse = Shapes::StructureShape.new(name: 'SearchEngagementsResponse')
    SearchFilterValue = Shapes::StringShape.new(name: 'SearchFilterValue')
    SearchKeyword = Shapes::StringShape.new(name: 'SearchKeyword')
    SearchOpportunitiesRequest = Shapes::StructureShape.new(name: 'SearchOpportunitiesRequest')
    SearchOpportunitiesResponse = Shapes::StructureShape.new(name: 'SearchOpportunitiesResponse')
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
    SortableField = Shapes::StringShape.new(name: 'SortableField')
    Stage = Shapes::StringShape.new(name: 'Stage')
    StartCustomerAccountBulkJobRequest = Shapes::StructureShape.new(name: 'StartCustomerAccountBulkJobRequest')
    StartCustomerAccountBulkJobResponse = Shapes::StructureShape.new(name: 'StartCustomerAccountBulkJobResponse')
    StartEngagementByAcceptingInvitationTaskRequest = Shapes::StructureShape.new(name: 'StartEngagementByAcceptingInvitationTaskRequest')
    StartEngagementByAcceptingInvitationTaskResponse = Shapes::StructureShape.new(name: 'StartEngagementByAcceptingInvitationTaskResponse')
    StartEngagementFromOpportunityTaskRequest = Shapes::StructureShape.new(name: 'StartEngagementFromOpportunityTaskRequest')
    StartEngagementFromOpportunityTaskResponse = Shapes::StructureShape.new(name: 'StartEngagementFromOpportunityTaskResponse')
    StartOpportunityBulkJobRequest = Shapes::StructureShape.new(name: 'StartOpportunityBulkJobRequest')
    StartOpportunityBulkJobResponse = Shapes::StructureShape.new(name: 'StartOpportunityBulkJobResponse')
    StartOpportunityFromEngagementTaskRequest = Shapes::StructureShape.new(name: 'StartOpportunityFromEngagementTaskRequest')
    StartOpportunityFromEngagementTaskResponse = Shapes::StructureShape.new(name: 'StartOpportunityFromEngagementTaskResponse')
    StartProspectingFromEngagementTaskRequest = Shapes::StructureShape.new(name: 'StartProspectingFromEngagementTaskRequest')
    StartProspectingFromEngagementTaskResponse = Shapes::StructureShape.new(name: 'StartProspectingFromEngagementTaskResponse')
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
    TargetCloseDateFilter = Shapes::StructureShape.new(name: 'TargetCloseDateFilter')
    TaskArn = Shapes::StringShape.new(name: 'TaskArn')
    TaskArnOrIdentifier = Shapes::StringShape.new(name: 'TaskArnOrIdentifier')
    TaskIdentifier = Shapes::StringShape.new(name: 'TaskIdentifier')
    TaskIdentifierList = Shapes::ListShape.new(name: 'TaskIdentifierList')
    TaskIdentifiers = Shapes::ListShape.new(name: 'TaskIdentifiers')
    TaskName = Shapes::StringShape.new(name: 'TaskName')
    TaskNameList = Shapes::ListShape.new(name: 'TaskNameList')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    TaskStatuses = Shapes::ListShape.new(name: 'TaskStatuses')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCustomerAccountRequest = Shapes::StructureShape.new(name: 'UpdateCustomerAccountRequest')
    UpdateCustomerAccountResponse = Shapes::StructureShape.new(name: 'UpdateCustomerAccountResponse')
    UpdateEngagementContextPayload = Shapes::UnionShape.new(name: 'UpdateEngagementContextPayload')
    UpdateEngagementContextRequest = Shapes::StructureShape.new(name: 'UpdateEngagementContextRequest')
    UpdateEngagementContextResponse = Shapes::StructureShape.new(name: 'UpdateEngagementContextResponse')
    UpdateLeadContext = Shapes::StructureShape.new(name: 'UpdateLeadContext')
    UpdateOpportunityRequest = Shapes::StructureShape.new(name: 'UpdateOpportunityRequest')
    UpdateOpportunityRequestPartnerOpportunityIdentifierString = Shapes::StringShape.new(name: 'UpdateOpportunityRequestPartnerOpportunityIdentifierString')
    UpdateOpportunityResponse = Shapes::StructureShape.new(name: 'UpdateOpportunityResponse')
    UseCases = Shapes::ListShape.new(name: 'UseCases')
    UtcTimeOfDay = Shapes::StringShape.new(name: 'UtcTimeOfDay')
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
    AccessDeniedException.add_member(:reason, Shapes::ShapeRef.new(shape: AccessDeniedExceptionErrorCode, location_name: "Reason"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Account.add_member(:industry, Shapes::ShapeRef.new(shape: Industry, location_name: "Industry"))
    Account.add_member(:other_industry, Shapes::ShapeRef.new(shape: AccountOtherIndustryString, location_name: "OtherIndustry"))
    Account.add_member(:company_name, Shapes::ShapeRef.new(shape: AccountCompanyNameString, required: true, location_name: "CompanyName"))
    Account.add_member(:website_url, Shapes::ShapeRef.new(shape: WebsiteUrl, location_name: "WebsiteUrl"))
    Account.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "AwsAccountId"))
    Account.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    Account.add_member(:duns, Shapes::ShapeRef.new(shape: DunsNumber, location_name: "Duns"))
    Account.struct_class = Types::Account

    AccountCustomer.add_member(:industry, Shapes::ShapeRef.new(shape: LeadIndustry, location_name: "Industry"))
    AccountCustomer.add_member(:company_name, Shapes::ShapeRef.new(shape: CompanyName, required: true, location_name: "CompanyName"))
    AccountCustomer.add_member(:website_url, Shapes::ShapeRef.new(shape: AccountWebsiteUrl, location_name: "WebsiteUrl"))
    AccountCustomer.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, location_name: "CountryCode"))
    AccountCustomer.struct_class = Types::AccountCustomer

    AccountFilterStringList.member = Shapes::ShapeRef.new(shape: AccountFilterStringListMemberString)

    AccountPlanningInvitationPayload.add_member(:account_identifier, Shapes::ShapeRef.new(shape: CustomerAccountArnOrIdentifier, location_name: "AccountIdentifier"))
    AccountPlanningInvitationPayload.add_member(:customer, Shapes::ShapeRef.new(shape: AccountCustomer, location_name: "Customer"))
    AccountPlanningInvitationPayload.add_member(:sender_contacts, Shapes::ShapeRef.new(shape: SenderContactList, location_name: "SenderContacts"))
    AccountPlanningInvitationPayload.add_member(:preferred_contact, Shapes::ShapeRef.new(shape: PreferredContactWindow, location_name: "PreferredContact"))
    AccountPlanningInvitationPayload.struct_class = Types::AccountPlanningInvitationPayload

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

    AggregatableFieldList.member = Shapes::ShapeRef.new(shape: AggregatableField)

    AggregationRequest.add_member(:group_by, Shapes::ShapeRef.new(shape: AggregationRequestGroupByList, required: true, location_name: "GroupBy"))
    AggregationRequest.struct_class = Types::AggregationRequest

    AggregationRequestGroupByList.member = Shapes::ShapeRef.new(shape: AggregatableField)

    AggregationRequestList.member = Shapes::ShapeRef.new(shape: AggregationRequest)

    AggregationResult.add_member(:group_by, Shapes::ShapeRef.new(shape: AggregatableFieldList, required: true, location_name: "GroupBy"))
    AggregationResult.add_member(:buckets, Shapes::ShapeRef.new(shape: BucketList, required: true, location_name: "Buckets"))
    AggregationResult.add_member(:other_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "OtherCount"))
    AggregationResult.struct_class = Types::AggregationResult

    AggregationResultList.member = Shapes::ShapeRef.new(shape: AggregationResult)

    AmountMap.key = Shapes::ShapeRef.new(shape: String)
    AmountMap.value = Shapes::ShapeRef.new(shape: MonetaryAmount)

    ApnPrograms.member = Shapes::ShapeRef.new(shape: String)

    AssignOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    AssignOpportunityRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Identifier"))
    AssignOpportunityRequest.add_member(:assignee, Shapes::ShapeRef.new(shape: AssigneeContact, required: true, location_name: "Assignee"))
    AssignOpportunityRequest.struct_class = Types::AssignOpportunityRequest

    AssigneeContact.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "Email"))
    AssigneeContact.add_member(:first_name, Shapes::ShapeRef.new(shape: AssigneeContactFirstNameString, required: true, location_name: "FirstName"))
    AssigneeContact.add_member(:last_name, Shapes::ShapeRef.new(shape: AssigneeContactLastNameString, required: true, location_name: "LastName"))
    AssigneeContact.add_member(:phone, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "Phone"))
    AssigneeContact.add_member(:business_title, Shapes::ShapeRef.new(shape: JobTitle, required: true, location_name: "BusinessTitle"))
    AssigneeContact.struct_class = Types::AssigneeContact

    AssociateOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    AssociateOpportunityRequest.add_member(:opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "OpportunityIdentifier"))
    AssociateOpportunityRequest.add_member(:related_entity_type, Shapes::ShapeRef.new(shape: RelatedEntityType, required: true, location_name: "RelatedEntityType"))
    AssociateOpportunityRequest.add_member(:related_entity_identifier, Shapes::ShapeRef.new(shape: AssociateOpportunityRequestRelatedEntityIdentifierString, required: true, location_name: "RelatedEntityIdentifier"))
    AssociateOpportunityRequest.struct_class = Types::AssociateOpportunityRequest

    AwsAccountIdOrAliasList.member = Shapes::ShapeRef.new(shape: AwsAccount)

    AwsAccountList.member = Shapes::ShapeRef.new(shape: AwsAccount)

    AwsEnrichment.add_member(:customer, Shapes::ShapeRef.new(shape: AwsEnrichmentCustomer, location_name: "Customer"))
    AwsEnrichment.add_member(:insights, Shapes::ShapeRef.new(shape: AwsEnrichmentInsights, location_name: "Insights"))
    AwsEnrichment.struct_class = Types::AwsEnrichment

    AwsEnrichmentCustomer.add_member(:account_name, Shapes::ShapeRef.new(shape: String, location_name: "AccountName"))
    AwsEnrichmentCustomer.add_member(:industry, Shapes::ShapeRef.new(shape: String, location_name: "Industry"))
    AwsEnrichmentCustomer.add_member(:sub_industry, Shapes::ShapeRef.new(shape: String, location_name: "SubIndustry"))
    AwsEnrichmentCustomer.add_member(:sector, Shapes::ShapeRef.new(shape: String, location_name: "Sector"))
    AwsEnrichmentCustomer.add_member(:segment, Shapes::ShapeRef.new(shape: String, location_name: "Segment"))
    AwsEnrichmentCustomer.add_member(:company_size, Shapes::ShapeRef.new(shape: String, location_name: "CompanySize"))
    AwsEnrichmentCustomer.add_member(:region, Shapes::ShapeRef.new(shape: String, location_name: "Region"))
    AwsEnrichmentCustomer.add_member(:sub_region, Shapes::ShapeRef.new(shape: String, location_name: "SubRegion"))
    AwsEnrichmentCustomer.add_member(:geo, Shapes::ShapeRef.new(shape: String, location_name: "Geo"))
    AwsEnrichmentCustomer.add_member(:country, Shapes::ShapeRef.new(shape: String, location_name: "Country"))
    AwsEnrichmentCustomer.add_member(:customer_account_planning_qualification, Shapes::ShapeRef.new(shape: String, location_name: "CustomerAccountPlanningQualification"))
    AwsEnrichmentCustomer.add_member(:eligible_programs, Shapes::ShapeRef.new(shape: EligibleProgramList, location_name: "EligiblePrograms"))
    AwsEnrichmentCustomer.struct_class = Types::AwsEnrichmentCustomer

    AwsEnrichmentCustomerSummary.add_member(:industry, Shapes::ShapeRef.new(shape: String, location_name: "Industry"))
    AwsEnrichmentCustomerSummary.add_member(:account_planning_qualification, Shapes::ShapeRef.new(shape: EnrichmentValue, location_name: "AccountPlanningQualification"))
    AwsEnrichmentCustomerSummary.add_member(:eligible_programs, Shapes::ShapeRef.new(shape: EligibleProgramList, location_name: "EligiblePrograms"))
    AwsEnrichmentCustomerSummary.add_member(:geo, Shapes::ShapeRef.new(shape: String, location_name: "Geo"))
    AwsEnrichmentCustomerSummary.add_member(:country, Shapes::ShapeRef.new(shape: String, location_name: "Country"))
    AwsEnrichmentCustomerSummary.add_member(:segment, Shapes::ShapeRef.new(shape: String, location_name: "Segment"))
    AwsEnrichmentCustomerSummary.struct_class = Types::AwsEnrichmentCustomerSummary

    AwsEnrichmentInsights.add_member(:marketplace_engagement_score, Shapes::ShapeRef.new(shape: String, location_name: "MarketplaceEngagementScore"))
    AwsEnrichmentInsights.add_member(:solution_category, Shapes::ShapeRef.new(shape: String, location_name: "SolutionCategory"))
    AwsEnrichmentInsights.add_member(:solution_score, Shapes::ShapeRef.new(shape: String, location_name: "SolutionScore"))
    AwsEnrichmentInsights.add_member(:solution_sub_category, Shapes::ShapeRef.new(shape: String, location_name: "SolutionSubCategory"))
    AwsEnrichmentInsights.struct_class = Types::AwsEnrichmentInsights

    AwsEnrichmentInsightsSummary.add_member(:marketplace_engagement_score, Shapes::ShapeRef.new(shape: String, location_name: "MarketplaceEngagementScore"))
    AwsEnrichmentInsightsSummary.add_member(:solution_category, Shapes::ShapeRef.new(shape: String, location_name: "SolutionCategory"))
    AwsEnrichmentInsightsSummary.add_member(:solution_score, Shapes::ShapeRef.new(shape: String, location_name: "SolutionScore"))
    AwsEnrichmentInsightsSummary.struct_class = Types::AwsEnrichmentInsightsSummary

    AwsEnrichmentSummary.add_member(:customer, Shapes::ShapeRef.new(shape: AwsEnrichmentCustomerSummary, location_name: "Customer"))
    AwsEnrichmentSummary.add_member(:insights, Shapes::ShapeRef.new(shape: AwsEnrichmentInsightsSummary, location_name: "Insights"))
    AwsEnrichmentSummary.struct_class = Types::AwsEnrichmentSummary

    AwsMarketplaceOfferIdentifiers.member = Shapes::ShapeRef.new(shape: AwsMarketplaceOfferIdentifier)

    AwsMarketplaceOfferSetIdentifiers.member = Shapes::ShapeRef.new(shape: AwsMarketplaceOfferSetIdentifier)

    AwsMarketplaceProductIdentifiers.member = Shapes::ShapeRef.new(shape: AwsMarketplaceProductArn)

    AwsMarketplaceSolutionIdentifiers.member = Shapes::ShapeRef.new(shape: AwsMarketplaceSolutionIdentifier)

    AwsOpportunityCustomer.add_member(:contacts, Shapes::ShapeRef.new(shape: CustomerContactsList, location_name: "Contacts"))
    AwsOpportunityCustomer.struct_class = Types::AwsOpportunityCustomer

    AwsOpportunityInsights.add_member(:next_best_actions, Shapes::ShapeRef.new(shape: String, location_name: "NextBestActions"))
    AwsOpportunityInsights.add_member(:engagement_score, Shapes::ShapeRef.new(shape: EngagementScore, location_name: "EngagementScore"))
    AwsOpportunityInsights.add_member(:aws_products_spend_insights_by_source, Shapes::ShapeRef.new(shape: AwsProductsSpendInsightsBySource, location_name: "AwsProductsSpendInsightsBySource"))
    AwsOpportunityInsights.add_member(:opportunity_quality, Shapes::ShapeRef.new(shape: OpportunityQuality, location_name: "OpportunityQuality"))
    AwsOpportunityInsights.add_member(:recommendations, Shapes::ShapeRef.new(shape: RecommendationList, location_name: "Recommendations"))
    AwsOpportunityInsights.struct_class = Types::AwsOpportunityInsights

    AwsOpportunityLifeCycle.add_member(:target_close_date, Shapes::ShapeRef.new(shape: Date, location_name: "TargetCloseDate"))
    AwsOpportunityLifeCycle.add_member(:closed_lost_reason, Shapes::ShapeRef.new(shape: AwsClosedLostReason, location_name: "ClosedLostReason"))
    AwsOpportunityLifeCycle.add_member(:stage, Shapes::ShapeRef.new(shape: AwsOpportunityStage, location_name: "Stage"))
    AwsOpportunityLifeCycle.add_member(:next_steps, Shapes::ShapeRef.new(shape: AwsOpportunityLifeCycleNextStepsString, location_name: "NextSteps"))
    AwsOpportunityLifeCycle.add_member(:next_steps_history, Shapes::ShapeRef.new(shape: AwsOpportunityLifeCycleNextStepsHistoryList, location_name: "NextStepsHistory"))
    AwsOpportunityLifeCycle.struct_class = Types::AwsOpportunityLifeCycle

    AwsOpportunityLifeCycleNextStepsHistoryList.member = Shapes::ShapeRef.new(shape: ProfileNextStepsHistory)

    AwsOpportunityProject.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, location_name: "ExpectedCustomerSpend"))
    AwsOpportunityProject.add_member(:aws_partition, Shapes::ShapeRef.new(shape: AwsPartition, location_name: "AwsPartition"))
    AwsOpportunityProject.struct_class = Types::AwsOpportunityProject

    AwsOpportunityRelatedEntities.add_member(:aws_products, Shapes::ShapeRef.new(shape: AwsProductIdentifiers, location_name: "AwsProducts"))
    AwsOpportunityRelatedEntities.add_member(:solutions, Shapes::ShapeRef.new(shape: SolutionIdentifiers, location_name: "Solutions"))
    AwsOpportunityRelatedEntities.add_member(:aws_marketplace_solutions, Shapes::ShapeRef.new(shape: AwsMarketplaceSolutionIdentifiers, location_name: "AwsMarketplaceSolutions"))
    AwsOpportunityRelatedEntities.add_member(:aws_marketplace_products, Shapes::ShapeRef.new(shape: AwsMarketplaceProductIdentifiers, location_name: "AwsMarketplaceProducts"))
    AwsOpportunityRelatedEntities.struct_class = Types::AwsOpportunityRelatedEntities

    AwsOpportunitySummaryFullView.add_member(:related_opportunity_id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "RelatedOpportunityId"))
    AwsOpportunitySummaryFullView.add_member(:origin, Shapes::ShapeRef.new(shape: OpportunityOrigin, location_name: "Origin"))
    AwsOpportunitySummaryFullView.add_member(:involvement_type, Shapes::ShapeRef.new(shape: SalesInvolvementType, location_name: "InvolvementType"))
    AwsOpportunitySummaryFullView.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    AwsOpportunitySummaryFullView.add_member(:life_cycle, Shapes::ShapeRef.new(shape: AwsOpportunityLifeCycle, location_name: "LifeCycle"))
    AwsOpportunitySummaryFullView.add_member(:opportunity_team, Shapes::ShapeRef.new(shape: AwsOpportunityTeamMembersList, location_name: "OpportunityTeam"))
    AwsOpportunitySummaryFullView.add_member(:insights, Shapes::ShapeRef.new(shape: AwsOpportunityInsights, location_name: "Insights"))
    AwsOpportunitySummaryFullView.add_member(:involvement_type_change_reason, Shapes::ShapeRef.new(shape: InvolvementTypeChangeReason, location_name: "InvolvementTypeChangeReason"))
    AwsOpportunitySummaryFullView.add_member(:related_entity_ids, Shapes::ShapeRef.new(shape: AwsOpportunityRelatedEntities, location_name: "RelatedEntityIds"))
    AwsOpportunitySummaryFullView.add_member(:customer, Shapes::ShapeRef.new(shape: AwsOpportunityCustomer, location_name: "Customer"))
    AwsOpportunitySummaryFullView.add_member(:project, Shapes::ShapeRef.new(shape: AwsOpportunityProject, location_name: "Project"))
    AwsOpportunitySummaryFullView.add_member(:cosell_motion, Shapes::ShapeRef.new(shape: String, location_name: "CosellMotion"))
    AwsOpportunitySummaryFullView.add_member(:cosell_motion_reason, Shapes::ShapeRef.new(shape: String, location_name: "CosellMotionReason"))
    AwsOpportunitySummaryFullView.add_member(:software_revenue, Shapes::ShapeRef.new(shape: AwsSoftwareRevenue, location_name: "SoftwareRevenue"))
    AwsOpportunitySummaryFullView.struct_class = Types::AwsOpportunitySummaryFullView

    AwsOpportunityTeamMembersList.member = Shapes::ShapeRef.new(shape: AwsTeamMember)

    AwsProductDetails.add_member(:product_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ProductCode"))
    AwsProductDetails.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "ServiceCode"))
    AwsProductDetails.add_member(:categories, Shapes::ShapeRef.new(shape: AwsProductDetailsCategoriesList, required: true, location_name: "Categories"))
    AwsProductDetails.add_member(:amount, Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: "Amount"))
    AwsProductDetails.add_member(:optimized_amount, Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: "OptimizedAmount"))
    AwsProductDetails.add_member(:potential_savings_amount, Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: "PotentialSavingsAmount"))
    AwsProductDetails.add_member(:optimizations, Shapes::ShapeRef.new(shape: AwsProductOptimizationsList, required: true, location_name: "Optimizations"))
    AwsProductDetails.struct_class = Types::AwsProductDetails

    AwsProductDetailsCategoriesList.member = Shapes::ShapeRef.new(shape: String)

    AwsProductIdentifiers.member = Shapes::ShapeRef.new(shape: AwsProductIdentifier)

    AwsProductInsights.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "CurrencyCode"))
    AwsProductInsights.add_member(:frequency, Shapes::ShapeRef.new(shape: PaymentFrequency, required: true, location_name: "Frequency"))
    AwsProductInsights.add_member(:total_amount, Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: "TotalAmount"))
    AwsProductInsights.add_member(:total_optimized_amount, Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: "TotalOptimizedAmount"))
    AwsProductInsights.add_member(:total_potential_savings_amount, Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: "TotalPotentialSavingsAmount"))
    AwsProductInsights.add_member(:total_amount_by_category, Shapes::ShapeRef.new(shape: AmountMap, required: true, location_name: "TotalAmountByCategory"))
    AwsProductInsights.add_member(:aws_products, Shapes::ShapeRef.new(shape: AwsProductsList, required: true, location_name: "AwsProducts"))
    AwsProductInsights.struct_class = Types::AwsProductInsights

    AwsProductOptimization.add_member(:description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Description"))
    AwsProductOptimization.add_member(:savings_amount, Shapes::ShapeRef.new(shape: MonetaryAmount, required: true, location_name: "SavingsAmount"))
    AwsProductOptimization.struct_class = Types::AwsProductOptimization

    AwsProductOptimizationsList.member = Shapes::ShapeRef.new(shape: AwsProductOptimization)

    AwsProductsList.member = Shapes::ShapeRef.new(shape: AwsProductDetails)

    AwsProductsSpendInsightsBySource.add_member(:partner, Shapes::ShapeRef.new(shape: AwsProductInsights, location_name: "Partner"))
    AwsProductsSpendInsightsBySource.add_member(:aws, Shapes::ShapeRef.new(shape: AwsProductInsights, location_name: "AWS"))
    AwsProductsSpendInsightsBySource.struct_class = Types::AwsProductsSpendInsightsBySource

    AwsSoftwareRevenue.add_member(:value, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "Value"))
    AwsSoftwareRevenue.add_member(:discount, Shapes::ShapeRef.new(shape: String, location_name: "Discount"))
    AwsSoftwareRevenue.add_member(:effective_date, Shapes::ShapeRef.new(shape: String, location_name: "EffectiveDate"))
    AwsSoftwareRevenue.add_member(:expiration_date, Shapes::ShapeRef.new(shape: String, location_name: "ExpirationDate"))
    AwsSoftwareRevenue.struct_class = Types::AwsSoftwareRevenue

    AwsSubmission.add_member(:involvement_type, Shapes::ShapeRef.new(shape: SalesInvolvementType, required: true, location_name: "InvolvementType"))
    AwsSubmission.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    AwsSubmission.struct_class = Types::AwsSubmission

    AwsTeamMember.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    AwsTeamMember.add_member(:first_name, Shapes::ShapeRef.new(shape: AwsTeamMemberFirstNameString, location_name: "FirstName"))
    AwsTeamMember.add_member(:last_name, Shapes::ShapeRef.new(shape: AwsTeamMemberLastNameString, location_name: "LastName"))
    AwsTeamMember.add_member(:business_title, Shapes::ShapeRef.new(shape: AwsMemberBusinessTitle, location_name: "BusinessTitle"))
    AwsTeamMember.struct_class = Types::AwsTeamMember

    BestOutreachWindow.add_member(:day, Shapes::ShapeRef.new(shape: DayOfWeek, required: true, location_name: "Day"))
    BestOutreachWindow.add_member(:start_time_utc, Shapes::ShapeRef.new(shape: UtcTimeOfDay, required: true, location_name: "StartTimeUtc"))
    BestOutreachWindow.add_member(:end_time_utc, Shapes::ShapeRef.new(shape: UtcTimeOfDay, required: true, location_name: "EndTimeUtc"))
    BestOutreachWindow.struct_class = Types::BestOutreachWindow

    BestOutreachWindowList.member = Shapes::ShapeRef.new(shape: BestOutreachWindow)

    Bucket.add_member(:values, Shapes::ShapeRef.new(shape: BucketValueList, required: true, location_name: "Values"))
    Bucket.add_member(:count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Count"))
    Bucket.struct_class = Types::Bucket

    BucketList.member = Shapes::ShapeRef.new(shape: Bucket)

    BucketValueList.member = Shapes::ShapeRef.new(shape: String)

    BulkJobResult.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RequestId"))
    BulkJobResult.add_member(:status, Shapes::ShapeRef.new(shape: BulkRecordStatus, required: true, location_name: "Status"))
    BulkJobResult.add_member(:resource_identifier, Shapes::ShapeRef.new(shape: String, location_name: "ResourceIdentifier"))
    BulkJobResult.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "ErrorCode"))
    BulkJobResult.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    BulkJobResult.struct_class = Types::BulkJobResult

    BulkJobResultList.member = Shapes::ShapeRef.new(shape: BulkJobResult)

    ChannelRecommendation.add_member(:recommended_channel, Shapes::ShapeRef.new(shape: ChannelName, required: true, location_name: "RecommendedChannel"))
    ChannelRecommendation.add_member(:best_outreach_windows, Shapes::ShapeRef.new(shape: BestOutreachWindowList, location_name: "BestOutreachWindows"))
    ChannelRecommendation.struct_class = Types::ChannelRecommendation

    Channels.member = Shapes::ShapeRef.new(shape: Channel)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    Contact.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    Contact.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactFirstNameString, location_name: "FirstName"))
    Contact.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactLastNameString, location_name: "LastName"))
    Contact.add_member(:business_title, Shapes::ShapeRef.new(shape: JobTitle, location_name: "BusinessTitle"))
    Contact.add_member(:phone, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "Phone"))
    Contact.struct_class = Types::Contact

    ContextIdentifiers.member = Shapes::ShapeRef.new(shape: ContextIdentifier)

    CreateCustomerAccountRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CreateCustomerAccountRequest.add_member(:account, Shapes::ShapeRef.new(shape: CustomerAccountData, required: true, location_name: "Account"))
    CreateCustomerAccountRequest.add_member(:partner_account_identifier, Shapes::ShapeRef.new(shape: PartnerAccountIdentifier, location_name: "PartnerAccountIdentifier"))
    CreateCustomerAccountRequest.add_member(:tags, Shapes::ShapeRef.new(shape: CustomerAccountTagList, location_name: "Tags"))
    CreateCustomerAccountRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateCustomerAccountRequest.struct_class = Types::CreateCustomerAccountRequest

    CreateCustomerAccountResponse.add_member(:arn, Shapes::ShapeRef.new(shape: CustomerAccountArn, required: true, location_name: "Arn"))
    CreateCustomerAccountResponse.add_member(:id, Shapes::ShapeRef.new(shape: CustomerAccountId, required: true, location_name: "Id"))
    CreateCustomerAccountResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnrichmentStatus, required: true, location_name: "Status"))
    CreateCustomerAccountResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CreateCustomerAccountResponse.add_member(:partner_account_identifier, Shapes::ShapeRef.new(shape: PartnerAccountIdentifier, location_name: "PartnerAccountIdentifier"))
    CreateCustomerAccountResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedDate"))
    CreateCustomerAccountResponse.struct_class = Types::CreateCustomerAccountResponse

    CreateEngagementContextRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CreateEngagementContextRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementArnOrIdentifier, required: true, location_name: "EngagementIdentifier"))
    CreateEngagementContextRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateEngagementContextRequest.add_member(:type, Shapes::ShapeRef.new(shape: EngagementContextType, required: true, location_name: "Type"))
    CreateEngagementContextRequest.add_member(:payload, Shapes::ShapeRef.new(shape: EngagementContextPayload, required: true, location_name: "Payload"))
    CreateEngagementContextRequest.struct_class = Types::CreateEngagementContextRequest

    CreateEngagementContextResponse.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    CreateEngagementContextResponse.add_member(:engagement_arn, Shapes::ShapeRef.new(shape: EngagementArn, location_name: "EngagementArn"))
    CreateEngagementContextResponse.add_member(:engagement_last_modified_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "EngagementLastModifiedAt"))
    CreateEngagementContextResponse.add_member(:context_id, Shapes::ShapeRef.new(shape: EngagementContextIdentifier, location_name: "ContextId"))
    CreateEngagementContextResponse.struct_class = Types::CreateEngagementContextResponse

    CreateEngagementInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CreateEngagementInvitationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateEngagementInvitationRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifier, required: true, location_name: "EngagementIdentifier"))
    CreateEngagementInvitationRequest.add_member(:invitation, Shapes::ShapeRef.new(shape: Invitation, required: true, location_name: "Invitation"))
    CreateEngagementInvitationRequest.struct_class = Types::CreateEngagementInvitationRequest

    CreateEngagementInvitationResponse.add_member(:id, Shapes::ShapeRef.new(shape: EngagementInvitationIdentifier, required: true, location_name: "Id"))
    CreateEngagementInvitationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EngagementInvitationArn, required: true, location_name: "Arn"))
    CreateEngagementInvitationResponse.struct_class = Types::CreateEngagementInvitationResponse

    CreateEngagementRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CreateEngagementRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateEngagementRequest.add_member(:title, Shapes::ShapeRef.new(shape: EngagementTitle, location_name: "Title"))
    CreateEngagementRequest.add_member(:description, Shapes::ShapeRef.new(shape: EngagementDescription, location_name: "Description"))
    CreateEngagementRequest.add_member(:contexts, Shapes::ShapeRef.new(shape: EngagementContexts, location_name: "Contexts"))
    CreateEngagementRequest.struct_class = Types::CreateEngagementRequest

    CreateEngagementResponse.add_member(:id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "Id"))
    CreateEngagementResponse.add_member(:arn, Shapes::ShapeRef.new(shape: EngagementArn, location_name: "Arn"))
    CreateEngagementResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "ModifiedAt"))
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
    CreateOpportunityRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
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
    CreateResourceSnapshotJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
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
    CreateResourceSnapshotRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    CreateResourceSnapshotRequest.struct_class = Types::CreateResourceSnapshotRequest

    CreateResourceSnapshotResponse.add_member(:arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "Arn"))
    CreateResourceSnapshotResponse.add_member(:revision, Shapes::ShapeRef.new(shape: ResourceSnapshotRevision, location_name: "Revision"))
    CreateResourceSnapshotResponse.struct_class = Types::CreateResourceSnapshotResponse

    CreatedDateFilter.add_member(:after_created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "AfterCreatedDate"))
    CreatedDateFilter.add_member(:before_created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "BeforeCreatedDate"))
    CreatedDateFilter.struct_class = Types::CreatedDateFilter

    Customer.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    Customer.add_member(:contacts, Shapes::ShapeRef.new(shape: CustomerContactsList, location_name: "Contacts"))
    Customer.struct_class = Types::Customer

    CustomerAccountBulkJobFilter.add_member(:identifier, Shapes::ShapeRef.new(shape: BulkJobArnOrIdentifier, location_name: "Identifier"))
    CustomerAccountBulkJobFilter.add_member(:status, Shapes::ShapeRef.new(shape: BulkJobStatus, location_name: "Status"))
    CustomerAccountBulkJobFilter.struct_class = Types::CustomerAccountBulkJobFilter

    CustomerAccountBulkJobSummary.add_member(:arn, Shapes::ShapeRef.new(shape: BulkJobArn, required: true, location_name: "Arn"))
    CustomerAccountBulkJobSummary.add_member(:id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "Id"))
    CustomerAccountBulkJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: BulkJobStatus, required: true, location_name: "Status"))
    CustomerAccountBulkJobSummary.add_member(:file_name, Shapes::ShapeRef.new(shape: FileName, location_name: "FileName"))
    CustomerAccountBulkJobSummary.add_member(:total_records, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalRecords"))
    CustomerAccountBulkJobSummary.add_member(:processed_records, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ProcessedRecords"))
    CustomerAccountBulkJobSummary.add_member(:success_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "SuccessCount"))
    CustomerAccountBulkJobSummary.add_member(:failure_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "FailureCount"))
    CustomerAccountBulkJobSummary.add_member(:deleted_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DeletedCount"))
    CustomerAccountBulkJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    CustomerAccountBulkJobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    CustomerAccountBulkJobSummary.add_member(:completed_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletedAt"))
    CustomerAccountBulkJobSummary.struct_class = Types::CustomerAccountBulkJobSummary

    CustomerAccountBulkJobSummaryList.member = Shapes::ShapeRef.new(shape: CustomerAccountBulkJobSummary)

    CustomerAccountContext.add_member(:account_identifier, Shapes::ShapeRef.new(shape: CustomerAccountArnOrIdentifier, location_name: "AccountIdentifier"))
    CustomerAccountContext.add_member(:customer, Shapes::ShapeRef.new(shape: AccountCustomer, location_name: "Customer"))
    CustomerAccountContext.struct_class = Types::CustomerAccountContext

    CustomerAccountData.add_member(:company_name, Shapes::ShapeRef.new(shape: CustomerAccountDataCompanyNameString, required: true, location_name: "CompanyName"))
    CustomerAccountData.add_member(:website_url, Shapes::ShapeRef.new(shape: CustomerAccountDataWebsiteUrlString, location_name: "WebsiteUrl"))
    CustomerAccountData.add_member(:duns, Shapes::ShapeRef.new(shape: CustomerAccountDataDunsString, location_name: "Duns"))
    CustomerAccountData.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    CustomerAccountData.add_member(:industry, Shapes::ShapeRef.new(shape: String, location_name: "Industry"))
    CustomerAccountData.add_member(:other_industry, Shapes::ShapeRef.new(shape: CustomerAccountDataOtherIndustryString, location_name: "OtherIndustry"))
    CustomerAccountData.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    CustomerAccountData.add_member(:parent_company_name, Shapes::ShapeRef.new(shape: CustomerAccountDataParentCompanyNameString, location_name: "ParentCompanyName"))
    CustomerAccountData.struct_class = Types::CustomerAccountData

    CustomerAccountDetailsSummary.add_member(:company_name, Shapes::ShapeRef.new(shape: CustomerAccountDetailsSummaryCompanyNameString, required: true, location_name: "CompanyName"))
    CustomerAccountDetailsSummary.struct_class = Types::CustomerAccountDetailsSummary

    CustomerAccountSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortableField, required: true, location_name: "SortBy"))
    CustomerAccountSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    CustomerAccountSort.struct_class = Types::CustomerAccountSort

    CustomerAccountSummary.add_member(:arn, Shapes::ShapeRef.new(shape: CustomerAccountArn, required: true, location_name: "Arn"))
    CustomerAccountSummary.add_member(:id, Shapes::ShapeRef.new(shape: CustomerAccountId, required: true, location_name: "Id"))
    CustomerAccountSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CustomerAccountSummary.add_member(:enrichment_status, Shapes::ShapeRef.new(shape: EnrichmentStatus, required: true, location_name: "EnrichmentStatus"))
    CustomerAccountSummary.add_member(:partner_account_identifier, Shapes::ShapeRef.new(shape: PartnerAccountIdentifier, location_name: "PartnerAccountIdentifier"))
    CustomerAccountSummary.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedDate"))
    CustomerAccountSummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastModifiedDate"))
    CustomerAccountSummary.add_member(:customer_account, Shapes::ShapeRef.new(shape: CustomerAccountDetailsSummary, required: true, location_name: "CustomerAccount"))
    CustomerAccountSummary.add_member(:aws_enrichment, Shapes::ShapeRef.new(shape: AwsEnrichmentSummary, location_name: "AwsEnrichment"))
    CustomerAccountSummary.struct_class = Types::CustomerAccountSummary

    CustomerAccountSummaryList.member = Shapes::ShapeRef.new(shape: CustomerAccountSummary)

    CustomerAccountTagList.member = Shapes::ShapeRef.new(shape: Tag)

    CustomerContactsList.member = Shapes::ShapeRef.new(shape: Contact)

    CustomerProjectsContext.add_member(:customer, Shapes::ShapeRef.new(shape: EngagementCustomer, location_name: "Customer"))
    CustomerProjectsContext.add_member(:project, Shapes::ShapeRef.new(shape: EngagementCustomerProjectDetails, location_name: "Project"))
    CustomerProjectsContext.struct_class = Types::CustomerProjectsContext

    CustomerSummary.add_member(:account, Shapes::ShapeRef.new(shape: AccountSummary, location_name: "Account"))
    CustomerSummary.struct_class = Types::CustomerSummary

    DeleteCustomerAccountRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    DeleteCustomerAccountRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: CustomerAccountArnOrIdentifier, required: true, location_name: "Identifier"))
    DeleteCustomerAccountRequest.struct_class = Types::DeleteCustomerAccountRequest

    DeleteCustomerAccountResponse.struct_class = Types::DeleteCustomerAccountResponse

    DeleteResourceSnapshotJobRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    DeleteResourceSnapshotJobRequest.add_member(:resource_snapshot_job_identifier, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, required: true, location_name: "ResourceSnapshotJobIdentifier"))
    DeleteResourceSnapshotJobRequest.struct_class = Types::DeleteResourceSnapshotJobRequest

    DeliveryModels.member = Shapes::ShapeRef.new(shape: DeliveryModel)

    DisassociateOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    DisassociateOpportunityRequest.add_member(:opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "OpportunityIdentifier"))
    DisassociateOpportunityRequest.add_member(:related_entity_type, Shapes::ShapeRef.new(shape: RelatedEntityType, required: true, location_name: "RelatedEntityType"))
    DisassociateOpportunityRequest.add_member(:related_entity_identifier, Shapes::ShapeRef.new(shape: DisassociateOpportunityRequestRelatedEntityIdentifierString, required: true, location_name: "RelatedEntityIdentifier"))
    DisassociateOpportunityRequest.struct_class = Types::DisassociateOpportunityRequest

    EligibleProgramList.member = Shapes::ShapeRef.new(shape: String)

    EligibleProgramsList.member = Shapes::ShapeRef.new(shape: String)

    EngagementContextDetails.add_member(:id, Shapes::ShapeRef.new(shape: EngagementContextIdentifier, location_name: "Id"))
    EngagementContextDetails.add_member(:type, Shapes::ShapeRef.new(shape: EngagementContextType, required: true, location_name: "Type"))
    EngagementContextDetails.add_member(:payload, Shapes::ShapeRef.new(shape: EngagementContextPayload, location_name: "Payload"))
    EngagementContextDetails.struct_class = Types::EngagementContextDetails

    EngagementContextPayload.add_member(:customer_project, Shapes::ShapeRef.new(shape: CustomerProjectsContext, location_name: "CustomerProject"))
    EngagementContextPayload.add_member(:lead, Shapes::ShapeRef.new(shape: LeadContext, location_name: "Lead"))
    EngagementContextPayload.add_member(:prospecting_result, Shapes::ShapeRef.new(shape: ProspectingResult, location_name: "ProspectingResult"))
    EngagementContextPayload.add_member(:customer_account, Shapes::ShapeRef.new(shape: CustomerAccountContext, location_name: "CustomerAccount"))
    EngagementContextPayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EngagementContextPayload.add_member_subclass(:customer_project, Types::EngagementContextPayload::CustomerProject)
    EngagementContextPayload.add_member_subclass(:lead, Types::EngagementContextPayload::Lead)
    EngagementContextPayload.add_member_subclass(:prospecting_result, Types::EngagementContextPayload::ProspectingResult)
    EngagementContextPayload.add_member_subclass(:customer_account, Types::EngagementContextPayload::CustomerAccount)
    EngagementContextPayload.add_member_subclass(:unknown, Types::EngagementContextPayload::Unknown)
    EngagementContextPayload.struct_class = Types::EngagementContextPayload

    EngagementContextTypeList.member = Shapes::ShapeRef.new(shape: EngagementContextType)

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

    EngagementGroupIdentifiers.member = Shapes::ShapeRef.new(shape: EngagementGroupArnOrIdentifier)

    EngagementGroupSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: EngagementGroupSortName, required: true, location_name: "SortBy"))
    EngagementGroupSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    EngagementGroupSort.struct_class = Types::EngagementGroupSort

    EngagementGroupSummaries.member = Shapes::ShapeRef.new(shape: EngagementGroupSummary)

    EngagementGroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: GroupId, required: true, location_name: "Id"))
    EngagementGroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: EngagementGroupArn, location_name: "Arn"))
    EngagementGroupSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, location_name: "Catalog"))
    EngagementGroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: EngagementGroupName, location_name: "Name"))
    EngagementGroupSummary.add_member(:description, Shapes::ShapeRef.new(shape: EngagementGroupDescription, location_name: "Description"))
    EngagementGroupSummary.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "Count"))
    EngagementGroupSummary.add_member(:readiness_level, Shapes::ShapeRef.new(shape: ReadinessLevel, location_name: "ReadinessLevel"))
    EngagementGroupSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "UpdatedAt"))
    EngagementGroupSummary.struct_class = Types::EngagementGroupSummary

    EngagementIdentifierList.member = Shapes::ShapeRef.new(shape: EngagementIdentifier)

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

    EngagementProspectingResult.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifier, required: true, location_name: "EngagementIdentifier"))
    EngagementProspectingResult.add_member(:engagement_context_id, Shapes::ShapeRef.new(shape: EngagementProspectingResultEngagementContextIdString, location_name: "EngagementContextId"))
    EngagementProspectingResult.add_member(:status, Shapes::ShapeRef.new(shape: ProspectingTaskStatus, required: true, location_name: "Status"))
    EngagementProspectingResult.add_member(:reason_code, Shapes::ShapeRef.new(shape: String, location_name: "ReasonCode"))
    EngagementProspectingResult.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EngagementProspectingResult.struct_class = Types::EngagementProspectingResult

    EngagementProspectingResultList.member = Shapes::ShapeRef.new(shape: EngagementProspectingResult)

    EngagementResourceAssociationSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    EngagementResourceAssociationSummary.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    EngagementResourceAssociationSummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    EngagementResourceAssociationSummary.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "ResourceId"))
    EngagementResourceAssociationSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "CreatedBy"))
    EngagementResourceAssociationSummary.struct_class = Types::EngagementResourceAssociationSummary

    EngagementResourceAssociationSummaryList.member = Shapes::ShapeRef.new(shape: EngagementResourceAssociationSummary)

    EngagementSearchFilter.add_member(:and_all_filters, Shapes::ShapeRef.new(shape: EngagementSearchFilterList, location_name: "AndAllFilters"))
    EngagementSearchFilter.add_member(:or_all_filters, Shapes::ShapeRef.new(shape: EngagementSearchFilterList, location_name: "OrAllFilters"))
    EngagementSearchFilter.add_member(:not_filter, Shapes::ShapeRef.new(shape: EngagementSearchFilter, location_name: "NotFilter"))
    EngagementSearchFilter.add_member(:equals_to, Shapes::ShapeRef.new(shape: EngagementSearchPredicate, location_name: "EqualsTo"))
    EngagementSearchFilter.add_member(:contains_any, Shapes::ShapeRef.new(shape: EngagementSearchPredicate, location_name: "ContainsAny"))
    EngagementSearchFilter.add_member(:contains_all, Shapes::ShapeRef.new(shape: EngagementSearchPredicate, location_name: "ContainsAll"))
    EngagementSearchFilter.add_member(:greater_than, Shapes::ShapeRef.new(shape: EngagementSearchPredicate, location_name: "GreaterThan"))
    EngagementSearchFilter.add_member(:greater_than_or_equals, Shapes::ShapeRef.new(shape: EngagementSearchPredicate, location_name: "GreaterThanOrEquals"))
    EngagementSearchFilter.add_member(:less_than, Shapes::ShapeRef.new(shape: EngagementSearchPredicate, location_name: "LessThan"))
    EngagementSearchFilter.add_member(:less_than_or_equals, Shapes::ShapeRef.new(shape: EngagementSearchPredicate, location_name: "LessThanOrEquals"))
    EngagementSearchFilter.struct_class = Types::EngagementSearchFilter

    EngagementSearchFilterList.member = Shapes::ShapeRef.new(shape: EngagementSearchFilter)

    EngagementSearchFilterValue.add_member(:string_value, Shapes::ShapeRef.new(shape: EngagementSearchStringValue, location_name: "StringValue"))
    EngagementSearchFilterValue.add_member(:string_list_value, Shapes::ShapeRef.new(shape: EngagementSearchFilterValues, location_name: "StringListValue"))
    EngagementSearchFilterValue.add_member(:long_value, Shapes::ShapeRef.new(shape: Long, location_name: "LongValue"))
    EngagementSearchFilterValue.add_member(:date_value, Shapes::ShapeRef.new(shape: DateTime, location_name: "DateValue"))
    EngagementSearchFilterValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    EngagementSearchFilterValue.add_member_subclass(:string_value, Types::EngagementSearchFilterValue::StringValue)
    EngagementSearchFilterValue.add_member_subclass(:string_list_value, Types::EngagementSearchFilterValue::StringListValue)
    EngagementSearchFilterValue.add_member_subclass(:long_value, Types::EngagementSearchFilterValue::LongValue)
    EngagementSearchFilterValue.add_member_subclass(:date_value, Types::EngagementSearchFilterValue::DateValue)
    EngagementSearchFilterValue.add_member_subclass(:unknown, Types::EngagementSearchFilterValue::Unknown)
    EngagementSearchFilterValue.struct_class = Types::EngagementSearchFilterValue

    EngagementSearchFilterValues.member = Shapes::ShapeRef.new(shape: EngagementSearchStringValue)

    EngagementSearchPredicate.add_member(:key, Shapes::ShapeRef.new(shape: EngagementSearchFilterName, required: true, location_name: "Key"))
    EngagementSearchPredicate.add_member(:value, Shapes::ShapeRef.new(shape: EngagementSearchFilterValue, required: true, location_name: "Value"))
    EngagementSearchPredicate.struct_class = Types::EngagementSearchPredicate

    EngagementSearchSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: EngagementSearchSortName, required: true, location_name: "SortBy"))
    EngagementSearchSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    EngagementSearchSort.struct_class = Types::EngagementSearchSort

    EngagementSearchSummary.add_member(:id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "Id"))
    EngagementSearchSummary.add_member(:arn, Shapes::ShapeRef.new(shape: EngagementArn, location_name: "Arn"))
    EngagementSearchSummary.add_member(:title, Shapes::ShapeRef.new(shape: EngagementTitle, location_name: "Title"))
    EngagementSearchSummary.add_member(:description, Shapes::ShapeRef.new(shape: EngagementDescription, location_name: "Description"))
    EngagementSearchSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    EngagementSearchSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "CreatedBy"))
    EngagementSearchSummary.add_member(:member_count, Shapes::ShapeRef.new(shape: Integer, location_name: "MemberCount"))
    EngagementSearchSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "ModifiedAt"))
    EngagementSearchSummary.add_member(:modified_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "ModifiedBy"))
    EngagementSearchSummary.add_member(:contexts, Shapes::ShapeRef.new(shape: EngagementContexts, location_name: "Contexts"))
    EngagementSearchSummary.struct_class = Types::EngagementSearchSummary

    EngagementSearchSummaryList.member = Shapes::ShapeRef.new(shape: EngagementSearchSummary)

    EngagementSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    EngagementSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: EngagementSortName, required: true, location_name: "SortBy"))
    EngagementSort.struct_class = Types::EngagementSort

    EngagementSummary.add_member(:arn, Shapes::ShapeRef.new(shape: EngagementArn, location_name: "Arn"))
    EngagementSummary.add_member(:id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "Id"))
    EngagementSummary.add_member(:title, Shapes::ShapeRef.new(shape: EngagementTitle, location_name: "Title"))
    EngagementSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedAt"))
    EngagementSummary.add_member(:created_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "CreatedBy"))
    EngagementSummary.add_member(:member_count, Shapes::ShapeRef.new(shape: Integer, location_name: "MemberCount"))
    EngagementSummary.add_member(:modified_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "ModifiedAt"))
    EngagementSummary.add_member(:modified_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "ModifiedBy"))
    EngagementSummary.add_member(:context_types, Shapes::ShapeRef.new(shape: EngagementContextTypeList, location_name: "ContextTypes"))
    EngagementSummary.struct_class = Types::EngagementSummary

    EngagementSummaryList.member = Shapes::ShapeRef.new(shape: EngagementSummary)

    EnrichmentContext.add_member(:prospecting_result_aws, Shapes::ShapeRef.new(shape: InvitationProspectingResultAws, location_name: "ProspectingResultAws"))
    EnrichmentContext.add_member(:lead_insights, Shapes::ShapeRef.new(shape: LeadInsights, location_name: "LeadInsights"))
    EnrichmentContext.struct_class = Types::EnrichmentContext

    ExpectedContractDuration.add_member(:term, Shapes::ShapeRef.new(shape: ExpectedContractDurationTerm, required: true, location_name: "Term"))
    ExpectedContractDuration.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    ExpectedContractDuration.struct_class = Types::ExpectedContractDuration

    ExpectedCustomerSpend.add_member(:amount, Shapes::ShapeRef.new(shape: Amount, location_name: "Amount"))
    ExpectedCustomerSpend.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "CurrencyCode"))
    ExpectedCustomerSpend.add_member(:frequency, Shapes::ShapeRef.new(shape: PaymentFrequency, required: true, location_name: "Frequency"))
    ExpectedCustomerSpend.add_member(:target_company, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendTargetCompanyString, required: true, location_name: "TargetCompany"))
    ExpectedCustomerSpend.add_member(:estimation_url, Shapes::ShapeRef.new(shape: EstimationUrl, location_name: "EstimationUrl"))
    ExpectedCustomerSpend.struct_class = Types::ExpectedCustomerSpend

    ExpectedCustomerSpendList.member = Shapes::ShapeRef.new(shape: ExpectedCustomerSpend)

    Filter.add_member(:and_all_filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "AndAllFilters"))
    Filter.add_member(:or_all_filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "OrAllFilters"))
    Filter.add_member(:not_filter, Shapes::ShapeRef.new(shape: Filter, location_name: "NotFilter"))
    Filter.add_member(:equals_to, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "EqualsTo"))
    Filter.add_member(:contains_any, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "ContainsAny"))
    Filter.add_member(:contains_all, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "ContainsAll"))
    Filter.add_member(:greater_than, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "GreaterThan"))
    Filter.add_member(:greater_than_or_equals, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "GreaterThanOrEquals"))
    Filter.add_member(:less_than, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "LessThan"))
    Filter.add_member(:less_than_or_equals, Shapes::ShapeRef.new(shape: FilterCondition, location_name: "LessThanOrEquals"))
    Filter.struct_class = Types::Filter

    FilterCondition.add_member(:key, Shapes::ShapeRef.new(shape: FilterableField, required: true, location_name: "Key"))
    FilterCondition.add_member(:value, Shapes::ShapeRef.new(shape: FilterValue, required: true, location_name: "Value"))
    FilterCondition.struct_class = Types::FilterCondition

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValue.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "StringValue"))
    FilterValue.add_member(:string_list_value, Shapes::ShapeRef.new(shape: AccountFilterStringList, location_name: "StringListValue"))
    FilterValue.add_member(:long_value, Shapes::ShapeRef.new(shape: Long, location_name: "LongValue"))
    FilterValue.add_member(:date_value, Shapes::ShapeRef.new(shape: DateTime, location_name: "DateValue"))
    FilterValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FilterValue.add_member_subclass(:string_value, Types::FilterValue::StringValue)
    FilterValue.add_member_subclass(:string_list_value, Types::FilterValue::StringListValue)
    FilterValue.add_member_subclass(:long_value, Types::FilterValue::LongValue)
    FilterValue.add_member_subclass(:date_value, Types::FilterValue::DateValue)
    FilterValue.add_member_subclass(:unknown, Types::FilterValue::Unknown)
    FilterValue.struct_class = Types::FilterValue

    GetAwsOpportunitySummaryRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetAwsOpportunitySummaryRequest.add_member(:related_opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "RelatedOpportunityIdentifier"))
    GetAwsOpportunitySummaryRequest.struct_class = Types::GetAwsOpportunitySummaryRequest

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
    GetAwsOpportunitySummaryResponse.add_member(:cosell_motion, Shapes::ShapeRef.new(shape: String, location_name: "CosellMotion"))
    GetAwsOpportunitySummaryResponse.add_member(:cosell_motion_reason, Shapes::ShapeRef.new(shape: String, location_name: "CosellMotionReason"))
    GetAwsOpportunitySummaryResponse.add_member(:software_revenue, Shapes::ShapeRef.new(shape: AwsSoftwareRevenue, location_name: "SoftwareRevenue"))
    GetAwsOpportunitySummaryResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetAwsOpportunitySummaryResponse.struct_class = Types::GetAwsOpportunitySummaryResponse

    GetCustomerAccountBulkJobReportUrlRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetCustomerAccountBulkJobReportUrlRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: BulkJobArnOrIdentifier, required: true, location_name: "Identifier"))
    GetCustomerAccountBulkJobReportUrlRequest.add_member(:report_type, Shapes::ShapeRef.new(shape: BulkReportType, location_name: "ReportType"))
    GetCustomerAccountBulkJobReportUrlRequest.struct_class = Types::GetCustomerAccountBulkJobReportUrlRequest

    GetCustomerAccountBulkJobReportUrlResponse.add_member(:report_status, Shapes::ShapeRef.new(shape: BulkReportStatus, required: true, location_name: "ReportStatus"))
    GetCustomerAccountBulkJobReportUrlResponse.add_member(:report_type, Shapes::ShapeRef.new(shape: BulkReportType, required: true, location_name: "ReportType"))
    GetCustomerAccountBulkJobReportUrlResponse.add_member(:url, Shapes::ShapeRef.new(shape: BulkReportUrl, location_name: "Url"))
    GetCustomerAccountBulkJobReportUrlResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpiresAt"))
    GetCustomerAccountBulkJobReportUrlResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    GetCustomerAccountBulkJobReportUrlResponse.struct_class = Types::GetCustomerAccountBulkJobReportUrlResponse

    GetCustomerAccountBulkJobRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetCustomerAccountBulkJobRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: BulkJobArnOrIdentifier, required: true, location_name: "Identifier"))
    GetCustomerAccountBulkJobRequest.struct_class = Types::GetCustomerAccountBulkJobRequest

    GetCustomerAccountBulkJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BulkJobArn, required: true, location_name: "Arn"))
    GetCustomerAccountBulkJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "Id"))
    GetCustomerAccountBulkJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: BulkJobStatus, required: true, location_name: "Status"))
    GetCustomerAccountBulkJobResponse.add_member(:file_name, Shapes::ShapeRef.new(shape: FileName, location_name: "FileName"))
    GetCustomerAccountBulkJobResponse.add_member(:total_records, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalRecords"))
    GetCustomerAccountBulkJobResponse.add_member(:processed_records, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ProcessedRecords"))
    GetCustomerAccountBulkJobResponse.add_member(:success_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "SuccessCount"))
    GetCustomerAccountBulkJobResponse.add_member(:failure_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "FailureCount"))
    GetCustomerAccountBulkJobResponse.add_member(:deleted_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "DeletedCount"))
    GetCustomerAccountBulkJobResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    GetCustomerAccountBulkJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    GetCustomerAccountBulkJobResponse.add_member(:completed_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletedAt"))
    GetCustomerAccountBulkJobResponse.struct_class = Types::GetCustomerAccountBulkJobResponse

    GetCustomerAccountRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetCustomerAccountRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: CustomerAccountArnOrIdentifier, required: true, location_name: "Identifier"))
    GetCustomerAccountRequest.struct_class = Types::GetCustomerAccountRequest

    GetCustomerAccountResponse.add_member(:arn, Shapes::ShapeRef.new(shape: CustomerAccountArn, required: true, location_name: "Arn"))
    GetCustomerAccountResponse.add_member(:id, Shapes::ShapeRef.new(shape: CustomerAccountId, required: true, location_name: "Id"))
    GetCustomerAccountResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetCustomerAccountResponse.add_member(:enrichment_status, Shapes::ShapeRef.new(shape: EnrichmentStatus, required: true, location_name: "EnrichmentStatus"))
    GetCustomerAccountResponse.add_member(:partner_account_identifier, Shapes::ShapeRef.new(shape: PartnerAccountIdentifier, location_name: "PartnerAccountIdentifier"))
    GetCustomerAccountResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedDate"))
    GetCustomerAccountResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastModifiedDate"))
    GetCustomerAccountResponse.add_member(:issues, Shapes::ShapeRef.new(shape: IssueList, location_name: "Issues"))
    GetCustomerAccountResponse.add_member(:aws_enrichment, Shapes::ShapeRef.new(shape: AwsEnrichment, location_name: "AwsEnrichment"))
    GetCustomerAccountResponse.add_member(:reason_code, Shapes::ShapeRef.new(shape: CustomerAccountFailureReason, location_name: "ReasonCode"))
    GetCustomerAccountResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    GetCustomerAccountResponse.add_member(:existing_customer_account_arn, Shapes::ShapeRef.new(shape: CustomerAccountArn, location_name: "ExistingCustomerAccountArn"))
    GetCustomerAccountResponse.add_member(:account, Shapes::ShapeRef.new(shape: CustomerAccountData, required: true, location_name: "Account"))
    GetCustomerAccountResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    GetCustomerAccountResponse.struct_class = Types::GetCustomerAccountResponse

    GetCustomerAccountStatisticsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetCustomerAccountStatisticsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "Filter"))
    GetCustomerAccountStatisticsRequest.add_member(:aggregations, Shapes::ShapeRef.new(shape: AggregationRequestList, location_name: "Aggregations"))
    GetCustomerAccountStatisticsRequest.add_member(:include_missing, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeMissing"))
    GetCustomerAccountStatisticsRequest.struct_class = Types::GetCustomerAccountStatisticsRequest

    GetCustomerAccountStatisticsResponse.add_member(:total_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalCount"))
    GetCustomerAccountStatisticsResponse.add_member(:aggregations, Shapes::ShapeRef.new(shape: AggregationResultList, location_name: "Aggregations"))
    GetCustomerAccountStatisticsResponse.struct_class = Types::GetCustomerAccountStatisticsResponse

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
    GetEngagementInvitationResponse.add_member(:enrichment_context, Shapes::ShapeRef.new(shape: EnrichmentContext, location_name: "EnrichmentContext"))
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
    GetEngagementResponse.add_member(:modified_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "ModifiedAt"))
    GetEngagementResponse.add_member(:modified_by, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "ModifiedBy"))
    GetEngagementResponse.add_member(:contexts, Shapes::ShapeRef.new(shape: EngagementContexts, location_name: "Contexts"))
    GetEngagementResponse.struct_class = Types::GetEngagementResponse

    GetOpportunityBulkJobReportUrlRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetOpportunityBulkJobReportUrlRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: BulkJobId, required: true, location_name: "JobId"))
    GetOpportunityBulkJobReportUrlRequest.add_member(:report_format, Shapes::ShapeRef.new(shape: BulkFileFormat, required: true, location_name: "ReportFormat"))
    GetOpportunityBulkJobReportUrlRequest.add_member(:report_type, Shapes::ShapeRef.new(shape: BulkReportType, location_name: "ReportType"))
    GetOpportunityBulkJobReportUrlRequest.struct_class = Types::GetOpportunityBulkJobReportUrlRequest

    GetOpportunityBulkJobReportUrlResponse.add_member(:report_status, Shapes::ShapeRef.new(shape: BulkReportStatus, required: true, location_name: "ReportStatus"))
    GetOpportunityBulkJobReportUrlResponse.add_member(:report_type, Shapes::ShapeRef.new(shape: BulkReportType, required: true, location_name: "ReportType"))
    GetOpportunityBulkJobReportUrlResponse.add_member(:report_format, Shapes::ShapeRef.new(shape: BulkFileFormat, required: true, location_name: "ReportFormat"))
    GetOpportunityBulkJobReportUrlResponse.add_member(:url, Shapes::ShapeRef.new(shape: BulkReportUrl, location_name: "Url"))
    GetOpportunityBulkJobReportUrlResponse.add_member(:expires_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpiresAt"))
    GetOpportunityBulkJobReportUrlResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    GetOpportunityBulkJobReportUrlResponse.struct_class = Types::GetOpportunityBulkJobReportUrlResponse

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

    GetProspectingFromEngagementTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetProspectingFromEngagementTaskRequest.add_member(:task_identifier, Shapes::ShapeRef.new(shape: ProspectingTaskIdentifier, required: true, location_name: "TaskIdentifier"))
    GetProspectingFromEngagementTaskRequest.struct_class = Types::GetProspectingFromEngagementTaskRequest

    GetProspectingFromEngagementTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: ProspectingTaskIdentifier, required: true, location_name: "TaskId"))
    GetProspectingFromEngagementTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: ProspectingTaskArn, required: true, location_name: "TaskArn"))
    GetProspectingFromEngagementTaskResponse.add_member(:task_name, Shapes::ShapeRef.new(shape: TaskName, required: true, location_name: "TaskName"))
    GetProspectingFromEngagementTaskResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartTime"))
    GetProspectingFromEngagementTaskResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    GetProspectingFromEngagementTaskResponse.add_member(:engagements, Shapes::ShapeRef.new(shape: EngagementProspectingResultList, required: true, location_name: "Engagements"))
    GetProspectingFromEngagementTaskResponse.struct_class = Types::GetProspectingFromEngagementTaskResponse

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
    GetResourceSnapshotResponse.add_member(:target_member_accounts, Shapes::ShapeRef.new(shape: AwsAccountIdOrAliasList, location_name: "TargetMemberAccounts"))
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

    InvitationProspectingResultAws.add_member(:customer, Shapes::ShapeRef.new(shape: ProspectingResultCustomer, location_name: "Customer"))
    InvitationProspectingResultAws.add_member(:insights, Shapes::ShapeRef.new(shape: ProspectingInsights, location_name: "Insights"))
    InvitationProspectingResultAws.struct_class = Types::InvitationProspectingResultAws

    InvitationStatusList.member = Shapes::ShapeRef.new(shape: InvitationStatus)

    Issue.add_member(:severity, Shapes::ShapeRef.new(shape: String, location_name: "Severity"))
    Issue.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "Code"))
    Issue.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    Issue.struct_class = Types::Issue

    IssueList.member = Shapes::ShapeRef.new(shape: Issue)

    LastModifiedDate.add_member(:after_last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "AfterLastModifiedDate"))
    LastModifiedDate.add_member(:before_last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "BeforeLastModifiedDate"))
    LastModifiedDate.struct_class = Types::LastModifiedDate

    LeadAddress.add_member(:city, Shapes::ShapeRef.new(shape: LeadAddressCityString, location_name: "City"))
    LeadAddress.add_member(:postal_code, Shapes::ShapeRef.new(shape: LeadAddressPostalCodeString, location_name: "PostalCode"))
    LeadAddress.add_member(:state_or_region, Shapes::ShapeRef.new(shape: LeadAddressStateOrRegionString, location_name: "StateOrRegion"))
    LeadAddress.add_member(:country_code, Shapes::ShapeRef.new(shape: LeadCountryCode, location_name: "CountryCode"))
    LeadAddress.struct_class = Types::LeadAddress

    LeadContact.add_member(:business_title, Shapes::ShapeRef.new(shape: LeadJobTitle, required: true, location_name: "BusinessTitle"))
    LeadContact.add_member(:email, Shapes::ShapeRef.new(shape: LeadEmail, required: true, location_name: "Email"))
    LeadContact.add_member(:first_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "FirstName"))
    LeadContact.add_member(:last_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "LastName"))
    LeadContact.add_member(:phone, Shapes::ShapeRef.new(shape: LeadPhoneNumber, location_name: "Phone"))
    LeadContact.struct_class = Types::LeadContact

    LeadContext.add_member(:insights, Shapes::ShapeRef.new(shape: LeadInsights, location_name: "Insights"))
    LeadContext.add_member(:qualification_status, Shapes::ShapeRef.new(shape: LeadQualificationStatus, location_name: "QualificationStatus"))
    LeadContext.add_member(:customer, Shapes::ShapeRef.new(shape: LeadCustomer, required: true, location_name: "Customer"))
    LeadContext.add_member(:interactions, Shapes::ShapeRef.new(shape: LeadInteractionList, required: true, location_name: "Interactions"))
    LeadContext.struct_class = Types::LeadContext

    LeadCustomer.add_member(:industry, Shapes::ShapeRef.new(shape: LeadIndustry, location_name: "Industry"))
    LeadCustomer.add_member(:company_name, Shapes::ShapeRef.new(shape: CompanyName, required: true, location_name: "CompanyName"))
    LeadCustomer.add_member(:website_url, Shapes::ShapeRef.new(shape: LeadWebsiteUrl, location_name: "WebsiteUrl"))
    LeadCustomer.add_member(:address, Shapes::ShapeRef.new(shape: LeadAddress, location_name: "Address"))
    LeadCustomer.add_member(:aws_maturity, Shapes::ShapeRef.new(shape: AwsMaturity, location_name: "AwsMaturity"))
    LeadCustomer.add_member(:market_segment, Shapes::ShapeRef.new(shape: LeadMarketSegment, location_name: "MarketSegment"))
    LeadCustomer.struct_class = Types::LeadCustomer

    LeadInsights.add_member(:lead_readiness_score, Shapes::ShapeRef.new(shape: String, location_name: "LeadReadinessScore"))
    LeadInsights.add_member(:channel_recommendation, Shapes::ShapeRef.new(shape: ChannelRecommendation, location_name: "ChannelRecommendation"))
    LeadInsights.struct_class = Types::LeadInsights

    LeadInteraction.add_member(:source_type, Shapes::ShapeRef.new(shape: LeadSourceType, location_name: "SourceType"))
    LeadInteraction.add_member(:source_id, Shapes::ShapeRef.new(shape: LeadSourceId, location_name: "SourceId"))
    LeadInteraction.add_member(:source_name, Shapes::ShapeRef.new(shape: LeadSourceName, location_name: "SourceName"))
    LeadInteraction.add_member(:usecase, Shapes::ShapeRef.new(shape: EngagementUseCase, location_name: "Usecase"))
    LeadInteraction.add_member(:interaction_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "InteractionDate"))
    LeadInteraction.add_member(:customer_action, Shapes::ShapeRef.new(shape: CustomerAction, location_name: "CustomerAction"))
    LeadInteraction.add_member(:business_problem, Shapes::ShapeRef.new(shape: LeadBusinessProblem, location_name: "BusinessProblem"))
    LeadInteraction.add_member(:contact, Shapes::ShapeRef.new(shape: LeadContact, required: true, location_name: "Contact"))
    LeadInteraction.struct_class = Types::LeadInteraction

    LeadInteractionList.member = Shapes::ShapeRef.new(shape: LeadInteraction)

    LeadInvitationCustomer.add_member(:industry, Shapes::ShapeRef.new(shape: LeadIndustry, location_name: "Industry"))
    LeadInvitationCustomer.add_member(:company_name, Shapes::ShapeRef.new(shape: CompanyName, required: true, location_name: "CompanyName"))
    LeadInvitationCustomer.add_member(:website_url, Shapes::ShapeRef.new(shape: LeadWebsiteUrl, location_name: "WebsiteUrl"))
    LeadInvitationCustomer.add_member(:country_code, Shapes::ShapeRef.new(shape: LeadCountryCode, location_name: "CountryCode"))
    LeadInvitationCustomer.add_member(:aws_maturity, Shapes::ShapeRef.new(shape: AwsMaturity, location_name: "AwsMaturity"))
    LeadInvitationCustomer.add_member(:market_segment, Shapes::ShapeRef.new(shape: LeadMarketSegment, location_name: "MarketSegment"))
    LeadInvitationCustomer.struct_class = Types::LeadInvitationCustomer

    LeadInvitationInteraction.add_member(:source_type, Shapes::ShapeRef.new(shape: LeadSourceType, location_name: "SourceType"))
    LeadInvitationInteraction.add_member(:source_id, Shapes::ShapeRef.new(shape: LeadSourceId, location_name: "SourceId"))
    LeadInvitationInteraction.add_member(:source_name, Shapes::ShapeRef.new(shape: LeadSourceName, location_name: "SourceName"))
    LeadInvitationInteraction.add_member(:usecase, Shapes::ShapeRef.new(shape: EngagementUseCase, location_name: "Usecase"))
    LeadInvitationInteraction.add_member(:contact_business_title, Shapes::ShapeRef.new(shape: JobTitle, required: true, location_name: "ContactBusinessTitle"))
    LeadInvitationInteraction.struct_class = Types::LeadInvitationInteraction

    LeadInvitationPayload.add_member(:customer, Shapes::ShapeRef.new(shape: LeadInvitationCustomer, required: true, location_name: "Customer"))
    LeadInvitationPayload.add_member(:interaction, Shapes::ShapeRef.new(shape: LeadInvitationInteraction, required: true, location_name: "Interaction"))
    LeadInvitationPayload.struct_class = Types::LeadInvitationPayload

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

    ListCustomerAccountBulkJobResultsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListCustomerAccountBulkJobResultsRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: BulkJobArnOrIdentifier, required: true, location_name: "Identifier"))
    ListCustomerAccountBulkJobResultsRequest.add_member(:status, Shapes::ShapeRef.new(shape: BulkRecordStatus, location_name: "Status"))
    ListCustomerAccountBulkJobResultsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCustomerAccountBulkJobResultsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCustomerAccountBulkJobResultsRequest.struct_class = Types::ListCustomerAccountBulkJobResultsRequest

    ListCustomerAccountBulkJobResultsResponse.add_member(:results, Shapes::ShapeRef.new(shape: BulkJobResultList, required: true, location_name: "Results"))
    ListCustomerAccountBulkJobResultsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCustomerAccountBulkJobResultsResponse.struct_class = Types::ListCustomerAccountBulkJobResultsResponse

    ListCustomerAccountBulkJobsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListCustomerAccountBulkJobsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: CustomerAccountBulkJobFilter, location_name: "Filter"))
    ListCustomerAccountBulkJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListCustomerAccountBulkJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCustomerAccountBulkJobsRequest.struct_class = Types::ListCustomerAccountBulkJobsRequest

    ListCustomerAccountBulkJobsResponse.add_member(:items, Shapes::ShapeRef.new(shape: CustomerAccountBulkJobSummaryList, required: true, location_name: "items"))
    ListCustomerAccountBulkJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListCustomerAccountBulkJobsResponse.struct_class = Types::ListCustomerAccountBulkJobsResponse

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

    ListEngagementGroupsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListEngagementGroupsRequest.add_member(:readiness_level, Shapes::ShapeRef.new(shape: ReadinessLevel, location_name: "ReadinessLevel"))
    ListEngagementGroupsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: EngagementGroupSort, location_name: "Sort"))
    ListEngagementGroupsRequest.add_member(:engagement_group_identifiers, Shapes::ShapeRef.new(shape: EngagementGroupIdentifiers, location_name: "EngagementGroupIdentifiers"))
    ListEngagementGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListEngagementGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: LeadsNextToken, location_name: "NextToken"))
    ListEngagementGroupsRequest.struct_class = Types::ListEngagementGroupsRequest

    ListEngagementGroupsResponse.add_member(:engagement_group_summaries, Shapes::ShapeRef.new(shape: EngagementGroupSummaries, location_name: "EngagementGroupSummaries"))
    ListEngagementGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: LeadsNextToken, location_name: "NextToken"))
    ListEngagementGroupsResponse.struct_class = Types::ListEngagementGroupsResponse

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
    ListEngagementsRequest.add_member(:context_types, Shapes::ShapeRef.new(shape: EngagementContextTypeList, location_name: "ContextTypes"))
    ListEngagementsRequest.add_member(:exclude_context_types, Shapes::ShapeRef.new(shape: EngagementContextTypeList, location_name: "ExcludeContextTypes"))
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
    ListOpportunitiesRequest.add_member(:created_date, Shapes::ShapeRef.new(shape: CreatedDateFilter, location_name: "CreatedDate"))
    ListOpportunitiesRequest.add_member(:target_close_date, Shapes::ShapeRef.new(shape: TargetCloseDateFilter, location_name: "TargetCloseDate"))
    ListOpportunitiesRequest.struct_class = Types::ListOpportunitiesRequest

    ListOpportunitiesRequestCustomerCompanyNameList.member = Shapes::ShapeRef.new(shape: String)

    ListOpportunitiesRequestIdentifierList.member = Shapes::ShapeRef.new(shape: OpportunityIdentifier)

    ListOpportunitiesRequestLifeCycleReviewStatusList.member = Shapes::ShapeRef.new(shape: ReviewStatus)

    ListOpportunitiesRequestLifeCycleStageList.member = Shapes::ShapeRef.new(shape: Stage)

    ListOpportunitiesResponse.add_member(:opportunity_summaries, Shapes::ShapeRef.new(shape: OpportunitySummaries, required: true, location_name: "OpportunitySummaries"))
    ListOpportunitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpportunitiesResponse.struct_class = Types::ListOpportunitiesResponse

    ListOpportunityBulkJobResultsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListOpportunityBulkJobResultsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOpportunityBulkJobResultsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListOpportunityBulkJobResultsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpportunityBulkJobResultsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: BulkJobId, required: true, location_name: "JobId"))
    ListOpportunityBulkJobResultsRequest.add_member(:status, Shapes::ShapeRef.new(shape: BulkRecordStatus, location_name: "Status"))
    ListOpportunityBulkJobResultsRequest.struct_class = Types::ListOpportunityBulkJobResultsRequest

    ListOpportunityBulkJobResultsResponse.add_member(:results, Shapes::ShapeRef.new(shape: BulkJobResultList, required: true, location_name: "Results"))
    ListOpportunityBulkJobResultsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpportunityBulkJobResultsResponse.struct_class = Types::ListOpportunityBulkJobResultsResponse

    ListOpportunityBulkJobsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListOpportunityBulkJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOpportunityBulkJobsRequestMaxResultsInteger, location_name: "MaxResults"))
    ListOpportunityBulkJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpportunityBulkJobsRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: BulkJobId, location_name: "JobId"))
    ListOpportunityBulkJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: BulkJobStatus, location_name: "Status"))
    ListOpportunityBulkJobsRequest.struct_class = Types::ListOpportunityBulkJobsRequest

    ListOpportunityBulkJobsResponse.add_member(:opportunity_bulk_job_summaries, Shapes::ShapeRef.new(shape: OpportunityBulkJobSummaryList, required: true, location_name: "OpportunityBulkJobSummaries"))
    ListOpportunityBulkJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpportunityBulkJobsResponse.struct_class = Types::ListOpportunityBulkJobsResponse

    ListOpportunityFromEngagementTaskSummaries.member = Shapes::ShapeRef.new(shape: ListOpportunityFromEngagementTaskSummary)

    ListOpportunityFromEngagementTaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskIdentifier, location_name: "TaskId"))
    ListOpportunityFromEngagementTaskSummary.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    ListOpportunityFromEngagementTaskSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    ListOpportunityFromEngagementTaskSummary.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "TaskStatus"))
    ListOpportunityFromEngagementTaskSummary.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ListOpportunityFromEngagementTaskSummary.add_member(:reason_code, Shapes::ShapeRef.new(shape: ReasonCode, location_name: "ReasonCode"))
    ListOpportunityFromEngagementTaskSummary.add_member(:opportunity_id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "OpportunityId"))
    ListOpportunityFromEngagementTaskSummary.add_member(:resource_snapshot_job_id, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, location_name: "ResourceSnapshotJobId"))
    ListOpportunityFromEngagementTaskSummary.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    ListOpportunityFromEngagementTaskSummary.add_member(:context_id, Shapes::ShapeRef.new(shape: ContextIdentifier, location_name: "ContextId"))
    ListOpportunityFromEngagementTaskSummary.struct_class = Types::ListOpportunityFromEngagementTaskSummary

    ListOpportunityFromEngagementTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListOpportunityFromEngagementTasksRequestMaxResultsInteger, location_name: "MaxResults"))
    ListOpportunityFromEngagementTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: ListOpportunityFromEngagementTasksRequestNextTokenString, location_name: "NextToken"))
    ListOpportunityFromEngagementTasksRequest.add_member(:sort, Shapes::ShapeRef.new(shape: ListTasksSortBase, location_name: "Sort"))
    ListOpportunityFromEngagementTasksRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListOpportunityFromEngagementTasksRequest.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatuses, location_name: "TaskStatus"))
    ListOpportunityFromEngagementTasksRequest.add_member(:task_identifier, Shapes::ShapeRef.new(shape: TaskIdentifiers, location_name: "TaskIdentifier"))
    ListOpportunityFromEngagementTasksRequest.add_member(:opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifiers, location_name: "OpportunityIdentifier"))
    ListOpportunityFromEngagementTasksRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementIdentifiers, location_name: "EngagementIdentifier"))
    ListOpportunityFromEngagementTasksRequest.add_member(:context_identifier, Shapes::ShapeRef.new(shape: ContextIdentifiers, location_name: "ContextIdentifier"))
    ListOpportunityFromEngagementTasksRequest.struct_class = Types::ListOpportunityFromEngagementTasksRequest

    ListOpportunityFromEngagementTasksResponse.add_member(:task_summaries, Shapes::ShapeRef.new(shape: ListOpportunityFromEngagementTaskSummaries, location_name: "TaskSummaries"))
    ListOpportunityFromEngagementTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpportunityFromEngagementTasksResponse.struct_class = Types::ListOpportunityFromEngagementTasksResponse

    ListProspectingFromEngagementTasksRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListProspectingFromEngagementTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListProspectingFromEngagementTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListProspectingFromEngagementTasksRequest.add_member(:task_identifier, Shapes::ShapeRef.new(shape: TaskIdentifierList, location_name: "TaskIdentifier"))
    ListProspectingFromEngagementTasksRequest.add_member(:task_name, Shapes::ShapeRef.new(shape: TaskNameList, location_name: "TaskName"))
    ListProspectingFromEngagementTasksRequest.add_member(:start_after, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartAfter"))
    ListProspectingFromEngagementTasksRequest.add_member(:start_before, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartBefore"))
    ListProspectingFromEngagementTasksRequest.add_member(:sort, Shapes::ShapeRef.new(shape: ProspectingFromEngagementTaskSort, location_name: "Sort"))
    ListProspectingFromEngagementTasksRequest.struct_class = Types::ListProspectingFromEngagementTasksRequest

    ListProspectingFromEngagementTasksResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: ListProspectingFromEngagementTasksResponseNextTokenString, location_name: "NextToken"))
    ListProspectingFromEngagementTasksResponse.add_member(:task_summaries, Shapes::ShapeRef.new(shape: ProspectingTaskSummaryList, required: true, location_name: "TaskSummaries"))
    ListProspectingFromEngagementTasksResponse.struct_class = Types::ListProspectingFromEngagementTasksResponse

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
    ListSolutionsRequest.add_member(:aws_marketplace_solution_arn, Shapes::ShapeRef.new(shape: ListSolutionsRequestAwsMarketplaceSolutionArnList, location_name: "AwsMarketplaceSolutionArn"))
    ListSolutionsRequest.struct_class = Types::ListSolutionsRequest

    ListSolutionsRequestAwsMarketplaceSolutionArnList.member = Shapes::ShapeRef.new(shape: AwsMarketplaceSolutionArn)

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

    OpportunityBulkJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: BulkJobId, required: true, location_name: "JobId"))
    OpportunityBulkJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: BulkJobStatus, required: true, location_name: "Status"))
    OpportunityBulkJobSummary.add_member(:total_records, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalRecords"))
    OpportunityBulkJobSummary.add_member(:processed_records, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "ProcessedRecords"))
    OpportunityBulkJobSummary.add_member(:success_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "SuccessCount"))
    OpportunityBulkJobSummary.add_member(:failure_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "FailureCount"))
    OpportunityBulkJobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    OpportunityBulkJobSummary.add_member(:started_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartedAt"))
    OpportunityBulkJobSummary.add_member(:completed_at, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletedAt"))
    OpportunityBulkJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    OpportunityBulkJobSummary.add_member(:file_name, Shapes::ShapeRef.new(shape: BulkFileName, location_name: "FileName"))
    OpportunityBulkJobSummary.add_member(:operation_type, Shapes::ShapeRef.new(shape: BulkOperationType, location_name: "OperationType"))
    OpportunityBulkJobSummary.struct_class = Types::OpportunityBulkJobSummary

    OpportunityBulkJobSummaryList.member = Shapes::ShapeRef.new(shape: OpportunityBulkJobSummary)

    OpportunityEngagementInvitationSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    OpportunityEngagementInvitationSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: OpportunityEngagementInvitationSortName, required: true, location_name: "SortBy"))
    OpportunityEngagementInvitationSort.struct_class = Types::OpportunityEngagementInvitationSort

    OpportunityIdentifiers.member = Shapes::ShapeRef.new(shape: OpportunityIdentifier)

    OpportunityInvitationPayload.add_member(:sender_contacts, Shapes::ShapeRef.new(shape: SenderContactList, location_name: "SenderContacts"))
    OpportunityInvitationPayload.add_member(:receiver_responsibilities, Shapes::ShapeRef.new(shape: ReceiverResponsibilityList, required: true, location_name: "ReceiverResponsibilities"))
    OpportunityInvitationPayload.add_member(:customer, Shapes::ShapeRef.new(shape: EngagementCustomer, required: true, location_name: "Customer"))
    OpportunityInvitationPayload.add_member(:project, Shapes::ShapeRef.new(shape: ProjectDetails, required: true, location_name: "Project"))
    OpportunityInvitationPayload.add_member(:opportunity_type, Shapes::ShapeRef.new(shape: OpportunityType, location_name: "OpportunityType"))
    OpportunityInvitationPayload.struct_class = Types::OpportunityInvitationPayload

    OpportunityQuality.add_member(:score, Shapes::ShapeRef.new(shape: OpportunityQualityScoreInteger, location_name: "Score"))
    OpportunityQuality.add_member(:trend, Shapes::ShapeRef.new(shape: String, location_name: "Trend"))
    OpportunityQuality.struct_class = Types::OpportunityQuality

    OpportunitySearchAccount.add_member(:company_name, Shapes::ShapeRef.new(shape: OpportunitySearchAccountCompanyNameString, location_name: "CompanyName"))
    OpportunitySearchAccount.add_member(:industry, Shapes::ShapeRef.new(shape: Industry, location_name: "Industry"))
    OpportunitySearchAccount.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: SearchAwsAccount, location_name: "AwsAccountId"))
    OpportunitySearchAccount.add_member(:address, Shapes::ShapeRef.new(shape: OpportunitySearchAddress, location_name: "Address"))
    OpportunitySearchAccount.struct_class = Types::OpportunitySearchAccount

    OpportunitySearchAddress.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, location_name: "CountryCode"))
    OpportunitySearchAddress.struct_class = Types::OpportunitySearchAddress

    OpportunitySearchAwsSummary.add_member(:origin, Shapes::ShapeRef.new(shape: OpportunityOrigin, location_name: "Origin"))
    OpportunitySearchAwsSummary.add_member(:cosell_motion, Shapes::ShapeRef.new(shape: CosellMotion, location_name: "CosellMotion"))
    OpportunitySearchAwsSummary.add_member(:insights, Shapes::ShapeRef.new(shape: OpportunitySearchInsights, location_name: "Insights"))
    OpportunitySearchAwsSummary.struct_class = Types::OpportunitySearchAwsSummary

    OpportunitySearchCustomer.add_member(:account, Shapes::ShapeRef.new(shape: OpportunitySearchAccount, location_name: "Account"))
    OpportunitySearchCustomer.struct_class = Types::OpportunitySearchCustomer

    OpportunitySearchExpectedCustomerSpend.add_member(:amount, Shapes::ShapeRef.new(shape: Amount, location_name: "Amount"))
    OpportunitySearchExpectedCustomerSpend.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "CurrencyCode"))
    OpportunitySearchExpectedCustomerSpend.struct_class = Types::OpportunitySearchExpectedCustomerSpend

    OpportunitySearchExpectedCustomerSpendList.member = Shapes::ShapeRef.new(shape: OpportunitySearchExpectedCustomerSpend)

    OpportunitySearchFilter.add_member(:and_all_filters, Shapes::ShapeRef.new(shape: OpportunitySearchFilterList, location_name: "AndAllFilters"))
    OpportunitySearchFilter.add_member(:or_all_filters, Shapes::ShapeRef.new(shape: OpportunitySearchFilterList, location_name: "OrAllFilters"))
    OpportunitySearchFilter.add_member(:not_filter, Shapes::ShapeRef.new(shape: OpportunitySearchFilter, location_name: "NotFilter"))
    OpportunitySearchFilter.add_member(:equals_to, Shapes::ShapeRef.new(shape: OpportunitySearchPredicate, location_name: "EqualsTo"))
    OpportunitySearchFilter.add_member(:contains_any, Shapes::ShapeRef.new(shape: OpportunitySearchPredicate, location_name: "ContainsAny"))
    OpportunitySearchFilter.add_member(:contains_all, Shapes::ShapeRef.new(shape: OpportunitySearchPredicate, location_name: "ContainsAll"))
    OpportunitySearchFilter.add_member(:greater_than, Shapes::ShapeRef.new(shape: OpportunitySearchPredicate, location_name: "GreaterThan"))
    OpportunitySearchFilter.add_member(:greater_than_or_equals, Shapes::ShapeRef.new(shape: OpportunitySearchPredicate, location_name: "GreaterThanOrEquals"))
    OpportunitySearchFilter.add_member(:less_than, Shapes::ShapeRef.new(shape: OpportunitySearchPredicate, location_name: "LessThan"))
    OpportunitySearchFilter.add_member(:less_than_or_equals, Shapes::ShapeRef.new(shape: OpportunitySearchPredicate, location_name: "LessThanOrEquals"))
    OpportunitySearchFilter.struct_class = Types::OpportunitySearchFilter

    OpportunitySearchFilterList.member = Shapes::ShapeRef.new(shape: OpportunitySearchFilter)

    OpportunitySearchFilterValue.add_member(:string_value, Shapes::ShapeRef.new(shape: SearchFilterValue, location_name: "StringValue"))
    OpportunitySearchFilterValue.add_member(:string_list_value, Shapes::ShapeRef.new(shape: OpportunitySearchFilterValues, location_name: "StringListValue"))
    OpportunitySearchFilterValue.add_member(:long_value, Shapes::ShapeRef.new(shape: Long, location_name: "LongValue"))
    OpportunitySearchFilterValue.add_member(:double_value, Shapes::ShapeRef.new(shape: Double, location_name: "DoubleValue"))
    OpportunitySearchFilterValue.add_member(:date_value, Shapes::ShapeRef.new(shape: DateTime, location_name: "DateValue"))
    OpportunitySearchFilterValue.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    OpportunitySearchFilterValue.add_member_subclass(:string_value, Types::OpportunitySearchFilterValue::StringValue)
    OpportunitySearchFilterValue.add_member_subclass(:string_list_value, Types::OpportunitySearchFilterValue::StringListValue)
    OpportunitySearchFilterValue.add_member_subclass(:long_value, Types::OpportunitySearchFilterValue::LongValue)
    OpportunitySearchFilterValue.add_member_subclass(:double_value, Types::OpportunitySearchFilterValue::DoubleValue)
    OpportunitySearchFilterValue.add_member_subclass(:date_value, Types::OpportunitySearchFilterValue::DateValue)
    OpportunitySearchFilterValue.add_member_subclass(:unknown, Types::OpportunitySearchFilterValue::Unknown)
    OpportunitySearchFilterValue.struct_class = Types::OpportunitySearchFilterValue

    OpportunitySearchFilterValues.member = Shapes::ShapeRef.new(shape: SearchFilterValue)

    OpportunitySearchInsights.add_member(:engagement_score, Shapes::ShapeRef.new(shape: SearchEngagementScore, location_name: "EngagementScore"))
    OpportunitySearchInsights.add_member(:opportunity_quality, Shapes::ShapeRef.new(shape: OpportunitySearchOpportunityQuality, location_name: "OpportunityQuality"))
    OpportunitySearchInsights.struct_class = Types::OpportunitySearchInsights

    OpportunitySearchLifeCycle.add_member(:review_status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "ReviewStatus"))
    OpportunitySearchLifeCycle.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "Stage"))
    OpportunitySearchLifeCycle.add_member(:next_steps, Shapes::ShapeRef.new(shape: OpportunitySearchLifeCycleNextStepsString, location_name: "NextSteps"))
    OpportunitySearchLifeCycle.add_member(:target_close_date, Shapes::ShapeRef.new(shape: Date, location_name: "TargetCloseDate"))
    OpportunitySearchLifeCycle.struct_class = Types::OpportunitySearchLifeCycle

    OpportunitySearchOpportunityQuality.add_member(:score, Shapes::ShapeRef.new(shape: OpportunitySearchOpportunityQualityScoreInteger, location_name: "Score"))
    OpportunitySearchOpportunityQuality.struct_class = Types::OpportunitySearchOpportunityQuality

    OpportunitySearchPredicate.add_member(:key, Shapes::ShapeRef.new(shape: OpportunitySearchFilterName, required: true, location_name: "Key"))
    OpportunitySearchPredicate.add_member(:value, Shapes::ShapeRef.new(shape: OpportunitySearchFilterValue, required: true, location_name: "Value"))
    OpportunitySearchPredicate.struct_class = Types::OpportunitySearchPredicate

    OpportunitySearchProject.add_member(:title, Shapes::ShapeRef.new(shape: OpportunitySearchProjectTitleString, location_name: "Title"))
    OpportunitySearchProject.add_member(:apn_programs, Shapes::ShapeRef.new(shape: ApnPrograms, location_name: "ApnPrograms"))
    OpportunitySearchProject.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: OpportunitySearchExpectedCustomerSpendList, location_name: "ExpectedCustomerSpend"))
    OpportunitySearchProject.struct_class = Types::OpportunitySearchProject

    OpportunitySearchRelatedEntityIdentifiers.add_member(:aws_marketplace_offers, Shapes::ShapeRef.new(shape: AwsMarketplaceOfferIdentifiers, location_name: "AwsMarketplaceOffers"))
    OpportunitySearchRelatedEntityIdentifiers.add_member(:aws_marketplace_offer_sets, Shapes::ShapeRef.new(shape: AwsMarketplaceOfferSetIdentifiers, location_name: "AwsMarketplaceOfferSets"))
    OpportunitySearchRelatedEntityIdentifiers.add_member(:aws_marketplace_solutions, Shapes::ShapeRef.new(shape: AwsMarketplaceSolutionIdentifiers, location_name: "AwsMarketplaceSolutions"))
    OpportunitySearchRelatedEntityIdentifiers.add_member(:solutions, Shapes::ShapeRef.new(shape: SolutionIdentifiers, location_name: "Solutions"))
    OpportunitySearchRelatedEntityIdentifiers.struct_class = Types::OpportunitySearchRelatedEntityIdentifiers

    OpportunitySearchSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: OpportunitySearchSortName, required: true, location_name: "SortBy"))
    OpportunitySearchSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    OpportunitySearchSort.struct_class = Types::OpportunitySearchSort

    OpportunitySearchSummaries.member = Shapes::ShapeRef.new(shape: OpportunitySearchSummary)

    OpportunitySearchSummary.add_member(:id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Id"))
    OpportunitySearchSummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastModifiedDate"))
    OpportunitySearchSummary.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedDate"))
    OpportunitySearchSummary.add_member(:opportunity_type, Shapes::ShapeRef.new(shape: OpportunityType, location_name: "OpportunityType"))
    OpportunitySearchSummary.add_member(:partner_opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunitySearchSummaryPartnerOpportunityIdentifierString, location_name: "PartnerOpportunityIdentifier"))
    OpportunitySearchSummary.add_member(:life_cycle, Shapes::ShapeRef.new(shape: OpportunitySearchLifeCycle, location_name: "LifeCycle"))
    OpportunitySearchSummary.add_member(:customer, Shapes::ShapeRef.new(shape: OpportunitySearchCustomer, location_name: "Customer"))
    OpportunitySearchSummary.add_member(:project, Shapes::ShapeRef.new(shape: OpportunitySearchProject, location_name: "Project"))
    OpportunitySearchSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    OpportunitySearchSummary.add_member(:related_entity_identifiers, Shapes::ShapeRef.new(shape: OpportunitySearchRelatedEntityIdentifiers, location_name: "RelatedEntityIdentifiers"))
    OpportunitySearchSummary.add_member(:opportunity_team, Shapes::ShapeRef.new(shape: OpportunitySearchTeamMembersList, location_name: "OpportunityTeam"))
    OpportunitySearchSummary.add_member(:aws_opportunity_summary, Shapes::ShapeRef.new(shape: OpportunitySearchAwsSummary, location_name: "AwsOpportunitySummary"))
    OpportunitySearchSummary.struct_class = Types::OpportunitySearchSummary

    OpportunitySearchTeamMember.add_member(:first_name, Shapes::ShapeRef.new(shape: OpportunitySearchTeamMemberFirstNameString, location_name: "FirstName"))
    OpportunitySearchTeamMember.add_member(:last_name, Shapes::ShapeRef.new(shape: OpportunitySearchTeamMemberLastNameString, location_name: "LastName"))
    OpportunitySearchTeamMember.add_member(:business_title, Shapes::ShapeRef.new(shape: JobTitle, location_name: "BusinessTitle"))
    OpportunitySearchTeamMember.struct_class = Types::OpportunitySearchTeamMember

    OpportunitySearchTeamMembersList.member = Shapes::ShapeRef.new(shape: OpportunitySearchTeamMember)

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
    Payload.add_member(:lead_invitation, Shapes::ShapeRef.new(shape: LeadInvitationPayload, location_name: "LeadInvitation"))
    Payload.add_member(:account_planning_invitation, Shapes::ShapeRef.new(shape: AccountPlanningInvitationPayload, location_name: "AccountPlanningInvitation"))
    Payload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Payload.add_member_subclass(:opportunity_invitation, Types::Payload::OpportunityInvitation)
    Payload.add_member_subclass(:lead_invitation, Types::Payload::LeadInvitation)
    Payload.add_member_subclass(:account_planning_invitation, Types::Payload::AccountPlanningInvitation)
    Payload.add_member_subclass(:unknown, Types::Payload::Unknown)
    Payload.struct_class = Types::Payload

    PreferredContactWindow.add_member(:window, Shapes::ShapeRef.new(shape: ContactWindow, location_name: "Window"))
    PreferredContactWindow.add_member(:timezone, Shapes::ShapeRef.new(shape: PreferredContactWindowTimezoneString, location_name: "Timezone"))
    PreferredContactWindow.struct_class = Types::PreferredContactWindow

    PrimaryNeedsFromAws.member = Shapes::ShapeRef.new(shape: PrimaryNeedFromAws)

    ProfileNextStepsHistory.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    ProfileNextStepsHistory.add_member(:time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "Time"))
    ProfileNextStepsHistory.struct_class = Types::ProfileNextStepsHistory

    Project.add_member(:delivery_models, Shapes::ShapeRef.new(shape: DeliveryModels, location_name: "DeliveryModels"))
    Project.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, location_name: "ExpectedCustomerSpend"))
    Project.add_member(:expected_contract_duration, Shapes::ShapeRef.new(shape: ExpectedContractDuration, location_name: "ExpectedContractDuration"))
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
    Project.add_member(:aws_partition, Shapes::ShapeRef.new(shape: AwsPartition, location_name: "AwsPartition"))
    Project.struct_class = Types::Project

    ProjectDetails.add_member(:business_problem, Shapes::ShapeRef.new(shape: EngagementCustomerBusinessProblem, required: true, location_name: "BusinessProblem"))
    ProjectDetails.add_member(:title, Shapes::ShapeRef.new(shape: ProjectDetailsTitleString, required: true, location_name: "Title"))
    ProjectDetails.add_member(:target_completion_date, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "TargetCompletionDate"))
    ProjectDetails.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, required: true, location_name: "ExpectedCustomerSpend"))
    ProjectDetails.struct_class = Types::ProjectDetails

    ProjectSummary.add_member(:delivery_models, Shapes::ShapeRef.new(shape: DeliveryModels, location_name: "DeliveryModels"))
    ProjectSummary.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, location_name: "ExpectedCustomerSpend"))
    ProjectSummary.add_member(:expected_contract_duration, Shapes::ShapeRef.new(shape: ExpectedContractDuration, location_name: "ExpectedContractDuration"))
    ProjectSummary.struct_class = Types::ProjectSummary

    ProjectView.add_member(:delivery_models, Shapes::ShapeRef.new(shape: DeliveryModels, location_name: "DeliveryModels"))
    ProjectView.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, location_name: "ExpectedCustomerSpend"))
    ProjectView.add_member(:expected_contract_duration, Shapes::ShapeRef.new(shape: ExpectedContractDuration, location_name: "ExpectedContractDuration"))
    ProjectView.add_member(:customer_use_case, Shapes::ShapeRef.new(shape: String, location_name: "CustomerUseCase"))
    ProjectView.add_member(:sales_activities, Shapes::ShapeRef.new(shape: SalesActivities, location_name: "SalesActivities"))
    ProjectView.add_member(:other_solution_description, Shapes::ShapeRef.new(shape: ProjectViewOtherSolutionDescriptionString, location_name: "OtherSolutionDescription"))
    ProjectView.struct_class = Types::ProjectView

    ProspectingFromEngagementTaskSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    ProspectingFromEngagementTaskSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: ProspectingFromEngagementTaskSortName, required: true, location_name: "SortBy"))
    ProspectingFromEngagementTaskSort.struct_class = Types::ProspectingFromEngagementTaskSort

    ProspectingInsights.add_member(:marketplace_engagement_score, Shapes::ShapeRef.new(shape: EngagementScoreLevel, location_name: "MarketplaceEngagementScore"))
    ProspectingInsights.add_member(:solution_score, Shapes::ShapeRef.new(shape: String, location_name: "SolutionScore"))
    ProspectingInsights.add_member(:solution_category, Shapes::ShapeRef.new(shape: String, location_name: "SolutionCategory"))
    ProspectingInsights.add_member(:solution_sub_category, Shapes::ShapeRef.new(shape: String, location_name: "SolutionSubCategory"))
    ProspectingInsights.struct_class = Types::ProspectingInsights

    ProspectingResult.add_member(:aws, Shapes::ShapeRef.new(shape: ProspectingResultAws, location_name: "Aws"))
    ProspectingResult.struct_class = Types::ProspectingResult

    ProspectingResultAws.add_member(:customer, Shapes::ShapeRef.new(shape: ProspectingResultCustomer, location_name: "Customer"))
    ProspectingResultAws.add_member(:insights, Shapes::ShapeRef.new(shape: ProspectingInsights, location_name: "Insights"))
    ProspectingResultAws.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    ProspectingResultAws.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    ProspectingResultAws.add_member(:task_id, Shapes::ShapeRef.new(shape: ProspectingTaskIdentifier, location_name: "TaskId"))
    ProspectingResultAws.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    ProspectingResultAws.add_member(:task_name, Shapes::ShapeRef.new(shape: TaskName, location_name: "TaskName"))
    ProspectingResultAws.struct_class = Types::ProspectingResultAws

    ProspectingResultCustomer.add_member(:account_name, Shapes::ShapeRef.new(shape: ProspectingAccountName, location_name: "AccountName"))
    ProspectingResultCustomer.add_member(:geo, Shapes::ShapeRef.new(shape: ProspectingGeo, location_name: "Geo"))
    ProspectingResultCustomer.add_member(:region, Shapes::ShapeRef.new(shape: ProspectingRegion, location_name: "Region"))
    ProspectingResultCustomer.add_member(:sub_region, Shapes::ShapeRef.new(shape: ProspectingSubRegion, location_name: "SubRegion"))
    ProspectingResultCustomer.add_member(:country, Shapes::ShapeRef.new(shape: CountryCode, location_name: "Country"))
    ProspectingResultCustomer.add_member(:industry, Shapes::ShapeRef.new(shape: Industry, location_name: "Industry"))
    ProspectingResultCustomer.add_member(:sub_industry, Shapes::ShapeRef.new(shape: ProspectingSubIndustry, location_name: "SubIndustry"))
    ProspectingResultCustomer.add_member(:segment, Shapes::ShapeRef.new(shape: ProspectingSegment, location_name: "Segment"))
    ProspectingResultCustomer.add_member(:company_size, Shapes::ShapeRef.new(shape: ProspectingCompanySize, location_name: "CompanySize"))
    ProspectingResultCustomer.add_member(:eligible_programs, Shapes::ShapeRef.new(shape: EligibleProgramsList, location_name: "EligiblePrograms"))
    ProspectingResultCustomer.add_member(:public_profile_summary, Shapes::ShapeRef.new(shape: ProspectingPublicProfileSummary, location_name: "PublicProfileSummary"))
    ProspectingResultCustomer.struct_class = Types::ProspectingResultCustomer

    ProspectingTaskSummary.add_member(:task_id, Shapes::ShapeRef.new(shape: ProspectingTaskIdentifier, required: true, location_name: "TaskId"))
    ProspectingTaskSummary.add_member(:task_arn, Shapes::ShapeRef.new(shape: ProspectingTaskArn, required: true, location_name: "TaskArn"))
    ProspectingTaskSummary.add_member(:task_name, Shapes::ShapeRef.new(shape: TaskName, required: true, location_name: "TaskName"))
    ProspectingTaskSummary.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartTime"))
    ProspectingTaskSummary.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "EndTime"))
    ProspectingTaskSummary.add_member(:total_engagement_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "TotalEngagementCount"))
    ProspectingTaskSummary.add_member(:completed_engagement_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "CompletedEngagementCount"))
    ProspectingTaskSummary.add_member(:failed_engagement_count, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "FailedEngagementCount"))
    ProspectingTaskSummary.struct_class = Types::ProspectingTaskSummary

    ProspectingTaskSummaryList.member = Shapes::ShapeRef.new(shape: ProspectingTaskSummary)

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

    Recommendation.add_member(:type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Type"))
    Recommendation.add_member(:details, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Details"))
    Recommendation.add_member(:attributes, Shapes::ShapeRef.new(shape: RecommendationAttributeMap, location_name: "Attributes"))
    Recommendation.struct_class = Types::Recommendation

    RecommendationAttributeMap.key = Shapes::ShapeRef.new(shape: String)
    RecommendationAttributeMap.value = Shapes::ShapeRef.new(shape: String)

    RecommendationList.member = Shapes::ShapeRef.new(shape: Recommendation)

    RejectEngagementInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    RejectEngagementInvitationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier, required: true, location_name: "Identifier"))
    RejectEngagementInvitationRequest.add_member(:rejection_reason, Shapes::ShapeRef.new(shape: RejectionReasonString, location_name: "RejectionReason"))
    RejectEngagementInvitationRequest.struct_class = Types::RejectEngagementInvitationRequest

    RelatedEntityIdentifiers.add_member(:aws_marketplace_offers, Shapes::ShapeRef.new(shape: AwsMarketplaceOfferIdentifiers, location_name: "AwsMarketplaceOffers"))
    RelatedEntityIdentifiers.add_member(:aws_marketplace_offer_sets, Shapes::ShapeRef.new(shape: AwsMarketplaceOfferSetIdentifiers, location_name: "AwsMarketplaceOfferSets"))
    RelatedEntityIdentifiers.add_member(:solutions, Shapes::ShapeRef.new(shape: SolutionIdentifiers, location_name: "Solutions"))
    RelatedEntityIdentifiers.add_member(:aws_products, Shapes::ShapeRef.new(shape: AwsProductIdentifiers, location_name: "AwsProducts"))
    RelatedEntityIdentifiers.add_member(:aws_marketplace_solutions, Shapes::ShapeRef.new(shape: AwsMarketplaceSolutionIdentifiers, location_name: "AwsMarketplaceSolutions"))
    RelatedEntityIdentifiers.add_member(:aws_marketplace_products, Shapes::ShapeRef.new(shape: AwsMarketplaceProductIdentifiers, location_name: "AwsMarketplaceProducts"))
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
    ResourceSnapshotPayload.add_member(:aws_opportunity_summary_full_view, Shapes::ShapeRef.new(shape: AwsOpportunitySummaryFullView, location_name: "AwsOpportunitySummaryFullView"))
    ResourceSnapshotPayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceSnapshotPayload.add_member_subclass(:opportunity_summary, Types::ResourceSnapshotPayload::OpportunitySummary)
    ResourceSnapshotPayload.add_member_subclass(:aws_opportunity_summary_full_view, Types::ResourceSnapshotPayload::AwsOpportunitySummaryFullView)
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

    SearchCustomerAccountsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    SearchCustomerAccountsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "Filter"))
    SearchCustomerAccountsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: CustomerAccountSort, location_name: "Sort"))
    SearchCustomerAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: SearchCustomerAccountsRequestMaxResultsInteger, location_name: "MaxResults"))
    SearchCustomerAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchCustomerAccountsRequest.struct_class = Types::SearchCustomerAccountsRequest

    SearchCustomerAccountsResponse.add_member(:customer_account_summaries, Shapes::ShapeRef.new(shape: CustomerAccountSummaryList, required: true, location_name: "CustomerAccountSummaries"))
    SearchCustomerAccountsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchCustomerAccountsResponse.struct_class = Types::SearchCustomerAccountsResponse

    SearchEngagementsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    SearchEngagementsRequest.add_member(:keyword, Shapes::ShapeRef.new(shape: EngagementSearchKeyword, location_name: "Keyword"))
    SearchEngagementsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: EngagementSearchFilter, location_name: "Filter"))
    SearchEngagementsRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupId, location_name: "GroupId"))
    SearchEngagementsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: EngagementSearchSort, location_name: "Sort"))
    SearchEngagementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    SearchEngagementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: LeadsNextToken, location_name: "NextToken"))
    SearchEngagementsRequest.struct_class = Types::SearchEngagementsRequest

    SearchEngagementsResponse.add_member(:engagement_search_summaries, Shapes::ShapeRef.new(shape: EngagementSearchSummaryList, location_name: "EngagementSearchSummaries"))
    SearchEngagementsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: LeadsNextToken, location_name: "NextToken"))
    SearchEngagementsResponse.struct_class = Types::SearchEngagementsResponse

    SearchOpportunitiesRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    SearchOpportunitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    SearchOpportunitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchOpportunitiesRequest.add_member(:keyword, Shapes::ShapeRef.new(shape: SearchKeyword, location_name: "Keyword"))
    SearchOpportunitiesRequest.add_member(:filter, Shapes::ShapeRef.new(shape: OpportunitySearchFilter, location_name: "Filter"))
    SearchOpportunitiesRequest.add_member(:sort, Shapes::ShapeRef.new(shape: OpportunitySearchSort, location_name: "Sort"))
    SearchOpportunitiesRequest.struct_class = Types::SearchOpportunitiesRequest

    SearchOpportunitiesResponse.add_member(:opportunity_search_summaries, Shapes::ShapeRef.new(shape: OpportunitySearchSummaries, required: true, location_name: "OpportunitySearchSummaries"))
    SearchOpportunitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchOpportunitiesResponse.struct_class = Types::SearchOpportunitiesResponse

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
    SolutionBase.add_member(:aws_marketplace_solution_arn, Shapes::ShapeRef.new(shape: AwsMarketplaceSolutionArn, location_name: "AwsMarketplaceSolutionArn"))
    SolutionBase.struct_class = Types::SolutionBase

    SolutionIdentifiers.member = Shapes::ShapeRef.new(shape: SolutionIdentifier)

    SolutionList.member = Shapes::ShapeRef.new(shape: SolutionBase)

    SolutionSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    SolutionSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: SolutionSortName, required: true, location_name: "SortBy"))
    SolutionSort.struct_class = Types::SolutionSort

    SortObject.add_member(:sort_by, Shapes::ShapeRef.new(shape: SortBy, location_name: "SortBy"))
    SortObject.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder"))
    SortObject.struct_class = Types::SortObject

    StartCustomerAccountBulkJobRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    StartCustomerAccountBulkJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartCustomerAccountBulkJobRequest.add_member(:file_uri, Shapes::ShapeRef.new(shape: FileUri, required: true, location_name: "FileUri"))
    StartCustomerAccountBulkJobRequest.struct_class = Types::StartCustomerAccountBulkJobRequest

    StartCustomerAccountBulkJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: BulkJobArn, required: true, location_name: "Arn"))
    StartCustomerAccountBulkJobResponse.add_member(:id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "Id"))
    StartCustomerAccountBulkJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: BulkJobStatus, required: true, location_name: "Status"))
    StartCustomerAccountBulkJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedAt"))
    StartCustomerAccountBulkJobResponse.struct_class = Types::StartCustomerAccountBulkJobResponse

    StartEngagementByAcceptingInvitationTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    StartEngagementByAcceptingInvitationTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
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
    StartEngagementFromOpportunityTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
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

    StartOpportunityBulkJobRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    StartOpportunityBulkJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartOpportunityBulkJobRequest.add_member(:file_uri, Shapes::ShapeRef.new(shape: FileUri, required: true, location_name: "FileURI"))
    StartOpportunityBulkJobRequest.add_member(:file_format, Shapes::ShapeRef.new(shape: BulkFileFormat, required: true, location_name: "FileFormat"))
    StartOpportunityBulkJobRequest.struct_class = Types::StartOpportunityBulkJobRequest

    StartOpportunityBulkJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: BulkJobId, required: true, location_name: "JobId"))
    StartOpportunityBulkJobResponse.struct_class = Types::StartOpportunityBulkJobResponse

    StartOpportunityFromEngagementTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    StartOpportunityFromEngagementTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartOpportunityFromEngagementTaskRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: EngagementArnOrIdentifier, required: true, location_name: "Identifier"))
    StartOpportunityFromEngagementTaskRequest.add_member(:context_identifier, Shapes::ShapeRef.new(shape: ContextIdentifier, required: true, location_name: "ContextIdentifier"))
    StartOpportunityFromEngagementTaskRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    StartOpportunityFromEngagementTaskRequest.struct_class = Types::StartOpportunityFromEngagementTaskRequest

    StartOpportunityFromEngagementTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskIdentifier, location_name: "TaskId"))
    StartOpportunityFromEngagementTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    StartOpportunityFromEngagementTaskResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    StartOpportunityFromEngagementTaskResponse.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "TaskStatus"))
    StartOpportunityFromEngagementTaskResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    StartOpportunityFromEngagementTaskResponse.add_member(:reason_code, Shapes::ShapeRef.new(shape: ReasonCode, location_name: "ReasonCode"))
    StartOpportunityFromEngagementTaskResponse.add_member(:opportunity_id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "OpportunityId"))
    StartOpportunityFromEngagementTaskResponse.add_member(:resource_snapshot_job_id, Shapes::ShapeRef.new(shape: ResourceSnapshotJobIdentifier, location_name: "ResourceSnapshotJobId"))
    StartOpportunityFromEngagementTaskResponse.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, location_name: "EngagementId"))
    StartOpportunityFromEngagementTaskResponse.add_member(:context_id, Shapes::ShapeRef.new(shape: ContextIdentifier, location_name: "ContextId"))
    StartOpportunityFromEngagementTaskResponse.struct_class = Types::StartOpportunityFromEngagementTaskResponse

    StartProspectingFromEngagementTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    StartProspectingFromEngagementTaskRequest.add_member(:identifiers, Shapes::ShapeRef.new(shape: EngagementIdentifierList, required: true, location_name: "Identifiers"))
    StartProspectingFromEngagementTaskRequest.add_member(:task_name, Shapes::ShapeRef.new(shape: TaskName, required: true, location_name: "TaskName"))
    StartProspectingFromEngagementTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "ClientToken", metadata: {"idempotencyToken" => true}))
    StartProspectingFromEngagementTaskRequest.struct_class = Types::StartProspectingFromEngagementTaskRequest

    StartProspectingFromEngagementTaskResponse.add_member(:identifiers, Shapes::ShapeRef.new(shape: EngagementIdentifierList, required: true, location_name: "Identifiers"))
    StartProspectingFromEngagementTaskResponse.add_member(:task_name, Shapes::ShapeRef.new(shape: TaskName, required: true, location_name: "TaskName"))
    StartProspectingFromEngagementTaskResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    StartProspectingFromEngagementTaskResponse.add_member(:reason_code, Shapes::ShapeRef.new(shape: String, location_name: "ReasonCode"))
    StartProspectingFromEngagementTaskResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "StartTime"))
    StartProspectingFromEngagementTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: ProspectingTaskIdentifier, location_name: "TaskId"))
    StartProspectingFromEngagementTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: ProspectingTaskArn, location_name: "TaskArn"))
    StartProspectingFromEngagementTaskResponse.add_member(:task_status, Shapes::ShapeRef.new(shape: ProspectingTaskStatus, required: true, location_name: "TaskStatus"))
    StartProspectingFromEngagementTaskResponse.struct_class = Types::StartProspectingFromEngagementTaskResponse

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

    TargetCloseDateFilter.add_member(:after_target_close_date, Shapes::ShapeRef.new(shape: Date, location_name: "AfterTargetCloseDate"))
    TargetCloseDateFilter.add_member(:before_target_close_date, Shapes::ShapeRef.new(shape: Date, location_name: "BeforeTargetCloseDate"))
    TargetCloseDateFilter.struct_class = Types::TargetCloseDateFilter

    TaskIdentifierList.member = Shapes::ShapeRef.new(shape: ProspectingTaskIdentifier)

    TaskIdentifiers.member = Shapes::ShapeRef.new(shape: TaskArnOrIdentifier)

    TaskNameList.member = Shapes::ShapeRef.new(shape: TaskName)

    TaskStatuses.member = Shapes::ShapeRef.new(shape: TaskStatus)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TaggableResourceArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateCustomerAccountRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    UpdateCustomerAccountRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: CustomerAccountArnOrIdentifier, required: true, location_name: "Identifier"))
    UpdateCustomerAccountRequest.add_member(:account, Shapes::ShapeRef.new(shape: CustomerAccountData, required: true, location_name: "Account"))
    UpdateCustomerAccountRequest.add_member(:partner_account_identifier, Shapes::ShapeRef.new(shape: PartnerAccountIdentifier, location_name: "PartnerAccountIdentifier"))
    UpdateCustomerAccountRequest.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastModifiedDate"))
    UpdateCustomerAccountRequest.struct_class = Types::UpdateCustomerAccountRequest

    UpdateCustomerAccountResponse.add_member(:arn, Shapes::ShapeRef.new(shape: CustomerAccountArn, required: true, location_name: "Arn"))
    UpdateCustomerAccountResponse.add_member(:id, Shapes::ShapeRef.new(shape: CustomerAccountId, required: true, location_name: "Id"))
    UpdateCustomerAccountResponse.add_member(:status, Shapes::ShapeRef.new(shape: EnrichmentStatus, required: true, location_name: "Status"))
    UpdateCustomerAccountResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    UpdateCustomerAccountResponse.add_member(:partner_account_identifier, Shapes::ShapeRef.new(shape: PartnerAccountIdentifier, location_name: "PartnerAccountIdentifier"))
    UpdateCustomerAccountResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedDate"))
    UpdateCustomerAccountResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastModifiedDate"))
    UpdateCustomerAccountResponse.struct_class = Types::UpdateCustomerAccountResponse

    UpdateEngagementContextPayload.add_member(:lead, Shapes::ShapeRef.new(shape: UpdateLeadContext, location_name: "Lead"))
    UpdateEngagementContextPayload.add_member(:customer_project, Shapes::ShapeRef.new(shape: CustomerProjectsContext, location_name: "CustomerProject"))
    UpdateEngagementContextPayload.add_member(:prospecting_result, Shapes::ShapeRef.new(shape: ProspectingResult, location_name: "ProspectingResult"))
    UpdateEngagementContextPayload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    UpdateEngagementContextPayload.add_member_subclass(:lead, Types::UpdateEngagementContextPayload::Lead)
    UpdateEngagementContextPayload.add_member_subclass(:customer_project, Types::UpdateEngagementContextPayload::CustomerProject)
    UpdateEngagementContextPayload.add_member_subclass(:prospecting_result, Types::UpdateEngagementContextPayload::ProspectingResult)
    UpdateEngagementContextPayload.add_member_subclass(:unknown, Types::UpdateEngagementContextPayload::Unknown)
    UpdateEngagementContextPayload.struct_class = Types::UpdateEngagementContextPayload

    UpdateEngagementContextRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    UpdateEngagementContextRequest.add_member(:engagement_identifier, Shapes::ShapeRef.new(shape: EngagementArnOrIdentifier, required: true, location_name: "EngagementIdentifier"))
    UpdateEngagementContextRequest.add_member(:context_identifier, Shapes::ShapeRef.new(shape: EngagementContextIdentifier, required: true, location_name: "ContextIdentifier"))
    UpdateEngagementContextRequest.add_member(:engagement_last_modified_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "EngagementLastModifiedAt"))
    UpdateEngagementContextRequest.add_member(:type, Shapes::ShapeRef.new(shape: EngagementContextType, required: true, location_name: "Type"))
    UpdateEngagementContextRequest.add_member(:payload, Shapes::ShapeRef.new(shape: UpdateEngagementContextPayload, required: true, location_name: "Payload"))
    UpdateEngagementContextRequest.struct_class = Types::UpdateEngagementContextRequest

    UpdateEngagementContextResponse.add_member(:engagement_id, Shapes::ShapeRef.new(shape: EngagementIdentifier, required: true, location_name: "EngagementId"))
    UpdateEngagementContextResponse.add_member(:engagement_arn, Shapes::ShapeRef.new(shape: EngagementArn, required: true, location_name: "EngagementArn"))
    UpdateEngagementContextResponse.add_member(:engagement_last_modified_at, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "EngagementLastModifiedAt"))
    UpdateEngagementContextResponse.add_member(:context_id, Shapes::ShapeRef.new(shape: EngagementContextIdentifier, required: true, location_name: "ContextId"))
    UpdateEngagementContextResponse.struct_class = Types::UpdateEngagementContextResponse

    UpdateLeadContext.add_member(:qualification_status, Shapes::ShapeRef.new(shape: LeadQualificationStatus, location_name: "QualificationStatus"))
    UpdateLeadContext.add_member(:customer, Shapes::ShapeRef.new(shape: LeadCustomer, required: true, location_name: "Customer"))
    UpdateLeadContext.add_member(:interaction, Shapes::ShapeRef.new(shape: LeadInteraction, location_name: "Interaction"))
    UpdateLeadContext.add_member(:insights, Shapes::ShapeRef.new(shape: LeadInsights, location_name: "Insights"))
    UpdateLeadContext.struct_class = Types::UpdateLeadContext

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

      api.add_operation(:create_customer_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomerAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomerAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomerAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_engagement_context, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEngagementContext"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEngagementContextRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEngagementContextResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_customer_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomerAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomerAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomerAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:get_customer_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomerAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCustomerAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomerAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_customer_account_bulk_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomerAccountBulkJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCustomerAccountBulkJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomerAccountBulkJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_customer_account_bulk_job_report_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomerAccountBulkJobReportUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCustomerAccountBulkJobReportUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomerAccountBulkJobReportUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_customer_account_statistics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCustomerAccountStatistics"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCustomerAccountStatisticsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCustomerAccountStatisticsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_engagement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEngagement"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEngagementRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEngagementResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:get_opportunity_bulk_job_report_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetOpportunityBulkJobReportUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetOpportunityBulkJobReportUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetOpportunityBulkJobReportUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_prospecting_from_engagement_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProspectingFromEngagementTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetProspectingFromEngagementTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProspectingFromEngagementTaskResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_customer_account_bulk_job_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomerAccountBulkJobResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCustomerAccountBulkJobResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomerAccountBulkJobResultsResponse)
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

      api.add_operation(:list_customer_account_bulk_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCustomerAccountBulkJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCustomerAccountBulkJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCustomerAccountBulkJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_engagement_by_accepting_invitation_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagementByAcceptingInvitationTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementByAcceptingInvitationTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementByAcceptingInvitationTasksResponse)
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

      api.add_operation(:list_engagement_from_opportunity_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagementFromOpportunityTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementFromOpportunityTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementFromOpportunityTasksResponse)
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

      api.add_operation(:list_engagement_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagementGroups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:list_engagement_resource_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagementResourceAssociations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementResourceAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementResourceAssociationsResponse)
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

      api.add_operation(:list_engagements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEngagements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListEngagementsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEngagementsResponse)
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

      api.add_operation(:list_opportunity_bulk_job_results, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOpportunityBulkJobResults"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOpportunityBulkJobResultsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOpportunityBulkJobResultsResponse)
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

      api.add_operation(:list_opportunity_bulk_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOpportunityBulkJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOpportunityBulkJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOpportunityBulkJobsResponse)
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

      api.add_operation(:list_opportunity_from_engagement_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListOpportunityFromEngagementTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListOpportunityFromEngagementTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListOpportunityFromEngagementTasksResponse)
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

      api.add_operation(:list_prospecting_from_engagement_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProspectingFromEngagementTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProspectingFromEngagementTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProspectingFromEngagementTasksResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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

      api.add_operation(:list_resource_snapshots, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListResourceSnapshots"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListResourceSnapshotsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListResourceSnapshotsResponse)
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

      api.add_operation(:list_solutions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSolutions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSolutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSolutionsResponse)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:search_customer_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchCustomerAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchCustomerAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchCustomerAccountsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_engagements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchEngagements"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchEngagementsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchEngagementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_opportunities, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchOpportunities"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SearchOpportunitiesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchOpportunitiesResponse)
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

      api.add_operation(:start_customer_account_bulk_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCustomerAccountBulkJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartCustomerAccountBulkJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCustomerAccountBulkJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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

      api.add_operation(:start_opportunity_bulk_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartOpportunityBulkJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartOpportunityBulkJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartOpportunityBulkJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:start_opportunity_from_engagement_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartOpportunityFromEngagementTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartOpportunityFromEngagementTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartOpportunityFromEngagementTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_prospecting_from_engagement_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartProspectingFromEngagementTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartProspectingFromEngagementTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartProspectingFromEngagementTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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

      api.add_operation(:update_customer_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCustomerAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateCustomerAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCustomerAccountResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_engagement_context, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEngagementContext"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEngagementContextRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEngagementContextResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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
