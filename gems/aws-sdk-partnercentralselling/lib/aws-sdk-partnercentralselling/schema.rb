# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralSelling
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptEngagementInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AcceptEngagementInvitationRequest", name: "AcceptEngagementInvitationRequest")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Account = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#Account", name: "Account")
    AccountReceiver = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AccountReceiver", name: "AccountReceiver")
    AccountSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AccountSummary", name: "AccountSummary")
    Address = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#Address", name: "Address")
    AddressPart = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#AddressPart", name: "AddressPart", traits: {"smithy.api#sensitive" => {}})
    AddressSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AddressSummary", name: "AddressSummary")
    Alias = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#Alias", name: "Alias", traits: {"smithy.api#length" => {"min" => 0, "max" => 80}, "smithy.api#sensitive" => {}})
    Amount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#Amount", name: "Amount", traits: {"smithy.api#pattern" => "^(0|([1-9][0-9]{0,30}))(\\.[0-9]{0,2})?$", "smithy.api#sensitive" => {}})
    ApnPrograms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#ApnPrograms", name: "ApnPrograms")
    AssignOpportunityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AssignOpportunityRequest", name: "AssignOpportunityRequest")
    AssigneeContact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AssigneeContact", name: "AssigneeContact")
    AssociateOpportunityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AssociateOpportunityRequest", name: "AssociateOpportunityRequest")
    AwsAccount = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#AwsAccount", name: "AwsAccount", traits: {"smithy.api#pattern" => "^([0-9]{12}|\\w{1,12})$", "smithy.api#sensitive" => {}})
    AwsAccountIdOrAliasList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#AwsAccountIdOrAliasList", name: "AwsAccountIdOrAliasList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AwsAccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#AwsAccountList", name: "AwsAccountList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    AwsClosedLostReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#AwsClosedLostReason", name: "AwsClosedLostReason")
    AwsFundingUsed = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#AwsFundingUsed", name: "AwsFundingUsed")
    AwsMarketplaceOfferIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#AwsMarketplaceOfferIdentifier", name: "AwsMarketplaceOfferIdentifier", traits: {"smithy.api#pattern" => "^arn:aws:aws-marketplace:[a-z]{1,2}-[a-z]*-\\d+:\\d{12}:AWSMarketplace/Offer/.*$"})
    AwsMarketplaceOfferIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#AwsMarketplaceOfferIdentifiers", name: "AwsMarketplaceOfferIdentifiers")
    AwsMemberBusinessTitle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#AwsMemberBusinessTitle", name: "AwsMemberBusinessTitle")
    AwsOpportunityCustomer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AwsOpportunityCustomer", name: "AwsOpportunityCustomer")
    AwsOpportunityInsights = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AwsOpportunityInsights", name: "AwsOpportunityInsights")
    AwsOpportunityLifeCycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AwsOpportunityLifeCycle", name: "AwsOpportunityLifeCycle")
    AwsOpportunityProject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AwsOpportunityProject", name: "AwsOpportunityProject")
    AwsOpportunityRelatedEntities = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AwsOpportunityRelatedEntities", name: "AwsOpportunityRelatedEntities")
    AwsOpportunityStage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#AwsOpportunityStage", name: "AwsOpportunityStage")
    AwsOpportunityTeamMembersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#AwsOpportunityTeamMembersList", name: "AwsOpportunityTeamMembersList")
    AwsProductIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#AwsProductIdentifier", name: "AwsProductIdentifier")
    AwsProductIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#AwsProductIdentifiers", name: "AwsProductIdentifiers")
    AwsSubmission = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AwsSubmission", name: "AwsSubmission")
    AwsTeamMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#AwsTeamMember", name: "AwsTeamMember")
    CatalogIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#CatalogIdentifier", name: "CatalogIdentifier", traits: {"smithy.api#pattern" => "^[a-zA-Z]+$"})
    Channel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#Channel", name: "Channel")
    Channels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#Channels", name: "Channels")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#ClientToken", name: "ClientToken", traits: {"smithy.api#pattern" => "^[!-~]{1,64}$"})
    ClosedLostReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#ClosedLostReason", name: "ClosedLostReason")
    CompanyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#CompanyName", name: "CompanyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 120}, "smithy.api#sensitive" => {}})
    CompanyWebsiteUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#CompanyWebsiteUrl", name: "CompanyWebsiteUrl", traits: {"smithy.api#length" => {"min" => 4, "max" => 255}, "smithy.api#pattern" => "^((http|https)://)??(www[.])??([a-zA-Z0-9]|-)+?([.][a-zA-Z0-9(-|/|=|?)??]+?)+?$", "smithy.api#sensitive" => {}})
    CompetitorName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#CompetitorName", name: "CompetitorName")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Contact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#Contact", name: "Contact")
    CountryCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#CountryCode", name: "CountryCode", traits: {"smithy.api#sensitive" => {}})
    CreateEngagementInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CreateEngagementInvitationRequest", name: "CreateEngagementInvitationRequest")
    CreateEngagementInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CreateEngagementInvitationResponse", name: "CreateEngagementInvitationResponse")
    CreateEngagementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CreateEngagementRequest", name: "CreateEngagementRequest")
    CreateEngagementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CreateEngagementResponse", name: "CreateEngagementResponse")
    CreateOpportunityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CreateOpportunityRequest", name: "CreateOpportunityRequest")
    CreateOpportunityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CreateOpportunityResponse", name: "CreateOpportunityResponse")
    CreateResourceSnapshotJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CreateResourceSnapshotJobRequest", name: "CreateResourceSnapshotJobRequest")
    CreateResourceSnapshotJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CreateResourceSnapshotJobResponse", name: "CreateResourceSnapshotJobResponse")
    CreateResourceSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CreateResourceSnapshotRequest", name: "CreateResourceSnapshotRequest")
    CreateResourceSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CreateResourceSnapshotResponse", name: "CreateResourceSnapshotResponse")
    CurrencyCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#CurrencyCode", name: "CurrencyCode", traits: {"smithy.api#sensitive" => {}})
    Customer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#Customer", name: "Customer")
    CustomerContactsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#CustomerContactsList", name: "CustomerContactsList")
    CustomerProjectsContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CustomerProjectsContext", name: "CustomerProjectsContext")
    CustomerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#CustomerSummary", name: "CustomerSummary")
    Date = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#Date", name: "Date", traits: {"smithy.api#pattern" => "^[1-9][0-9]{3}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$"})
    DateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.partnercentralselling#DateTime", name: "DateTime", traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteResourceSnapshotJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#DeleteResourceSnapshotJobRequest", name: "DeleteResourceSnapshotJobRequest")
    DeliveryModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#DeliveryModel", name: "DeliveryModel")
    DeliveryModels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#DeliveryModels", name: "DeliveryModels")
    DisassociateOpportunityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#DisassociateOpportunityRequest", name: "DisassociateOpportunityRequest")
    DunsNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#DunsNumber", name: "DunsNumber", traits: {"smithy.api#pattern" => "^[0-9]{9}$", "smithy.api#sensitive" => {}})
    Email = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#Email", name: "Email", traits: {"smithy.api#length" => {"max" => 80}, "smithy.api#pattern" => "^[a-z0-9!\#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!\#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$", "smithy.api#sensitive" => {}})
    EngagementArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#EngagementArn", name: "EngagementArn", traits: {"smithy.api#pattern" => "^arn:.*"})
    EngagementArnOrIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#EngagementArnOrIdentifier", name: "EngagementArnOrIdentifier", traits: {"smithy.api#pattern" => "^(arn:.*|eng-[0-9a-z]{14})$"})
    EngagementContextDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#EngagementContextDetails", name: "EngagementContextDetails")
    EngagementContextPayload = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralselling#EngagementContextPayload", name: "EngagementContextPayload")
    EngagementContextType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#EngagementContextType", name: "EngagementContextType")
    EngagementContexts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#EngagementContexts", name: "EngagementContexts", traits: {"smithy.api#length" => {"max" => 5}})
    EngagementCustomer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#EngagementCustomer", name: "EngagementCustomer")
    EngagementCustomerBusinessProblem = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#EngagementCustomerBusinessProblem", name: "EngagementCustomerBusinessProblem", traits: {"smithy.api#length" => {"min" => 20, "max" => 255}, "smithy.api#sensitive" => {}})
    EngagementCustomerProjectDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#EngagementCustomerProjectDetails", name: "EngagementCustomerProjectDetails")
    EngagementCustomerProjectTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#EngagementCustomerProjectTitle", name: "EngagementCustomerProjectTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    EngagementDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#EngagementDescription", name: "EngagementDescription", traits: {"smithy.api#length" => {"max" => 255}})
    EngagementIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#EngagementIdentifier", name: "EngagementIdentifier", traits: {"smithy.api#pattern" => "^eng-[0-9a-z]{14}$"})
    EngagementIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#EngagementIdentifiers", name: "EngagementIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EngagementInvitationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#EngagementInvitationArn", name: "EngagementInvitationArn", traits: {"smithy.api#pattern" => "^arn:aws:partnercentral::[0-9]{12}:[a-zA-Z]+/engagement-invitation/engi-[0-9,a-z]{13}$"})
    EngagementInvitationArnOrIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#EngagementInvitationArnOrIdentifier", name: "EngagementInvitationArnOrIdentifier", traits: {"aws.api#arnReference" => {"resource" => "com.amazon.partnerintegrationapi.operation#EngagementInvitation"}, "smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(arn:.*|engi-[0-9a-z]{13})$"})
    EngagementInvitationIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#EngagementInvitationIdentifier", name: "EngagementInvitationIdentifier", traits: {"smithy.api#pattern" => "^engi-[0-9,a-z]{13}$"})
    EngagementInvitationIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#EngagementInvitationIdentifiers", name: "EngagementInvitationIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    EngagementInvitationPayloadType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#EngagementInvitationPayloadType", name: "EngagementInvitationPayloadType")
    EngagementInvitationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#EngagementInvitationSummaries", name: "EngagementInvitationSummaries")
    EngagementInvitationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#EngagementInvitationSummary", name: "EngagementInvitationSummary")
    EngagementInvitationsPayloadType = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#EngagementInvitationsPayloadType", name: "EngagementInvitationsPayloadType")
    EngagementMember = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#EngagementMember", name: "EngagementMember")
    EngagementMemberSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#EngagementMemberSummaries", name: "EngagementMemberSummaries")
    EngagementMemberSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#EngagementMemberSummary", name: "EngagementMemberSummary")
    EngagementMembers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#EngagementMembers", name: "EngagementMembers", traits: {"smithy.api#length" => {"max" => 10}})
    EngagementPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.partnercentralselling#EngagementPageSize", name: "EngagementPageSize", traits: {"smithy.api#default" => 20, "smithy.api#range" => {"min" => 1, "max" => 100}})
    EngagementResourceAssociationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#EngagementResourceAssociationSummary", name: "EngagementResourceAssociationSummary")
    EngagementResourceAssociationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#EngagementResourceAssociationSummaryList", name: "EngagementResourceAssociationSummaryList")
    EngagementScore = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#EngagementScore", name: "EngagementScore")
    EngagementSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#EngagementSort", name: "EngagementSort")
    EngagementSortName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#EngagementSortName", name: "EngagementSortName")
    EngagementSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#EngagementSummary", name: "EngagementSummary")
    EngagementSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#EngagementSummaryList", name: "EngagementSummaryList")
    EngagementTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#EngagementTitle", name: "EngagementTitle", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}})
    ExpectedCustomerSpend = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ExpectedCustomerSpend", name: "ExpectedCustomerSpend")
    ExpectedCustomerSpendList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#ExpectedCustomerSpendList", name: "ExpectedCustomerSpendList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    FilterIdentifier = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#FilterIdentifier", name: "FilterIdentifier")
    FilterLifeCycleReviewStatus = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#FilterLifeCycleReviewStatus", name: "FilterLifeCycleReviewStatus")
    FilterLifeCycleStage = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#FilterLifeCycleStage", name: "FilterLifeCycleStage")
    FilterStatus = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#FilterStatus", name: "FilterStatus")
    GetAwsOpportunitySummaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetAwsOpportunitySummaryRequest", name: "GetAwsOpportunitySummaryRequest")
    GetAwsOpportunitySummaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetAwsOpportunitySummaryResponse", name: "GetAwsOpportunitySummaryResponse")
    GetEngagementInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetEngagementInvitationRequest", name: "GetEngagementInvitationRequest")
    GetEngagementInvitationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetEngagementInvitationResponse", name: "GetEngagementInvitationResponse")
    GetEngagementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetEngagementRequest", name: "GetEngagementRequest")
    GetEngagementResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetEngagementResponse", name: "GetEngagementResponse")
    GetOpportunityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetOpportunityRequest", name: "GetOpportunityRequest")
    GetOpportunityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetOpportunityResponse", name: "GetOpportunityResponse")
    GetResourceSnapshotJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetResourceSnapshotJobRequest", name: "GetResourceSnapshotJobRequest")
    GetResourceSnapshotJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetResourceSnapshotJobResponse", name: "GetResourceSnapshotJobResponse")
    GetResourceSnapshotRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetResourceSnapshotRequest", name: "GetResourceSnapshotRequest")
    GetResourceSnapshotResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetResourceSnapshotResponse", name: "GetResourceSnapshotResponse")
    GetSellingSystemSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetSellingSystemSettingsRequest", name: "GetSellingSystemSettingsRequest")
    GetSellingSystemSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#GetSellingSystemSettingsResponse", name: "GetSellingSystemSettingsResponse")
    Industry = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#Industry", name: "Industry")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Invitation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#Invitation", name: "Invitation")
    InvitationMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#InvitationMessage", name: "InvitationMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    InvitationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#InvitationStatus", name: "InvitationStatus")
    InvitationStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#InvitationStatusList", name: "InvitationStatusList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    InvolvementTypeChangeReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#InvolvementTypeChangeReason", name: "InvolvementTypeChangeReason")
    JobTitle = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#JobTitle", name: "JobTitle", traits: {"smithy.api#length" => {"max" => 80}, "smithy.api#sensitive" => {}})
    LastModifiedDate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#LastModifiedDate", name: "LastModifiedDate")
    LifeCycle = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#LifeCycle", name: "LifeCycle")
    LifeCycleForView = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#LifeCycleForView", name: "LifeCycleForView")
    LifeCycleSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#LifeCycleSummary", name: "LifeCycleSummary")
    ListEngagementByAcceptingInvitationTaskSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementByAcceptingInvitationTaskSummaries", name: "ListEngagementByAcceptingInvitationTaskSummaries")
    ListEngagementByAcceptingInvitationTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementByAcceptingInvitationTaskSummary", name: "ListEngagementByAcceptingInvitationTaskSummary")
    ListEngagementByAcceptingInvitationTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementByAcceptingInvitationTasksRequest", name: "ListEngagementByAcceptingInvitationTasksRequest")
    ListEngagementByAcceptingInvitationTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementByAcceptingInvitationTasksResponse", name: "ListEngagementByAcceptingInvitationTasksResponse")
    ListEngagementFromOpportunityTaskSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementFromOpportunityTaskSummaries", name: "ListEngagementFromOpportunityTaskSummaries")
    ListEngagementFromOpportunityTaskSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementFromOpportunityTaskSummary", name: "ListEngagementFromOpportunityTaskSummary")
    ListEngagementFromOpportunityTasksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementFromOpportunityTasksRequest", name: "ListEngagementFromOpportunityTasksRequest")
    ListEngagementFromOpportunityTasksResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementFromOpportunityTasksResponse", name: "ListEngagementFromOpportunityTasksResponse")
    ListEngagementInvitationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementInvitationsRequest", name: "ListEngagementInvitationsRequest")
    ListEngagementInvitationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementInvitationsResponse", name: "ListEngagementInvitationsResponse")
    ListEngagementMembersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementMembersRequest", name: "ListEngagementMembersRequest")
    ListEngagementMembersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementMembersResponse", name: "ListEngagementMembersResponse")
    ListEngagementResourceAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementResourceAssociationsRequest", name: "ListEngagementResourceAssociationsRequest")
    ListEngagementResourceAssociationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementResourceAssociationsResponse", name: "ListEngagementResourceAssociationsResponse")
    ListEngagementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementsRequest", name: "ListEngagementsRequest")
    ListEngagementsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListEngagementsResponse", name: "ListEngagementsResponse")
    ListOpportunitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListOpportunitiesRequest", name: "ListOpportunitiesRequest")
    ListOpportunitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListOpportunitiesResponse", name: "ListOpportunitiesResponse")
    ListResourceSnapshotJobsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListResourceSnapshotJobsRequest", name: "ListResourceSnapshotJobsRequest")
    ListResourceSnapshotJobsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListResourceSnapshotJobsResponse", name: "ListResourceSnapshotJobsResponse")
    ListResourceSnapshotsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListResourceSnapshotsRequest", name: "ListResourceSnapshotsRequest")
    ListResourceSnapshotsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListResourceSnapshotsResponse", name: "ListResourceSnapshotsResponse")
    ListSolutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListSolutionsRequest", name: "ListSolutionsRequest")
    ListSolutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListSolutionsResponse", name: "ListSolutionsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTasksSortBase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ListTasksSortBase", name: "ListTasksSortBase")
    ListTasksSortName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#ListTasksSortName", name: "ListTasksSortName")
    Marketing = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#Marketing", name: "Marketing")
    MarketingSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#MarketingSource", name: "MarketingSource")
    MemberCompanyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#MemberCompanyName", name: "MemberCompanyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 120}, "smithy.api#sensitive" => {}})
    MemberPageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.partnercentralselling#MemberPageSize", name: "MemberPageSize", traits: {"smithy.api#default" => 5, "smithy.api#range" => {"min" => 1, "max" => 10}})
    MonetaryValue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#MonetaryValue", name: "MonetaryValue")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#Name", name: "Name", traits: {"smithy.api#length" => {"max" => 80}, "smithy.api#sensitive" => {}})
    NationalSecurity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#NationalSecurity", name: "NationalSecurity")
    NextStepsHistories = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#NextStepsHistories", name: "NextStepsHistories")
    NextStepsHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#NextStepsHistory", name: "NextStepsHistory")
    OpportunityArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#OpportunityArn", name: "OpportunityArn", traits: {"smithy.api#pattern" => "^arn:.*$"})
    OpportunityEngagementInvitationSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#OpportunityEngagementInvitationSort", name: "OpportunityEngagementInvitationSort")
    OpportunityEngagementInvitationSortName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#OpportunityEngagementInvitationSortName", name: "OpportunityEngagementInvitationSortName")
    OpportunityIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#OpportunityIdentifier", name: "OpportunityIdentifier", traits: {"smithy.api#pattern" => "^O[0-9]{1,19}$"})
    OpportunityIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#OpportunityIdentifiers", name: "OpportunityIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    OpportunityInvitationPayload = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#OpportunityInvitationPayload", name: "OpportunityInvitationPayload")
    OpportunityOrigin = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#OpportunityOrigin", name: "OpportunityOrigin")
    OpportunitySort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#OpportunitySort", name: "OpportunitySort")
    OpportunitySortName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#OpportunitySortName", name: "OpportunitySortName")
    OpportunitySummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#OpportunitySummaries", name: "OpportunitySummaries")
    OpportunitySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#OpportunitySummary", name: "OpportunitySummary")
    OpportunitySummaryView = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#OpportunitySummaryView", name: "OpportunitySummaryView")
    OpportunityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#OpportunityType", name: "OpportunityType")
    PageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.partnercentralselling#PageSize", name: "PageSize", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ParticipantType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#ParticipantType", name: "ParticipantType")
    PartnerOpportunityTeamMembersList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#PartnerOpportunityTeamMembersList", name: "PartnerOpportunityTeamMembersList", traits: {"smithy.api#length" => {"max" => 2}})
    Payload = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralselling#Payload", name: "Payload")
    PaymentFrequency = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#PaymentFrequency", name: "PaymentFrequency")
    PhoneNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#PhoneNumber", name: "PhoneNumber", traits: {"smithy.api#length" => {"max" => 40}, "smithy.api#pattern" => "^\\+[1-9]\\d{1,14}$", "smithy.api#sensitive" => {}})
    PiiString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#PiiString", name: "PiiString", traits: {"smithy.api#sensitive" => {}})
    PrimaryNeedFromAws = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#PrimaryNeedFromAws", name: "PrimaryNeedFromAws")
    PrimaryNeedsFromAws = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#PrimaryNeedsFromAws", name: "PrimaryNeedsFromAws")
    ProfileNextStepsHistories = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#ProfileNextStepsHistories", name: "ProfileNextStepsHistories")
    ProfileNextStepsHistory = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ProfileNextStepsHistory", name: "ProfileNextStepsHistory")
    Project = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#Project", name: "Project")
    ProjectDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ProjectDetails", name: "ProjectDetails")
    ProjectSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ProjectSummary", name: "ProjectSummary")
    ProjectView = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ProjectView", name: "ProjectView")
    PutSellingSystemSettingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#PutSellingSystemSettingsRequest", name: "PutSellingSystemSettingsRequest")
    PutSellingSystemSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#PutSellingSystemSettingsResponse", name: "PutSellingSystemSettingsResponse")
    ReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#ReasonCode", name: "ReasonCode")
    Receiver = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralselling#Receiver", name: "Receiver")
    ReceiverResponsibility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#ReceiverResponsibility", name: "ReceiverResponsibility")
    ReceiverResponsibilityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#ReceiverResponsibilityList", name: "ReceiverResponsibilityList")
    RejectEngagementInvitationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#RejectEngagementInvitationRequest", name: "RejectEngagementInvitationRequest")
    RejectionReasonString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#RejectionReasonString", name: "RejectionReasonString", traits: {"smithy.api#pattern" => "^[\\u0020-\\u007E\\u00A0-\\uD7FF\\uE000-\\uFFFD]{1,80}$"})
    RelatedEntityIdentifiers = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#RelatedEntityIdentifiers", name: "RelatedEntityIdentifiers")
    RelatedEntityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#RelatedEntityType", name: "RelatedEntityType")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^arn:.*"})
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#ResourceIdentifier", name: "ResourceIdentifier", traits: {"smithy.api#pattern" => "^O[0-9]{1,19}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSnapshotArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotArn", name: "ResourceSnapshotArn", traits: {"smithy.api#pattern" => "^arn:.*"})
    ResourceSnapshotJobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotJobArn", name: "ResourceSnapshotJobArn", traits: {"smithy.api#pattern" => "^arn:.*"})
    ResourceSnapshotJobIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotJobIdentifier", name: "ResourceSnapshotJobIdentifier", traits: {"smithy.api#pattern" => "^job-[0-9a-z]{13}$"})
    ResourceSnapshotJobRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotJobRoleArn", name: "ResourceSnapshotJobRoleArn", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::\\d{12}:role/([-+=,.@_a-zA-Z0-9]+/)*[-+=,.@_a-zA-Z0-9]{1,64}$"})
    ResourceSnapshotJobRoleIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotJobRoleIdentifier", name: "ResourceSnapshotJobRoleIdentifier", traits: {"smithy.api#length" => {"max" => 2048}, "smithy.api#pattern" => "^(arn:aws:iam::\\d{12}:role/([-+=,.@_a-zA-Z0-9]+/)*)?[-+=,.@_a-zA-Z0-9]{1,64}$"})
    ResourceSnapshotJobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotJobStatus", name: "ResourceSnapshotJobStatus")
    ResourceSnapshotJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotJobSummary", name: "ResourceSnapshotJobSummary")
    ResourceSnapshotJobSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotJobSummaryList", name: "ResourceSnapshotJobSummaryList")
    ResourceSnapshotPayload = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotPayload", name: "ResourceSnapshotPayload")
    ResourceSnapshotRevision = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotRevision", name: "ResourceSnapshotRevision", traits: {"smithy.api#range" => {"min" => 1}})
    ResourceSnapshotSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotSummary", name: "ResourceSnapshotSummary")
    ResourceSnapshotSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#ResourceSnapshotSummaryList", name: "ResourceSnapshotSummaryList")
    ResourceTemplateName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#ResourceTemplateName", name: "ResourceTemplateName", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{3,80}$"})
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#ResourceType", name: "ResourceType")
    RevenueModel = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#RevenueModel", name: "RevenueModel")
    ReviewStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#ReviewStatus", name: "ReviewStatus")
    SalesActivities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#SalesActivities", name: "SalesActivities")
    SalesActivity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#SalesActivity", name: "SalesActivity")
    SalesInvolvementType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#SalesInvolvementType", name: "SalesInvolvementType")
    SenderContact = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#SenderContact", name: "SenderContact")
    SenderContactEmail = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#SenderContactEmail", name: "SenderContactEmail", traits: {"smithy.api#length" => {"max" => 80}, "smithy.api#pattern" => "^[a-zA-Z0-9.!\#$%&'*+/=?^_{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$", "smithy.api#sensitive" => {}})
    SenderContactList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#SenderContactList", name: "SenderContactList", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SoftwareRevenue = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#SoftwareRevenue", name: "SoftwareRevenue")
    SolutionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#SolutionArn", name: "SolutionArn", traits: {"smithy.api#pattern" => "^S-[0-9]{1,19}$"})
    SolutionBase = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#SolutionBase", name: "SolutionBase")
    SolutionIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#SolutionIdentifier", name: "SolutionIdentifier", traits: {"smithy.api#pattern" => "^S-[0-9]{1,19}$"})
    SolutionIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#SolutionIdentifiers", name: "SolutionIdentifiers")
    SolutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#SolutionList", name: "SolutionList")
    SolutionSort = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#SolutionSort", name: "SolutionSort")
    SolutionSortName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#SolutionSortName", name: "SolutionSortName")
    SolutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#SolutionStatus", name: "SolutionStatus")
    SortBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#SortBy", name: "SortBy")
    SortObject = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#SortObject", name: "SortObject")
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#SortOrder", name: "SortOrder")
    Stage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#Stage", name: "Stage")
    StartEngagementByAcceptingInvitationTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#StartEngagementByAcceptingInvitationTaskRequest", name: "StartEngagementByAcceptingInvitationTaskRequest")
    StartEngagementByAcceptingInvitationTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#StartEngagementByAcceptingInvitationTaskResponse", name: "StartEngagementByAcceptingInvitationTaskResponse")
    StartEngagementFromOpportunityTaskRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#StartEngagementFromOpportunityTaskRequest", name: "StartEngagementFromOpportunityTaskRequest")
    StartEngagementFromOpportunityTaskResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#StartEngagementFromOpportunityTaskResponse", name: "StartEngagementFromOpportunityTaskResponse")
    StartResourceSnapshotJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#StartResourceSnapshotJobRequest", name: "StartResourceSnapshotJobRequest")
    StopResourceSnapshotJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#StopResourceSnapshotJobRequest", name: "StopResourceSnapshotJobRequest")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#StringList", name: "StringList")
    SubmitOpportunityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#SubmitOpportunityRequest", name: "SubmitOpportunityRequest")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TaggableResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#TaggableResourceArn", name: "TaggableResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^arn:[\\w+=/,.@-]+:partnercentral:[\\w+=/,.@-]*:[0-9]{12}:catalog/([a-zA-Z]+)/[\\w+=,.@-]+(/[\\w+=,.@-]+)*$"})
    TaskArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#TaskArn", name: "TaskArn", traits: {"smithy.api#pattern" => "^arn:.*"})
    TaskArnOrIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#TaskArnOrIdentifier", name: "TaskArnOrIdentifier", traits: {"smithy.api#pattern" => "^(arn:.*|task-[0-9a-z]{13})$"})
    TaskIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#TaskIdentifier", name: "TaskIdentifier", traits: {"smithy.api#pattern" => "task-[0-9a-z]{13}$"})
    TaskIdentifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#TaskIdentifiers", name: "TaskIdentifiers", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    TaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#TaskStatus", name: "TaskStatus")
    TaskStatuses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#TaskStatuses", name: "TaskStatuses", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateOpportunityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#UpdateOpportunityRequest", name: "UpdateOpportunityRequest")
    UpdateOpportunityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#UpdateOpportunityResponse", name: "UpdateOpportunityResponse")
    UseCases = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#UseCases", name: "UseCases")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.partnercentralselling#ValidationExceptionError", name: "ValidationExceptionError")
    ValidationExceptionErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#ValidationExceptionErrorCode", name: "ValidationExceptionErrorCode")
    ValidationExceptionErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.partnercentralselling#ValidationExceptionErrorList", name: "ValidationExceptionErrorList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#ValidationExceptionReason", name: "ValidationExceptionReason")
    Visibility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.partnercentralselling#Visibility", name: "Visibility")
    WebsiteUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.partnercentralselling#WebsiteUrl", name: "WebsiteUrl", traits: {"smithy.api#length" => {"min" => 4, "max" => 255}, "smithy.api#sensitive" => {}})

    AcceptEngagementInvitationRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    AcceptEngagementInvitationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationArnOrIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    AcceptEngagementInvitationRequest.type = Types::AcceptEngagementInvitationRequest
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    AccessDeniedException.type = Types::AccessDeniedException
    Account.add_member(:industry, ::Smithy::Schema::Shapes::MemberShape.new(target: Industry, name: "Industry"))
    Account.add_member(:other_industry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OtherIndustry", traits: {"smithy.api#length" => {"max" => 255}}))
    Account.add_member(:company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "CompanyName", traits: {"smithy.api#length" => {"max" => 120}, "smithy.api#required" => {}}))
    Account.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteUrl, name: "WebsiteUrl"))
    Account.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "AwsAccountId"))
    Account.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: Address, name: "Address"))
    Account.add_member(:duns, ::Smithy::Schema::Shapes::MemberShape.new(target: DunsNumber, name: "Duns"))
    Account.type = Types::Account
    AccountReceiver.add_member(:alias, ::Smithy::Schema::Shapes::MemberShape.new(target: Alias, name: "Alias"))
    AccountReceiver.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "AwsAccountId", traits: {"smithy.api#required" => {}}))
    AccountReceiver.type = Types::AccountReceiver
    AccountSummary.add_member(:industry, ::Smithy::Schema::Shapes::MemberShape.new(target: Industry, name: "Industry"))
    AccountSummary.add_member(:other_industry, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OtherIndustry", traits: {"smithy.api#length" => {"max" => 255}}))
    AccountSummary.add_member(:company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "CompanyName", traits: {"smithy.api#length" => {"max" => 120}, "smithy.api#required" => {}}))
    AccountSummary.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteUrl, name: "WebsiteUrl"))
    AccountSummary.add_member(:address, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressSummary, name: "Address"))
    AccountSummary.type = Types::AccountSummary
    Address.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressPart, name: "City", traits: {"smithy.api#length" => {"max" => 255}}))
    Address.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressPart, name: "PostalCode", traits: {"smithy.api#length" => {"max" => 20}}))
    Address.add_member(:state_or_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressPart, name: "StateOrRegion"))
    Address.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "CountryCode"))
    Address.add_member(:street_address, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressPart, name: "StreetAddress", traits: {"smithy.api#length" => {"max" => 255}}))
    Address.type = Types::Address
    AddressSummary.add_member(:city, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressPart, name: "City", traits: {"smithy.api#length" => {"max" => 255}}))
    AddressSummary.add_member(:postal_code, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressPart, name: "PostalCode", traits: {"smithy.api#length" => {"max" => 20}}))
    AddressSummary.add_member(:state_or_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AddressPart, name: "StateOrRegion"))
    AddressSummary.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "CountryCode"))
    AddressSummary.type = Types::AddressSummary
    ApnPrograms.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    AssignOpportunityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    AssignOpportunityRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Identifier"}))
    AssignOpportunityRequest.add_member(:assignee, ::Smithy::Schema::Shapes::MemberShape.new(target: AssigneeContact, name: "Assignee", traits: {"smithy.api#required" => {}}))
    AssignOpportunityRequest.type = Types::AssignOpportunityRequest
    AssigneeContact.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email", traits: {"smithy.api#required" => {}}))
    AssigneeContact.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "FirstName", traits: {"smithy.api#length" => {"max" => 80}, "smithy.api#required" => {}}))
    AssigneeContact.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LastName", traits: {"smithy.api#length" => {"max" => 80}, "smithy.api#required" => {}}))
    AssigneeContact.add_member(:business_title, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTitle, name: "BusinessTitle", traits: {"smithy.api#required" => {}}))
    AssigneeContact.type = Types::AssigneeContact
    AssociateOpportunityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    AssociateOpportunityRequest.add_member(:opportunity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "OpportunityIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Identifier"}))
    AssociateOpportunityRequest.add_member(:related_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedEntityType, name: "RelatedEntityType", traits: {"smithy.api#required" => {}}))
    AssociateOpportunityRequest.add_member(:related_entity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RelatedEntityIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    AssociateOpportunityRequest.type = Types::AssociateOpportunityRequest
    AwsAccountIdOrAliasList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "member")
    AwsAccountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "member")
    AwsClosedLostReason.add_member(:administrative, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADMINISTRATIVE", traits: {"smithy.api#enumValue" => "Administrative"}))
    AwsClosedLostReason.add_member(:business_associate_agreement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_ASSOCIATE_AGREEMENT", traits: {"smithy.api#enumValue" => "Business Associate Agreement"}))
    AwsClosedLostReason.add_member(:company_acquired_dissolved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPANY_ACQUIRED_DISSOLVED", traits: {"smithy.api#enumValue" => "Company Acquired/Dissolved"}))
    AwsClosedLostReason.add_member(:competitive_offering, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPETITIVE_OFFERING", traits: {"smithy.api#enumValue" => "Competitive Offering"}))
    AwsClosedLostReason.add_member(:customer_data_requirement, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_DATA_REQUIREMENT", traits: {"smithy.api#enumValue" => "Customer Data Requirement"}))
    AwsClosedLostReason.add_member(:customer_deficiency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_DEFICIENCY", traits: {"smithy.api#enumValue" => "Customer Deficiency"}))
    AwsClosedLostReason.add_member(:customer_experience, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_EXPERIENCE", traits: {"smithy.api#enumValue" => "Customer Experience"}))
    AwsClosedLostReason.add_member(:delay_cancellation_of_project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELAY_CANCELLATION_OF_PROJECT", traits: {"smithy.api#enumValue" => "Delay / Cancellation of Project"}))
    AwsClosedLostReason.add_member(:duplicate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE", traits: {"smithy.api#enumValue" => "Duplicate"}))
    AwsClosedLostReason.add_member(:duplicate_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_OPPORTUNITY", traits: {"smithy.api#enumValue" => "Duplicate Opportunity"}))
    AwsClosedLostReason.add_member(:executive_blocker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXECUTIVE_BLOCKER", traits: {"smithy.api#enumValue" => "Executive Blocker"}))
    AwsClosedLostReason.add_member(:failed_vetting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED_VETTING", traits: {"smithy.api#enumValue" => "Failed Vetting"}))
    AwsClosedLostReason.add_member(:feature_limitation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FEATURE_LIMITATION", traits: {"smithy.api#enumValue" => "Feature Limitation"}))
    AwsClosedLostReason.add_member(:financial_commercial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINANCIAL_COMMERCIAL", traits: {"smithy.api#enumValue" => "Financial/Commercial"}))
    AwsClosedLostReason.add_member(:insufficient_amazon_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_AMAZON_VALUE", traits: {"smithy.api#enumValue" => "Insufficient Amazon Value"}))
    AwsClosedLostReason.add_member(:insufficient_aws_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSUFFICIENT_AWS_VALUE", traits: {"smithy.api#enumValue" => "Insufficient AWS Value"}))
    AwsClosedLostReason.add_member(:international_constraints, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNATIONAL_CONSTRAINTS", traits: {"smithy.api#enumValue" => "International Constraints"}))
    AwsClosedLostReason.add_member(:legal_tax_regulatory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGAL_TAX_REGULATORY", traits: {"smithy.api#enumValue" => "Legal / Tax / Regulatory"}))
    AwsClosedLostReason.add_member(:legal_terms_and_conditions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGAL_TERMS_AND_CONDITIONS", traits: {"smithy.api#enumValue" => "Legal Terms and Conditions"}))
    AwsClosedLostReason.add_member(:lost_to_competitor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR", traits: {"smithy.api#enumValue" => "Lost to Competitor"}))
    AwsClosedLostReason.add_member(:lost_to_competitor_google, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR_GOOGLE", traits: {"smithy.api#enumValue" => "Lost to Competitor - Google"}))
    AwsClosedLostReason.add_member(:lost_to_competitor_microsoft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR_MICROSOFT", traits: {"smithy.api#enumValue" => "Lost to Competitor - Microsoft"}))
    AwsClosedLostReason.add_member(:lost_to_competitor_other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR_OTHER", traits: {"smithy.api#enumValue" => "Lost to Competitor - Other"}))
    AwsClosedLostReason.add_member(:lost_to_competitor_rackspace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR_RACKSPACE", traits: {"smithy.api#enumValue" => "Lost to Competitor - Rackspace"}))
    AwsClosedLostReason.add_member(:lost_to_competitor_softlayer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR_SOFTLAYER", traits: {"smithy.api#enumValue" => "Lost to Competitor - SoftLayer"}))
    AwsClosedLostReason.add_member(:lost_to_competitor_vmware, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR_VMWARE", traits: {"smithy.api#enumValue" => "Lost to Competitor - VMWare"}))
    AwsClosedLostReason.add_member(:no_customer_reference, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_CUSTOMER_REFERENCE", traits: {"smithy.api#enumValue" => "No Customer Reference"}))
    AwsClosedLostReason.add_member(:no_integration_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_INTEGRATION_RESOURCES", traits: {"smithy.api#enumValue" => "No Integration Resources"}))
    AwsClosedLostReason.add_member(:no_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_OPPORTUNITY", traits: {"smithy.api#enumValue" => "No Opportunity"}))
    AwsClosedLostReason.add_member(:no_perceived_value_of_mp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_PERCEIVED_VALUE_OF_MP", traits: {"smithy.api#enumValue" => "No Perceived Value of MP"}))
    AwsClosedLostReason.add_member(:no_response, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_RESPONSE", traits: {"smithy.api#enumValue" => "No Response"}))
    AwsClosedLostReason.add_member(:not_committed_to_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_COMMITTED_TO_AWS", traits: {"smithy.api#enumValue" => "Not Committed to AWS"}))
    AwsClosedLostReason.add_member(:no_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_UPDATE", traits: {"smithy.api#enumValue" => "No Update"}))
    AwsClosedLostReason.add_member(:on_premises_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_PREMISES_DEPLOYMENT", traits: {"smithy.api#enumValue" => "On Premises Deployment"}))
    AwsClosedLostReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "Other"}))
    AwsClosedLostReason.add_member(:other_details_in_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER_DETAILS_IN_DESCRIPTION", traits: {"smithy.api#enumValue" => "Other (Details in Description)"}))
    AwsClosedLostReason.add_member(:partner_gap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTNER_GAP", traits: {"smithy.api#enumValue" => "Partner Gap"}))
    AwsClosedLostReason.add_member(:past_due, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAST_DUE", traits: {"smithy.api#enumValue" => "Past Due"}))
    AwsClosedLostReason.add_member(:people_relationship_governance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PEOPLE_RELATIONSHIP_GOVERNANCE", traits: {"smithy.api#enumValue" => "People/Relationship/Governance"}))
    AwsClosedLostReason.add_member(:platform_technology_limitation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLATFORM_TECHNOLOGY_LIMITATION", traits: {"smithy.api#enumValue" => "Platform Technology Limitation"}))
    AwsClosedLostReason.add_member(:preference_for_competitor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PREFERENCE_FOR_COMPETITOR", traits: {"smithy.api#enumValue" => "Preference for Competitor"}))
    AwsClosedLostReason.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICE", traits: {"smithy.api#enumValue" => "Price"}))
    AwsClosedLostReason.add_member(:product_technology, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCT_TECHNOLOGY", traits: {"smithy.api#enumValue" => "Product/Technology"}))
    AwsClosedLostReason.add_member(:product_not_on_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCT_NOT_ON_AWS", traits: {"smithy.api#enumValue" => "Product Not on AWS"}))
    AwsClosedLostReason.add_member(:security_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_COMPLIANCE", traits: {"smithy.api#enumValue" => "Security / Compliance"}))
    AwsClosedLostReason.add_member(:self_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF_SERVICE", traits: {"smithy.api#enumValue" => "Self-Service"}))
    AwsClosedLostReason.add_member(:technical_limitations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TECHNICAL_LIMITATIONS", traits: {"smithy.api#enumValue" => "Technical Limitations"}))
    AwsClosedLostReason.add_member(:term_sheet_impasse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERM_SHEET_IMPASSE", traits: {"smithy.api#enumValue" => "Term Sheet Impasse"}))
    AwsFundingUsed.add_member(:yes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YES", traits: {"smithy.api#enumValue" => "Yes"}))
    AwsFundingUsed.add_member(:no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO", traits: {"smithy.api#enumValue" => "No"}))
    AwsMarketplaceOfferIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AwsMarketplaceOfferIdentifier, name: "member")
    AwsMemberBusinessTitle.add_member(:aws_sales_rep, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_SALES_REP", traits: {"smithy.api#enumValue" => "AWSSalesRep"}))
    AwsMemberBusinessTitle.add_member(:aws_account_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_ACCOUNT_OWNER", traits: {"smithy.api#enumValue" => "AWSAccountOwner"}))
    AwsMemberBusinessTitle.add_member(:wwpspdm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WWPSPDM", traits: {"smithy.api#enumValue" => "WWPSPDM"}))
    AwsMemberBusinessTitle.add_member(:pdm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PDM", traits: {"smithy.api#enumValue" => "PDM"}))
    AwsMemberBusinessTitle.add_member(:psm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PSM", traits: {"smithy.api#enumValue" => "PSM"}))
    AwsMemberBusinessTitle.add_member(:isvsm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISVSM", traits: {"smithy.api#enumValue" => "ISVSM"}))
    AwsOpportunityCustomer.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContactsList, name: "Contacts"))
    AwsOpportunityCustomer.type = Types::AwsOpportunityCustomer
    AwsOpportunityInsights.add_member(:next_best_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextBestActions"))
    AwsOpportunityInsights.add_member(:engagement_score, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementScore, name: "EngagementScore"))
    AwsOpportunityInsights.type = Types::AwsOpportunityInsights
    AwsOpportunityLifeCycle.add_member(:target_close_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "TargetCloseDate"))
    AwsOpportunityLifeCycle.add_member(:closed_lost_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsClosedLostReason, name: "ClosedLostReason"))
    AwsOpportunityLifeCycle.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsOpportunityStage, name: "Stage"))
    AwsOpportunityLifeCycle.add_member(:next_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiString, name: "NextSteps", traits: {"smithy.api#length" => {"max" => 255}}))
    AwsOpportunityLifeCycle.add_member(:next_steps_history, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNextStepsHistories, name: "NextStepsHistory", traits: {"smithy.api#length" => {"max" => 50}}))
    AwsOpportunityLifeCycle.type = Types::AwsOpportunityLifeCycle
    AwsOpportunityProject.add_member(:expected_customer_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedCustomerSpendList, name: "ExpectedCustomerSpend"))
    AwsOpportunityProject.type = Types::AwsOpportunityProject
    AwsOpportunityRelatedEntities.add_member(:aws_products, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsProductIdentifiers, name: "AwsProducts"))
    AwsOpportunityRelatedEntities.add_member(:solutions, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionIdentifiers, name: "Solutions"))
    AwsOpportunityRelatedEntities.type = Types::AwsOpportunityRelatedEntities
    AwsOpportunityStage.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "Not Started"}))
    AwsOpportunityStage.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "In Progress"}))
    AwsOpportunityStage.add_member(:prospect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROSPECT", traits: {"smithy.api#enumValue" => "Prospect"}))
    AwsOpportunityStage.add_member(:engaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENGAGED", traits: {"smithy.api#enumValue" => "Engaged"}))
    AwsOpportunityStage.add_member(:identified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTIFIED", traits: {"smithy.api#enumValue" => "Identified"}))
    AwsOpportunityStage.add_member(:qualify, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUALIFY", traits: {"smithy.api#enumValue" => "Qualify"}))
    AwsOpportunityStage.add_member(:research, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESEARCH", traits: {"smithy.api#enumValue" => "Research"}))
    AwsOpportunityStage.add_member(:seller_engaged, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELLER_ENGAGED", traits: {"smithy.api#enumValue" => "Seller Engaged"}))
    AwsOpportunityStage.add_member(:evaluating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EVALUATING", traits: {"smithy.api#enumValue" => "Evaluating"}))
    AwsOpportunityStage.add_member(:seller_registered, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELLER_REGISTERED", traits: {"smithy.api#enumValue" => "Seller Registered"}))
    AwsOpportunityStage.add_member(:term_sheet_negotiation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERM_SHEET_NEGOTIATION", traits: {"smithy.api#enumValue" => "Term Sheet Negotiation"}))
    AwsOpportunityStage.add_member(:contract_negotiation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTRACT_NEGOTIATION", traits: {"smithy.api#enumValue" => "Contract Negotiation"}))
    AwsOpportunityStage.add_member(:onboarding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONBOARDING", traits: {"smithy.api#enumValue" => "Onboarding"}))
    AwsOpportunityStage.add_member(:building_integration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILDING_INTEGRATION", traits: {"smithy.api#enumValue" => "Building Integration"}))
    AwsOpportunityStage.add_member(:qualified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUALIFIED", traits: {"smithy.api#enumValue" => "Qualified"}))
    AwsOpportunityStage.add_member(:on_hold, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_HOLD", traits: {"smithy.api#enumValue" => "On-hold"}))
    AwsOpportunityStage.add_member(:technical_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TECHNICAL_VALIDATION", traits: {"smithy.api#enumValue" => "Technical Validation"}))
    AwsOpportunityStage.add_member(:business_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_VALIDATION", traits: {"smithy.api#enumValue" => "Business Validation"}))
    AwsOpportunityStage.add_member(:committed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMITTED", traits: {"smithy.api#enumValue" => "Committed"}))
    AwsOpportunityStage.add_member(:launched, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAUNCHED", traits: {"smithy.api#enumValue" => "Launched"}))
    AwsOpportunityStage.add_member(:deferred_to_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFERRED_TO_PARTNER", traits: {"smithy.api#enumValue" => "Deferred to Partner"}))
    AwsOpportunityStage.add_member(:closed_lost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED_LOST", traits: {"smithy.api#enumValue" => "Closed Lost"}))
    AwsOpportunityStage.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    AwsOpportunityStage.add_member(:closed_incomplete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED_INCOMPLETE", traits: {"smithy.api#enumValue" => "Closed Incomplete"}))
    AwsOpportunityTeamMembersList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AwsTeamMember, name: "member")
    AwsProductIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AwsProductIdentifier, name: "member")
    AwsSubmission.add_member(:involvement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesInvolvementType, name: "InvolvementType", traits: {"smithy.api#required" => {}}))
    AwsSubmission.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: Visibility, name: "Visibility"))
    AwsSubmission.type = Types::AwsSubmission
    AwsTeamMember.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email"))
    AwsTeamMember.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "FirstName", traits: {"smithy.api#length" => {"max" => 80}}))
    AwsTeamMember.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LastName", traits: {"smithy.api#length" => {"max" => 80}}))
    AwsTeamMember.add_member(:business_title, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsMemberBusinessTitle, name: "BusinessTitle"))
    AwsTeamMember.type = Types::AwsTeamMember
    Channel.add_member(:aws_marketing_central, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MARKETING_CENTRAL", traits: {"smithy.api#enumValue" => "AWS Marketing Central"}))
    Channel.add_member(:content_syndication, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTENT_SYNDICATION", traits: {"smithy.api#enumValue" => "Content Syndication"}))
    Channel.add_member(:display, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISPLAY", traits: {"smithy.api#enumValue" => "Display"}))
    Channel.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL", traits: {"smithy.api#enumValue" => "Email"}))
    Channel.add_member(:live_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIVE_EVENT", traits: {"smithy.api#enumValue" => "Live Event"}))
    Channel.add_member(:out_of_home, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OUT_OF_HOME", traits: {"smithy.api#enumValue" => "Out Of Home (OOH)"}))
    Channel.add_member(:print, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRINT", traits: {"smithy.api#enumValue" => "Print"}))
    Channel.add_member(:search, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEARCH", traits: {"smithy.api#enumValue" => "Search"}))
    Channel.add_member(:social, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOCIAL", traits: {"smithy.api#enumValue" => "Social"}))
    Channel.add_member(:telemarketing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TELEMARKETING", traits: {"smithy.api#enumValue" => "Telemarketing"}))
    Channel.add_member(:tv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TV", traits: {"smithy.api#enumValue" => "TV"}))
    Channel.add_member(:video, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIDEO", traits: {"smithy.api#enumValue" => "Video"}))
    Channel.add_member(:virtual_event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VIRTUAL_EVENT", traits: {"smithy.api#enumValue" => "Virtual Event"}))
    Channels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, name: "member")
    ClosedLostReason.add_member(:customer_deficiency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_DEFICIENCY", traits: {"smithy.api#enumValue" => "Customer Deficiency"}))
    ClosedLostReason.add_member(:delay_cancellation_of_project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELAY_CANCELLATION_OF_PROJECT", traits: {"smithy.api#enumValue" => "Delay / Cancellation of Project"}))
    ClosedLostReason.add_member(:legal_tax_regulatory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LEGAL_TAX_REGULATORY", traits: {"smithy.api#enumValue" => "Legal / Tax / Regulatory"}))
    ClosedLostReason.add_member(:lost_to_competitor_google, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR_GOOGLE", traits: {"smithy.api#enumValue" => "Lost to Competitor - Google"}))
    ClosedLostReason.add_member(:lost_to_competitor_microsoft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR_MICROSOFT", traits: {"smithy.api#enumValue" => "Lost to Competitor - Microsoft"}))
    ClosedLostReason.add_member(:lost_to_competitor_softlayer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR_SOFTLAYER", traits: {"smithy.api#enumValue" => "Lost to Competitor - SoftLayer"}))
    ClosedLostReason.add_member(:lost_to_competitor_vmware, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR_VMWARE", traits: {"smithy.api#enumValue" => "Lost to Competitor - VMWare"}))
    ClosedLostReason.add_member(:lost_to_competitor_other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOST_TO_COMPETITOR_OTHER", traits: {"smithy.api#enumValue" => "Lost to Competitor - Other"}))
    ClosedLostReason.add_member(:no_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_OPPORTUNITY", traits: {"smithy.api#enumValue" => "No Opportunity"}))
    ClosedLostReason.add_member(:on_premises_deployment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_PREMISES_DEPLOYMENT", traits: {"smithy.api#enumValue" => "On Premises Deployment"}))
    ClosedLostReason.add_member(:partner_gap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTNER_GAP", traits: {"smithy.api#enumValue" => "Partner Gap"}))
    ClosedLostReason.add_member(:price, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRICE", traits: {"smithy.api#enumValue" => "Price"}))
    ClosedLostReason.add_member(:security_compliance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_COMPLIANCE", traits: {"smithy.api#enumValue" => "Security / Compliance"}))
    ClosedLostReason.add_member(:technical_limitations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TECHNICAL_LIMITATIONS", traits: {"smithy.api#enumValue" => "Technical Limitations"}))
    ClosedLostReason.add_member(:customer_experience, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_EXPERIENCE", traits: {"smithy.api#enumValue" => "Customer Experience"}))
    ClosedLostReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "Other"}))
    ClosedLostReason.add_member(:peoplerelationshipgovernance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PEOPLERELATIONSHIPGOVERNANCE", traits: {"smithy.api#enumValue" => "People/Relationship/Governance"}))
    ClosedLostReason.add_member(:producttechnology, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRODUCTTECHNOLOGY", traits: {"smithy.api#enumValue" => "Product/Technology"}))
    ClosedLostReason.add_member(:financialcommercial, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINANCIALCOMMERCIAL", traits: {"smithy.api#enumValue" => "Financial/Commercial"}))
    CompetitorName.add_member(:oracle_cloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ORACLE_CLOUD", traits: {"smithy.api#enumValue" => "Oracle Cloud"}))
    CompetitorName.add_member(:on_prem, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_PREM", traits: {"smithy.api#enumValue" => "On-Prem"}))
    CompetitorName.add_member(:co_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO_LOCATION", traits: {"smithy.api#enumValue" => "Co-location"}))
    CompetitorName.add_member(:akamai, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AKAMAI", traits: {"smithy.api#enumValue" => "Akamai"}))
    CompetitorName.add_member(:alicloud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALICLOUD", traits: {"smithy.api#enumValue" => "AliCloud"}))
    CompetitorName.add_member(:google_cloud_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOOGLE_CLOUD_PLATFORM", traits: {"smithy.api#enumValue" => "Google Cloud Platform"}))
    CompetitorName.add_member(:ibm_softlayer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IBM_SOFTLAYER", traits: {"smithy.api#enumValue" => "IBM Softlayer"}))
    CompetitorName.add_member(:microsoft_azure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MICROSOFT_AZURE", traits: {"smithy.api#enumValue" => "Microsoft Azure"}))
    CompetitorName.add_member(:other_cost_optimization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER_COST_OPTIMIZATION", traits: {"smithy.api#enumValue" => "Other- Cost Optimization"}))
    CompetitorName.add_member(:no_competition, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_COMPETITION", traits: {"smithy.api#enumValue" => "No Competition"}))
    CompetitorName.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "*Other"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ConflictException.type = Types::ConflictException
    Contact.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: Email, name: "Email"))
    Contact.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "FirstName", traits: {"smithy.api#length" => {"max" => 80}}))
    Contact.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LastName", traits: {"smithy.api#length" => {"max" => 80}}))
    Contact.add_member(:business_title, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTitle, name: "BusinessTitle"))
    Contact.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "Phone"))
    Contact.type = Types::Contact
    CountryCode.add_member(:us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US", traits: {"smithy.api#enumValue" => "US"}))
    CountryCode.add_member(:af, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AF", traits: {"smithy.api#enumValue" => "AF"}))
    CountryCode.add_member(:ax, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AX", traits: {"smithy.api#enumValue" => "AX"}))
    CountryCode.add_member(:al, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AL", traits: {"smithy.api#enumValue" => "AL"}))
    CountryCode.add_member(:dz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DZ", traits: {"smithy.api#enumValue" => "DZ"}))
    CountryCode.add_member(:as, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AS", traits: {"smithy.api#enumValue" => "AS"}))
    CountryCode.add_member(:ad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AD", traits: {"smithy.api#enumValue" => "AD"}))
    CountryCode.add_member(:ao, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AO", traits: {"smithy.api#enumValue" => "AO"}))
    CountryCode.add_member(:ai, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AI", traits: {"smithy.api#enumValue" => "AI"}))
    CountryCode.add_member(:aq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AQ", traits: {"smithy.api#enumValue" => "AQ"}))
    CountryCode.add_member(:ag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AG", traits: {"smithy.api#enumValue" => "AG"}))
    CountryCode.add_member(:ar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AR", traits: {"smithy.api#enumValue" => "AR"}))
    CountryCode.add_member(:am, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AM", traits: {"smithy.api#enumValue" => "AM"}))
    CountryCode.add_member(:aw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AW", traits: {"smithy.api#enumValue" => "AW"}))
    CountryCode.add_member(:au, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AU", traits: {"smithy.api#enumValue" => "AU"}))
    CountryCode.add_member(:at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AT", traits: {"smithy.api#enumValue" => "AT"}))
    CountryCode.add_member(:az, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZ", traits: {"smithy.api#enumValue" => "AZ"}))
    CountryCode.add_member(:bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BS", traits: {"smithy.api#enumValue" => "BS"}))
    CountryCode.add_member(:bh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BH", traits: {"smithy.api#enumValue" => "BH"}))
    CountryCode.add_member(:bd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BD", traits: {"smithy.api#enumValue" => "BD"}))
    CountryCode.add_member(:bb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BB", traits: {"smithy.api#enumValue" => "BB"}))
    CountryCode.add_member(:by, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BY", traits: {"smithy.api#enumValue" => "BY"}))
    CountryCode.add_member(:be, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BE", traits: {"smithy.api#enumValue" => "BE"}))
    CountryCode.add_member(:bz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BZ", traits: {"smithy.api#enumValue" => "BZ"}))
    CountryCode.add_member(:bj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BJ", traits: {"smithy.api#enumValue" => "BJ"}))
    CountryCode.add_member(:bm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BM", traits: {"smithy.api#enumValue" => "BM"}))
    CountryCode.add_member(:bt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BT", traits: {"smithy.api#enumValue" => "BT"}))
    CountryCode.add_member(:bo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BO", traits: {"smithy.api#enumValue" => "BO"}))
    CountryCode.add_member(:bq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BQ", traits: {"smithy.api#enumValue" => "BQ"}))
    CountryCode.add_member(:ba, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BA", traits: {"smithy.api#enumValue" => "BA"}))
    CountryCode.add_member(:bw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BW", traits: {"smithy.api#enumValue" => "BW"}))
    CountryCode.add_member(:bv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BV", traits: {"smithy.api#enumValue" => "BV"}))
    CountryCode.add_member(:br, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BR", traits: {"smithy.api#enumValue" => "BR"}))
    CountryCode.add_member(:io, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IO", traits: {"smithy.api#enumValue" => "IO"}))
    CountryCode.add_member(:bn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BN", traits: {"smithy.api#enumValue" => "BN"}))
    CountryCode.add_member(:bg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BG", traits: {"smithy.api#enumValue" => "BG"}))
    CountryCode.add_member(:bf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BF", traits: {"smithy.api#enumValue" => "BF"}))
    CountryCode.add_member(:bi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BI", traits: {"smithy.api#enumValue" => "BI"}))
    CountryCode.add_member(:kh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KH", traits: {"smithy.api#enumValue" => "KH"}))
    CountryCode.add_member(:cm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CM", traits: {"smithy.api#enumValue" => "CM"}))
    CountryCode.add_member(:ca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CA", traits: {"smithy.api#enumValue" => "CA"}))
    CountryCode.add_member(:cv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CV", traits: {"smithy.api#enumValue" => "CV"}))
    CountryCode.add_member(:ky, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KY", traits: {"smithy.api#enumValue" => "KY"}))
    CountryCode.add_member(:cf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CF", traits: {"smithy.api#enumValue" => "CF"}))
    CountryCode.add_member(:td, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TD", traits: {"smithy.api#enumValue" => "TD"}))
    CountryCode.add_member(:cl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CL", traits: {"smithy.api#enumValue" => "CL"}))
    CountryCode.add_member(:cn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CN", traits: {"smithy.api#enumValue" => "CN"}))
    CountryCode.add_member(:cx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CX", traits: {"smithy.api#enumValue" => "CX"}))
    CountryCode.add_member(:cc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CC", traits: {"smithy.api#enumValue" => "CC"}))
    CountryCode.add_member(:co, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO", traits: {"smithy.api#enumValue" => "CO"}))
    CountryCode.add_member(:km, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KM", traits: {"smithy.api#enumValue" => "KM"}))
    CountryCode.add_member(:cg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CG", traits: {"smithy.api#enumValue" => "CG"}))
    CountryCode.add_member(:ck, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CK", traits: {"smithy.api#enumValue" => "CK"}))
    CountryCode.add_member(:cr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CR", traits: {"smithy.api#enumValue" => "CR"}))
    CountryCode.add_member(:ci, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CI", traits: {"smithy.api#enumValue" => "CI"}))
    CountryCode.add_member(:hr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HR", traits: {"smithy.api#enumValue" => "HR"}))
    CountryCode.add_member(:cu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CU", traits: {"smithy.api#enumValue" => "CU"}))
    CountryCode.add_member(:cw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CW", traits: {"smithy.api#enumValue" => "CW"}))
    CountryCode.add_member(:cy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CY", traits: {"smithy.api#enumValue" => "CY"}))
    CountryCode.add_member(:cz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CZ", traits: {"smithy.api#enumValue" => "CZ"}))
    CountryCode.add_member(:cd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CD", traits: {"smithy.api#enumValue" => "CD"}))
    CountryCode.add_member(:dk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DK", traits: {"smithy.api#enumValue" => "DK"}))
    CountryCode.add_member(:dj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DJ", traits: {"smithy.api#enumValue" => "DJ"}))
    CountryCode.add_member(:dm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DM", traits: {"smithy.api#enumValue" => "DM"}))
    CountryCode.add_member(:do, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DO", traits: {"smithy.api#enumValue" => "DO"}))
    CountryCode.add_member(:ec, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC", traits: {"smithy.api#enumValue" => "EC"}))
    CountryCode.add_member(:eg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EG", traits: {"smithy.api#enumValue" => "EG"}))
    CountryCode.add_member(:sv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SV", traits: {"smithy.api#enumValue" => "SV"}))
    CountryCode.add_member(:gq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GQ", traits: {"smithy.api#enumValue" => "GQ"}))
    CountryCode.add_member(:er, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ER", traits: {"smithy.api#enumValue" => "ER"}))
    CountryCode.add_member(:ee, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EE", traits: {"smithy.api#enumValue" => "EE"}))
    CountryCode.add_member(:et, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ET", traits: {"smithy.api#enumValue" => "ET"}))
    CountryCode.add_member(:fk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FK", traits: {"smithy.api#enumValue" => "FK"}))
    CountryCode.add_member(:fo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FO", traits: {"smithy.api#enumValue" => "FO"}))
    CountryCode.add_member(:fj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FJ", traits: {"smithy.api#enumValue" => "FJ"}))
    CountryCode.add_member(:fi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FI", traits: {"smithy.api#enumValue" => "FI"}))
    CountryCode.add_member(:fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FR", traits: {"smithy.api#enumValue" => "FR"}))
    CountryCode.add_member(:gf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GF", traits: {"smithy.api#enumValue" => "GF"}))
    CountryCode.add_member(:pf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PF", traits: {"smithy.api#enumValue" => "PF"}))
    CountryCode.add_member(:tf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TF", traits: {"smithy.api#enumValue" => "TF"}))
    CountryCode.add_member(:ga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GA", traits: {"smithy.api#enumValue" => "GA"}))
    CountryCode.add_member(:gm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GM", traits: {"smithy.api#enumValue" => "GM"}))
    CountryCode.add_member(:ge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GE", traits: {"smithy.api#enumValue" => "GE"}))
    CountryCode.add_member(:de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DE", traits: {"smithy.api#enumValue" => "DE"}))
    CountryCode.add_member(:gh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GH", traits: {"smithy.api#enumValue" => "GH"}))
    CountryCode.add_member(:gi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GI", traits: {"smithy.api#enumValue" => "GI"}))
    CountryCode.add_member(:gr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GR", traits: {"smithy.api#enumValue" => "GR"}))
    CountryCode.add_member(:gl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GL", traits: {"smithy.api#enumValue" => "GL"}))
    CountryCode.add_member(:gd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GD", traits: {"smithy.api#enumValue" => "GD"}))
    CountryCode.add_member(:gp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GP", traits: {"smithy.api#enumValue" => "GP"}))
    CountryCode.add_member(:gu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GU", traits: {"smithy.api#enumValue" => "GU"}))
    CountryCode.add_member(:gt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GT", traits: {"smithy.api#enumValue" => "GT"}))
    CountryCode.add_member(:gg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GG", traits: {"smithy.api#enumValue" => "GG"}))
    CountryCode.add_member(:gn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GN", traits: {"smithy.api#enumValue" => "GN"}))
    CountryCode.add_member(:gw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GW", traits: {"smithy.api#enumValue" => "GW"}))
    CountryCode.add_member(:gy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GY", traits: {"smithy.api#enumValue" => "GY"}))
    CountryCode.add_member(:ht, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HT", traits: {"smithy.api#enumValue" => "HT"}))
    CountryCode.add_member(:hm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HM", traits: {"smithy.api#enumValue" => "HM"}))
    CountryCode.add_member(:va, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VA", traits: {"smithy.api#enumValue" => "VA"}))
    CountryCode.add_member(:hn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HN", traits: {"smithy.api#enumValue" => "HN"}))
    CountryCode.add_member(:hk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HK", traits: {"smithy.api#enumValue" => "HK"}))
    CountryCode.add_member(:hu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HU", traits: {"smithy.api#enumValue" => "HU"}))
    CountryCode.add_member(:is, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IS", traits: {"smithy.api#enumValue" => "IS"}))
    CountryCode.add_member(:in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN", traits: {"smithy.api#enumValue" => "IN"}))
    CountryCode.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ID", traits: {"smithy.api#enumValue" => "ID"}))
    CountryCode.add_member(:ir, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IR", traits: {"smithy.api#enumValue" => "IR"}))
    CountryCode.add_member(:iq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IQ", traits: {"smithy.api#enumValue" => "IQ"}))
    CountryCode.add_member(:ie, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IE", traits: {"smithy.api#enumValue" => "IE"}))
    CountryCode.add_member(:im, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IM", traits: {"smithy.api#enumValue" => "IM"}))
    CountryCode.add_member(:il, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IL", traits: {"smithy.api#enumValue" => "IL"}))
    CountryCode.add_member(:it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IT", traits: {"smithy.api#enumValue" => "IT"}))
    CountryCode.add_member(:jm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JM", traits: {"smithy.api#enumValue" => "JM"}))
    CountryCode.add_member(:jp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JP", traits: {"smithy.api#enumValue" => "JP"}))
    CountryCode.add_member(:je, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JE", traits: {"smithy.api#enumValue" => "JE"}))
    CountryCode.add_member(:jo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JO", traits: {"smithy.api#enumValue" => "JO"}))
    CountryCode.add_member(:kz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KZ", traits: {"smithy.api#enumValue" => "KZ"}))
    CountryCode.add_member(:ke, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KE", traits: {"smithy.api#enumValue" => "KE"}))
    CountryCode.add_member(:ki, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KI", traits: {"smithy.api#enumValue" => "KI"}))
    CountryCode.add_member(:kr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KR", traits: {"smithy.api#enumValue" => "KR"}))
    CountryCode.add_member(:kw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KW", traits: {"smithy.api#enumValue" => "KW"}))
    CountryCode.add_member(:kg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KG", traits: {"smithy.api#enumValue" => "KG"}))
    CountryCode.add_member(:la, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LA", traits: {"smithy.api#enumValue" => "LA"}))
    CountryCode.add_member(:lv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LV", traits: {"smithy.api#enumValue" => "LV"}))
    CountryCode.add_member(:lb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LB", traits: {"smithy.api#enumValue" => "LB"}))
    CountryCode.add_member(:ls, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LS", traits: {"smithy.api#enumValue" => "LS"}))
    CountryCode.add_member(:lr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LR", traits: {"smithy.api#enumValue" => "LR"}))
    CountryCode.add_member(:ly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LY", traits: {"smithy.api#enumValue" => "LY"}))
    CountryCode.add_member(:li, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LI", traits: {"smithy.api#enumValue" => "LI"}))
    CountryCode.add_member(:lt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LT", traits: {"smithy.api#enumValue" => "LT"}))
    CountryCode.add_member(:lu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LU", traits: {"smithy.api#enumValue" => "LU"}))
    CountryCode.add_member(:mo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MO", traits: {"smithy.api#enumValue" => "MO"}))
    CountryCode.add_member(:mk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MK", traits: {"smithy.api#enumValue" => "MK"}))
    CountryCode.add_member(:mg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MG", traits: {"smithy.api#enumValue" => "MG"}))
    CountryCode.add_member(:mw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MW", traits: {"smithy.api#enumValue" => "MW"}))
    CountryCode.add_member(:my, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MY", traits: {"smithy.api#enumValue" => "MY"}))
    CountryCode.add_member(:mv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MV", traits: {"smithy.api#enumValue" => "MV"}))
    CountryCode.add_member(:ml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ML", traits: {"smithy.api#enumValue" => "ML"}))
    CountryCode.add_member(:mt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MT", traits: {"smithy.api#enumValue" => "MT"}))
    CountryCode.add_member(:mh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MH", traits: {"smithy.api#enumValue" => "MH"}))
    CountryCode.add_member(:mq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MQ", traits: {"smithy.api#enumValue" => "MQ"}))
    CountryCode.add_member(:mr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MR", traits: {"smithy.api#enumValue" => "MR"}))
    CountryCode.add_member(:mu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MU", traits: {"smithy.api#enumValue" => "MU"}))
    CountryCode.add_member(:yt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YT", traits: {"smithy.api#enumValue" => "YT"}))
    CountryCode.add_member(:mx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MX", traits: {"smithy.api#enumValue" => "MX"}))
    CountryCode.add_member(:fm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FM", traits: {"smithy.api#enumValue" => "FM"}))
    CountryCode.add_member(:md, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MD", traits: {"smithy.api#enumValue" => "MD"}))
    CountryCode.add_member(:mc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MC", traits: {"smithy.api#enumValue" => "MC"}))
    CountryCode.add_member(:mn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MN", traits: {"smithy.api#enumValue" => "MN"}))
    CountryCode.add_member(:me, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ME", traits: {"smithy.api#enumValue" => "ME"}))
    CountryCode.add_member(:ms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MS", traits: {"smithy.api#enumValue" => "MS"}))
    CountryCode.add_member(:ma, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MA", traits: {"smithy.api#enumValue" => "MA"}))
    CountryCode.add_member(:mz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MZ", traits: {"smithy.api#enumValue" => "MZ"}))
    CountryCode.add_member(:mm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MM", traits: {"smithy.api#enumValue" => "MM"}))
    CountryCode.add_member(:na, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NA", traits: {"smithy.api#enumValue" => "NA"}))
    CountryCode.add_member(:nr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NR", traits: {"smithy.api#enumValue" => "NR"}))
    CountryCode.add_member(:np, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NP", traits: {"smithy.api#enumValue" => "NP"}))
    CountryCode.add_member(:nl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NL", traits: {"smithy.api#enumValue" => "NL"}))
    CountryCode.add_member(:an, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AN", traits: {"smithy.api#enumValue" => "AN"}))
    CountryCode.add_member(:nc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NC", traits: {"smithy.api#enumValue" => "NC"}))
    CountryCode.add_member(:nz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NZ", traits: {"smithy.api#enumValue" => "NZ"}))
    CountryCode.add_member(:ni, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NI", traits: {"smithy.api#enumValue" => "NI"}))
    CountryCode.add_member(:ne, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NE", traits: {"smithy.api#enumValue" => "NE"}))
    CountryCode.add_member(:ng, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NG", traits: {"smithy.api#enumValue" => "NG"}))
    CountryCode.add_member(:nu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NU", traits: {"smithy.api#enumValue" => "NU"}))
    CountryCode.add_member(:nf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NF", traits: {"smithy.api#enumValue" => "NF"}))
    CountryCode.add_member(:mp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MP", traits: {"smithy.api#enumValue" => "MP"}))
    CountryCode.add_member(:no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO", traits: {"smithy.api#enumValue" => "NO"}))
    CountryCode.add_member(:om, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OM", traits: {"smithy.api#enumValue" => "OM"}))
    CountryCode.add_member(:pk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PK", traits: {"smithy.api#enumValue" => "PK"}))
    CountryCode.add_member(:pw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PW", traits: {"smithy.api#enumValue" => "PW"}))
    CountryCode.add_member(:ps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PS", traits: {"smithy.api#enumValue" => "PS"}))
    CountryCode.add_member(:pa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PA", traits: {"smithy.api#enumValue" => "PA"}))
    CountryCode.add_member(:pg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PG", traits: {"smithy.api#enumValue" => "PG"}))
    CountryCode.add_member(:py, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PY", traits: {"smithy.api#enumValue" => "PY"}))
    CountryCode.add_member(:pe, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PE", traits: {"smithy.api#enumValue" => "PE"}))
    CountryCode.add_member(:ph, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PH", traits: {"smithy.api#enumValue" => "PH"}))
    CountryCode.add_member(:pn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PN", traits: {"smithy.api#enumValue" => "PN"}))
    CountryCode.add_member(:pl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PL", traits: {"smithy.api#enumValue" => "PL"}))
    CountryCode.add_member(:pt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PT", traits: {"smithy.api#enumValue" => "PT"}))
    CountryCode.add_member(:pr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PR", traits: {"smithy.api#enumValue" => "PR"}))
    CountryCode.add_member(:qa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QA", traits: {"smithy.api#enumValue" => "QA"}))
    CountryCode.add_member(:re, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RE", traits: {"smithy.api#enumValue" => "RE"}))
    CountryCode.add_member(:ro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RO", traits: {"smithy.api#enumValue" => "RO"}))
    CountryCode.add_member(:ru, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RU", traits: {"smithy.api#enumValue" => "RU"}))
    CountryCode.add_member(:rw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RW", traits: {"smithy.api#enumValue" => "RW"}))
    CountryCode.add_member(:bl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BL", traits: {"smithy.api#enumValue" => "BL"}))
    CountryCode.add_member(:sh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SH", traits: {"smithy.api#enumValue" => "SH"}))
    CountryCode.add_member(:kn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KN", traits: {"smithy.api#enumValue" => "KN"}))
    CountryCode.add_member(:lc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LC", traits: {"smithy.api#enumValue" => "LC"}))
    CountryCode.add_member(:mf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MF", traits: {"smithy.api#enumValue" => "MF"}))
    CountryCode.add_member(:pm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PM", traits: {"smithy.api#enumValue" => "PM"}))
    CountryCode.add_member(:vc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VC", traits: {"smithy.api#enumValue" => "VC"}))
    CountryCode.add_member(:ws, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WS", traits: {"smithy.api#enumValue" => "WS"}))
    CountryCode.add_member(:sm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SM", traits: {"smithy.api#enumValue" => "SM"}))
    CountryCode.add_member(:st, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ST", traits: {"smithy.api#enumValue" => "ST"}))
    CountryCode.add_member(:sa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SA", traits: {"smithy.api#enumValue" => "SA"}))
    CountryCode.add_member(:sn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SN", traits: {"smithy.api#enumValue" => "SN"}))
    CountryCode.add_member(:rs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RS", traits: {"smithy.api#enumValue" => "RS"}))
    CountryCode.add_member(:sc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SC", traits: {"smithy.api#enumValue" => "SC"}))
    CountryCode.add_member(:sl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SL", traits: {"smithy.api#enumValue" => "SL"}))
    CountryCode.add_member(:sg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SG", traits: {"smithy.api#enumValue" => "SG"}))
    CountryCode.add_member(:sx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SX", traits: {"smithy.api#enumValue" => "SX"}))
    CountryCode.add_member(:sk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SK", traits: {"smithy.api#enumValue" => "SK"}))
    CountryCode.add_member(:si, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SI", traits: {"smithy.api#enumValue" => "SI"}))
    CountryCode.add_member(:sb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SB", traits: {"smithy.api#enumValue" => "SB"}))
    CountryCode.add_member(:so, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SO", traits: {"smithy.api#enumValue" => "SO"}))
    CountryCode.add_member(:za, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZA", traits: {"smithy.api#enumValue" => "ZA"}))
    CountryCode.add_member(:gs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GS", traits: {"smithy.api#enumValue" => "GS"}))
    CountryCode.add_member(:ss, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SS", traits: {"smithy.api#enumValue" => "SS"}))
    CountryCode.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ES", traits: {"smithy.api#enumValue" => "ES"}))
    CountryCode.add_member(:lk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LK", traits: {"smithy.api#enumValue" => "LK"}))
    CountryCode.add_member(:sd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SD", traits: {"smithy.api#enumValue" => "SD"}))
    CountryCode.add_member(:sr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SR", traits: {"smithy.api#enumValue" => "SR"}))
    CountryCode.add_member(:sj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SJ", traits: {"smithy.api#enumValue" => "SJ"}))
    CountryCode.add_member(:sz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SZ", traits: {"smithy.api#enumValue" => "SZ"}))
    CountryCode.add_member(:se, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SE", traits: {"smithy.api#enumValue" => "SE"}))
    CountryCode.add_member(:ch, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CH", traits: {"smithy.api#enumValue" => "CH"}))
    CountryCode.add_member(:sy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SY", traits: {"smithy.api#enumValue" => "SY"}))
    CountryCode.add_member(:tw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TW", traits: {"smithy.api#enumValue" => "TW"}))
    CountryCode.add_member(:tj, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TJ", traits: {"smithy.api#enumValue" => "TJ"}))
    CountryCode.add_member(:tz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TZ", traits: {"smithy.api#enumValue" => "TZ"}))
    CountryCode.add_member(:th, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TH", traits: {"smithy.api#enumValue" => "TH"}))
    CountryCode.add_member(:tl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TL", traits: {"smithy.api#enumValue" => "TL"}))
    CountryCode.add_member(:tg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TG", traits: {"smithy.api#enumValue" => "TG"}))
    CountryCode.add_member(:tk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TK", traits: {"smithy.api#enumValue" => "TK"}))
    CountryCode.add_member(:to, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TO", traits: {"smithy.api#enumValue" => "TO"}))
    CountryCode.add_member(:tt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TT", traits: {"smithy.api#enumValue" => "TT"}))
    CountryCode.add_member(:tn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TN", traits: {"smithy.api#enumValue" => "TN"}))
    CountryCode.add_member(:tr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TR", traits: {"smithy.api#enumValue" => "TR"}))
    CountryCode.add_member(:tm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TM", traits: {"smithy.api#enumValue" => "TM"}))
    CountryCode.add_member(:tc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TC", traits: {"smithy.api#enumValue" => "TC"}))
    CountryCode.add_member(:tv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TV", traits: {"smithy.api#enumValue" => "TV"}))
    CountryCode.add_member(:ug, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UG", traits: {"smithy.api#enumValue" => "UG"}))
    CountryCode.add_member(:ua, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UA", traits: {"smithy.api#enumValue" => "UA"}))
    CountryCode.add_member(:ae, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AE", traits: {"smithy.api#enumValue" => "AE"}))
    CountryCode.add_member(:gb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GB", traits: {"smithy.api#enumValue" => "GB"}))
    CountryCode.add_member(:um, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UM", traits: {"smithy.api#enumValue" => "UM"}))
    CountryCode.add_member(:uy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UY", traits: {"smithy.api#enumValue" => "UY"}))
    CountryCode.add_member(:uz, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UZ", traits: {"smithy.api#enumValue" => "UZ"}))
    CountryCode.add_member(:vu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VU", traits: {"smithy.api#enumValue" => "VU"}))
    CountryCode.add_member(:ve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VE", traits: {"smithy.api#enumValue" => "VE"}))
    CountryCode.add_member(:vn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VN", traits: {"smithy.api#enumValue" => "VN"}))
    CountryCode.add_member(:vg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VG", traits: {"smithy.api#enumValue" => "VG"}))
    CountryCode.add_member(:vi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VI", traits: {"smithy.api#enumValue" => "VI"}))
    CountryCode.add_member(:wf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WF", traits: {"smithy.api#enumValue" => "WF"}))
    CountryCode.add_member(:eh, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EH", traits: {"smithy.api#enumValue" => "EH"}))
    CountryCode.add_member(:ye, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YE", traits: {"smithy.api#enumValue" => "YE"}))
    CountryCode.add_member(:zm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZM", traits: {"smithy.api#enumValue" => "ZM"}))
    CountryCode.add_member(:zw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZW", traits: {"smithy.api#enumValue" => "ZW"}))
    CreateEngagementInvitationRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreateEngagementInvitationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateEngagementInvitationRequest.add_member(:engagement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementIdentifier", traits: {"smithy.api#required" => {}}))
    CreateEngagementInvitationRequest.add_member(:invitation, ::Smithy::Schema::Shapes::MemberShape.new(target: Invitation, name: "Invitation", traits: {"smithy.api#required" => {}}))
    CreateEngagementInvitationRequest.type = Types::CreateEngagementInvitationRequest
    CreateEngagementInvitationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationIdentifier, name: "Id", traits: {"smithy.api#required" => {}}))
    CreateEngagementInvitationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationArn, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateEngagementInvitationResponse.type = Types::CreateEngagementInvitationResponse
    CreateEngagementRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreateEngagementRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#pattern" => "^[!-~]{1,64}$", "smithy.api#required" => {}}))
    CreateEngagementRequest.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementTitle, name: "Title", traits: {"smithy.api#required" => {}}))
    CreateEngagementRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementDescription, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateEngagementRequest.add_member(:contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementContexts, name: "Contexts"))
    CreateEngagementRequest.type = Types::CreateEngagementRequest
    CreateEngagementResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "Id"))
    CreateEngagementResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementArn, name: "Arn"))
    CreateEngagementResponse.type = Types::CreateEngagementResponse
    CreateOpportunityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreateOpportunityRequest.add_member(:primary_needs_from_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryNeedsFromAws, name: "PrimaryNeedsFromAws"))
    CreateOpportunityRequest.add_member(:national_security, ::Smithy::Schema::Shapes::MemberShape.new(target: NationalSecurity, name: "NationalSecurity"))
    CreateOpportunityRequest.add_member(:partner_opportunity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PartnerOpportunityIdentifier", traits: {"smithy.api#length" => {"max" => 64}}))
    CreateOpportunityRequest.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: Customer, name: "Customer"))
    CreateOpportunityRequest.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: Project, name: "Project"))
    CreateOpportunityRequest.add_member(:opportunity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityType, name: "OpportunityType"))
    CreateOpportunityRequest.add_member(:marketing, ::Smithy::Schema::Shapes::MemberShape.new(target: Marketing, name: "Marketing"))
    CreateOpportunityRequest.add_member(:software_revenue, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareRevenue, name: "SoftwareRevenue"))
    CreateOpportunityRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    CreateOpportunityRequest.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "LifeCycle"))
    CreateOpportunityRequest.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityOrigin, name: "Origin"))
    CreateOpportunityRequest.add_member(:opportunity_team, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerOpportunityTeamMembersList, name: "OpportunityTeam"))
    CreateOpportunityRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateOpportunityRequest.type = Types::CreateOpportunityRequest
    CreateOpportunityResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "Id", traits: {"smithy.api#required" => {}}))
    CreateOpportunityResponse.add_member(:partner_opportunity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PartnerOpportunityIdentifier"))
    CreateOpportunityResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedDate"))
    CreateOpportunityResponse.type = Types::CreateOpportunityResponse
    CreateResourceSnapshotJobRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreateResourceSnapshotJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#pattern" => "^[!-~]{1,64}$", "smithy.api#required" => {}}))
    CreateResourceSnapshotJobRequest.add_member(:engagement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementIdentifier", traits: {"smithy.api#required" => {}}))
    CreateResourceSnapshotJobRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    CreateResourceSnapshotJobRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#required" => {}}))
    CreateResourceSnapshotJobRequest.add_member(:resource_snapshot_template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTemplateName, name: "ResourceSnapshotTemplateIdentifier", traits: {"smithy.api#required" => {}}))
    CreateResourceSnapshotJobRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateResourceSnapshotJobRequest.type = Types::CreateResourceSnapshotJobRequest
    CreateResourceSnapshotJobResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobIdentifier, name: "Id"))
    CreateResourceSnapshotJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobArn, name: "Arn"))
    CreateResourceSnapshotJobResponse.type = Types::CreateResourceSnapshotJobResponse
    CreateResourceSnapshotRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    CreateResourceSnapshotRequest.add_member(:engagement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementIdentifier", traits: {"smithy.api#required" => {}}))
    CreateResourceSnapshotRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    CreateResourceSnapshotRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#required" => {}}))
    CreateResourceSnapshotRequest.add_member(:resource_snapshot_template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTemplateName, name: "ResourceSnapshotTemplateIdentifier", traits: {"smithy.api#required" => {}}))
    CreateResourceSnapshotRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#pattern" => "^[!-~]{1,64}$", "smithy.api#required" => {}}))
    CreateResourceSnapshotRequest.type = Types::CreateResourceSnapshotRequest
    CreateResourceSnapshotResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    CreateResourceSnapshotResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotRevision, name: "Revision"))
    CreateResourceSnapshotResponse.type = Types::CreateResourceSnapshotResponse
    CurrencyCode.add_member(:usd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USD", traits: {"smithy.api#enumValue" => "USD"}))
    CurrencyCode.add_member(:eur, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EUR", traits: {"smithy.api#enumValue" => "EUR"}))
    CurrencyCode.add_member(:gbp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GBP", traits: {"smithy.api#enumValue" => "GBP"}))
    CurrencyCode.add_member(:aud, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUD", traits: {"smithy.api#enumValue" => "AUD"}))
    CurrencyCode.add_member(:cad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAD", traits: {"smithy.api#enumValue" => "CAD"}))
    CurrencyCode.add_member(:cny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CNY", traits: {"smithy.api#enumValue" => "CNY"}))
    CurrencyCode.add_member(:nzd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NZD", traits: {"smithy.api#enumValue" => "NZD"}))
    CurrencyCode.add_member(:inr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INR", traits: {"smithy.api#enumValue" => "INR"}))
    CurrencyCode.add_member(:jpy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JPY", traits: {"smithy.api#enumValue" => "JPY"}))
    CurrencyCode.add_member(:chf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHF", traits: {"smithy.api#enumValue" => "CHF"}))
    CurrencyCode.add_member(:sek, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEK", traits: {"smithy.api#enumValue" => "SEK"}))
    CurrencyCode.add_member(:aed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AED", traits: {"smithy.api#enumValue" => "AED"}))
    CurrencyCode.add_member(:afn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AFN", traits: {"smithy.api#enumValue" => "AFN"}))
    CurrencyCode.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    CurrencyCode.add_member(:amd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMD", traits: {"smithy.api#enumValue" => "AMD"}))
    CurrencyCode.add_member(:ang, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ANG", traits: {"smithy.api#enumValue" => "ANG"}))
    CurrencyCode.add_member(:aoa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AOA", traits: {"smithy.api#enumValue" => "AOA"}))
    CurrencyCode.add_member(:ars, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARS", traits: {"smithy.api#enumValue" => "ARS"}))
    CurrencyCode.add_member(:awg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWG", traits: {"smithy.api#enumValue" => "AWG"}))
    CurrencyCode.add_member(:azn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AZN", traits: {"smithy.api#enumValue" => "AZN"}))
    CurrencyCode.add_member(:bam, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BAM", traits: {"smithy.api#enumValue" => "BAM"}))
    CurrencyCode.add_member(:bbd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BBD", traits: {"smithy.api#enumValue" => "BBD"}))
    CurrencyCode.add_member(:bdt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BDT", traits: {"smithy.api#enumValue" => "BDT"}))
    CurrencyCode.add_member(:bgn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BGN", traits: {"smithy.api#enumValue" => "BGN"}))
    CurrencyCode.add_member(:bhd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BHD", traits: {"smithy.api#enumValue" => "BHD"}))
    CurrencyCode.add_member(:bif, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BIF", traits: {"smithy.api#enumValue" => "BIF"}))
    CurrencyCode.add_member(:bmd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BMD", traits: {"smithy.api#enumValue" => "BMD"}))
    CurrencyCode.add_member(:bnd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BND", traits: {"smithy.api#enumValue" => "BND"}))
    CurrencyCode.add_member(:bob, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOB", traits: {"smithy.api#enumValue" => "BOB"}))
    CurrencyCode.add_member(:bov, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOV", traits: {"smithy.api#enumValue" => "BOV"}))
    CurrencyCode.add_member(:brl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BRL", traits: {"smithy.api#enumValue" => "BRL"}))
    CurrencyCode.add_member(:bsd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BSD", traits: {"smithy.api#enumValue" => "BSD"}))
    CurrencyCode.add_member(:btn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BTN", traits: {"smithy.api#enumValue" => "BTN"}))
    CurrencyCode.add_member(:bwp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BWP", traits: {"smithy.api#enumValue" => "BWP"}))
    CurrencyCode.add_member(:byn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYN", traits: {"smithy.api#enumValue" => "BYN"}))
    CurrencyCode.add_member(:bzd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BZD", traits: {"smithy.api#enumValue" => "BZD"}))
    CurrencyCode.add_member(:cdf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CDF", traits: {"smithy.api#enumValue" => "CDF"}))
    CurrencyCode.add_member(:che, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHE", traits: {"smithy.api#enumValue" => "CHE"}))
    CurrencyCode.add_member(:chw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHW", traits: {"smithy.api#enumValue" => "CHW"}))
    CurrencyCode.add_member(:clf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLF", traits: {"smithy.api#enumValue" => "CLF"}))
    CurrencyCode.add_member(:clp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLP", traits: {"smithy.api#enumValue" => "CLP"}))
    CurrencyCode.add_member(:cop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COP", traits: {"smithy.api#enumValue" => "COP"}))
    CurrencyCode.add_member(:cou, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COU", traits: {"smithy.api#enumValue" => "COU"}))
    CurrencyCode.add_member(:crc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CRC", traits: {"smithy.api#enumValue" => "CRC"}))
    CurrencyCode.add_member(:cuc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUC", traits: {"smithy.api#enumValue" => "CUC"}))
    CurrencyCode.add_member(:cup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUP", traits: {"smithy.api#enumValue" => "CUP"}))
    CurrencyCode.add_member(:cve, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CVE", traits: {"smithy.api#enumValue" => "CVE"}))
    CurrencyCode.add_member(:czk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CZK", traits: {"smithy.api#enumValue" => "CZK"}))
    CurrencyCode.add_member(:djf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DJF", traits: {"smithy.api#enumValue" => "DJF"}))
    CurrencyCode.add_member(:dkk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DKK", traits: {"smithy.api#enumValue" => "DKK"}))
    CurrencyCode.add_member(:dop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOP", traits: {"smithy.api#enumValue" => "DOP"}))
    CurrencyCode.add_member(:dzd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DZD", traits: {"smithy.api#enumValue" => "DZD"}))
    CurrencyCode.add_member(:egp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EGP", traits: {"smithy.api#enumValue" => "EGP"}))
    CurrencyCode.add_member(:ern, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERN", traits: {"smithy.api#enumValue" => "ERN"}))
    CurrencyCode.add_member(:etb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ETB", traits: {"smithy.api#enumValue" => "ETB"}))
    CurrencyCode.add_member(:fjd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FJD", traits: {"smithy.api#enumValue" => "FJD"}))
    CurrencyCode.add_member(:fkp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FKP", traits: {"smithy.api#enumValue" => "FKP"}))
    CurrencyCode.add_member(:gel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GEL", traits: {"smithy.api#enumValue" => "GEL"}))
    CurrencyCode.add_member(:ghs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GHS", traits: {"smithy.api#enumValue" => "GHS"}))
    CurrencyCode.add_member(:gip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIP", traits: {"smithy.api#enumValue" => "GIP"}))
    CurrencyCode.add_member(:gmd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GMD", traits: {"smithy.api#enumValue" => "GMD"}))
    CurrencyCode.add_member(:gnf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GNF", traits: {"smithy.api#enumValue" => "GNF"}))
    CurrencyCode.add_member(:gtq, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GTQ", traits: {"smithy.api#enumValue" => "GTQ"}))
    CurrencyCode.add_member(:gyd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GYD", traits: {"smithy.api#enumValue" => "GYD"}))
    CurrencyCode.add_member(:hkd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HKD", traits: {"smithy.api#enumValue" => "HKD"}))
    CurrencyCode.add_member(:hnl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HNL", traits: {"smithy.api#enumValue" => "HNL"}))
    CurrencyCode.add_member(:hrk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HRK", traits: {"smithy.api#enumValue" => "HRK"}))
    CurrencyCode.add_member(:htg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HTG", traits: {"smithy.api#enumValue" => "HTG"}))
    CurrencyCode.add_member(:huf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HUF", traits: {"smithy.api#enumValue" => "HUF"}))
    CurrencyCode.add_member(:idr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDR", traits: {"smithy.api#enumValue" => "IDR"}))
    CurrencyCode.add_member(:ils, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ILS", traits: {"smithy.api#enumValue" => "ILS"}))
    CurrencyCode.add_member(:iqd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IQD", traits: {"smithy.api#enumValue" => "IQD"}))
    CurrencyCode.add_member(:irr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IRR", traits: {"smithy.api#enumValue" => "IRR"}))
    CurrencyCode.add_member(:isk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ISK", traits: {"smithy.api#enumValue" => "ISK"}))
    CurrencyCode.add_member(:jmd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JMD", traits: {"smithy.api#enumValue" => "JMD"}))
    CurrencyCode.add_member(:jod, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JOD", traits: {"smithy.api#enumValue" => "JOD"}))
    CurrencyCode.add_member(:kes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KES", traits: {"smithy.api#enumValue" => "KES"}))
    CurrencyCode.add_member(:kgs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KGS", traits: {"smithy.api#enumValue" => "KGS"}))
    CurrencyCode.add_member(:khr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KHR", traits: {"smithy.api#enumValue" => "KHR"}))
    CurrencyCode.add_member(:kmf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMF", traits: {"smithy.api#enumValue" => "KMF"}))
    CurrencyCode.add_member(:kpw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KPW", traits: {"smithy.api#enumValue" => "KPW"}))
    CurrencyCode.add_member(:krw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KRW", traits: {"smithy.api#enumValue" => "KRW"}))
    CurrencyCode.add_member(:kwd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KWD", traits: {"smithy.api#enumValue" => "KWD"}))
    CurrencyCode.add_member(:kyd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KYD", traits: {"smithy.api#enumValue" => "KYD"}))
    CurrencyCode.add_member(:kzt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KZT", traits: {"smithy.api#enumValue" => "KZT"}))
    CurrencyCode.add_member(:lak, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAK", traits: {"smithy.api#enumValue" => "LAK"}))
    CurrencyCode.add_member(:lbp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LBP", traits: {"smithy.api#enumValue" => "LBP"}))
    CurrencyCode.add_member(:lkr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LKR", traits: {"smithy.api#enumValue" => "LKR"}))
    CurrencyCode.add_member(:lrd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LRD", traits: {"smithy.api#enumValue" => "LRD"}))
    CurrencyCode.add_member(:lsl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LSL", traits: {"smithy.api#enumValue" => "LSL"}))
    CurrencyCode.add_member(:lyd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LYD", traits: {"smithy.api#enumValue" => "LYD"}))
    CurrencyCode.add_member(:mad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAD", traits: {"smithy.api#enumValue" => "MAD"}))
    CurrencyCode.add_member(:mdl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MDL", traits: {"smithy.api#enumValue" => "MDL"}))
    CurrencyCode.add_member(:mga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MGA", traits: {"smithy.api#enumValue" => "MGA"}))
    CurrencyCode.add_member(:mkd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MKD", traits: {"smithy.api#enumValue" => "MKD"}))
    CurrencyCode.add_member(:mmk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MMK", traits: {"smithy.api#enumValue" => "MMK"}))
    CurrencyCode.add_member(:mnt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MNT", traits: {"smithy.api#enumValue" => "MNT"}))
    CurrencyCode.add_member(:mop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MOP", traits: {"smithy.api#enumValue" => "MOP"}))
    CurrencyCode.add_member(:mru, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MRU", traits: {"smithy.api#enumValue" => "MRU"}))
    CurrencyCode.add_member(:mur, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUR", traits: {"smithy.api#enumValue" => "MUR"}))
    CurrencyCode.add_member(:mvr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MVR", traits: {"smithy.api#enumValue" => "MVR"}))
    CurrencyCode.add_member(:mwk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MWK", traits: {"smithy.api#enumValue" => "MWK"}))
    CurrencyCode.add_member(:mxn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MXN", traits: {"smithy.api#enumValue" => "MXN"}))
    CurrencyCode.add_member(:mxv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MXV", traits: {"smithy.api#enumValue" => "MXV"}))
    CurrencyCode.add_member(:myr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MYR", traits: {"smithy.api#enumValue" => "MYR"}))
    CurrencyCode.add_member(:mzn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MZN", traits: {"smithy.api#enumValue" => "MZN"}))
    CurrencyCode.add_member(:nad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAD", traits: {"smithy.api#enumValue" => "NAD"}))
    CurrencyCode.add_member(:ngn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NGN", traits: {"smithy.api#enumValue" => "NGN"}))
    CurrencyCode.add_member(:nio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NIO", traits: {"smithy.api#enumValue" => "NIO"}))
    CurrencyCode.add_member(:nok, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOK", traits: {"smithy.api#enumValue" => "NOK"}))
    CurrencyCode.add_member(:npr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NPR", traits: {"smithy.api#enumValue" => "NPR"}))
    CurrencyCode.add_member(:omr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OMR", traits: {"smithy.api#enumValue" => "OMR"}))
    CurrencyCode.add_member(:pab, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAB", traits: {"smithy.api#enumValue" => "PAB"}))
    CurrencyCode.add_member(:pen, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PEN", traits: {"smithy.api#enumValue" => "PEN"}))
    CurrencyCode.add_member(:pgk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PGK", traits: {"smithy.api#enumValue" => "PGK"}))
    CurrencyCode.add_member(:php, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHP", traits: {"smithy.api#enumValue" => "PHP"}))
    CurrencyCode.add_member(:pkr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PKR", traits: {"smithy.api#enumValue" => "PKR"}))
    CurrencyCode.add_member(:pln, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PLN", traits: {"smithy.api#enumValue" => "PLN"}))
    CurrencyCode.add_member(:pyg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PYG", traits: {"smithy.api#enumValue" => "PYG"}))
    CurrencyCode.add_member(:qar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QAR", traits: {"smithy.api#enumValue" => "QAR"}))
    CurrencyCode.add_member(:ron, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RON", traits: {"smithy.api#enumValue" => "RON"}))
    CurrencyCode.add_member(:rsd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RSD", traits: {"smithy.api#enumValue" => "RSD"}))
    CurrencyCode.add_member(:rub, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUB", traits: {"smithy.api#enumValue" => "RUB"}))
    CurrencyCode.add_member(:rwf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RWF", traits: {"smithy.api#enumValue" => "RWF"}))
    CurrencyCode.add_member(:sar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAR", traits: {"smithy.api#enumValue" => "SAR"}))
    CurrencyCode.add_member(:sbd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SBD", traits: {"smithy.api#enumValue" => "SBD"}))
    CurrencyCode.add_member(:scr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCR", traits: {"smithy.api#enumValue" => "SCR"}))
    CurrencyCode.add_member(:sdg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SDG", traits: {"smithy.api#enumValue" => "SDG"}))
    CurrencyCode.add_member(:sgd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SGD", traits: {"smithy.api#enumValue" => "SGD"}))
    CurrencyCode.add_member(:shp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHP", traits: {"smithy.api#enumValue" => "SHP"}))
    CurrencyCode.add_member(:sll, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SLL", traits: {"smithy.api#enumValue" => "SLL"}))
    CurrencyCode.add_member(:sos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOS", traits: {"smithy.api#enumValue" => "SOS"}))
    CurrencyCode.add_member(:srd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SRD", traits: {"smithy.api#enumValue" => "SRD"}))
    CurrencyCode.add_member(:ssp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSP", traits: {"smithy.api#enumValue" => "SSP"}))
    CurrencyCode.add_member(:stn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STN", traits: {"smithy.api#enumValue" => "STN"}))
    CurrencyCode.add_member(:svc, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SVC", traits: {"smithy.api#enumValue" => "SVC"}))
    CurrencyCode.add_member(:syp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYP", traits: {"smithy.api#enumValue" => "SYP"}))
    CurrencyCode.add_member(:szl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SZL", traits: {"smithy.api#enumValue" => "SZL"}))
    CurrencyCode.add_member(:thb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THB", traits: {"smithy.api#enumValue" => "THB"}))
    CurrencyCode.add_member(:tjs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TJS", traits: {"smithy.api#enumValue" => "TJS"}))
    CurrencyCode.add_member(:tmt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TMT", traits: {"smithy.api#enumValue" => "TMT"}))
    CurrencyCode.add_member(:tnd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TND", traits: {"smithy.api#enumValue" => "TND"}))
    CurrencyCode.add_member(:top, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOP", traits: {"smithy.api#enumValue" => "TOP"}))
    CurrencyCode.add_member(:try, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRY", traits: {"smithy.api#enumValue" => "TRY"}))
    CurrencyCode.add_member(:ttd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TTD", traits: {"smithy.api#enumValue" => "TTD"}))
    CurrencyCode.add_member(:twd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TWD", traits: {"smithy.api#enumValue" => "TWD"}))
    CurrencyCode.add_member(:tzs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TZS", traits: {"smithy.api#enumValue" => "TZS"}))
    CurrencyCode.add_member(:uah, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UAH", traits: {"smithy.api#enumValue" => "UAH"}))
    CurrencyCode.add_member(:ugx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UGX", traits: {"smithy.api#enumValue" => "UGX"}))
    CurrencyCode.add_member(:usn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USN", traits: {"smithy.api#enumValue" => "USN"}))
    CurrencyCode.add_member(:uyi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UYI", traits: {"smithy.api#enumValue" => "UYI"}))
    CurrencyCode.add_member(:uyu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UYU", traits: {"smithy.api#enumValue" => "UYU"}))
    CurrencyCode.add_member(:uzs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UZS", traits: {"smithy.api#enumValue" => "UZS"}))
    CurrencyCode.add_member(:vef, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VEF", traits: {"smithy.api#enumValue" => "VEF"}))
    CurrencyCode.add_member(:vnd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VND", traits: {"smithy.api#enumValue" => "VND"}))
    CurrencyCode.add_member(:vuv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VUV", traits: {"smithy.api#enumValue" => "VUV"}))
    CurrencyCode.add_member(:wst, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WST", traits: {"smithy.api#enumValue" => "WST"}))
    CurrencyCode.add_member(:xaf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XAF", traits: {"smithy.api#enumValue" => "XAF"}))
    CurrencyCode.add_member(:xcd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XCD", traits: {"smithy.api#enumValue" => "XCD"}))
    CurrencyCode.add_member(:xdr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XDR", traits: {"smithy.api#enumValue" => "XDR"}))
    CurrencyCode.add_member(:xof, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XOF", traits: {"smithy.api#enumValue" => "XOF"}))
    CurrencyCode.add_member(:xpf, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XPF", traits: {"smithy.api#enumValue" => "XPF"}))
    CurrencyCode.add_member(:xsu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XSU", traits: {"smithy.api#enumValue" => "XSU"}))
    CurrencyCode.add_member(:xua, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "XUA", traits: {"smithy.api#enumValue" => "XUA"}))
    CurrencyCode.add_member(:yer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YER", traits: {"smithy.api#enumValue" => "YER"}))
    CurrencyCode.add_member(:zar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZAR", traits: {"smithy.api#enumValue" => "ZAR"}))
    CurrencyCode.add_member(:zmw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZMW", traits: {"smithy.api#enumValue" => "ZMW"}))
    CurrencyCode.add_member(:zwl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZWL", traits: {"smithy.api#enumValue" => "ZWL"}))
    Customer.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: Account, name: "Account"))
    Customer.add_member(:contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerContactsList, name: "Contacts"))
    Customer.type = Types::Customer
    CustomerContactsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Contact, name: "member")
    CustomerProjectsContext.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementCustomer, name: "Customer"))
    CustomerProjectsContext.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementCustomerProjectDetails, name: "Project"))
    CustomerProjectsContext.type = Types::CustomerProjectsContext
    CustomerSummary.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSummary, name: "Account"))
    CustomerSummary.type = Types::CustomerSummary
    DeleteResourceSnapshotJobRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    DeleteResourceSnapshotJobRequest.add_member(:resource_snapshot_job_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobIdentifier, name: "ResourceSnapshotJobIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Identifier"}))
    DeleteResourceSnapshotJobRequest.type = Types::DeleteResourceSnapshotJobRequest
    DeliveryModel.add_member(:saas_or_paas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAAS_OR_PAAS", traits: {"smithy.api#enumValue" => "SaaS or PaaS"}))
    DeliveryModel.add_member(:byol_or_ami, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BYOL_OR_AMI", traits: {"smithy.api#enumValue" => "BYOL or AMI"}))
    DeliveryModel.add_member(:managed_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_SERVICES", traits: {"smithy.api#enumValue" => "Managed Services"}))
    DeliveryModel.add_member(:professional_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFESSIONAL_SERVICES", traits: {"smithy.api#enumValue" => "Professional Services"}))
    DeliveryModel.add_member(:resell, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESELL", traits: {"smithy.api#enumValue" => "Resell"}))
    DeliveryModel.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "Other"}))
    DeliveryModels.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryModel, name: "member")
    DisassociateOpportunityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    DisassociateOpportunityRequest.add_member(:opportunity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "OpportunityIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Identifier"}))
    DisassociateOpportunityRequest.add_member(:related_entity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedEntityType, name: "RelatedEntityType", traits: {"smithy.api#required" => {}}))
    DisassociateOpportunityRequest.add_member(:related_entity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "RelatedEntityIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    DisassociateOpportunityRequest.type = Types::DisassociateOpportunityRequest
    EngagementContextDetails.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementContextType, name: "Type", traits: {"smithy.api#required" => {}}))
    EngagementContextDetails.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementContextPayload, name: "Payload"))
    EngagementContextDetails.type = Types::EngagementContextDetails
    EngagementContextPayload.add_member(:customer_project, Types::EngagementContextPayload::CustomerProject, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerProjectsContext, name: "CustomerProject"))
    EngagementContextPayload.add_member(:unknown, Types::EngagementContextPayload::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    EngagementContextPayload.type = Types::EngagementContextPayload
    EngagementContextType.add_member(:customer_project, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_PROJECT", traits: {"smithy.api#enumValue" => "CustomerProject"}))
    EngagementContexts.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementContextDetails, name: "member")
    EngagementCustomer.add_member(:industry, ::Smithy::Schema::Shapes::MemberShape.new(target: Industry, name: "Industry", traits: {"smithy.api#required" => {}}))
    EngagementCustomer.add_member(:company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CompanyName, name: "CompanyName", traits: {"smithy.api#required" => {}}))
    EngagementCustomer.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: CompanyWebsiteUrl, name: "WebsiteUrl", traits: {"smithy.api#required" => {}}))
    EngagementCustomer.add_member(:country_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CountryCode, name: "CountryCode", traits: {"smithy.api#required" => {}}))
    EngagementCustomer.type = Types::EngagementCustomer
    EngagementCustomerProjectDetails.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementCustomerProjectTitle, name: "Title", traits: {"smithy.api#required" => {}}))
    EngagementCustomerProjectDetails.add_member(:business_problem, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementCustomerBusinessProblem, name: "BusinessProblem", traits: {"smithy.api#required" => {}}))
    EngagementCustomerProjectDetails.add_member(:target_completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TargetCompletionDate", traits: {"smithy.api#pattern" => "^[1-9][0-9]{3}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$", "smithy.api#required" => {}}))
    EngagementCustomerProjectDetails.type = Types::EngagementCustomerProjectDetails
    EngagementIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementArnOrIdentifier, name: "member")
    EngagementInvitationIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationArnOrIdentifier, name: "member")
    EngagementInvitationPayloadType.add_member(:opportunity_invitation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPPORTUNITY_INVITATION", traits: {"smithy.api#enumValue" => "OpportunityInvitation"}))
    EngagementInvitationSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationSummary, name: "member")
    EngagementInvitationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    EngagementInvitationSummary.add_member(:payload_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationPayloadType, name: "PayloadType"))
    EngagementInvitationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationArnOrIdentifier, name: "Id", traits: {"smithy.api#required" => {}}))
    EngagementInvitationSummary.add_member(:engagement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementId"))
    EngagementInvitationSummary.add_member(:engagement_title, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementTitle, name: "EngagementTitle"))
    EngagementInvitationSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationStatus, name: "Status"))
    EngagementInvitationSummary.add_member(:invitation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "InvitationDate"))
    EngagementInvitationSummary.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExpirationDate"))
    EngagementInvitationSummary.add_member(:sender_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "SenderAwsAccountId"))
    EngagementInvitationSummary.add_member(:sender_company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderCompanyName", traits: {"smithy.api#length" => {"max" => 120}}))
    EngagementInvitationSummary.add_member(:receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: Receiver, name: "Receiver"))
    EngagementInvitationSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    EngagementInvitationSummary.add_member(:participant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantType, name: "ParticipantType"))
    EngagementInvitationSummary.type = Types::EngagementInvitationSummary
    EngagementInvitationsPayloadType.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationPayloadType, name: "member")
    EngagementMember.add_member(:company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberCompanyName, name: "CompanyName"))
    EngagementMember.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "WebsiteUrl"))
    EngagementMember.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "AccountId"))
    EngagementMember.type = Types::EngagementMember
    EngagementMemberSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementMemberSummary, name: "member")
    EngagementMemberSummary.add_member(:company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberCompanyName, name: "CompanyName"))
    EngagementMemberSummary.add_member(:website_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "WebsiteUrl"))
    EngagementMemberSummary.type = Types::EngagementMemberSummary
    EngagementMembers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementMember, name: "member")
    EngagementResourceAssociationSummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    EngagementResourceAssociationSummary.add_member(:engagement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementId"))
    EngagementResourceAssociationSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    EngagementResourceAssociationSummary.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceId"))
    EngagementResourceAssociationSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "CreatedBy"))
    EngagementResourceAssociationSummary.type = Types::EngagementResourceAssociationSummary
    EngagementResourceAssociationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementResourceAssociationSummary, name: "member")
    EngagementScore.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HIGH", traits: {"smithy.api#enumValue" => "High"}))
    EngagementScore.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIUM", traits: {"smithy.api#enumValue" => "Medium"}))
    EngagementScore.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LOW", traits: {"smithy.api#enumValue" => "Low"}))
    EngagementSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder", traits: {"smithy.api#required" => {}}))
    EngagementSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementSortName, name: "SortBy", traits: {"smithy.api#required" => {}}))
    EngagementSort.type = Types::EngagementSort
    EngagementSortName.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CreatedDate", traits: {"smithy.api#enumValue" => "CreatedDate"}))
    EngagementSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementArn, name: "Arn"))
    EngagementSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "Id"))
    EngagementSummary.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementTitle, name: "Title"))
    EngagementSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    EngagementSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "CreatedBy"))
    EngagementSummary.add_member(:member_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MemberCount"))
    EngagementSummary.type = Types::EngagementSummary
    EngagementSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementSummary, name: "member")
    ExpectedCustomerSpend.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: Amount, name: "Amount", traits: {"smithy.api#required" => {}}))
    ExpectedCustomerSpend.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "CurrencyCode", traits: {"smithy.api#pattern" => "^USD$", "smithy.api#required" => {}}))
    ExpectedCustomerSpend.add_member(:frequency, ::Smithy::Schema::Shapes::MemberShape.new(target: PaymentFrequency, name: "Frequency", traits: {"smithy.api#required" => {}}))
    ExpectedCustomerSpend.add_member(:target_company, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TargetCompany", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#required" => {}}))
    ExpectedCustomerSpend.add_member(:estimation_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebsiteUrl, name: "EstimationUrl"))
    ExpectedCustomerSpend.type = Types::ExpectedCustomerSpend
    ExpectedCustomerSpendList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedCustomerSpend, name: "member")
    FilterIdentifier.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "member")
    FilterLifeCycleReviewStatus.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, name: "member")
    FilterLifeCycleStage.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, name: "member")
    FilterStatus.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionStatus, name: "member")
    GetAwsOpportunitySummaryRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetAwsOpportunitySummaryRequest.add_member(:related_opportunity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "RelatedOpportunityIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Identifier"}))
    GetAwsOpportunitySummaryRequest.type = Types::GetAwsOpportunitySummaryRequest
    GetAwsOpportunitySummaryResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetAwsOpportunitySummaryResponse.add_member(:related_opportunity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "RelatedOpportunityId"))
    GetAwsOpportunitySummaryResponse.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityOrigin, name: "Origin"))
    GetAwsOpportunitySummaryResponse.add_member(:involvement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesInvolvementType, name: "InvolvementType"))
    GetAwsOpportunitySummaryResponse.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: Visibility, name: "Visibility"))
    GetAwsOpportunitySummaryResponse.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsOpportunityLifeCycle, name: "LifeCycle"))
    GetAwsOpportunitySummaryResponse.add_member(:opportunity_team, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsOpportunityTeamMembersList, name: "OpportunityTeam"))
    GetAwsOpportunitySummaryResponse.add_member(:insights, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsOpportunityInsights, name: "Insights"))
    GetAwsOpportunitySummaryResponse.add_member(:involvement_type_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: InvolvementTypeChangeReason, name: "InvolvementTypeChangeReason"))
    GetAwsOpportunitySummaryResponse.add_member(:related_entity_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsOpportunityRelatedEntities, name: "RelatedEntityIds"))
    GetAwsOpportunitySummaryResponse.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsOpportunityCustomer, name: "Customer"))
    GetAwsOpportunitySummaryResponse.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsOpportunityProject, name: "Project"))
    GetAwsOpportunitySummaryResponse.type = Types::GetAwsOpportunitySummaryResponse
    GetEngagementInvitationRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetEngagementInvitationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationArnOrIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetEngagementInvitationRequest.type = Types::GetEngagementInvitationRequest
    GetEngagementInvitationResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Arn"))
    GetEngagementInvitationResponse.add_member(:payload_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationPayloadType, name: "PayloadType"))
    GetEngagementInvitationResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationArnOrIdentifier, name: "Id", traits: {"smithy.api#required" => {}}))
    GetEngagementInvitationResponse.add_member(:engagement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementId"))
    GetEngagementInvitationResponse.add_member(:engagement_title, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementTitle, name: "EngagementTitle"))
    GetEngagementInvitationResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationStatus, name: "Status"))
    GetEngagementInvitationResponse.add_member(:invitation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "InvitationDate"))
    GetEngagementInvitationResponse.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "ExpirationDate"))
    GetEngagementInvitationResponse.add_member(:sender_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "SenderAwsAccountId"))
    GetEngagementInvitationResponse.add_member(:sender_company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "SenderCompanyName", traits: {"smithy.api#length" => {"max" => 120}}))
    GetEngagementInvitationResponse.add_member(:receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: Receiver, name: "Receiver"))
    GetEngagementInvitationResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetEngagementInvitationResponse.add_member(:rejection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RejectionReasonString, name: "RejectionReason"))
    GetEngagementInvitationResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "Payload"))
    GetEngagementInvitationResponse.add_member(:invitation_message, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationMessage, name: "InvitationMessage"))
    GetEngagementInvitationResponse.add_member(:engagement_description, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementDescription, name: "EngagementDescription"))
    GetEngagementInvitationResponse.add_member(:existing_members, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementMemberSummaries, name: "ExistingMembers"))
    GetEngagementInvitationResponse.type = Types::GetEngagementInvitationResponse
    GetEngagementRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetEngagementRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementArnOrIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetEngagementRequest.type = Types::GetEngagementRequest
    GetEngagementResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "Id"))
    GetEngagementResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementArn, name: "Arn"))
    GetEngagementResponse.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementTitle, name: "Title"))
    GetEngagementResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementDescription, name: "Description"))
    GetEngagementResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    GetEngagementResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "CreatedBy"))
    GetEngagementResponse.add_member(:member_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MemberCount"))
    GetEngagementResponse.add_member(:contexts, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementContexts, name: "Contexts"))
    GetEngagementResponse.type = Types::GetEngagementResponse
    GetOpportunityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetOpportunityRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    GetOpportunityRequest.type = Types::GetOpportunityRequest
    GetOpportunityResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetOpportunityResponse.add_member(:primary_needs_from_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryNeedsFromAws, name: "PrimaryNeedsFromAws"))
    GetOpportunityResponse.add_member(:national_security, ::Smithy::Schema::Shapes::MemberShape.new(target: NationalSecurity, name: "NationalSecurity"))
    GetOpportunityResponse.add_member(:partner_opportunity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PartnerOpportunityIdentifier", traits: {"smithy.api#length" => {"max" => 64}}))
    GetOpportunityResponse.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: Customer, name: "Customer"))
    GetOpportunityResponse.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: Project, name: "Project"))
    GetOpportunityResponse.add_member(:opportunity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityType, name: "OpportunityType"))
    GetOpportunityResponse.add_member(:marketing, ::Smithy::Schema::Shapes::MemberShape.new(target: Marketing, name: "Marketing"))
    GetOpportunityResponse.add_member(:software_revenue, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareRevenue, name: "SoftwareRevenue"))
    GetOpportunityResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "Id", traits: {"smithy.api#required" => {}}))
    GetOpportunityResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityArn, name: "Arn"))
    GetOpportunityResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedDate", traits: {"smithy.api#required" => {}}))
    GetOpportunityResponse.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedDate", traits: {"smithy.api#required" => {}}))
    GetOpportunityResponse.add_member(:related_entity_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedEntityIdentifiers, name: "RelatedEntityIdentifiers", traits: {"smithy.api#required" => {}}))
    GetOpportunityResponse.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "LifeCycle"))
    GetOpportunityResponse.add_member(:opportunity_team, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerOpportunityTeamMembersList, name: "OpportunityTeam"))
    GetOpportunityResponse.type = Types::GetOpportunityResponse
    GetResourceSnapshotJobRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetResourceSnapshotJobRequest.add_member(:resource_snapshot_job_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobIdentifier, name: "ResourceSnapshotJobIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Identifier"}))
    GetResourceSnapshotJobRequest.type = Types::GetResourceSnapshotJobRequest
    GetResourceSnapshotJobResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetResourceSnapshotJobResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobIdentifier, name: "Id"))
    GetResourceSnapshotJobResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobArn, name: "Arn"))
    GetResourceSnapshotJobResponse.add_member(:engagement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementId"))
    GetResourceSnapshotJobResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    GetResourceSnapshotJobResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceId"))
    GetResourceSnapshotJobResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "ResourceArn"))
    GetResourceSnapshotJobResponse.add_member(:resource_snapshot_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTemplateName, name: "ResourceSnapshotTemplateName"))
    GetResourceSnapshotJobResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    GetResourceSnapshotJobResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobStatus, name: "Status"))
    GetResourceSnapshotJobResponse.add_member(:last_successful_execution_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastSuccessfulExecutionDate"))
    GetResourceSnapshotJobResponse.add_member(:last_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "LastFailure"))
    GetResourceSnapshotJobResponse.type = Types::GetResourceSnapshotJobResponse
    GetResourceSnapshotRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetResourceSnapshotRequest.add_member(:engagement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementIdentifier", traits: {"smithy.api#required" => {}}))
    GetResourceSnapshotRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    GetResourceSnapshotRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier", traits: {"smithy.api#required" => {}}))
    GetResourceSnapshotRequest.add_member(:resource_snapshot_template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTemplateName, name: "ResourceSnapshotTemplateIdentifier", traits: {"smithy.api#required" => {}}))
    GetResourceSnapshotRequest.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotRevision, name: "Revision"))
    GetResourceSnapshotRequest.type = Types::GetResourceSnapshotRequest
    GetResourceSnapshotResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetResourceSnapshotResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "Arn"))
    GetResourceSnapshotResponse.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "CreatedBy"))
    GetResourceSnapshotResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedAt"))
    GetResourceSnapshotResponse.add_member(:engagement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementId"))
    GetResourceSnapshotResponse.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    GetResourceSnapshotResponse.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceId"))
    GetResourceSnapshotResponse.add_member(:resource_snapshot_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTemplateName, name: "ResourceSnapshotTemplateName"))
    GetResourceSnapshotResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotRevision, name: "Revision"))
    GetResourceSnapshotResponse.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotPayload, name: "Payload"))
    GetResourceSnapshotResponse.type = Types::GetResourceSnapshotResponse
    GetSellingSystemSettingsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetSellingSystemSettingsRequest.type = Types::GetSellingSystemSettingsRequest
    GetSellingSystemSettingsResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    GetSellingSystemSettingsResponse.add_member(:resource_snapshot_job_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobRoleArn, name: "ResourceSnapshotJobRoleArn"))
    GetSellingSystemSettingsResponse.type = Types::GetSellingSystemSettingsResponse
    Industry.add_member(:aerospace_satellite, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AEROSPACE_SATELLITE", traits: {"smithy.api#enumValue" => "Aerospace"}))
    Industry.add_member(:agriculture, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGRICULTURE", traits: {"smithy.api#enumValue" => "Agriculture"}))
    Industry.add_member(:automotive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTOMOTIVE", traits: {"smithy.api#enumValue" => "Automotive"}))
    Industry.add_member(:computers_electronics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPUTERS_ELECTRONICS", traits: {"smithy.api#enumValue" => "Computers and Electronics"}))
    Industry.add_member(:consumer_goods, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONSUMER_GOODS", traits: {"smithy.api#enumValue" => "Consumer Goods"}))
    Industry.add_member(:education, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EDUCATION", traits: {"smithy.api#enumValue" => "Education"}))
    Industry.add_member(:energy_oil_gas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENERGY_OIL_GAS", traits: {"smithy.api#enumValue" => "Energy - Oil and Gas"}))
    Industry.add_member(:energy_power_utilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENERGY_POWER_UTILITIES", traits: {"smithy.api#enumValue" => "Energy - Power and Utilities"}))
    Industry.add_member(:financial_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINANCIAL_SERVICES", traits: {"smithy.api#enumValue" => "Financial Services"}))
    Industry.add_member(:gaming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GAMING", traits: {"smithy.api#enumValue" => "Gaming"}))
    Industry.add_member(:government, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOVERNMENT", traits: {"smithy.api#enumValue" => "Government"}))
    Industry.add_member(:healthcare, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEALTHCARE", traits: {"smithy.api#enumValue" => "Healthcare"}))
    Industry.add_member(:hospitality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOSPITALITY", traits: {"smithy.api#enumValue" => "Hospitality"}))
    Industry.add_member(:life_sciences, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIFE_SCIENCES", traits: {"smithy.api#enumValue" => "Life Sciences"}))
    Industry.add_member(:manufacturing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUFACTURING", traits: {"smithy.api#enumValue" => "Manufacturing"}))
    Industry.add_member(:marketing_advertising, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARKETING_ADVERTISING", traits: {"smithy.api#enumValue" => "Marketing and Advertising"}))
    Industry.add_member(:media_entertainment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MEDIA_ENTERTAINMENT", traits: {"smithy.api#enumValue" => "Media and Entertainment"}))
    Industry.add_member(:mining, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MINING", traits: {"smithy.api#enumValue" => "Mining"}))
    Industry.add_member(:non_profit_organization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NON_PROFIT_ORGANIZATION", traits: {"smithy.api#enumValue" => "Non-Profit Organization"}))
    Industry.add_member(:professional_services, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROFESSIONAL_SERVICES", traits: {"smithy.api#enumValue" => "Professional Services"}))
    Industry.add_member(:realestate_construction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REALESTATE_CONSTRUCTION", traits: {"smithy.api#enumValue" => "Real Estate and Construction"}))
    Industry.add_member(:retail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETAIL", traits: {"smithy.api#enumValue" => "Retail"}))
    Industry.add_member(:software_internet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOFTWARE_INTERNET", traits: {"smithy.api#enumValue" => "Software and Internet"}))
    Industry.add_member(:telecommunications, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TELECOMMUNICATIONS", traits: {"smithy.api#enumValue" => "Telecommunications"}))
    Industry.add_member(:transportation_logistics, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRANSPORTATION_LOGISTICS", traits: {"smithy.api#enumValue" => "Transportation and Logistics"}))
    Industry.add_member(:travel, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAVEL", traits: {"smithy.api#enumValue" => "Travel"}))
    Industry.add_member(:wholesale_distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WHOLESALE_DISTRIBUTION", traits: {"smithy.api#enumValue" => "Wholesale and Distribution"}))
    Industry.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "Other"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    InternalServerException.type = Types::InternalServerException
    Invitation.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationMessage, name: "Message", traits: {"smithy.api#required" => {}}))
    Invitation.add_member(:receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: Receiver, name: "Receiver", traits: {"smithy.api#required" => {}}))
    Invitation.add_member(:payload, ::Smithy::Schema::Shapes::MemberShape.new(target: Payload, name: "Payload", traits: {"smithy.api#required" => {}}))
    Invitation.type = Types::Invitation
    InvitationStatus.add_member(:accepted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCEPTED", traits: {"smithy.api#enumValue" => "ACCEPTED"}))
    InvitationStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    InvitationStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "REJECTED"}))
    InvitationStatus.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    InvitationStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationStatus, name: "member")
    InvolvementTypeChangeReason.add_member(:expansion_opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPANSION_OPPORTUNITY", traits: {"smithy.api#enumValue" => "Expansion Opportunity"}))
    InvolvementTypeChangeReason.add_member(:change_in_deal_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CHANGE_IN_DEAL_INFORMATION", traits: {"smithy.api#enumValue" => "Change in Deal Information"}))
    InvolvementTypeChangeReason.add_member(:customer_requested, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_REQUESTED", traits: {"smithy.api#enumValue" => "Customer Requested"}))
    InvolvementTypeChangeReason.add_member(:technical_complexity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TECHNICAL_COMPLEXITY", traits: {"smithy.api#enumValue" => "Technical Complexity"}))
    InvolvementTypeChangeReason.add_member(:risk_mitigation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RISK_MITIGATION", traits: {"smithy.api#enumValue" => "Risk Mitigation"}))
    LastModifiedDate.add_member(:after_last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "AfterLastModifiedDate"))
    LastModifiedDate.add_member(:before_last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "BeforeLastModifiedDate"))
    LastModifiedDate.type = Types::LastModifiedDate
    LifeCycle.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, name: "Stage"))
    LifeCycle.add_member(:closed_lost_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ClosedLostReason, name: "ClosedLostReason"))
    LifeCycle.add_member(:next_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiString, name: "NextSteps", traits: {"smithy.api#length" => {"max" => 255}}))
    LifeCycle.add_member(:target_close_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "TargetCloseDate"))
    LifeCycle.add_member(:review_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, name: "ReviewStatus"))
    LifeCycle.add_member(:review_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ReviewComments"))
    LifeCycle.add_member(:review_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ReviewStatusReason"))
    LifeCycle.add_member(:next_steps_history, ::Smithy::Schema::Shapes::MemberShape.new(target: NextStepsHistories, name: "NextStepsHistory", traits: {"smithy.api#length" => {"max" => 50}}))
    LifeCycle.type = Types::LifeCycle
    LifeCycleForView.add_member(:target_close_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "TargetCloseDate"))
    LifeCycleForView.add_member(:review_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, name: "ReviewStatus"))
    LifeCycleForView.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, name: "Stage"))
    LifeCycleForView.add_member(:next_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiString, name: "NextSteps", traits: {"smithy.api#length" => {"max" => 255}}))
    LifeCycleForView.type = Types::LifeCycleForView
    LifeCycleSummary.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: Stage, name: "Stage"))
    LifeCycleSummary.add_member(:closed_lost_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ClosedLostReason, name: "ClosedLostReason"))
    LifeCycleSummary.add_member(:next_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiString, name: "NextSteps", traits: {"smithy.api#length" => {"max" => 255}}))
    LifeCycleSummary.add_member(:target_close_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "TargetCloseDate"))
    LifeCycleSummary.add_member(:review_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReviewStatus, name: "ReviewStatus"))
    LifeCycleSummary.add_member(:review_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ReviewComments"))
    LifeCycleSummary.add_member(:review_status_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ReviewStatusReason"))
    LifeCycleSummary.type = Types::LifeCycleSummary
    ListEngagementByAcceptingInvitationTaskSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListEngagementByAcceptingInvitationTaskSummary, name: "member")
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdentifier, name: "TaskId"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "TaskStatus"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonCode, name: "ReasonCode"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:opportunity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "OpportunityId"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:resource_snapshot_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobIdentifier, name: "ResourceSnapshotJobId"))
    ListEngagementByAcceptingInvitationTaskSummary.add_member(:engagement_invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationIdentifier, name: "EngagementInvitationId"))
    ListEngagementByAcceptingInvitationTaskSummary.type = Types::ListEngagementByAcceptingInvitationTaskSummary
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTasksSortBase, name: "Sort"))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatuses, name: "TaskStatus"))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:opportunity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifiers, name: "OpportunityIdentifier"))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:engagement_invitation_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationIdentifiers, name: "EngagementInvitationIdentifier"))
    ListEngagementByAcceptingInvitationTasksRequest.add_member(:task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdentifiers, name: "TaskIdentifier"))
    ListEngagementByAcceptingInvitationTasksRequest.type = Types::ListEngagementByAcceptingInvitationTasksRequest
    ListEngagementByAcceptingInvitationTasksResponse.add_member(:task_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEngagementByAcceptingInvitationTaskSummaries, name: "TaskSummaries"))
    ListEngagementByAcceptingInvitationTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListEngagementByAcceptingInvitationTasksResponse.type = Types::ListEngagementByAcceptingInvitationTasksResponse
    ListEngagementFromOpportunityTaskSummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListEngagementFromOpportunityTaskSummary, name: "member")
    ListEngagementFromOpportunityTaskSummary.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdentifier, name: "TaskId"))
    ListEngagementFromOpportunityTaskSummary.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn"))
    ListEngagementFromOpportunityTaskSummary.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    ListEngagementFromOpportunityTaskSummary.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "TaskStatus"))
    ListEngagementFromOpportunityTaskSummary.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ListEngagementFromOpportunityTaskSummary.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonCode, name: "ReasonCode"))
    ListEngagementFromOpportunityTaskSummary.add_member(:opportunity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "OpportunityId"))
    ListEngagementFromOpportunityTaskSummary.add_member(:resource_snapshot_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobIdentifier, name: "ResourceSnapshotJobId"))
    ListEngagementFromOpportunityTaskSummary.add_member(:engagement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementId"))
    ListEngagementFromOpportunityTaskSummary.add_member(:engagement_invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationIdentifier, name: "EngagementInvitationId"))
    ListEngagementFromOpportunityTaskSummary.type = Types::ListEngagementFromOpportunityTaskSummary
    ListEngagementFromOpportunityTasksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListEngagementFromOpportunityTasksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}}))
    ListEngagementFromOpportunityTasksRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTasksSortBase, name: "Sort"))
    ListEngagementFromOpportunityTasksRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListEngagementFromOpportunityTasksRequest.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatuses, name: "TaskStatus"))
    ListEngagementFromOpportunityTasksRequest.add_member(:task_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdentifiers, name: "TaskIdentifier"))
    ListEngagementFromOpportunityTasksRequest.add_member(:opportunity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifiers, name: "OpportunityIdentifier"))
    ListEngagementFromOpportunityTasksRequest.add_member(:engagement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifiers, name: "EngagementIdentifier"))
    ListEngagementFromOpportunityTasksRequest.type = Types::ListEngagementFromOpportunityTasksRequest
    ListEngagementFromOpportunityTasksResponse.add_member(:task_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ListEngagementFromOpportunityTaskSummaries, name: "TaskSummaries"))
    ListEngagementFromOpportunityTasksResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListEngagementFromOpportunityTasksResponse.type = Types::ListEngagementFromOpportunityTasksResponse
    ListEngagementInvitationsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListEngagementInvitationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    ListEngagementInvitationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListEngagementInvitationsRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityEngagementInvitationSort, name: "Sort"))
    ListEngagementInvitationsRequest.add_member(:payload_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationsPayloadType, name: "PayloadType"))
    ListEngagementInvitationsRequest.add_member(:participant_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ParticipantType, name: "ParticipantType", traits: {"smithy.api#required" => {}}))
    ListEngagementInvitationsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: InvitationStatusList, name: "Status"))
    ListEngagementInvitationsRequest.add_member(:engagement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifiers, name: "EngagementIdentifier"))
    ListEngagementInvitationsRequest.add_member(:sender_aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountIdOrAliasList, name: "SenderAwsAccountId"))
    ListEngagementInvitationsRequest.type = Types::ListEngagementInvitationsRequest
    ListEngagementInvitationsResponse.add_member(:engagement_invitation_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationSummaries, name: "EngagementInvitationSummaries"))
    ListEngagementInvitationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListEngagementInvitationsResponse.type = Types::ListEngagementInvitationsResponse
    ListEngagementMembersRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListEngagementMembersRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementArnOrIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    ListEngagementMembersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MemberPageSize, name: "MaxResults", traits: {"smithy.api#default" => 5}))
    ListEngagementMembersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListEngagementMembersRequest.type = Types::ListEngagementMembersRequest
    ListEngagementMembersResponse.add_member(:engagement_member_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementMembers, name: "EngagementMemberList", traits: {"smithy.api#required" => {}}))
    ListEngagementMembersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListEngagementMembersResponse.type = Types::ListEngagementMembersResponse
    ListEngagementResourceAssociationsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListEngagementResourceAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListEngagementResourceAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListEngagementResourceAssociationsRequest.add_member(:engagement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementIdentifier"))
    ListEngagementResourceAssociationsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ListEngagementResourceAssociationsRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier"))
    ListEngagementResourceAssociationsRequest.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "CreatedBy"))
    ListEngagementResourceAssociationsRequest.type = Types::ListEngagementResourceAssociationsRequest
    ListEngagementResourceAssociationsResponse.add_member(:engagement_resource_association_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementResourceAssociationSummaryList, name: "EngagementResourceAssociationSummaries", traits: {"smithy.api#required" => {}}))
    ListEngagementResourceAssociationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListEngagementResourceAssociationsResponse.type = Types::ListEngagementResourceAssociationsResponse
    ListEngagementsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListEngagementsRequest.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountList, name: "CreatedBy"))
    ListEngagementsRequest.add_member(:exclude_created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountList, name: "ExcludeCreatedBy"))
    ListEngagementsRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementSort, name: "Sort"))
    ListEngagementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementPageSize, name: "MaxResults", traits: {"smithy.api#default" => 20}))
    ListEngagementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListEngagementsRequest.add_member(:engagement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifiers, name: "EngagementIdentifier"))
    ListEngagementsRequest.type = Types::ListEngagementsRequest
    ListEngagementsResponse.add_member(:engagement_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementSummaryList, name: "EngagementSummaryList", traits: {"smithy.api#required" => {}}))
    ListEngagementsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListEngagementsResponse.type = Types::ListEngagementsResponse
    ListOpportunitiesRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListOpportunitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    ListOpportunitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListOpportunitiesRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunitySort, name: "Sort"))
    ListOpportunitiesRequest.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: LastModifiedDate, name: "LastModifiedDate"))
    ListOpportunitiesRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterIdentifier, name: "Identifier", traits: {"smithy.api#length" => {"max" => 20}}))
    ListOpportunitiesRequest.add_member(:life_cycle_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterLifeCycleStage, name: "LifeCycleStage", traits: {"smithy.api#length" => {"max" => 10}}))
    ListOpportunitiesRequest.add_member(:life_cycle_review_status, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterLifeCycleReviewStatus, name: "LifeCycleReviewStatus", traits: {"smithy.api#length" => {"max" => 10}}))
    ListOpportunitiesRequest.add_member(:customer_company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "CustomerCompanyName", traits: {"smithy.api#length" => {"max" => 10}}))
    ListOpportunitiesRequest.type = Types::ListOpportunitiesRequest
    ListOpportunitiesResponse.add_member(:opportunity_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunitySummaries, name: "OpportunitySummaries", traits: {"smithy.api#required" => {}}))
    ListOpportunitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListOpportunitiesResponse.type = Types::ListOpportunitiesResponse
    ListResourceSnapshotJobsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListResourceSnapshotJobsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListResourceSnapshotJobsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListResourceSnapshotJobsRequest.add_member(:engagement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementIdentifier"))
    ListResourceSnapshotJobsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobStatus, name: "Status"))
    ListResourceSnapshotJobsRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SortObject, name: "Sort"))
    ListResourceSnapshotJobsRequest.type = Types::ListResourceSnapshotJobsRequest
    ListResourceSnapshotJobsResponse.add_member(:resource_snapshot_job_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobSummaryList, name: "ResourceSnapshotJobSummaries", traits: {"smithy.api#required" => {}}))
    ListResourceSnapshotJobsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListResourceSnapshotJobsResponse.type = Types::ListResourceSnapshotJobsResponse
    ListResourceSnapshotsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListResourceSnapshotsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults", traits: {"smithy.api#default" => 100, "smithy.api#range" => {"min" => 1, "max" => 1000}}))
    ListResourceSnapshotsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListResourceSnapshotsRequest.add_member(:engagement_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementIdentifier", traits: {"smithy.api#required" => {}}))
    ListResourceSnapshotsRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ListResourceSnapshotsRequest.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier"))
    ListResourceSnapshotsRequest.add_member(:resource_snapshot_template_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTemplateName, name: "ResourceSnapshotTemplateIdentifier"))
    ListResourceSnapshotsRequest.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "CreatedBy"))
    ListResourceSnapshotsRequest.type = Types::ListResourceSnapshotsRequest
    ListResourceSnapshotsResponse.add_member(:resource_snapshot_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotSummaryList, name: "ResourceSnapshotSummaries", traits: {"smithy.api#required" => {}}))
    ListResourceSnapshotsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListResourceSnapshotsResponse.type = Types::ListResourceSnapshotsResponse
    ListSolutionsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    ListSolutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: PageSize, name: "MaxResults"))
    ListSolutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListSolutionsRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionSort, name: "Sort"))
    ListSolutionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterStatus, name: "Status", traits: {"smithy.api#length" => {"max" => 10}}))
    ListSolutionsRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionIdentifiers, name: "Identifier", traits: {"smithy.api#length" => {"max" => 20}}))
    ListSolutionsRequest.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Category", traits: {"smithy.api#length" => {"max" => 10}}))
    ListSolutionsRequest.type = Types::ListSolutionsRequest
    ListSolutionsResponse.add_member(:solution_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionList, name: "SolutionSummaries", traits: {"smithy.api#required" => {}}))
    ListSolutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "NextToken"))
    ListSolutionsResponse.type = Types::ListSolutionsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTasksSortBase.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder", traits: {"smithy.api#required" => {}}))
    ListTasksSortBase.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTasksSortName, name: "SortBy", traits: {"smithy.api#required" => {}}))
    ListTasksSortBase.type = Types::ListTasksSortBase
    ListTasksSortName.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "START_TIME", traits: {"smithy.api#enumValue" => "StartTime"}))
    Marketing.add_member(:campaign_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CampaignName"))
    Marketing.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketingSource, name: "Source"))
    Marketing.add_member(:use_cases, ::Smithy::Schema::Shapes::MemberShape.new(target: UseCases, name: "UseCases"))
    Marketing.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "Channels"))
    Marketing.add_member(:aws_funding_used, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsFundingUsed, name: "AwsFundingUsed"))
    Marketing.type = Types::Marketing
    MarketingSource.add_member(:marketing_activity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARKETING_ACTIVITY", traits: {"smithy.api#enumValue" => "Marketing Activity"}))
    MarketingSource.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "None"}))
    MonetaryValue.add_member(:amount, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Amount", traits: {"smithy.api#pattern" => "^(0|([1-9][0-9]{0,30}))(\\.[0-9]{0,2})?$", "smithy.api#required" => {}}))
    MonetaryValue.add_member(:currency_code, ::Smithy::Schema::Shapes::MemberShape.new(target: CurrencyCode, name: "CurrencyCode", traits: {"smithy.api#required" => {}}))
    MonetaryValue.type = Types::MonetaryValue
    NationalSecurity.add_member(:yes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YES", traits: {"smithy.api#enumValue" => "Yes"}))
    NationalSecurity.add_member(:no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO", traits: {"smithy.api#enumValue" => "No"}))
    NextStepsHistories.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NextStepsHistory, name: "member")
    NextStepsHistory.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Value", traits: {"smithy.api#required" => {}}))
    NextStepsHistory.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "Time", traits: {"smithy.api#required" => {}}))
    NextStepsHistory.type = Types::NextStepsHistory
    OpportunityEngagementInvitationSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder", traits: {"smithy.api#required" => {}}))
    OpportunityEngagementInvitationSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityEngagementInvitationSortName, name: "SortBy", traits: {"smithy.api#required" => {}}))
    OpportunityEngagementInvitationSort.type = Types::OpportunityEngagementInvitationSort
    OpportunityEngagementInvitationSortName.add_member(:invitation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVITATION_DATE", traits: {"smithy.api#enumValue" => "InvitationDate"}))
    OpportunityIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "member")
    OpportunityInvitationPayload.add_member(:sender_contacts, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderContactList, name: "SenderContacts"))
    OpportunityInvitationPayload.add_member(:receiver_responsibilities, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverResponsibilityList, name: "ReceiverResponsibilities", traits: {"smithy.api#required" => {}}))
    OpportunityInvitationPayload.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementCustomer, name: "Customer", traits: {"smithy.api#required" => {}}))
    OpportunityInvitationPayload.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectDetails, name: "Project", traits: {"smithy.api#required" => {}}))
    OpportunityInvitationPayload.type = Types::OpportunityInvitationPayload
    OpportunityOrigin.add_member(:aws_referral, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_REFERRAL", traits: {"smithy.api#enumValue" => "AWS Referral"}))
    OpportunityOrigin.add_member(:partner_referral, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARTNER_REFERRAL", traits: {"smithy.api#enumValue" => "Partner Referral"}))
    OpportunitySort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder", traits: {"smithy.api#required" => {}}))
    OpportunitySort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunitySortName, name: "SortBy", traits: {"smithy.api#required" => {}}))
    OpportunitySort.type = Types::OpportunitySort
    OpportunitySortName.add_member(:last_modifieddate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAST_MODIFIEDDATE", traits: {"smithy.api#enumValue" => "LastModifiedDate"}))
    OpportunitySortName.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTIFIER", traits: {"smithy.api#enumValue" => "Identifier"}))
    OpportunitySortName.add_member(:customer_company_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_COMPANY_NAME", traits: {"smithy.api#enumValue" => "CustomerCompanyName"}))
    OpportunitySummaries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunitySummary, name: "member")
    OpportunitySummary.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    OpportunitySummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "Id"))
    OpportunitySummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityArn, name: "Arn"))
    OpportunitySummary.add_member(:partner_opportunity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PartnerOpportunityIdentifier"))
    OpportunitySummary.add_member(:opportunity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityType, name: "OpportunityType"))
    OpportunitySummary.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedDate"))
    OpportunitySummary.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedDate"))
    OpportunitySummary.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleSummary, name: "LifeCycle"))
    OpportunitySummary.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomerSummary, name: "Customer"))
    OpportunitySummary.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectSummary, name: "Project"))
    OpportunitySummary.type = Types::OpportunitySummary
    OpportunitySummaryView.add_member(:opportunity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityType, name: "OpportunityType"))
    OpportunitySummaryView.add_member(:lifecycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycleForView, name: "Lifecycle"))
    OpportunitySummaryView.add_member(:opportunity_team, ::Smithy::Schema::Shapes::MemberShape.new(target: PartnerOpportunityTeamMembersList, name: "OpportunityTeam"))
    OpportunitySummaryView.add_member(:primary_needs_from_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryNeedsFromAws, name: "PrimaryNeedsFromAws"))
    OpportunitySummaryView.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: Customer, name: "Customer"))
    OpportunitySummaryView.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectView, name: "Project"))
    OpportunitySummaryView.add_member(:related_entity_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: RelatedEntityIdentifiers, name: "RelatedEntityIdentifiers"))
    OpportunitySummaryView.type = Types::OpportunitySummaryView
    OpportunityType.add_member(:net_new_business, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NET_NEW_BUSINESS", traits: {"smithy.api#enumValue" => "Net New Business"}))
    OpportunityType.add_member(:flat_renewal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLAT_RENEWAL", traits: {"smithy.api#enumValue" => "Flat Renewal"}))
    OpportunityType.add_member(:expansion, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPANSION", traits: {"smithy.api#enumValue" => "Expansion"}))
    ParticipantType.add_member(:sender, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SENDER", traits: {"smithy.api#enumValue" => "SENDER"}))
    ParticipantType.add_member(:receiver, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RECEIVER", traits: {"smithy.api#enumValue" => "RECEIVER"}))
    PartnerOpportunityTeamMembersList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Contact, name: "member")
    Payload.add_member(:opportunity_invitation, Types::Payload::OpportunityInvitation, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityInvitationPayload, name: "OpportunityInvitation"))
    Payload.add_member(:unknown, Types::Payload::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Payload.type = Types::Payload
    PaymentFrequency.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "Monthly"}))
    PrimaryNeedFromAws.add_member(:co_sell_architectural_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO_SELL_ARCHITECTURAL_VALIDATION", traits: {"smithy.api#enumValue" => "Co-Sell - Architectural Validation"}))
    PrimaryNeedFromAws.add_member(:co_sell_business_presentation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO_SELL_BUSINESS_PRESENTATION", traits: {"smithy.api#enumValue" => "Co-Sell - Business Presentation"}))
    PrimaryNeedFromAws.add_member(:co_sell_competitive_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO_SELL_COMPETITIVE_INFORMATION", traits: {"smithy.api#enumValue" => "Co-Sell - Competitive Information"}))
    PrimaryNeedFromAws.add_member(:co_sell_pricing_assistance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO_SELL_PRICING_ASSISTANCE", traits: {"smithy.api#enumValue" => "Co-Sell - Pricing Assistance"}))
    PrimaryNeedFromAws.add_member(:co_sell_technical_consultation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO_SELL_TECHNICAL_CONSULTATION", traits: {"smithy.api#enumValue" => "Co-Sell - Technical Consultation"}))
    PrimaryNeedFromAws.add_member(:co_sell_total_cost_of_ownership_evaluation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO_SELL_TOTAL_COST_OF_OWNERSHIP_EVALUATION", traits: {"smithy.api#enumValue" => "Co-Sell - Total Cost of Ownership Evaluation"}))
    PrimaryNeedFromAws.add_member(:co_sell_deal_support, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO_SELL_DEAL_SUPPORT", traits: {"smithy.api#enumValue" => "Co-Sell - Deal Support"}))
    PrimaryNeedFromAws.add_member(:co_sell_support_for_public_tender_rfx, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO_SELL_SUPPORT_FOR_PUBLIC_TENDER_RFX", traits: {"smithy.api#enumValue" => "Co-Sell - Support for Public Tender / RFx"}))
    PrimaryNeedsFromAws.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryNeedFromAws, name: "member")
    ProfileNextStepsHistories.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileNextStepsHistory, name: "member")
    ProfileNextStepsHistory.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Value", traits: {"smithy.api#required" => {}}))
    ProfileNextStepsHistory.add_member(:time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "Time", traits: {"smithy.api#required" => {}}))
    ProfileNextStepsHistory.type = Types::ProfileNextStepsHistory
    Project.add_member(:delivery_models, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryModels, name: "DeliveryModels"))
    Project.add_member(:expected_customer_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedCustomerSpendList, name: "ExpectedCustomerSpend"))
    Project.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiString, name: "Title", traits: {"smithy.api#length" => {"max" => 255}}))
    Project.add_member(:apn_programs, ::Smithy::Schema::Shapes::MemberShape.new(target: ApnPrograms, name: "ApnPrograms"))
    Project.add_member(:customer_business_problem, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiString, name: "CustomerBusinessProblem", traits: {"smithy.api#length" => {"min" => 20, "max" => 2000}}))
    Project.add_member(:customer_use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CustomerUseCase"))
    Project.add_member(:related_opportunity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "RelatedOpportunityIdentifier"))
    Project.add_member(:sales_activities, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesActivities, name: "SalesActivities"))
    Project.add_member(:competitor_name, ::Smithy::Schema::Shapes::MemberShape.new(target: CompetitorName, name: "CompetitorName"))
    Project.add_member(:other_competitor_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "OtherCompetitorNames", traits: {"smithy.api#length" => {"max" => 255}}))
    Project.add_member(:other_solution_description, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiString, name: "OtherSolutionDescription", traits: {"smithy.api#length" => {"max" => 255}}))
    Project.add_member(:additional_comments, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "AdditionalComments", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}}))
    Project.type = Types::Project
    ProjectDetails.add_member(:business_problem, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementCustomerBusinessProblem, name: "BusinessProblem", traits: {"smithy.api#required" => {}}))
    ProjectDetails.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Title", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#required" => {}}))
    ProjectDetails.add_member(:target_completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "TargetCompletionDate", traits: {"smithy.api#required" => {}}))
    ProjectDetails.add_member(:expected_customer_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedCustomerSpendList, name: "ExpectedCustomerSpend", traits: {"smithy.api#required" => {}}))
    ProjectDetails.type = Types::ProjectDetails
    ProjectSummary.add_member(:delivery_models, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryModels, name: "DeliveryModels"))
    ProjectSummary.add_member(:expected_customer_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedCustomerSpendList, name: "ExpectedCustomerSpend"))
    ProjectSummary.type = Types::ProjectSummary
    ProjectView.add_member(:delivery_models, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryModels, name: "DeliveryModels"))
    ProjectView.add_member(:expected_customer_spend, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpectedCustomerSpendList, name: "ExpectedCustomerSpend"))
    ProjectView.add_member(:customer_use_case, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "CustomerUseCase"))
    ProjectView.add_member(:sales_activities, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesActivities, name: "SalesActivities"))
    ProjectView.add_member(:other_solution_description, ::Smithy::Schema::Shapes::MemberShape.new(target: PiiString, name: "OtherSolutionDescription", traits: {"smithy.api#length" => {"max" => 255}}))
    ProjectView.type = Types::ProjectView
    PutSellingSystemSettingsRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    PutSellingSystemSettingsRequest.add_member(:resource_snapshot_job_role_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobRoleIdentifier, name: "ResourceSnapshotJobRoleIdentifier"))
    PutSellingSystemSettingsRequest.type = Types::PutSellingSystemSettingsRequest
    PutSellingSystemSettingsResponse.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    PutSellingSystemSettingsResponse.add_member(:resource_snapshot_job_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobRoleArn, name: "ResourceSnapshotJobRoleArn"))
    PutSellingSystemSettingsResponse.type = Types::PutSellingSystemSettingsResponse
    ReasonCode.add_member(:invitation_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVITATION_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "InvitationAccessDenied"}))
    ReasonCode.add_member(:invitation_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVITATION_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "InvitationValidationFailed"}))
    ReasonCode.add_member(:engagement_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENGAGEMENT_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "EngagementAccessDenied"}))
    ReasonCode.add_member(:opportunity_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPPORTUNITY_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "OpportunityAccessDenied"}))
    ReasonCode.add_member(:resource_snapshot_job_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_SNAPSHOT_JOB_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ResourceSnapshotJobAccessDenied"}))
    ReasonCode.add_member(:resource_snapshot_job_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_SNAPSHOT_JOB_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "ResourceSnapshotJobValidationFailed"}))
    ReasonCode.add_member(:resource_snapshot_job_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_SNAPSHOT_JOB_CONFLICT", traits: {"smithy.api#enumValue" => "ResourceSnapshotJobConflict"}))
    ReasonCode.add_member(:engagement_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENGAGEMENT_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "EngagementValidationFailed"}))
    ReasonCode.add_member(:engagement_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENGAGEMENT_CONFLICT", traits: {"smithy.api#enumValue" => "EngagementConflict"}))
    ReasonCode.add_member(:opportunity_submission_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPPORTUNITY_SUBMISSION_FAILED", traits: {"smithy.api#enumValue" => "OpportunitySubmissionFailed"}))
    ReasonCode.add_member(:engagement_invitation_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENGAGEMENT_INVITATION_CONFLICT", traits: {"smithy.api#enumValue" => "EngagementInvitationConflict"}))
    ReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "InternalError"}))
    ReasonCode.add_member(:opportunity_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPPORTUNITY_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "OpportunityValidationFailed"}))
    ReasonCode.add_member(:opportunity_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPPORTUNITY_CONFLICT", traits: {"smithy.api#enumValue" => "OpportunityConflict"}))
    ReasonCode.add_member(:resource_snapshot_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_SNAPSHOT_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ResourceSnapshotAccessDenied"}))
    ReasonCode.add_member(:resource_snapshot_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_SNAPSHOT_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "ResourceSnapshotValidationFailed"}))
    ReasonCode.add_member(:resource_snapshot_conflict, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_SNAPSHOT_CONFLICT", traits: {"smithy.api#enumValue" => "ResourceSnapshotConflict"}))
    ReasonCode.add_member(:service_quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "ServiceQuotaExceeded"}))
    ReasonCode.add_member(:request_throttled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_THROTTLED", traits: {"smithy.api#enumValue" => "RequestThrottled"}))
    Receiver.add_member(:account, Types::Receiver::Account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountReceiver, name: "Account"))
    Receiver.add_member(:unknown, Types::Receiver::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    Receiver.type = Types::Receiver
    ReceiverResponsibility.add_member(:distributor, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTOR", traits: {"smithy.api#enumValue" => "Distributor"}))
    ReceiverResponsibility.add_member(:reseller, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESELLER", traits: {"smithy.api#enumValue" => "Reseller"}))
    ReceiverResponsibility.add_member(:hardware_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HARDWARE_PARTNER", traits: {"smithy.api#enumValue" => "Hardware Partner"}))
    ReceiverResponsibility.add_member(:managed_service_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_SERVICE_PROVIDER", traits: {"smithy.api#enumValue" => "Managed Service Provider"}))
    ReceiverResponsibility.add_member(:software_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOFTWARE_PARTNER", traits: {"smithy.api#enumValue" => "Software Partner"}))
    ReceiverResponsibility.add_member(:services_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICES_PARTNER", traits: {"smithy.api#enumValue" => "Services Partner"}))
    ReceiverResponsibility.add_member(:training_partner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRAINING_PARTNER", traits: {"smithy.api#enumValue" => "Training Partner"}))
    ReceiverResponsibility.add_member(:co_sell_facilitator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO_SELL_FACILITATOR", traits: {"smithy.api#enumValue" => "Co-Sell Facilitator"}))
    ReceiverResponsibility.add_member(:facilitator, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FACILITATOR", traits: {"smithy.api#enumValue" => "Facilitator"}))
    ReceiverResponsibilityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverResponsibility, name: "member")
    RejectEngagementInvitationRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    RejectEngagementInvitationRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationArnOrIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    RejectEngagementInvitationRequest.add_member(:rejection_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: RejectionReasonString, name: "RejectionReason"))
    RejectEngagementInvitationRequest.type = Types::RejectEngagementInvitationRequest
    RelatedEntityIdentifiers.add_member(:aws_marketplace_offers, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsMarketplaceOfferIdentifiers, name: "AwsMarketplaceOffers"))
    RelatedEntityIdentifiers.add_member(:solutions, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionIdentifiers, name: "Solutions"))
    RelatedEntityIdentifiers.add_member(:aws_products, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsProductIdentifiers, name: "AwsProducts"))
    RelatedEntityIdentifiers.type = Types::RelatedEntityIdentifiers
    RelatedEntityType.add_member(:solutions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOLUTIONS", traits: {"smithy.api#enumValue" => "Solutions"}))
    RelatedEntityType.add_member(:aws_products, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_PRODUCTS", traits: {"smithy.api#enumValue" => "AwsProducts"}))
    RelatedEntityType.add_member(:aws_marketplace_offers, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MARKETPLACE_OFFERS", traits: {"smithy.api#enumValue" => "AwsMarketplaceOffers"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceSnapshotJobStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "Running"}))
    ResourceSnapshotJobStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "Stopped"}))
    ResourceSnapshotJobSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobIdentifier, name: "Id"))
    ResourceSnapshotJobSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobArn, name: "Arn"))
    ResourceSnapshotJobSummary.add_member(:engagement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementId"))
    ResourceSnapshotJobSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobStatus, name: "Status"))
    ResourceSnapshotJobSummary.type = Types::ResourceSnapshotJobSummary
    ResourceSnapshotJobSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobSummary, name: "member")
    ResourceSnapshotPayload.add_member(:opportunity_summary, Types::ResourceSnapshotPayload::OpportunitySummary, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunitySummaryView, name: "OpportunitySummary"))
    ResourceSnapshotPayload.add_member(:unknown, Types::ResourceSnapshotPayload::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceSnapshotPayload.type = Types::ResourceSnapshotPayload
    ResourceSnapshotSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotArn, name: "Arn"))
    ResourceSnapshotSummary.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotRevision, name: "Revision"))
    ResourceSnapshotSummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceSnapshotSummary.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceId"))
    ResourceSnapshotSummary.add_member(:resource_snapshot_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTemplateName, name: "ResourceSnapshotTemplateName"))
    ResourceSnapshotSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccount, name: "CreatedBy"))
    ResourceSnapshotSummary.type = Types::ResourceSnapshotSummary
    ResourceSnapshotSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotSummary, name: "member")
    ResourceType.add_member(:opportunity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPPORTUNITY", traits: {"smithy.api#enumValue" => "Opportunity"}))
    RevenueModel.add_member(:contract, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTRACT", traits: {"smithy.api#enumValue" => "Contract"}))
    RevenueModel.add_member(:pay_as_you_go, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAY_AS_YOU_GO", traits: {"smithy.api#enumValue" => "Pay-as-you-go"}))
    RevenueModel.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBSCRIPTION", traits: {"smithy.api#enumValue" => "Subscription"}))
    ReviewStatus.add_member(:pending_submission, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_SUBMISSION", traits: {"smithy.api#enumValue" => "Pending Submission"}))
    ReviewStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "Submitted"}))
    ReviewStatus.add_member(:in_review, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_REVIEW", traits: {"smithy.api#enumValue" => "In review"}))
    ReviewStatus.add_member(:approved, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPROVED", traits: {"smithy.api#enumValue" => "Approved"}))
    ReviewStatus.add_member(:rejected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECTED", traits: {"smithy.api#enumValue" => "Rejected"}))
    ReviewStatus.add_member(:action_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_REQUIRED", traits: {"smithy.api#enumValue" => "Action Required"}))
    SalesActivities.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SalesActivity, name: "member")
    SalesActivity.add_member(:initialized_discussions_with_customer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INITIALIZED_DISCUSSIONS_WITH_CUSTOMER", traits: {"smithy.api#enumValue" => "Initialized discussions with customer"}))
    SalesActivity.add_member(:customer_has_shown_interest, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_HAS_SHOWN_INTEREST", traits: {"smithy.api#enumValue" => "Customer has shown interest in solution"}))
    SalesActivity.add_member(:conducted_poc_demo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONDUCTED_POC_DEMO", traits: {"smithy.api#enumValue" => "Conducted POC / Demo"}))
    SalesActivity.add_member(:in_evaluation_planning_stage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_EVALUATION_PLANNING_STAGE", traits: {"smithy.api#enumValue" => "In evaluation / planning stage"}))
    SalesActivity.add_member(:agreed_on_solution_to_business_problem, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGREED_ON_SOLUTION_TO_BUSINESS_PROBLEM", traits: {"smithy.api#enumValue" => "Agreed on solution to Business Problem"}))
    SalesActivity.add_member(:completed_action_plan, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED_ACTION_PLAN", traits: {"smithy.api#enumValue" => "Completed Action Plan"}))
    SalesActivity.add_member(:finalized_deployment_needs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FINALIZED_DEPLOYMENT_NEEDS", traits: {"smithy.api#enumValue" => "Finalized Deployment Need"}))
    SalesActivity.add_member(:sow_signed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SOW_SIGNED", traits: {"smithy.api#enumValue" => "SOW Signed"}))
    SalesInvolvementType.add_member(:for_visibility_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOR_VISIBILITY_ONLY", traits: {"smithy.api#enumValue" => "For Visibility Only"}))
    SalesInvolvementType.add_member(:co_sell, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CO_SELL", traits: {"smithy.api#enumValue" => "Co-Sell"}))
    SenderContact.add_member(:email, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderContactEmail, name: "Email", traits: {"smithy.api#required" => {}}))
    SenderContact.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "FirstName"))
    SenderContact.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "LastName"))
    SenderContact.add_member(:business_title, ::Smithy::Schema::Shapes::MemberShape.new(target: JobTitle, name: "BusinessTitle"))
    SenderContact.add_member(:phone, ::Smithy::Schema::Shapes::MemberShape.new(target: PhoneNumber, name: "Phone"))
    SenderContact.type = Types::SenderContact
    SenderContactList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SenderContact, name: "member")
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SoftwareRevenue.add_member(:delivery_model, ::Smithy::Schema::Shapes::MemberShape.new(target: RevenueModel, name: "DeliveryModel"))
    SoftwareRevenue.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MonetaryValue, name: "Value"))
    SoftwareRevenue.add_member(:effective_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "EffectiveDate"))
    SoftwareRevenue.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "ExpirationDate"))
    SoftwareRevenue.type = Types::SoftwareRevenue
    SolutionBase.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    SolutionBase.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionIdentifier, name: "Id", traits: {"smithy.api#required" => {}}))
    SolutionBase.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionArn, name: "Arn"))
    SolutionBase.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Name", traits: {"smithy.api#required" => {}}))
    SolutionBase.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    SolutionBase.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Category", traits: {"smithy.api#required" => {}}))
    SolutionBase.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "CreatedDate", traits: {"smithy.api#required" => {}}))
    SolutionBase.type = Types::SolutionBase
    SolutionIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionIdentifier, name: "member")
    SolutionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionBase, name: "member")
    SolutionSort.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder", traits: {"smithy.api#required" => {}}))
    SolutionSort.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SolutionSortName, name: "SortBy", traits: {"smithy.api#required" => {}}))
    SolutionSort.type = Types::SolutionSort
    SolutionSortName.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTIFIER", traits: {"smithy.api#enumValue" => "Identifier"}))
    SolutionSortName.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NAME", traits: {"smithy.api#enumValue" => "Name"}))
    SolutionSortName.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STATUS", traits: {"smithy.api#enumValue" => "Status"}))
    SolutionSortName.add_member(:category, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CATEGORY", traits: {"smithy.api#enumValue" => "Category"}))
    SolutionSortName.add_member(:createddate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATEDDATE", traits: {"smithy.api#enumValue" => "CreatedDate"}))
    SolutionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    SolutionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "Inactive"}))
    SolutionStatus.add_member(:draft, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DRAFT", traits: {"smithy.api#enumValue" => "Draft"}))
    SortBy.add_member(:created_date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED_DATE", traits: {"smithy.api#enumValue" => "CreatedDate"}))
    SortObject.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SortBy, name: "SortBy"))
    SortObject.add_member(:sort_order, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "SortOrder"))
    SortObject.type = Types::SortObject
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASCENDING", traits: {"smithy.api#enumValue" => "ASCENDING"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESCENDING", traits: {"smithy.api#enumValue" => "DESCENDING"}))
    Stage.add_member(:prospect, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROSPECT", traits: {"smithy.api#enumValue" => "Prospect"}))
    Stage.add_member(:qualified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUALIFIED", traits: {"smithy.api#enumValue" => "Qualified"}))
    Stage.add_member(:technical_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TECHNICAL_VALIDATION", traits: {"smithy.api#enumValue" => "Technical Validation"}))
    Stage.add_member(:business_validation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_VALIDATION", traits: {"smithy.api#enumValue" => "Business Validation"}))
    Stage.add_member(:committed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMMITTED", traits: {"smithy.api#enumValue" => "Committed"}))
    Stage.add_member(:launched, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAUNCHED", traits: {"smithy.api#enumValue" => "Launched"}))
    Stage.add_member(:closed_lost, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLOSED_LOST", traits: {"smithy.api#enumValue" => "Closed Lost"}))
    StartEngagementByAcceptingInvitationTaskRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartEngagementByAcceptingInvitationTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    StartEngagementByAcceptingInvitationTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationArnOrIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    StartEngagementByAcceptingInvitationTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartEngagementByAcceptingInvitationTaskRequest.type = Types::StartEngagementByAcceptingInvitationTaskRequest
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdentifier, name: "TaskId"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "TaskStatus"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonCode, name: "ReasonCode"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:opportunity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "OpportunityId"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:resource_snapshot_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobIdentifier, name: "ResourceSnapshotJobId"))
    StartEngagementByAcceptingInvitationTaskResponse.add_member(:engagement_invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationIdentifier, name: "EngagementInvitationId"))
    StartEngagementByAcceptingInvitationTaskResponse.type = Types::StartEngagementByAcceptingInvitationTaskResponse
    StartEngagementFromOpportunityTaskRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartEngagementFromOpportunityTaskRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#length" => {"min" => 1}, "smithy.api#required" => {}}))
    StartEngagementFromOpportunityTaskRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    StartEngagementFromOpportunityTaskRequest.add_member(:aws_submission, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsSubmission, name: "AwsSubmission", traits: {"smithy.api#required" => {}}))
    StartEngagementFromOpportunityTaskRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    StartEngagementFromOpportunityTaskRequest.type = Types::StartEngagementFromOpportunityTaskRequest
    StartEngagementFromOpportunityTaskResponse.add_member(:task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskIdentifier, name: "TaskId"))
    StartEngagementFromOpportunityTaskResponse.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArn, name: "TaskArn"))
    StartEngagementFromOpportunityTaskResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartTime"))
    StartEngagementFromOpportunityTaskResponse.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "TaskStatus"))
    StartEngagementFromOpportunityTaskResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    StartEngagementFromOpportunityTaskResponse.add_member(:reason_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ReasonCode, name: "ReasonCode"))
    StartEngagementFromOpportunityTaskResponse.add_member(:opportunity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "OpportunityId"))
    StartEngagementFromOpportunityTaskResponse.add_member(:resource_snapshot_job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobIdentifier, name: "ResourceSnapshotJobId"))
    StartEngagementFromOpportunityTaskResponse.add_member(:engagement_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementIdentifier, name: "EngagementId"))
    StartEngagementFromOpportunityTaskResponse.add_member(:engagement_invitation_id, ::Smithy::Schema::Shapes::MemberShape.new(target: EngagementInvitationIdentifier, name: "EngagementInvitationId"))
    StartEngagementFromOpportunityTaskResponse.type = Types::StartEngagementFromOpportunityTaskResponse
    StartResourceSnapshotJobRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StartResourceSnapshotJobRequest.add_member(:resource_snapshot_job_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobIdentifier, name: "ResourceSnapshotJobIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Identifier"}))
    StartResourceSnapshotJobRequest.type = Types::StartResourceSnapshotJobRequest
    StopResourceSnapshotJobRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    StopResourceSnapshotJobRequest.add_member(:resource_snapshot_job_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSnapshotJobIdentifier, name: "ResourceSnapshotJobIdentifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Identifier"}))
    StopResourceSnapshotJobRequest.type = Types::StopResourceSnapshotJobRequest
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    SubmitOpportunityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    SubmitOpportunityRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "Identifier"}))
    SubmitOpportunityRequest.add_member(:involvement_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SalesInvolvementType, name: "InvolvementType", traits: {"smithy.api#required" => {}}))
    SubmitOpportunityRequest.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: Visibility, name: "Visibility"))
    SubmitOpportunityRequest.type = Types::SubmitOpportunityRequest
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TaskIdentifiers.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskArnOrIdentifier, name: "member")
    TaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TaskStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    TaskStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    TaskStatuses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "member")
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TaggableResourceArn, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateOpportunityRequest.add_member(:catalog, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogIdentifier, name: "Catalog", traits: {"smithy.api#required" => {}}))
    UpdateOpportunityRequest.add_member(:primary_needs_from_aws, ::Smithy::Schema::Shapes::MemberShape.new(target: PrimaryNeedsFromAws, name: "PrimaryNeedsFromAws"))
    UpdateOpportunityRequest.add_member(:national_security, ::Smithy::Schema::Shapes::MemberShape.new(target: NationalSecurity, name: "NationalSecurity"))
    UpdateOpportunityRequest.add_member(:partner_opportunity_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "PartnerOpportunityIdentifier", traits: {"smithy.api#length" => {"max" => 64}}))
    UpdateOpportunityRequest.add_member(:customer, ::Smithy::Schema::Shapes::MemberShape.new(target: Customer, name: "Customer"))
    UpdateOpportunityRequest.add_member(:project, ::Smithy::Schema::Shapes::MemberShape.new(target: Project, name: "Project"))
    UpdateOpportunityRequest.add_member(:opportunity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityType, name: "OpportunityType"))
    UpdateOpportunityRequest.add_member(:marketing, ::Smithy::Schema::Shapes::MemberShape.new(target: Marketing, name: "Marketing"))
    UpdateOpportunityRequest.add_member(:software_revenue, ::Smithy::Schema::Shapes::MemberShape.new(target: SoftwareRevenue, name: "SoftwareRevenue"))
    UpdateOpportunityRequest.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedDate", traits: {"smithy.api#required" => {}}))
    UpdateOpportunityRequest.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "Identifier", traits: {"smithy.api#required" => {}}))
    UpdateOpportunityRequest.add_member(:life_cycle, ::Smithy::Schema::Shapes::MemberShape.new(target: LifeCycle, name: "LifeCycle"))
    UpdateOpportunityRequest.type = Types::UpdateOpportunityRequest
    UpdateOpportunityResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: OpportunityIdentifier, name: "Id", traits: {"smithy.api#required" => {}}))
    UpdateOpportunityResponse.add_member(:last_modified_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "LastModifiedDate", traits: {"smithy.api#required" => {}}))
    UpdateOpportunityResponse.type = Types::UpdateOpportunityResponse
    UseCases.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "Reason", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:error_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionErrorList, name: "ErrorList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionError.add_member(:field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "FieldName"))
    ValidationExceptionError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionErrorCode, name: "Code", traits: {"smithy.api#required" => {}}))
    ValidationExceptionError.type = Types::ValidationExceptionError
    ValidationExceptionErrorCode.add_member(:required_field_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRED_FIELD_MISSING", traits: {"smithy.api#enumValue" => "REQUIRED_FIELD_MISSING"}))
    ValidationExceptionErrorCode.add_member(:invalid_enum_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_ENUM_VALUE", traits: {"smithy.api#enumValue" => "INVALID_ENUM_VALUE"}))
    ValidationExceptionErrorCode.add_member(:invalid_string_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_STRING_FORMAT", traits: {"smithy.api#enumValue" => "INVALID_STRING_FORMAT"}))
    ValidationExceptionErrorCode.add_member(:invalid_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_VALUE", traits: {"smithy.api#enumValue" => "INVALID_VALUE"}))
    ValidationExceptionErrorCode.add_member(:too_many_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOO_MANY_VALUES", traits: {"smithy.api#enumValue" => "TOO_MANY_VALUES"}))
    ValidationExceptionErrorCode.add_member(:invalid_resource_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_RESOURCE_STATE", traits: {"smithy.api#enumValue" => "INVALID_RESOURCE_STATE"}))
    ValidationExceptionErrorCode.add_member(:duplicate_key_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUPLICATE_KEY_VALUE", traits: {"smithy.api#enumValue" => "DUPLICATE_KEY_VALUE"}))
    ValidationExceptionErrorCode.add_member(:value_out_of_range, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VALUE_OUT_OF_RANGE", traits: {"smithy.api#enumValue" => "VALUE_OUT_OF_RANGE"}))
    ValidationExceptionErrorCode.add_member(:action_not_permitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTION_NOT_PERMITTED", traits: {"smithy.api#enumValue" => "ACTION_NOT_PERMITTED"}))
    ValidationExceptionErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionError, name: "member")
    ValidationExceptionReason.add_member(:request_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUEST_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "REQUEST_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:business_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUSINESS_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "BUSINESS_VALIDATION_FAILED"}))
    Visibility.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL", traits: {"smithy.api#enumValue" => "Full"}))
    Visibility.add_member(:limited, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIMITED", traits: {"smithy.api#enumValue" => "Limited"}))

    AWSPartnerCentralSelling = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.partnercentralselling#AWSPartnerCentralSelling"
      service.name = "AWSPartnerCentralSelling"
      service.version = "2022-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "PartnerCentral Selling", "endpointPrefix" => "partnercentral-selling", "arnNamespace" => "partnercentral", "cloudTrailEventSource" => "partnercentral-selling.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "partnercentral-selling"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#defineConditionKeys" => {"partnercentral:RelatedEntityType" => {"type" => "String", "relativeDocumentation" => "page.html#RelatedEntityType", "documentation" => "Filters access by entity types for Opportunity association. Accepted values: [Solutions, AwsProducts, AwsMarketplaceOffers]"}, "partnercentral:Catalog" => {"type" => "String", "relativeDocumentation" => "page.html#Catalog", "documentation" => "Filters access by a specific Catalog. Accepted values: [AWS, Sandbox]"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by the tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Partner Central Selling API"}
      service.add_operation(:accept_engagement_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#AcceptEngagementInvitation"
        operation.name = "AcceptEngagementInvitation"
        operation.input = AcceptEngagementInvitationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to accept Engagement Invitations on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/AcceptEngagementInvitation", "code" => 200}}
      end)
      service.add_operation(:assign_opportunity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#AssignOpportunity"
        operation.name = "AssignOpportunity"
        operation.input = AssignOpportunityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to assign Opportunities on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/AssignOpportunity", "code" => 200}}
      end)
      service.add_operation(:associate_opportunity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#AssociateOpportunity"
        operation.name = "AssociateOpportunity"
        operation.input = AssociateOpportunityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:RelatedEntityType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to associate Opportunities on AWS Partner Central with other entities"}, "smithy.api#http" => {"method" => "POST", "uri" => "/AssociateOpportunity", "code" => 200}}
      end)
      service.add_operation(:create_engagement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#CreateEngagement"
        operation.name = "CreateEngagement"
        operation.input = CreateEngagementRequest
        operation.output = CreateEngagementResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to creating engagements in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/CreateEngagement", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_engagement_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#CreateEngagementInvitation"
        operation.name = "CreateEngagementInvitation"
        operation.input = CreateEngagementInvitationRequest
        operation.output = CreateEngagementInvitationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to creating engagement invitations in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/CreateEngagementInvitation", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_opportunity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#CreateOpportunity"
        operation.name = "CreateOpportunity"
        operation.input = CreateOpportunityRequest
        operation.output = CreateOpportunityResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to create new Opportunities on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/CreateOpportunity", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_resource_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#CreateResourceSnapshot"
        operation.name = "CreateResourceSnapshot"
        operation.input = CreateResourceSnapshotRequest
        operation.output = CreateResourceSnapshotResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to creating resource snapshots in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/CreateResourceSnapshot", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_resource_snapshot_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#CreateResourceSnapshotJob"
        operation.name = "CreateResourceSnapshotJob"
        operation.input = CreateResourceSnapshotJobRequest
        operation.output = CreateResourceSnapshotJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to creating resource snapshot jobs in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/CreateResourceSnapshotJob", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_resource_snapshot_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#DeleteResourceSnapshotJob"
        operation.name = "DeleteResourceSnapshotJob"
        operation.input = DeleteResourceSnapshotJobRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to deleting resource snapshot jobs on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/DeleteResourceSnapshotJob", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:disassociate_opportunity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#DisassociateOpportunity"
        operation.name = "DisassociateOpportunity"
        operation.input = DisassociateOpportunityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "partnercentral:RelatedEntityType"], "aws.iam#iamAction" => {"documentation" => "Grants permission to disassociate Opportunities on AWS Partner Central from other entities"}, "smithy.api#http" => {"method" => "POST", "uri" => "/DisassociateOpportunity", "code" => 200}}
      end)
      service.add_operation(:get_aws_opportunity_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#GetAwsOpportunitySummary"
        operation.name = "GetAwsOpportunitySummary"
        operation.input = GetAwsOpportunitySummaryRequest
        operation.output = GetAwsOpportunitySummaryResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve AWS Opportunity Summaries for Opportunities on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetAwsOpportunitySummary", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_engagement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#GetEngagement"
        operation.name = "GetEngagement"
        operation.input = GetEngagementRequest
        operation.output = GetEngagementResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieval of engagement details in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetEngagement", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_engagement_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#GetEngagementInvitation"
        operation.name = "GetEngagementInvitation"
        operation.input = GetEngagementInvitationRequest
        operation.output = GetEngagementInvitationResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details of Engagement Invitations on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetEngagementInvitation", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_opportunity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#GetOpportunity"
        operation.name = "GetOpportunity"
        operation.input = GetOpportunityRequest
        operation.output = GetOpportunityResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieve details of Opportunities on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetOpportunity", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_snapshot, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#GetResourceSnapshot"
        operation.name = "GetResourceSnapshot"
        operation.input = GetResourceSnapshotRequest
        operation.output = GetResourceSnapshotResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieving resource snapshot details in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetResourceSnapshot", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_resource_snapshot_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#GetResourceSnapshotJob"
        operation.name = "GetResourceSnapshotJob"
        operation.input = GetResourceSnapshotJobRequest
        operation.output = GetResourceSnapshotJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieving resource snapshot job details in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetResourceSnapshotJob", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_selling_system_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#GetSellingSystemSettings"
        operation.name = "GetSellingSystemSettings"
        operation.input = GetSellingSystemSettingsRequest
        operation.output = GetSellingSystemSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to retrieving system settings settings in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/GetSellingSystemSettings", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_engagement_by_accepting_invitation_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#ListEngagementByAcceptingInvitationTasks"
        operation.name = "ListEngagementByAcceptingInvitationTasks"
        operation.input = ListEngagementByAcceptingInvitationTasksRequest
        operation.output = ListEngagementByAcceptingInvitationTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to listing engagements by accepting invitation tasks in AWS Partner\nCentral"}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListEngagementByAcceptingInvitationTasks", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEngagementByAcceptingInvitationTasks.new
      end)
      service.add_operation(:list_engagement_from_opportunity_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#ListEngagementFromOpportunityTasks"
        operation.name = "ListEngagementFromOpportunityTasks"
        operation.input = ListEngagementFromOpportunityTasksRequest
        operation.output = ListEngagementFromOpportunityTasksResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to listing engagements from opportunity tasks in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListEngagementFromOpportunityTasks", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEngagementFromOpportunityTasks.new
      end)
      service.add_operation(:list_engagement_invitations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#ListEngagementInvitations"
        operation.name = "ListEngagementInvitations"
        operation.input = ListEngagementInvitationsRequest
        operation.output = ListEngagementInvitationsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list Engagement Invitations on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListEngagementInvitations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEngagementInvitations.new
      end)
      service.add_operation(:list_engagement_members, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#ListEngagementMembers"
        operation.name = "ListEngagementMembers"
        operation.input = ListEngagementMembersRequest
        operation.output = ListEngagementMembersResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to listing engagement members in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListEngagementMembers", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEngagementMembers.new
      end)
      service.add_operation(:list_engagement_resource_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#ListEngagementResourceAssociations"
        operation.name = "ListEngagementResourceAssociations"
        operation.input = ListEngagementResourceAssociationsRequest
        operation.output = ListEngagementResourceAssociationsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to listing engagement resource associations in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListEngagementResourceAssociations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEngagementResourceAssociations.new
      end)
      service.add_operation(:list_engagements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#ListEngagements"
        operation.name = "ListEngagements"
        operation.input = ListEngagementsRequest
        operation.output = ListEngagementsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to listing engagements in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListEngagements", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEngagements.new
      end)
      service.add_operation(:list_opportunities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#ListOpportunities"
        operation.name = "ListOpportunities"
        operation.input = ListOpportunitiesRequest
        operation.output = ListOpportunitiesResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list Opportunities on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListOpportunities", "code" => 200}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListOpportunitiesError", "params" => {"Catalog" => nil}, "expect" => {"failure" => {"errorId" => "com.amazonaws.partnercentralselling#ValidationException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListOpportunities.new
      end)
      service.add_operation(:list_resource_snapshot_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#ListResourceSnapshotJobs"
        operation.name = "ListResourceSnapshotJobs"
        operation.input = ListResourceSnapshotJobsRequest
        operation.output = ListResourceSnapshotJobsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to listing resource snapshot jobs in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListResourceSnapshotJobs", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceSnapshotJobs.new
      end)
      service.add_operation(:list_resource_snapshots, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#ListResourceSnapshots"
        operation.name = "ListResourceSnapshots"
        operation.input = ListResourceSnapshotsRequest
        operation.output = ListResourceSnapshotsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to listing resource snapshots in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListResourceSnapshots", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListResourceSnapshots.new
      end)
      service.add_operation(:list_solutions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#ListSolutions"
        operation.name = "ListSolutions"
        operation.input = ListSolutionsRequest
        operation.output = ListSolutionsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to list Solutions on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListSolutions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSolutions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "aws:ResourceTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add lists tags to a resource. Supported resource: ResourceSnapshotJob"}, "smithy.api#http" => {"method" => "POST", "uri" => "/ListTagsForResource", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_selling_system_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#PutSellingSystemSettings"
        operation.name = "PutSellingSystemSettings"
        operation.input = PutSellingSystemSettingsRequest
        operation.output = PutSellingSystemSettingsResponse
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to put system settings settings in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/PutSellingSystemSettings", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:reject_engagement_invitation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#RejectEngagementInvitation"
        operation.name = "RejectEngagementInvitation"
        operation.input = RejectEngagementInvitationRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to reject Engagement Invitations on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/RejectEngagementInvitation", "code" => 200}}
      end)
      service.add_operation(:start_engagement_by_accepting_invitation_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#StartEngagementByAcceptingInvitationTask"
        operation.name = "StartEngagementByAcceptingInvitationTask"
        operation.input = StartEngagementByAcceptingInvitationTaskRequest
        operation.output = StartEngagementByAcceptingInvitationTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "aws:RequestTag/${TagKey}", "aws:ResourceTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"requiredActions" => ["partnercentral:CreateOpportunity", "partnercentral:SubmitOpportunity", "partnercentral:GetEngagementInvitation", "partnercentral:AcceptEngagementInvitation", "partnercentral:CreateResourceSnapshotJob", "partnercentral:StartResourceSnapshotJob"], "documentation" => "Grants permission to initiate tasks that start Engagements on AWS Partner Central by accepting an Engagement Invitation"}, "smithy.api#http" => {"method" => "POST", "uri" => "/StartEngagementByAcceptingInvitationTask", "code" => 200}}
      end)
      service.add_operation(:start_engagement_from_opportunity_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#StartEngagementFromOpportunityTask"
        operation.name = "StartEngagementFromOpportunityTask"
        operation.input = StartEngagementFromOpportunityTaskRequest
        operation.output = StartEngagementFromOpportunityTaskResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "aws:RequestTag/${TagKey}", "aws:ResourceTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"requiredActions" => ["partnercentral:CreateEngagement", "partnercentral:SubmitOpportunity", "partnercentral:GetOpportunity", "partnercentral:CreateResourceSnapshotJob", "partnercentral:CreateEngagementInvitation", "partnercentral:StartResourceSnapshotJob"], "documentation" => "Grants permission to initiate tasks that start Engagements from Opportunities on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/StartEngagementFromOpportunityTask", "code" => 200}}
      end)
      service.add_operation(:start_resource_snapshot_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#StartResourceSnapshotJob"
        operation.name = "StartResourceSnapshotJob"
        operation.input = StartResourceSnapshotJobRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to starting resource snapshot jobs in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/StartResourceSnapshotJob", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_resource_snapshot_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#StopResourceSnapshotJob"
        operation.name = "StopResourceSnapshotJob"
        operation.input = StopResourceSnapshotJobRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to stopping resource snapshot jobs in AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/StopResourceSnapshotJob", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:submit_opportunity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#SubmitOpportunity"
        operation.name = "SubmitOpportunity"
        operation.input = SubmitOpportunityRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to submit Opportunities on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/SubmitOpportunity", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "aws:ResourceTag/${TagKey}", "aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to add new tags to a resource. Supported resource: ResourceSnapshotJob"}, "smithy.api#http" => {"method" => "POST", "uri" => "/TagResource", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog", "aws:ResourceTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from a resource. Supported resource: ResourceSnapshotJob"}, "smithy.api#http" => {"method" => "POST", "uri" => "/UntagResource", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_opportunity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.partnercentralselling#UpdateOpportunity"
        operation.name = "UpdateOpportunity"
        operation.input = UpdateOpportunityRequest
        operation.output = UpdateOpportunityResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.iam#conditionKeys" => ["partnercentral:Catalog"], "aws.iam#iamAction" => {"documentation" => "Grants permission to update Opportunities on AWS Partner Central"}, "smithy.api#http" => {"method" => "POST", "uri" => "/UpdateOpportunity", "code" => 200}}
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
