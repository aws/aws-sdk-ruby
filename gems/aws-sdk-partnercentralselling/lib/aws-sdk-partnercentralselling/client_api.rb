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
    ApnPrograms = Shapes::ListShape.new(name: 'ApnPrograms')
    AssignOpportunityRequest = Shapes::StructureShape.new(name: 'AssignOpportunityRequest')
    AssigneeContact = Shapes::StructureShape.new(name: 'AssigneeContact')
    AssigneeContactFirstNameString = Shapes::StringShape.new(name: 'AssigneeContactFirstNameString')
    AssigneeContactLastNameString = Shapes::StringShape.new(name: 'AssigneeContactLastNameString')
    AssociateOpportunityRequest = Shapes::StructureShape.new(name: 'AssociateOpportunityRequest')
    AssociateOpportunityRequestRelatedEntityIdentifierString = Shapes::StringShape.new(name: 'AssociateOpportunityRequestRelatedEntityIdentifierString')
    AwsAccount = Shapes::StringShape.new(name: 'AwsAccount')
    AwsAccountIdOrLabel = Shapes::StringShape.new(name: 'AwsAccountIdOrLabel')
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
    ClosedLostReason = Shapes::StringShape.new(name: 'ClosedLostReason')
    CompanyName = Shapes::StringShape.new(name: 'CompanyName')
    CompanyWebsiteUrl = Shapes::StringShape.new(name: 'CompanyWebsiteUrl')
    CompetitorName = Shapes::StringShape.new(name: 'CompetitorName')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    Contact = Shapes::StructureShape.new(name: 'Contact')
    ContactFirstNameString = Shapes::StringShape.new(name: 'ContactFirstNameString')
    ContactLastNameString = Shapes::StringShape.new(name: 'ContactLastNameString')
    CountryCode = Shapes::StringShape.new(name: 'CountryCode')
    CreateOpportunityRequest = Shapes::StructureShape.new(name: 'CreateOpportunityRequest')
    CreateOpportunityRequestClientTokenString = Shapes::StringShape.new(name: 'CreateOpportunityRequestClientTokenString')
    CreateOpportunityRequestPartnerOpportunityIdentifierString = Shapes::StringShape.new(name: 'CreateOpportunityRequestPartnerOpportunityIdentifierString')
    CreateOpportunityResponse = Shapes::StructureShape.new(name: 'CreateOpportunityResponse')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    Customer = Shapes::StructureShape.new(name: 'Customer')
    CustomerContactsList = Shapes::ListShape.new(name: 'CustomerContactsList')
    CustomerSummary = Shapes::StructureShape.new(name: 'CustomerSummary')
    Date = Shapes::StringShape.new(name: 'Date')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime', timestampFormat: "iso8601")
    DeliveryModel = Shapes::StringShape.new(name: 'DeliveryModel')
    DeliveryModels = Shapes::ListShape.new(name: 'DeliveryModels')
    DisassociateOpportunityRequest = Shapes::StructureShape.new(name: 'DisassociateOpportunityRequest')
    DisassociateOpportunityRequestRelatedEntityIdentifierString = Shapes::StringShape.new(name: 'DisassociateOpportunityRequestRelatedEntityIdentifierString')
    DunsNumber = Shapes::StringShape.new(name: 'DunsNumber')
    Email = Shapes::StringShape.new(name: 'Email')
    EngagementCustomer = Shapes::StructureShape.new(name: 'EngagementCustomer')
    EngagementCustomerBusinessProblem = Shapes::StringShape.new(name: 'EngagementCustomerBusinessProblem')
    EngagementInvitationArnOrIdentifier = Shapes::StringShape.new(name: 'EngagementInvitationArnOrIdentifier')
    EngagementInvitationIdentifier = Shapes::StringShape.new(name: 'EngagementInvitationIdentifier')
    EngagementInvitationPayloadType = Shapes::StringShape.new(name: 'EngagementInvitationPayloadType')
    EngagementInvitationSummaries = Shapes::ListShape.new(name: 'EngagementInvitationSummaries')
    EngagementInvitationSummary = Shapes::StructureShape.new(name: 'EngagementInvitationSummary')
    EngagementInvitationSummarySenderCompanyNameString = Shapes::StringShape.new(name: 'EngagementInvitationSummarySenderCompanyNameString')
    EngagementInvitationsPayloadType = Shapes::ListShape.new(name: 'EngagementInvitationsPayloadType')
    EngagementScore = Shapes::StringShape.new(name: 'EngagementScore')
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
    GetOpportunityRequest = Shapes::StructureShape.new(name: 'GetOpportunityRequest')
    GetOpportunityResponse = Shapes::StructureShape.new(name: 'GetOpportunityResponse')
    GetOpportunityResponsePartnerOpportunityIdentifierString = Shapes::StringShape.new(name: 'GetOpportunityResponsePartnerOpportunityIdentifierString')
    Industry = Shapes::StringShape.new(name: 'Industry')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvitationStatus = Shapes::StringShape.new(name: 'InvitationStatus')
    InvolvementTypeChangeReason = Shapes::StringShape.new(name: 'InvolvementTypeChangeReason')
    JobTitle = Shapes::StringShape.new(name: 'JobTitle')
    LastModifiedDate = Shapes::StructureShape.new(name: 'LastModifiedDate')
    LifeCycle = Shapes::StructureShape.new(name: 'LifeCycle')
    LifeCycleNextStepsHistoryList = Shapes::ListShape.new(name: 'LifeCycleNextStepsHistoryList')
    LifeCycleNextStepsString = Shapes::StringShape.new(name: 'LifeCycleNextStepsString')
    LifeCycleSummary = Shapes::StructureShape.new(name: 'LifeCycleSummary')
    LifeCycleSummaryNextStepsString = Shapes::StringShape.new(name: 'LifeCycleSummaryNextStepsString')
    ListEngagementInvitationsRequest = Shapes::StructureShape.new(name: 'ListEngagementInvitationsRequest')
    ListEngagementInvitationsResponse = Shapes::StructureShape.new(name: 'ListEngagementInvitationsResponse')
    ListOpportunitiesRequest = Shapes::StructureShape.new(name: 'ListOpportunitiesRequest')
    ListOpportunitiesRequestCustomerCompanyNameList = Shapes::ListShape.new(name: 'ListOpportunitiesRequestCustomerCompanyNameList')
    ListOpportunitiesRequestIdentifierList = Shapes::ListShape.new(name: 'ListOpportunitiesRequestIdentifierList')
    ListOpportunitiesRequestLifeCycleReviewStatusList = Shapes::ListShape.new(name: 'ListOpportunitiesRequestLifeCycleReviewStatusList')
    ListOpportunitiesRequestLifeCycleStageList = Shapes::ListShape.new(name: 'ListOpportunitiesRequestLifeCycleStageList')
    ListOpportunitiesResponse = Shapes::StructureShape.new(name: 'ListOpportunitiesResponse')
    ListSolutionsRequest = Shapes::StructureShape.new(name: 'ListSolutionsRequest')
    ListSolutionsRequestCategoryList = Shapes::ListShape.new(name: 'ListSolutionsRequestCategoryList')
    ListSolutionsRequestIdentifierList = Shapes::ListShape.new(name: 'ListSolutionsRequestIdentifierList')
    ListSolutionsRequestStatusList = Shapes::ListShape.new(name: 'ListSolutionsRequestStatusList')
    ListSolutionsResponse = Shapes::StructureShape.new(name: 'ListSolutionsResponse')
    Marketing = Shapes::StructureShape.new(name: 'Marketing')
    MarketingSource = Shapes::StringShape.new(name: 'MarketingSource')
    MonetaryValue = Shapes::StructureShape.new(name: 'MonetaryValue')
    MonetaryValueAmountString = Shapes::StringShape.new(name: 'MonetaryValueAmountString')
    Name = Shapes::StringShape.new(name: 'Name')
    NationalSecurity = Shapes::StringShape.new(name: 'NationalSecurity')
    NextStepsHistory = Shapes::StructureShape.new(name: 'NextStepsHistory')
    OpportunityEngagementInvitationSort = Shapes::StructureShape.new(name: 'OpportunityEngagementInvitationSort')
    OpportunityEngagementInvitationSortName = Shapes::StringShape.new(name: 'OpportunityEngagementInvitationSortName')
    OpportunityIdentifier = Shapes::StringShape.new(name: 'OpportunityIdentifier')
    OpportunityInvitationPayload = Shapes::StructureShape.new(name: 'OpportunityInvitationPayload')
    OpportunityOrigin = Shapes::StringShape.new(name: 'OpportunityOrigin')
    OpportunitySort = Shapes::StructureShape.new(name: 'OpportunitySort')
    OpportunitySortName = Shapes::StringShape.new(name: 'OpportunitySortName')
    OpportunitySummaries = Shapes::ListShape.new(name: 'OpportunitySummaries')
    OpportunitySummary = Shapes::StructureShape.new(name: 'OpportunitySummary')
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
    ReasonCode = Shapes::StringShape.new(name: 'ReasonCode')
    Receiver = Shapes::UnionShape.new(name: 'Receiver')
    ReceiverResponsibility = Shapes::StringShape.new(name: 'ReceiverResponsibility')
    ReceiverResponsibilityList = Shapes::ListShape.new(name: 'ReceiverResponsibilityList')
    RejectEngagementInvitationRequest = Shapes::StructureShape.new(name: 'RejectEngagementInvitationRequest')
    RejectionReasonString = Shapes::StringShape.new(name: 'RejectionReasonString')
    RelatedEntityIdentifiers = Shapes::StructureShape.new(name: 'RelatedEntityIdentifiers')
    RelatedEntityType = Shapes::StringShape.new(name: 'RelatedEntityType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
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
    SolutionBase = Shapes::StructureShape.new(name: 'SolutionBase')
    SolutionIdentifier = Shapes::StringShape.new(name: 'SolutionIdentifier')
    SolutionIdentifiers = Shapes::ListShape.new(name: 'SolutionIdentifiers')
    SolutionList = Shapes::ListShape.new(name: 'SolutionList')
    SolutionSort = Shapes::StructureShape.new(name: 'SolutionSort')
    SolutionSortName = Shapes::StringShape.new(name: 'SolutionSortName')
    SolutionStatus = Shapes::StringShape.new(name: 'SolutionStatus')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    Stage = Shapes::StringShape.new(name: 'Stage')
    StartEngagementByAcceptingInvitationTaskRequest = Shapes::StructureShape.new(name: 'StartEngagementByAcceptingInvitationTaskRequest')
    StartEngagementByAcceptingInvitationTaskRequestClientTokenString = Shapes::StringShape.new(name: 'StartEngagementByAcceptingInvitationTaskRequestClientTokenString')
    StartEngagementByAcceptingInvitationTaskResponse = Shapes::StructureShape.new(name: 'StartEngagementByAcceptingInvitationTaskResponse')
    StartEngagementFromOpportunityTaskRequest = Shapes::StructureShape.new(name: 'StartEngagementFromOpportunityTaskRequest')
    StartEngagementFromOpportunityTaskRequestClientTokenString = Shapes::StringShape.new(name: 'StartEngagementFromOpportunityTaskRequestClientTokenString')
    StartEngagementFromOpportunityTaskResponse = Shapes::StructureShape.new(name: 'StartEngagementFromOpportunityTaskResponse')
    String = Shapes::StringShape.new(name: 'String')
    TaskArn = Shapes::StringShape.new(name: 'TaskArn')
    TaskIdentifier = Shapes::StringShape.new(name: 'TaskIdentifier')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
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

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Account.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    Account.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccount, location_name: "AwsAccountId"))
    Account.add_member(:company_name, Shapes::ShapeRef.new(shape: AccountCompanyNameString, required: true, location_name: "CompanyName"))
    Account.add_member(:duns, Shapes::ShapeRef.new(shape: DunsNumber, location_name: "Duns"))
    Account.add_member(:industry, Shapes::ShapeRef.new(shape: Industry, location_name: "Industry"))
    Account.add_member(:other_industry, Shapes::ShapeRef.new(shape: AccountOtherIndustryString, location_name: "OtherIndustry"))
    Account.add_member(:website_url, Shapes::ShapeRef.new(shape: WebsiteUrl, location_name: "WebsiteUrl"))
    Account.struct_class = Types::Account

    AccountReceiver.add_member(:alias, Shapes::ShapeRef.new(shape: Alias, location_name: "Alias"))
    AccountReceiver.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccount, required: true, location_name: "AwsAccountId"))
    AccountReceiver.struct_class = Types::AccountReceiver

    AccountSummary.add_member(:address, Shapes::ShapeRef.new(shape: AddressSummary, location_name: "Address"))
    AccountSummary.add_member(:company_name, Shapes::ShapeRef.new(shape: AccountSummaryCompanyNameString, required: true, location_name: "CompanyName"))
    AccountSummary.add_member(:industry, Shapes::ShapeRef.new(shape: Industry, location_name: "Industry"))
    AccountSummary.add_member(:other_industry, Shapes::ShapeRef.new(shape: AccountSummaryOtherIndustryString, location_name: "OtherIndustry"))
    AccountSummary.add_member(:website_url, Shapes::ShapeRef.new(shape: WebsiteUrl, location_name: "WebsiteUrl"))
    AccountSummary.struct_class = Types::AccountSummary

    Address.add_member(:city, Shapes::ShapeRef.new(shape: AddressCityString, location_name: "City"))
    Address.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, location_name: "CountryCode"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: AddressPostalCodeString, location_name: "PostalCode"))
    Address.add_member(:state_or_region, Shapes::ShapeRef.new(shape: AddressPart, location_name: "StateOrRegion"))
    Address.add_member(:street_address, Shapes::ShapeRef.new(shape: AddressStreetAddressString, location_name: "StreetAddress"))
    Address.struct_class = Types::Address

    AddressSummary.add_member(:city, Shapes::ShapeRef.new(shape: AddressSummaryCityString, location_name: "City"))
    AddressSummary.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, location_name: "CountryCode"))
    AddressSummary.add_member(:postal_code, Shapes::ShapeRef.new(shape: AddressSummaryPostalCodeString, location_name: "PostalCode"))
    AddressSummary.add_member(:state_or_region, Shapes::ShapeRef.new(shape: AddressPart, location_name: "StateOrRegion"))
    AddressSummary.struct_class = Types::AddressSummary

    ApnPrograms.member = Shapes::ShapeRef.new(shape: String)

    AssignOpportunityRequest.add_member(:assignee, Shapes::ShapeRef.new(shape: AssigneeContact, required: true, location_name: "Assignee"))
    AssignOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    AssignOpportunityRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Identifier"))
    AssignOpportunityRequest.struct_class = Types::AssignOpportunityRequest

    AssigneeContact.add_member(:business_title, Shapes::ShapeRef.new(shape: JobTitle, required: true, location_name: "BusinessTitle"))
    AssigneeContact.add_member(:email, Shapes::ShapeRef.new(shape: Email, required: true, location_name: "Email"))
    AssigneeContact.add_member(:first_name, Shapes::ShapeRef.new(shape: AssigneeContactFirstNameString, required: true, location_name: "FirstName"))
    AssigneeContact.add_member(:last_name, Shapes::ShapeRef.new(shape: AssigneeContactLastNameString, required: true, location_name: "LastName"))
    AssigneeContact.struct_class = Types::AssigneeContact

    AssociateOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    AssociateOpportunityRequest.add_member(:opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "OpportunityIdentifier"))
    AssociateOpportunityRequest.add_member(:related_entity_identifier, Shapes::ShapeRef.new(shape: AssociateOpportunityRequestRelatedEntityIdentifierString, required: true, location_name: "RelatedEntityIdentifier"))
    AssociateOpportunityRequest.add_member(:related_entity_type, Shapes::ShapeRef.new(shape: RelatedEntityType, required: true, location_name: "RelatedEntityType"))
    AssociateOpportunityRequest.struct_class = Types::AssociateOpportunityRequest

    AwsMarketplaceOfferIdentifiers.member = Shapes::ShapeRef.new(shape: AwsMarketplaceOfferIdentifier)

    AwsOpportunityCustomer.add_member(:contacts, Shapes::ShapeRef.new(shape: CustomerContactsList, location_name: "Contacts"))
    AwsOpportunityCustomer.struct_class = Types::AwsOpportunityCustomer

    AwsOpportunityInsights.add_member(:engagement_score, Shapes::ShapeRef.new(shape: EngagementScore, location_name: "EngagementScore"))
    AwsOpportunityInsights.add_member(:next_best_actions, Shapes::ShapeRef.new(shape: String, location_name: "NextBestActions"))
    AwsOpportunityInsights.struct_class = Types::AwsOpportunityInsights

    AwsOpportunityLifeCycle.add_member(:closed_lost_reason, Shapes::ShapeRef.new(shape: AwsClosedLostReason, location_name: "ClosedLostReason"))
    AwsOpportunityLifeCycle.add_member(:next_steps, Shapes::ShapeRef.new(shape: AwsOpportunityLifeCycleNextStepsString, location_name: "NextSteps"))
    AwsOpportunityLifeCycle.add_member(:next_steps_history, Shapes::ShapeRef.new(shape: AwsOpportunityLifeCycleNextStepsHistoryList, location_name: "NextStepsHistory"))
    AwsOpportunityLifeCycle.add_member(:stage, Shapes::ShapeRef.new(shape: AwsOpportunityStage, location_name: "Stage"))
    AwsOpportunityLifeCycle.add_member(:target_close_date, Shapes::ShapeRef.new(shape: Date, location_name: "TargetCloseDate"))
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

    AwsTeamMember.add_member(:business_title, Shapes::ShapeRef.new(shape: AwsMemberBusinessTitle, location_name: "BusinessTitle"))
    AwsTeamMember.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    AwsTeamMember.add_member(:first_name, Shapes::ShapeRef.new(shape: AwsTeamMemberFirstNameString, location_name: "FirstName"))
    AwsTeamMember.add_member(:last_name, Shapes::ShapeRef.new(shape: AwsTeamMemberLastNameString, location_name: "LastName"))
    AwsTeamMember.struct_class = Types::AwsTeamMember

    Channels.member = Shapes::ShapeRef.new(shape: Channel)

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    Contact.add_member(:business_title, Shapes::ShapeRef.new(shape: JobTitle, location_name: "BusinessTitle"))
    Contact.add_member(:email, Shapes::ShapeRef.new(shape: Email, location_name: "Email"))
    Contact.add_member(:first_name, Shapes::ShapeRef.new(shape: ContactFirstNameString, location_name: "FirstName"))
    Contact.add_member(:last_name, Shapes::ShapeRef.new(shape: ContactLastNameString, location_name: "LastName"))
    Contact.add_member(:phone, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "Phone"))
    Contact.struct_class = Types::Contact

    CreateOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    CreateOpportunityRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: CreateOpportunityRequestClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateOpportunityRequest.add_member(:customer, Shapes::ShapeRef.new(shape: Customer, location_name: "Customer"))
    CreateOpportunityRequest.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "LifeCycle"))
    CreateOpportunityRequest.add_member(:marketing, Shapes::ShapeRef.new(shape: Marketing, location_name: "Marketing"))
    CreateOpportunityRequest.add_member(:national_security, Shapes::ShapeRef.new(shape: NationalSecurity, location_name: "NationalSecurity"))
    CreateOpportunityRequest.add_member(:opportunity_team, Shapes::ShapeRef.new(shape: PartnerOpportunityTeamMembersList, location_name: "OpportunityTeam"))
    CreateOpportunityRequest.add_member(:opportunity_type, Shapes::ShapeRef.new(shape: OpportunityType, location_name: "OpportunityType"))
    CreateOpportunityRequest.add_member(:origin, Shapes::ShapeRef.new(shape: OpportunityOrigin, location_name: "Origin"))
    CreateOpportunityRequest.add_member(:partner_opportunity_identifier, Shapes::ShapeRef.new(shape: CreateOpportunityRequestPartnerOpportunityIdentifierString, location_name: "PartnerOpportunityIdentifier"))
    CreateOpportunityRequest.add_member(:primary_needs_from_aws, Shapes::ShapeRef.new(shape: PrimaryNeedsFromAws, location_name: "PrimaryNeedsFromAws"))
    CreateOpportunityRequest.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "Project"))
    CreateOpportunityRequest.add_member(:software_revenue, Shapes::ShapeRef.new(shape: SoftwareRevenue, location_name: "SoftwareRevenue"))
    CreateOpportunityRequest.struct_class = Types::CreateOpportunityRequest

    CreateOpportunityResponse.add_member(:id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Id"))
    CreateOpportunityResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    CreateOpportunityResponse.add_member(:partner_opportunity_identifier, Shapes::ShapeRef.new(shape: String, location_name: "PartnerOpportunityIdentifier"))
    CreateOpportunityResponse.struct_class = Types::CreateOpportunityResponse

    Customer.add_member(:account, Shapes::ShapeRef.new(shape: Account, location_name: "Account"))
    Customer.add_member(:contacts, Shapes::ShapeRef.new(shape: CustomerContactsList, location_name: "Contacts"))
    Customer.struct_class = Types::Customer

    CustomerContactsList.member = Shapes::ShapeRef.new(shape: Contact)

    CustomerSummary.add_member(:account, Shapes::ShapeRef.new(shape: AccountSummary, location_name: "Account"))
    CustomerSummary.struct_class = Types::CustomerSummary

    DeliveryModels.member = Shapes::ShapeRef.new(shape: DeliveryModel)

    DisassociateOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    DisassociateOpportunityRequest.add_member(:opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "OpportunityIdentifier"))
    DisassociateOpportunityRequest.add_member(:related_entity_identifier, Shapes::ShapeRef.new(shape: DisassociateOpportunityRequestRelatedEntityIdentifierString, required: true, location_name: "RelatedEntityIdentifier"))
    DisassociateOpportunityRequest.add_member(:related_entity_type, Shapes::ShapeRef.new(shape: RelatedEntityType, required: true, location_name: "RelatedEntityType"))
    DisassociateOpportunityRequest.struct_class = Types::DisassociateOpportunityRequest

    EngagementCustomer.add_member(:company_name, Shapes::ShapeRef.new(shape: CompanyName, required: true, location_name: "CompanyName"))
    EngagementCustomer.add_member(:country_code, Shapes::ShapeRef.new(shape: CountryCode, required: true, location_name: "CountryCode"))
    EngagementCustomer.add_member(:industry, Shapes::ShapeRef.new(shape: Industry, required: true, location_name: "Industry"))
    EngagementCustomer.add_member(:website_url, Shapes::ShapeRef.new(shape: CompanyWebsiteUrl, required: true, location_name: "WebsiteUrl"))
    EngagementCustomer.struct_class = Types::EngagementCustomer

    EngagementInvitationSummaries.member = Shapes::ShapeRef.new(shape: EngagementInvitationSummary)

    EngagementInvitationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    EngagementInvitationSummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    EngagementInvitationSummary.add_member(:engagement_title, Shapes::ShapeRef.new(shape: EngagementTitle, location_name: "EngagementTitle"))
    EngagementInvitationSummary.add_member(:expiration_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpirationDate"))
    EngagementInvitationSummary.add_member(:id, Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier, required: true, location_name: "Id"))
    EngagementInvitationSummary.add_member(:invitation_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "InvitationDate"))
    EngagementInvitationSummary.add_member(:payload_type, Shapes::ShapeRef.new(shape: EngagementInvitationPayloadType, location_name: "PayloadType"))
    EngagementInvitationSummary.add_member(:receiver, Shapes::ShapeRef.new(shape: Receiver, location_name: "Receiver"))
    EngagementInvitationSummary.add_member(:sender_aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountIdOrLabel, location_name: "SenderAwsAccountId"))
    EngagementInvitationSummary.add_member(:sender_company_name, Shapes::ShapeRef.new(shape: EngagementInvitationSummarySenderCompanyNameString, location_name: "SenderCompanyName"))
    EngagementInvitationSummary.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatus, location_name: "Status"))
    EngagementInvitationSummary.struct_class = Types::EngagementInvitationSummary

    EngagementInvitationsPayloadType.member = Shapes::ShapeRef.new(shape: EngagementInvitationPayloadType)

    ExpectedCustomerSpend.add_member(:amount, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Amount"))
    ExpectedCustomerSpend.add_member(:currency_code, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendCurrencyCodeEnum, required: true, location_name: "CurrencyCode"))
    ExpectedCustomerSpend.add_member(:frequency, Shapes::ShapeRef.new(shape: PaymentFrequency, required: true, location_name: "Frequency"))
    ExpectedCustomerSpend.add_member(:target_company, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendTargetCompanyString, required: true, location_name: "TargetCompany"))
    ExpectedCustomerSpend.struct_class = Types::ExpectedCustomerSpend

    ExpectedCustomerSpendList.member = Shapes::ShapeRef.new(shape: ExpectedCustomerSpend)

    GetAwsOpportunitySummaryRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetAwsOpportunitySummaryRequest.add_member(:related_opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "RelatedOpportunityIdentifier"))
    GetAwsOpportunitySummaryRequest.struct_class = Types::GetAwsOpportunitySummaryRequest

    GetAwsOpportunitySummaryResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetAwsOpportunitySummaryResponse.add_member(:customer, Shapes::ShapeRef.new(shape: AwsOpportunityCustomer, location_name: "Customer"))
    GetAwsOpportunitySummaryResponse.add_member(:insights, Shapes::ShapeRef.new(shape: AwsOpportunityInsights, location_name: "Insights"))
    GetAwsOpportunitySummaryResponse.add_member(:involvement_type, Shapes::ShapeRef.new(shape: SalesInvolvementType, location_name: "InvolvementType"))
    GetAwsOpportunitySummaryResponse.add_member(:involvement_type_change_reason, Shapes::ShapeRef.new(shape: InvolvementTypeChangeReason, location_name: "InvolvementTypeChangeReason"))
    GetAwsOpportunitySummaryResponse.add_member(:life_cycle, Shapes::ShapeRef.new(shape: AwsOpportunityLifeCycle, location_name: "LifeCycle"))
    GetAwsOpportunitySummaryResponse.add_member(:opportunity_team, Shapes::ShapeRef.new(shape: AwsOpportunityTeamMembersList, location_name: "OpportunityTeam"))
    GetAwsOpportunitySummaryResponse.add_member(:origin, Shapes::ShapeRef.new(shape: OpportunityOrigin, location_name: "Origin"))
    GetAwsOpportunitySummaryResponse.add_member(:project, Shapes::ShapeRef.new(shape: AwsOpportunityProject, location_name: "Project"))
    GetAwsOpportunitySummaryResponse.add_member(:related_entity_ids, Shapes::ShapeRef.new(shape: AwsOpportunityRelatedEntities, location_name: "RelatedEntityIds"))
    GetAwsOpportunitySummaryResponse.add_member(:related_opportunity_id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "RelatedOpportunityId"))
    GetAwsOpportunitySummaryResponse.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    GetAwsOpportunitySummaryResponse.struct_class = Types::GetAwsOpportunitySummaryResponse

    GetEngagementInvitationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetEngagementInvitationRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier, required: true, location_name: "Identifier"))
    GetEngagementInvitationRequest.struct_class = Types::GetEngagementInvitationRequest

    GetEngagementInvitationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "Arn"))
    GetEngagementInvitationResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetEngagementInvitationResponse.add_member(:engagement_title, Shapes::ShapeRef.new(shape: EngagementTitle, location_name: "EngagementTitle"))
    GetEngagementInvitationResponse.add_member(:expiration_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpirationDate"))
    GetEngagementInvitationResponse.add_member(:id, Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier, required: true, location_name: "Id"))
    GetEngagementInvitationResponse.add_member(:invitation_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "InvitationDate"))
    GetEngagementInvitationResponse.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, location_name: "Payload"))
    GetEngagementInvitationResponse.add_member(:payload_type, Shapes::ShapeRef.new(shape: EngagementInvitationPayloadType, location_name: "PayloadType"))
    GetEngagementInvitationResponse.add_member(:receiver, Shapes::ShapeRef.new(shape: Receiver, location_name: "Receiver"))
    GetEngagementInvitationResponse.add_member(:rejection_reason, Shapes::ShapeRef.new(shape: RejectionReasonString, location_name: "RejectionReason"))
    GetEngagementInvitationResponse.add_member(:sender_aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountIdOrLabel, location_name: "SenderAwsAccountId"))
    GetEngagementInvitationResponse.add_member(:sender_company_name, Shapes::ShapeRef.new(shape: GetEngagementInvitationResponseSenderCompanyNameString, location_name: "SenderCompanyName"))
    GetEngagementInvitationResponse.add_member(:status, Shapes::ShapeRef.new(shape: InvitationStatus, location_name: "Status"))
    GetEngagementInvitationResponse.struct_class = Types::GetEngagementInvitationResponse

    GetOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetOpportunityRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Identifier"))
    GetOpportunityRequest.struct_class = Types::GetOpportunityRequest

    GetOpportunityResponse.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    GetOpportunityResponse.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedDate"))
    GetOpportunityResponse.add_member(:customer, Shapes::ShapeRef.new(shape: Customer, location_name: "Customer"))
    GetOpportunityResponse.add_member(:id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Id"))
    GetOpportunityResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastModifiedDate"))
    GetOpportunityResponse.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "LifeCycle"))
    GetOpportunityResponse.add_member(:marketing, Shapes::ShapeRef.new(shape: Marketing, location_name: "Marketing"))
    GetOpportunityResponse.add_member(:national_security, Shapes::ShapeRef.new(shape: NationalSecurity, location_name: "NationalSecurity"))
    GetOpportunityResponse.add_member(:opportunity_team, Shapes::ShapeRef.new(shape: PartnerOpportunityTeamMembersList, location_name: "OpportunityTeam"))
    GetOpportunityResponse.add_member(:opportunity_type, Shapes::ShapeRef.new(shape: OpportunityType, location_name: "OpportunityType"))
    GetOpportunityResponse.add_member(:partner_opportunity_identifier, Shapes::ShapeRef.new(shape: GetOpportunityResponsePartnerOpportunityIdentifierString, location_name: "PartnerOpportunityIdentifier"))
    GetOpportunityResponse.add_member(:primary_needs_from_aws, Shapes::ShapeRef.new(shape: PrimaryNeedsFromAws, location_name: "PrimaryNeedsFromAws"))
    GetOpportunityResponse.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "Project"))
    GetOpportunityResponse.add_member(:related_entity_identifiers, Shapes::ShapeRef.new(shape: RelatedEntityIdentifiers, required: true, location_name: "RelatedEntityIdentifiers"))
    GetOpportunityResponse.add_member(:software_revenue, Shapes::ShapeRef.new(shape: SoftwareRevenue, location_name: "SoftwareRevenue"))
    GetOpportunityResponse.struct_class = Types::GetOpportunityResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    LastModifiedDate.add_member(:after_last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "AfterLastModifiedDate"))
    LastModifiedDate.add_member(:before_last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "BeforeLastModifiedDate"))
    LastModifiedDate.struct_class = Types::LastModifiedDate

    LifeCycle.add_member(:closed_lost_reason, Shapes::ShapeRef.new(shape: ClosedLostReason, location_name: "ClosedLostReason"))
    LifeCycle.add_member(:next_steps, Shapes::ShapeRef.new(shape: LifeCycleNextStepsString, location_name: "NextSteps"))
    LifeCycle.add_member(:next_steps_history, Shapes::ShapeRef.new(shape: LifeCycleNextStepsHistoryList, location_name: "NextStepsHistory"))
    LifeCycle.add_member(:review_comments, Shapes::ShapeRef.new(shape: String, location_name: "ReviewComments"))
    LifeCycle.add_member(:review_status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "ReviewStatus"))
    LifeCycle.add_member(:review_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "ReviewStatusReason"))
    LifeCycle.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "Stage"))
    LifeCycle.add_member(:target_close_date, Shapes::ShapeRef.new(shape: Date, location_name: "TargetCloseDate"))
    LifeCycle.struct_class = Types::LifeCycle

    LifeCycleNextStepsHistoryList.member = Shapes::ShapeRef.new(shape: NextStepsHistory)

    LifeCycleSummary.add_member(:closed_lost_reason, Shapes::ShapeRef.new(shape: ClosedLostReason, location_name: "ClosedLostReason"))
    LifeCycleSummary.add_member(:next_steps, Shapes::ShapeRef.new(shape: LifeCycleSummaryNextStepsString, location_name: "NextSteps"))
    LifeCycleSummary.add_member(:review_comments, Shapes::ShapeRef.new(shape: String, location_name: "ReviewComments"))
    LifeCycleSummary.add_member(:review_status, Shapes::ShapeRef.new(shape: ReviewStatus, location_name: "ReviewStatus"))
    LifeCycleSummary.add_member(:review_status_reason, Shapes::ShapeRef.new(shape: String, location_name: "ReviewStatusReason"))
    LifeCycleSummary.add_member(:stage, Shapes::ShapeRef.new(shape: Stage, location_name: "Stage"))
    LifeCycleSummary.add_member(:target_close_date, Shapes::ShapeRef.new(shape: Date, location_name: "TargetCloseDate"))
    LifeCycleSummary.struct_class = Types::LifeCycleSummary

    ListEngagementInvitationsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListEngagementInvitationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListEngagementInvitationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementInvitationsRequest.add_member(:participant_type, Shapes::ShapeRef.new(shape: ParticipantType, required: true, location_name: "ParticipantType"))
    ListEngagementInvitationsRequest.add_member(:payload_type, Shapes::ShapeRef.new(shape: EngagementInvitationsPayloadType, location_name: "PayloadType"))
    ListEngagementInvitationsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: OpportunityEngagementInvitationSort, location_name: "Sort"))
    ListEngagementInvitationsRequest.struct_class = Types::ListEngagementInvitationsRequest

    ListEngagementInvitationsResponse.add_member(:engagement_invitation_summaries, Shapes::ShapeRef.new(shape: EngagementInvitationSummaries, location_name: "EngagementInvitationSummaries"))
    ListEngagementInvitationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListEngagementInvitationsResponse.struct_class = Types::ListEngagementInvitationsResponse

    ListOpportunitiesRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListOpportunitiesRequest.add_member(:customer_company_name, Shapes::ShapeRef.new(shape: ListOpportunitiesRequestCustomerCompanyNameList, location_name: "CustomerCompanyName"))
    ListOpportunitiesRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ListOpportunitiesRequestIdentifierList, location_name: "Identifier"))
    ListOpportunitiesRequest.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: LastModifiedDate, location_name: "LastModifiedDate"))
    ListOpportunitiesRequest.add_member(:life_cycle_review_status, Shapes::ShapeRef.new(shape: ListOpportunitiesRequestLifeCycleReviewStatusList, location_name: "LifeCycleReviewStatus"))
    ListOpportunitiesRequest.add_member(:life_cycle_stage, Shapes::ShapeRef.new(shape: ListOpportunitiesRequestLifeCycleStageList, location_name: "LifeCycleStage"))
    ListOpportunitiesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListOpportunitiesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpportunitiesRequest.add_member(:sort, Shapes::ShapeRef.new(shape: OpportunitySort, location_name: "Sort"))
    ListOpportunitiesRequest.struct_class = Types::ListOpportunitiesRequest

    ListOpportunitiesRequestCustomerCompanyNameList.member = Shapes::ShapeRef.new(shape: String)

    ListOpportunitiesRequestIdentifierList.member = Shapes::ShapeRef.new(shape: OpportunityIdentifier)

    ListOpportunitiesRequestLifeCycleReviewStatusList.member = Shapes::ShapeRef.new(shape: ReviewStatus)

    ListOpportunitiesRequestLifeCycleStageList.member = Shapes::ShapeRef.new(shape: Stage)

    ListOpportunitiesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListOpportunitiesResponse.add_member(:opportunity_summaries, Shapes::ShapeRef.new(shape: OpportunitySummaries, required: true, location_name: "OpportunitySummaries"))
    ListOpportunitiesResponse.struct_class = Types::ListOpportunitiesResponse

    ListSolutionsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    ListSolutionsRequest.add_member(:category, Shapes::ShapeRef.new(shape: ListSolutionsRequestCategoryList, location_name: "Category"))
    ListSolutionsRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: ListSolutionsRequestIdentifierList, location_name: "Identifier"))
    ListSolutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: PageSize, location_name: "MaxResults"))
    ListSolutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSolutionsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: SolutionSort, location_name: "Sort"))
    ListSolutionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ListSolutionsRequestStatusList, location_name: "Status"))
    ListSolutionsRequest.struct_class = Types::ListSolutionsRequest

    ListSolutionsRequestCategoryList.member = Shapes::ShapeRef.new(shape: String)

    ListSolutionsRequestIdentifierList.member = Shapes::ShapeRef.new(shape: SolutionIdentifier)

    ListSolutionsRequestStatusList.member = Shapes::ShapeRef.new(shape: SolutionStatus)

    ListSolutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSolutionsResponse.add_member(:solution_summaries, Shapes::ShapeRef.new(shape: SolutionList, required: true, location_name: "SolutionSummaries"))
    ListSolutionsResponse.struct_class = Types::ListSolutionsResponse

    Marketing.add_member(:aws_funding_used, Shapes::ShapeRef.new(shape: AwsFundingUsed, location_name: "AwsFundingUsed"))
    Marketing.add_member(:campaign_name, Shapes::ShapeRef.new(shape: String, location_name: "CampaignName"))
    Marketing.add_member(:channels, Shapes::ShapeRef.new(shape: Channels, location_name: "Channels"))
    Marketing.add_member(:source, Shapes::ShapeRef.new(shape: MarketingSource, location_name: "Source"))
    Marketing.add_member(:use_cases, Shapes::ShapeRef.new(shape: UseCases, location_name: "UseCases"))
    Marketing.struct_class = Types::Marketing

    MonetaryValue.add_member(:amount, Shapes::ShapeRef.new(shape: MonetaryValueAmountString, required: true, location_name: "Amount"))
    MonetaryValue.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, required: true, location_name: "CurrencyCode"))
    MonetaryValue.struct_class = Types::MonetaryValue

    NextStepsHistory.add_member(:time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "Time"))
    NextStepsHistory.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    NextStepsHistory.struct_class = Types::NextStepsHistory

    OpportunityEngagementInvitationSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: OpportunityEngagementInvitationSortName, required: true, location_name: "SortBy"))
    OpportunityEngagementInvitationSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    OpportunityEngagementInvitationSort.struct_class = Types::OpportunityEngagementInvitationSort

    OpportunityInvitationPayload.add_member(:customer, Shapes::ShapeRef.new(shape: EngagementCustomer, required: true, location_name: "Customer"))
    OpportunityInvitationPayload.add_member(:project, Shapes::ShapeRef.new(shape: ProjectDetails, required: true, location_name: "Project"))
    OpportunityInvitationPayload.add_member(:receiver_responsibilities, Shapes::ShapeRef.new(shape: ReceiverResponsibilityList, required: true, location_name: "ReceiverResponsibilities"))
    OpportunityInvitationPayload.add_member(:sender_contacts, Shapes::ShapeRef.new(shape: SenderContactList, location_name: "SenderContacts"))
    OpportunityInvitationPayload.struct_class = Types::OpportunityInvitationPayload

    OpportunitySort.add_member(:sort_by, Shapes::ShapeRef.new(shape: OpportunitySortName, required: true, location_name: "SortBy"))
    OpportunitySort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    OpportunitySort.struct_class = Types::OpportunitySort

    OpportunitySummaries.member = Shapes::ShapeRef.new(shape: OpportunitySummary)

    OpportunitySummary.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    OpportunitySummary.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
    OpportunitySummary.add_member(:customer, Shapes::ShapeRef.new(shape: CustomerSummary, location_name: "Customer"))
    OpportunitySummary.add_member(:id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "Id"))
    OpportunitySummary.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastModifiedDate"))
    OpportunitySummary.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycleSummary, location_name: "LifeCycle"))
    OpportunitySummary.add_member(:opportunity_type, Shapes::ShapeRef.new(shape: OpportunityType, location_name: "OpportunityType"))
    OpportunitySummary.add_member(:partner_opportunity_identifier, Shapes::ShapeRef.new(shape: String, location_name: "PartnerOpportunityIdentifier"))
    OpportunitySummary.add_member(:project, Shapes::ShapeRef.new(shape: ProjectSummary, location_name: "Project"))
    OpportunitySummary.struct_class = Types::OpportunitySummary

    PartnerOpportunityTeamMembersList.member = Shapes::ShapeRef.new(shape: Contact)

    Payload.add_member(:opportunity_invitation, Shapes::ShapeRef.new(shape: OpportunityInvitationPayload, location_name: "OpportunityInvitation"))
    Payload.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Payload.add_member_subclass(:opportunity_invitation, Types::Payload::OpportunityInvitation)
    Payload.add_member_subclass(:unknown, Types::Payload::Unknown)
    Payload.struct_class = Types::Payload

    PrimaryNeedsFromAws.member = Shapes::ShapeRef.new(shape: PrimaryNeedFromAws)

    ProfileNextStepsHistory.add_member(:time, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "Time"))
    ProfileNextStepsHistory.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    ProfileNextStepsHistory.struct_class = Types::ProfileNextStepsHistory

    Project.add_member(:additional_comments, Shapes::ShapeRef.new(shape: ProjectAdditionalCommentsString, location_name: "AdditionalComments"))
    Project.add_member(:apn_programs, Shapes::ShapeRef.new(shape: ApnPrograms, location_name: "ApnPrograms"))
    Project.add_member(:competitor_name, Shapes::ShapeRef.new(shape: CompetitorName, location_name: "CompetitorName"))
    Project.add_member(:customer_business_problem, Shapes::ShapeRef.new(shape: ProjectCustomerBusinessProblemString, location_name: "CustomerBusinessProblem"))
    Project.add_member(:customer_use_case, Shapes::ShapeRef.new(shape: String, location_name: "CustomerUseCase"))
    Project.add_member(:delivery_models, Shapes::ShapeRef.new(shape: DeliveryModels, location_name: "DeliveryModels"))
    Project.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, location_name: "ExpectedCustomerSpend"))
    Project.add_member(:other_competitor_names, Shapes::ShapeRef.new(shape: ProjectOtherCompetitorNamesString, location_name: "OtherCompetitorNames"))
    Project.add_member(:other_solution_description, Shapes::ShapeRef.new(shape: ProjectOtherSolutionDescriptionString, location_name: "OtherSolutionDescription"))
    Project.add_member(:related_opportunity_identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "RelatedOpportunityIdentifier"))
    Project.add_member(:sales_activities, Shapes::ShapeRef.new(shape: SalesActivities, location_name: "SalesActivities"))
    Project.add_member(:title, Shapes::ShapeRef.new(shape: ProjectTitleString, location_name: "Title"))
    Project.struct_class = Types::Project

    ProjectDetails.add_member(:business_problem, Shapes::ShapeRef.new(shape: EngagementCustomerBusinessProblem, required: true, location_name: "BusinessProblem"))
    ProjectDetails.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, required: true, location_name: "ExpectedCustomerSpend"))
    ProjectDetails.add_member(:target_completion_date, Shapes::ShapeRef.new(shape: Date, required: true, location_name: "TargetCompletionDate"))
    ProjectDetails.add_member(:title, Shapes::ShapeRef.new(shape: ProjectDetailsTitleString, required: true, location_name: "Title"))
    ProjectDetails.struct_class = Types::ProjectDetails

    ProjectSummary.add_member(:delivery_models, Shapes::ShapeRef.new(shape: DeliveryModels, location_name: "DeliveryModels"))
    ProjectSummary.add_member(:expected_customer_spend, Shapes::ShapeRef.new(shape: ExpectedCustomerSpendList, location_name: "ExpectedCustomerSpend"))
    ProjectSummary.struct_class = Types::ProjectSummary

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
    RelatedEntityIdentifiers.add_member(:aws_products, Shapes::ShapeRef.new(shape: AwsProductIdentifiers, location_name: "AwsProducts"))
    RelatedEntityIdentifiers.add_member(:solutions, Shapes::ShapeRef.new(shape: SolutionIdentifiers, location_name: "Solutions"))
    RelatedEntityIdentifiers.struct_class = Types::RelatedEntityIdentifiers

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SalesActivities.member = Shapes::ShapeRef.new(shape: SalesActivity)

    SenderContact.add_member(:business_title, Shapes::ShapeRef.new(shape: JobTitle, location_name: "BusinessTitle"))
    SenderContact.add_member(:email, Shapes::ShapeRef.new(shape: SenderContactEmail, required: true, location_name: "Email"))
    SenderContact.add_member(:first_name, Shapes::ShapeRef.new(shape: Name, location_name: "FirstName"))
    SenderContact.add_member(:last_name, Shapes::ShapeRef.new(shape: Name, location_name: "LastName"))
    SenderContact.add_member(:phone, Shapes::ShapeRef.new(shape: PhoneNumber, location_name: "Phone"))
    SenderContact.struct_class = Types::SenderContact

    SenderContactList.member = Shapes::ShapeRef.new(shape: SenderContact)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SoftwareRevenue.add_member(:delivery_model, Shapes::ShapeRef.new(shape: RevenueModel, location_name: "DeliveryModel"))
    SoftwareRevenue.add_member(:effective_date, Shapes::ShapeRef.new(shape: Date, location_name: "EffectiveDate"))
    SoftwareRevenue.add_member(:expiration_date, Shapes::ShapeRef.new(shape: Date, location_name: "ExpirationDate"))
    SoftwareRevenue.add_member(:value, Shapes::ShapeRef.new(shape: MonetaryValue, location_name: "Value"))
    SoftwareRevenue.struct_class = Types::SoftwareRevenue

    SolutionBase.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    SolutionBase.add_member(:category, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Category"))
    SolutionBase.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "CreatedDate"))
    SolutionBase.add_member(:id, Shapes::ShapeRef.new(shape: SolutionIdentifier, required: true, location_name: "Id"))
    SolutionBase.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Name"))
    SolutionBase.add_member(:status, Shapes::ShapeRef.new(shape: SolutionStatus, required: true, location_name: "Status"))
    SolutionBase.struct_class = Types::SolutionBase

    SolutionIdentifiers.member = Shapes::ShapeRef.new(shape: SolutionIdentifier)

    SolutionList.member = Shapes::ShapeRef.new(shape: SolutionBase)

    SolutionSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: SolutionSortName, required: true, location_name: "SortBy"))
    SolutionSort.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, required: true, location_name: "SortOrder"))
    SolutionSort.struct_class = Types::SolutionSort

    StartEngagementByAcceptingInvitationTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    StartEngagementByAcceptingInvitationTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: StartEngagementByAcceptingInvitationTaskRequestClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartEngagementByAcceptingInvitationTaskRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: EngagementInvitationArnOrIdentifier, required: true, location_name: "Identifier"))
    StartEngagementByAcceptingInvitationTaskRequest.struct_class = Types::StartEngagementByAcceptingInvitationTaskRequest

    StartEngagementByAcceptingInvitationTaskResponse.add_member(:engagement_invitation_id, Shapes::ShapeRef.new(shape: EngagementInvitationIdentifier, location_name: "EngagementInvitationId"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:opportunity_id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "OpportunityId"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:reason_code, Shapes::ShapeRef.new(shape: ReasonCode, location_name: "ReasonCode"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskIdentifier, location_name: "TaskId"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "TaskStatus"))
    StartEngagementByAcceptingInvitationTaskResponse.struct_class = Types::StartEngagementByAcceptingInvitationTaskResponse

    StartEngagementFromOpportunityTaskRequest.add_member(:aws_submission, Shapes::ShapeRef.new(shape: AwsSubmission, required: true, location_name: "AwsSubmission"))
    StartEngagementFromOpportunityTaskRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    StartEngagementFromOpportunityTaskRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: StartEngagementFromOpportunityTaskRequestClientTokenString, required: true, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartEngagementFromOpportunityTaskRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Identifier"))
    StartEngagementFromOpportunityTaskRequest.struct_class = Types::StartEngagementFromOpportunityTaskRequest

    StartEngagementFromOpportunityTaskResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    StartEngagementFromOpportunityTaskResponse.add_member(:opportunity_id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, location_name: "OpportunityId"))
    StartEngagementFromOpportunityTaskResponse.add_member(:reason_code, Shapes::ShapeRef.new(shape: ReasonCode, location_name: "ReasonCode"))
    StartEngagementFromOpportunityTaskResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "StartTime"))
    StartEngagementFromOpportunityTaskResponse.add_member(:task_arn, Shapes::ShapeRef.new(shape: TaskArn, location_name: "TaskArn"))
    StartEngagementFromOpportunityTaskResponse.add_member(:task_id, Shapes::ShapeRef.new(shape: TaskIdentifier, location_name: "TaskId"))
    StartEngagementFromOpportunityTaskResponse.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "TaskStatus"))
    StartEngagementFromOpportunityTaskResponse.struct_class = Types::StartEngagementFromOpportunityTaskResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateOpportunityRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: CatalogIdentifier, required: true, location_name: "Catalog"))
    UpdateOpportunityRequest.add_member(:customer, Shapes::ShapeRef.new(shape: Customer, location_name: "Customer"))
    UpdateOpportunityRequest.add_member(:identifier, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Identifier"))
    UpdateOpportunityRequest.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastModifiedDate"))
    UpdateOpportunityRequest.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "LifeCycle"))
    UpdateOpportunityRequest.add_member(:marketing, Shapes::ShapeRef.new(shape: Marketing, location_name: "Marketing"))
    UpdateOpportunityRequest.add_member(:national_security, Shapes::ShapeRef.new(shape: NationalSecurity, location_name: "NationalSecurity"))
    UpdateOpportunityRequest.add_member(:opportunity_type, Shapes::ShapeRef.new(shape: OpportunityType, location_name: "OpportunityType"))
    UpdateOpportunityRequest.add_member(:partner_opportunity_identifier, Shapes::ShapeRef.new(shape: UpdateOpportunityRequestPartnerOpportunityIdentifierString, location_name: "PartnerOpportunityIdentifier"))
    UpdateOpportunityRequest.add_member(:primary_needs_from_aws, Shapes::ShapeRef.new(shape: PrimaryNeedsFromAws, location_name: "PrimaryNeedsFromAws"))
    UpdateOpportunityRequest.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "Project"))
    UpdateOpportunityRequest.add_member(:software_revenue, Shapes::ShapeRef.new(shape: SoftwareRevenue, location_name: "SoftwareRevenue"))
    UpdateOpportunityRequest.struct_class = Types::UpdateOpportunityRequest

    UpdateOpportunityResponse.add_member(:id, Shapes::ShapeRef.new(shape: OpportunityIdentifier, required: true, location_name: "Id"))
    UpdateOpportunityResponse.add_member(:last_modified_date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "LastModifiedDate"))
    UpdateOpportunityResponse.struct_class = Types::UpdateOpportunityResponse

    UseCases.member = Shapes::ShapeRef.new(shape: String)

    ValidationException.add_member(:error_list, Shapes::ShapeRef.new(shape: ValidationExceptionErrorList, location_name: "ErrorList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "Reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionError.add_member(:code, Shapes::ShapeRef.new(shape: ValidationExceptionErrorCode, required: true, location_name: "Code"))
    ValidationExceptionError.add_member(:field_name, Shapes::ShapeRef.new(shape: String, location_name: "FieldName"))
    ValidationExceptionError.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Message"))
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

      api.add_operation(:create_opportunity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateOpportunity"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateOpportunityRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateOpportunityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:reject_engagement_invitation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RejectEngagementInvitation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RejectEngagementInvitationRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
