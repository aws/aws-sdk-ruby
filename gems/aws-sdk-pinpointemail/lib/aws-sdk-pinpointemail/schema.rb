# frozen_string_literal: true

# This is generated code!

module Aws::PinpointEmail
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountSuspendedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#AccountSuspendedException", name: "AccountSuspendedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#AlreadyExistsException", name: "AlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#AmazonResourceName", name: "AmazonResourceName")
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BehaviorOnMxFailure = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pinpointemail#BehaviorOnMxFailure", name: "BehaviorOnMxFailure")
    BlacklistEntries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#BlacklistEntries", name: "BlacklistEntries")
    BlacklistEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#BlacklistEntry", name: "BlacklistEntry")
    BlacklistItemName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#BlacklistItemName", name: "BlacklistItemName")
    BlacklistItemNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#BlacklistItemNames", name: "BlacklistItemNames")
    BlacklistReport = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.pinpointemail#BlacklistReport", name: "BlacklistReport")
    BlacklistingDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#BlacklistingDescription", name: "BlacklistingDescription")
    Body = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#Body", name: "Body")
    CampaignId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#CampaignId", name: "CampaignId")
    Charset = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#Charset", name: "Charset")
    CloudWatchDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CloudWatchDestination", name: "CloudWatchDestination")
    CloudWatchDimensionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CloudWatchDimensionConfiguration", name: "CloudWatchDimensionConfiguration")
    CloudWatchDimensionConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#CloudWatchDimensionConfigurations", name: "CloudWatchDimensionConfigurations")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ConfigurationSetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#ConfigurationSetName", name: "ConfigurationSetName")
    ConfigurationSetNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#ConfigurationSetNameList", name: "ConfigurationSetNameList")
    Content = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#Content", name: "Content")
    CreateConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CreateConfigurationSetEventDestinationRequest", name: "CreateConfigurationSetEventDestinationRequest")
    CreateConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CreateConfigurationSetEventDestinationResponse", name: "CreateConfigurationSetEventDestinationResponse")
    CreateConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CreateConfigurationSetRequest", name: "CreateConfigurationSetRequest")
    CreateConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CreateConfigurationSetResponse", name: "CreateConfigurationSetResponse")
    CreateDedicatedIpPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CreateDedicatedIpPoolRequest", name: "CreateDedicatedIpPoolRequest")
    CreateDedicatedIpPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CreateDedicatedIpPoolResponse", name: "CreateDedicatedIpPoolResponse")
    CreateDeliverabilityTestReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CreateDeliverabilityTestReportRequest", name: "CreateDeliverabilityTestReportRequest")
    CreateDeliverabilityTestReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CreateDeliverabilityTestReportResponse", name: "CreateDeliverabilityTestReportResponse")
    CreateEmailIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CreateEmailIdentityRequest", name: "CreateEmailIdentityRequest")
    CreateEmailIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#CreateEmailIdentityResponse", name: "CreateEmailIdentityResponse")
    CustomRedirectDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#CustomRedirectDomain", name: "CustomRedirectDomain")
    DailyVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DailyVolume", name: "DailyVolume")
    DailyVolumes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#DailyVolumes", name: "DailyVolumes")
    DedicatedIp = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DedicatedIp", name: "DedicatedIp")
    DedicatedIpList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#DedicatedIpList", name: "DedicatedIpList")
    DefaultDimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#DefaultDimensionValue", name: "DefaultDimensionValue")
    DeleteConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DeleteConfigurationSetEventDestinationRequest", name: "DeleteConfigurationSetEventDestinationRequest")
    DeleteConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DeleteConfigurationSetEventDestinationResponse", name: "DeleteConfigurationSetEventDestinationResponse")
    DeleteConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DeleteConfigurationSetRequest", name: "DeleteConfigurationSetRequest")
    DeleteConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DeleteConfigurationSetResponse", name: "DeleteConfigurationSetResponse")
    DeleteDedicatedIpPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DeleteDedicatedIpPoolRequest", name: "DeleteDedicatedIpPoolRequest")
    DeleteDedicatedIpPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DeleteDedicatedIpPoolResponse", name: "DeleteDedicatedIpPoolResponse")
    DeleteEmailIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DeleteEmailIdentityRequest", name: "DeleteEmailIdentityRequest")
    DeleteEmailIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DeleteEmailIdentityResponse", name: "DeleteEmailIdentityResponse")
    DeliverabilityDashboardAccountStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pinpointemail#DeliverabilityDashboardAccountStatus", name: "DeliverabilityDashboardAccountStatus")
    DeliverabilityTestReport = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DeliverabilityTestReport", name: "DeliverabilityTestReport")
    DeliverabilityTestReports = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#DeliverabilityTestReports", name: "DeliverabilityTestReports")
    DeliverabilityTestStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pinpointemail#DeliverabilityTestStatus", name: "DeliverabilityTestStatus")
    DeliverabilityTestSubject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#DeliverabilityTestSubject", name: "DeliverabilityTestSubject")
    DeliveryOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DeliveryOptions", name: "DeliveryOptions")
    Destination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#Destination", name: "Destination")
    DimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#DimensionName", name: "DimensionName")
    DimensionValueSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pinpointemail#DimensionValueSource", name: "DimensionValueSource")
    DkimAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DkimAttributes", name: "DkimAttributes")
    DkimStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pinpointemail#DkimStatus", name: "DkimStatus")
    DnsToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#DnsToken", name: "DnsToken")
    DnsTokenList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#DnsTokenList", name: "DnsTokenList")
    Domain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#Domain", name: "Domain")
    DomainDeliverabilityCampaign = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DomainDeliverabilityCampaign", name: "DomainDeliverabilityCampaign")
    DomainDeliverabilityCampaignList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#DomainDeliverabilityCampaignList", name: "DomainDeliverabilityCampaignList")
    DomainDeliverabilityTrackingOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DomainDeliverabilityTrackingOption", name: "DomainDeliverabilityTrackingOption")
    DomainDeliverabilityTrackingOptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#DomainDeliverabilityTrackingOptions", name: "DomainDeliverabilityTrackingOptions")
    DomainIspPlacement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#DomainIspPlacement", name: "DomainIspPlacement")
    DomainIspPlacements = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#DomainIspPlacements", name: "DomainIspPlacements")
    EmailAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#EmailAddress", name: "EmailAddress")
    EmailAddressList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#EmailAddressList", name: "EmailAddressList")
    EmailContent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#EmailContent", name: "EmailContent")
    Enabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.pinpointemail#Enabled", name: "Enabled", traits: {"smithy.api#default" => false})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#ErrorMessage", name: "ErrorMessage")
    Esp = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#Esp", name: "Esp")
    Esps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#Esps", name: "Esps")
    EventDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#EventDestination", name: "EventDestination")
    EventDestinationDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#EventDestinationDefinition", name: "EventDestinationDefinition")
    EventDestinationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#EventDestinationName", name: "EventDestinationName")
    EventDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#EventDestinations", name: "EventDestinations")
    EventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pinpointemail#EventType", name: "EventType")
    EventTypes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#EventTypes", name: "EventTypes")
    GeneralEnforcementStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#GeneralEnforcementStatus", name: "GeneralEnforcementStatus")
    GetAccountRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetAccountRequest", name: "GetAccountRequest")
    GetAccountResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetAccountResponse", name: "GetAccountResponse")
    GetBlacklistReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetBlacklistReportsRequest", name: "GetBlacklistReportsRequest")
    GetBlacklistReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetBlacklistReportsResponse", name: "GetBlacklistReportsResponse")
    GetConfigurationSetEventDestinationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetConfigurationSetEventDestinationsRequest", name: "GetConfigurationSetEventDestinationsRequest")
    GetConfigurationSetEventDestinationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetConfigurationSetEventDestinationsResponse", name: "GetConfigurationSetEventDestinationsResponse")
    GetConfigurationSetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetConfigurationSetRequest", name: "GetConfigurationSetRequest")
    GetConfigurationSetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetConfigurationSetResponse", name: "GetConfigurationSetResponse")
    GetDedicatedIpRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDedicatedIpRequest", name: "GetDedicatedIpRequest")
    GetDedicatedIpResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDedicatedIpResponse", name: "GetDedicatedIpResponse")
    GetDedicatedIpsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDedicatedIpsRequest", name: "GetDedicatedIpsRequest")
    GetDedicatedIpsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDedicatedIpsResponse", name: "GetDedicatedIpsResponse")
    GetDeliverabilityDashboardOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDeliverabilityDashboardOptionsRequest", name: "GetDeliverabilityDashboardOptionsRequest")
    GetDeliverabilityDashboardOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDeliverabilityDashboardOptionsResponse", name: "GetDeliverabilityDashboardOptionsResponse")
    GetDeliverabilityTestReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDeliverabilityTestReportRequest", name: "GetDeliverabilityTestReportRequest")
    GetDeliverabilityTestReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDeliverabilityTestReportResponse", name: "GetDeliverabilityTestReportResponse")
    GetDomainDeliverabilityCampaignRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDomainDeliverabilityCampaignRequest", name: "GetDomainDeliverabilityCampaignRequest")
    GetDomainDeliverabilityCampaignResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDomainDeliverabilityCampaignResponse", name: "GetDomainDeliverabilityCampaignResponse")
    GetDomainStatisticsReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDomainStatisticsReportRequest", name: "GetDomainStatisticsReportRequest")
    GetDomainStatisticsReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetDomainStatisticsReportResponse", name: "GetDomainStatisticsReportResponse")
    GetEmailIdentityRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetEmailIdentityRequest", name: "GetEmailIdentityRequest")
    GetEmailIdentityResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#GetEmailIdentityResponse", name: "GetEmailIdentityResponse")
    Identity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#Identity", name: "Identity")
    IdentityInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#IdentityInfo", name: "IdentityInfo")
    IdentityInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#IdentityInfoList", name: "IdentityInfoList")
    IdentityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pinpointemail#IdentityType", name: "IdentityType")
    ImageUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#ImageUrl", name: "ImageUrl")
    InboxPlacementTrackingOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#InboxPlacementTrackingOption", name: "InboxPlacementTrackingOption")
    Ip = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#Ip", name: "Ip")
    IpList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#IpList", name: "IpList")
    IspName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#IspName", name: "IspName")
    IspNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#IspNameList", name: "IspNameList")
    IspPlacement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#IspPlacement", name: "IspPlacement")
    IspPlacements = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#IspPlacements", name: "IspPlacements")
    KinesisFirehoseDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#KinesisFirehoseDestination", name: "KinesisFirehoseDestination")
    LastFreshStart = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.pinpointemail#LastFreshStart", name: "LastFreshStart")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListConfigurationSetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListConfigurationSetsRequest", name: "ListConfigurationSetsRequest")
    ListConfigurationSetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListConfigurationSetsResponse", name: "ListConfigurationSetsResponse")
    ListDedicatedIpPoolsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListDedicatedIpPoolsRequest", name: "ListDedicatedIpPoolsRequest")
    ListDedicatedIpPoolsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListDedicatedIpPoolsResponse", name: "ListDedicatedIpPoolsResponse")
    ListDeliverabilityTestReportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListDeliverabilityTestReportsRequest", name: "ListDeliverabilityTestReportsRequest")
    ListDeliverabilityTestReportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListDeliverabilityTestReportsResponse", name: "ListDeliverabilityTestReportsResponse")
    ListDomainDeliverabilityCampaignsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListDomainDeliverabilityCampaignsRequest", name: "ListDomainDeliverabilityCampaignsRequest")
    ListDomainDeliverabilityCampaignsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListDomainDeliverabilityCampaignsResponse", name: "ListDomainDeliverabilityCampaignsResponse")
    ListEmailIdentitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListEmailIdentitiesRequest", name: "ListEmailIdentitiesRequest")
    ListEmailIdentitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListEmailIdentitiesResponse", name: "ListEmailIdentitiesResponse")
    ListOfDedicatedIpPools = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#ListOfDedicatedIpPools", name: "ListOfDedicatedIpPools")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MailFromAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#MailFromAttributes", name: "MailFromAttributes")
    MailFromDomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#MailFromDomainName", name: "MailFromDomainName")
    MailFromDomainNotVerifiedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#MailFromDomainNotVerifiedException", name: "MailFromDomainNotVerifiedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MailFromDomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pinpointemail#MailFromDomainStatus", name: "MailFromDomainStatus")
    Max24HourSend = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.pinpointemail#Max24HourSend", name: "Max24HourSend", traits: {"smithy.api#default" => 0})
    MaxItems = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pinpointemail#MaxItems", name: "MaxItems")
    MaxSendRate = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.pinpointemail#MaxSendRate", name: "MaxSendRate", traits: {"smithy.api#default" => 0})
    Message = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#Message", name: "Message")
    MessageContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#MessageContent", name: "MessageContent")
    MessageData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#MessageData", name: "MessageData")
    MessageRejected = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#MessageRejected", name: "MessageRejected", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MessageTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#MessageTag", name: "MessageTag")
    MessageTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#MessageTagList", name: "MessageTagList")
    MessageTagName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#MessageTagName", name: "MessageTagName")
    MessageTagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#MessageTagValue", name: "MessageTagValue")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#NextToken", name: "NextToken")
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OutboundMessageId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#OutboundMessageId", name: "OutboundMessageId")
    OverallVolume = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#OverallVolume", name: "OverallVolume")
    Percentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.pinpointemail#Percentage", name: "Percentage")
    Percentage100Wrapper = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pinpointemail#Percentage100Wrapper", name: "Percentage100Wrapper")
    PinpointDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PinpointDestination", name: "PinpointDestination")
    PlacementStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PlacementStatistics", name: "PlacementStatistics")
    PoolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#PoolName", name: "PoolName")
    PutAccountDedicatedIpWarmupAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutAccountDedicatedIpWarmupAttributesRequest", name: "PutAccountDedicatedIpWarmupAttributesRequest")
    PutAccountDedicatedIpWarmupAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutAccountDedicatedIpWarmupAttributesResponse", name: "PutAccountDedicatedIpWarmupAttributesResponse")
    PutAccountSendingAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutAccountSendingAttributesRequest", name: "PutAccountSendingAttributesRequest")
    PutAccountSendingAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutAccountSendingAttributesResponse", name: "PutAccountSendingAttributesResponse")
    PutConfigurationSetDeliveryOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutConfigurationSetDeliveryOptionsRequest", name: "PutConfigurationSetDeliveryOptionsRequest")
    PutConfigurationSetDeliveryOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutConfigurationSetDeliveryOptionsResponse", name: "PutConfigurationSetDeliveryOptionsResponse")
    PutConfigurationSetReputationOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutConfigurationSetReputationOptionsRequest", name: "PutConfigurationSetReputationOptionsRequest")
    PutConfigurationSetReputationOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutConfigurationSetReputationOptionsResponse", name: "PutConfigurationSetReputationOptionsResponse")
    PutConfigurationSetSendingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutConfigurationSetSendingOptionsRequest", name: "PutConfigurationSetSendingOptionsRequest")
    PutConfigurationSetSendingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutConfigurationSetSendingOptionsResponse", name: "PutConfigurationSetSendingOptionsResponse")
    PutConfigurationSetTrackingOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutConfigurationSetTrackingOptionsRequest", name: "PutConfigurationSetTrackingOptionsRequest")
    PutConfigurationSetTrackingOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutConfigurationSetTrackingOptionsResponse", name: "PutConfigurationSetTrackingOptionsResponse")
    PutDedicatedIpInPoolRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutDedicatedIpInPoolRequest", name: "PutDedicatedIpInPoolRequest")
    PutDedicatedIpInPoolResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutDedicatedIpInPoolResponse", name: "PutDedicatedIpInPoolResponse")
    PutDedicatedIpWarmupAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutDedicatedIpWarmupAttributesRequest", name: "PutDedicatedIpWarmupAttributesRequest")
    PutDedicatedIpWarmupAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutDedicatedIpWarmupAttributesResponse", name: "PutDedicatedIpWarmupAttributesResponse")
    PutDeliverabilityDashboardOptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutDeliverabilityDashboardOptionRequest", name: "PutDeliverabilityDashboardOptionRequest")
    PutDeliverabilityDashboardOptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutDeliverabilityDashboardOptionResponse", name: "PutDeliverabilityDashboardOptionResponse")
    PutEmailIdentityDkimAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutEmailIdentityDkimAttributesRequest", name: "PutEmailIdentityDkimAttributesRequest")
    PutEmailIdentityDkimAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutEmailIdentityDkimAttributesResponse", name: "PutEmailIdentityDkimAttributesResponse")
    PutEmailIdentityFeedbackAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutEmailIdentityFeedbackAttributesRequest", name: "PutEmailIdentityFeedbackAttributesRequest")
    PutEmailIdentityFeedbackAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutEmailIdentityFeedbackAttributesResponse", name: "PutEmailIdentityFeedbackAttributesResponse")
    PutEmailIdentityMailFromAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutEmailIdentityMailFromAttributesRequest", name: "PutEmailIdentityMailFromAttributesRequest")
    PutEmailIdentityMailFromAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#PutEmailIdentityMailFromAttributesResponse", name: "PutEmailIdentityMailFromAttributesResponse")
    RawMessage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#RawMessage", name: "RawMessage")
    RawMessageData = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.pinpointemail#RawMessageData", name: "RawMessageData")
    RblName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#RblName", name: "RblName")
    ReportId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#ReportId", name: "ReportId")
    ReportName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#ReportName", name: "ReportName")
    ReputationOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#ReputationOptions", name: "ReputationOptions")
    SendEmailRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#SendEmailRequest", name: "SendEmailRequest")
    SendEmailResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#SendEmailResponse", name: "SendEmailResponse")
    SendQuota = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#SendQuota", name: "SendQuota")
    SendingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#SendingOptions", name: "SendingOptions")
    SendingPausedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#SendingPausedException", name: "SendingPausedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SendingPoolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#SendingPoolName", name: "SendingPoolName")
    SentLast24Hours = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.pinpointemail#SentLast24Hours", name: "SentLast24Hours", traits: {"smithy.api#default" => 0})
    SnsDestination = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#SnsDestination", name: "SnsDestination")
    Subject = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#Subject", name: "Subject")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#TagKey", name: "TagKey")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.pinpointemail#TagList", name: "TagList")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#TagValue", name: "TagValue")
    Template = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#Template", name: "Template")
    TemplateArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#TemplateArn", name: "TemplateArn")
    TemplateData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.pinpointemail#TemplateData", name: "TemplateData", traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.pinpointemail#Timestamp", name: "Timestamp")
    TlsPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pinpointemail#TlsPolicy", name: "TlsPolicy")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TrackingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#TrackingOptions", name: "TrackingOptions")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateConfigurationSetEventDestinationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#UpdateConfigurationSetEventDestinationRequest", name: "UpdateConfigurationSetEventDestinationRequest")
    UpdateConfigurationSetEventDestinationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#UpdateConfigurationSetEventDestinationResponse", name: "UpdateConfigurationSetEventDestinationResponse")
    Volume = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.pinpointemail#Volume", name: "Volume")
    VolumeStatistics = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.pinpointemail#VolumeStatistics", name: "VolumeStatistics")
    WarmupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.pinpointemail#WarmupStatus", name: "WarmupStatus")

    AccountSuspendedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccountSuspendedException.type = Types::AccountSuspendedException
    AlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AlreadyExistsException.type = Types::AlreadyExistsException
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    BadRequestException.type = Types::BadRequestException
    BehaviorOnMxFailure.add_member(:use_default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USE_DEFAULT_VALUE", traits: {"smithy.api#enumValue" => "USE_DEFAULT_VALUE"}))
    BehaviorOnMxFailure.add_member(:reject_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT_MESSAGE", traits: {"smithy.api#enumValue" => "REJECT_MESSAGE"}))
    BlacklistEntries.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistEntry, name: "member")
    BlacklistEntry.add_member(:rbl_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RblName, name: "RblName"))
    BlacklistEntry.add_member(:listing_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ListingTime"))
    BlacklistEntry.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistingDescription, name: "Description"))
    BlacklistEntry.type = Types::BlacklistEntry
    BlacklistItemNames.member = ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistItemName, name: "member")
    BlacklistReport.key = ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistItemName, name: "key")
    BlacklistReport.value = ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistEntries, name: "value")
    Body.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "Text"))
    Body.add_member(:html, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "Html"))
    Body.type = Types::Body
    CloudWatchDestination.add_member(:dimension_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDimensionConfigurations, name: "DimensionConfigurations", traits: {"smithy.api#required" => {}}))
    CloudWatchDestination.type = Types::CloudWatchDestination
    CloudWatchDimensionConfiguration.add_member(:dimension_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionName, name: "DimensionName", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:dimension_value_source, ::Smithy::Schema::Shapes::MemberShape.new(target: DimensionValueSource, name: "DimensionValueSource", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:default_dimension_value, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultDimensionValue, name: "DefaultDimensionValue", traits: {"smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.type = Types::CloudWatchDimensionConfiguration
    CloudWatchDimensionConfigurations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDimensionConfiguration, name: "member")
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConfigurationSetNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "member")
    Content.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageData, name: "Data", traits: {"smithy.api#required" => {}}))
    Content.add_member(:charset, ::Smithy::Schema::Shapes::MemberShape.new(target: Charset, name: "Charset"))
    Content.type = Types::Content
    CreateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, name: "EventDestinationName", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationDefinition, name: "EventDestination", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.type = Types::CreateConfigurationSetEventDestinationRequest
    CreateConfigurationSetEventDestinationResponse.type = Types::CreateConfigurationSetEventDestinationResponse
    CreateConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#required" => {}}))
    CreateConfigurationSetRequest.add_member(:tracking_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingOptions, name: "TrackingOptions"))
    CreateConfigurationSetRequest.add_member(:delivery_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryOptions, name: "DeliveryOptions"))
    CreateConfigurationSetRequest.add_member(:reputation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationOptions, name: "ReputationOptions"))
    CreateConfigurationSetRequest.add_member(:sending_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingOptions, name: "SendingOptions"))
    CreateConfigurationSetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateConfigurationSetRequest.type = Types::CreateConfigurationSetRequest
    CreateConfigurationSetResponse.type = Types::CreateConfigurationSetResponse
    CreateDedicatedIpPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName", traits: {"smithy.api#required" => {}}))
    CreateDedicatedIpPoolRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDedicatedIpPoolRequest.type = Types::CreateDedicatedIpPoolRequest
    CreateDedicatedIpPoolResponse.type = Types::CreateDedicatedIpPoolResponse
    CreateDeliverabilityTestReportRequest.add_member(:report_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportName, name: "ReportName"))
    CreateDeliverabilityTestReportRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromEmailAddress", traits: {"smithy.api#required" => {}}))
    CreateDeliverabilityTestReportRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailContent, name: "Content", traits: {"smithy.api#required" => {}}))
    CreateDeliverabilityTestReportRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateDeliverabilityTestReportRequest.type = Types::CreateDeliverabilityTestReportRequest
    CreateDeliverabilityTestReportResponse.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "ReportId", traits: {"smithy.api#required" => {}}))
    CreateDeliverabilityTestReportResponse.add_member(:deliverability_test_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestStatus, name: "DeliverabilityTestStatus", traits: {"smithy.api#required" => {}}))
    CreateDeliverabilityTestReportResponse.type = Types::CreateDeliverabilityTestReportResponse
    CreateEmailIdentityRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#required" => {}}))
    CreateEmailIdentityRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateEmailIdentityRequest.type = Types::CreateEmailIdentityRequest
    CreateEmailIdentityResponse.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType"))
    CreateEmailIdentityResponse.add_member(:verified_for_sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "VerifiedForSendingStatus", traits: {"smithy.api#default" => false}))
    CreateEmailIdentityResponse.add_member(:dkim_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimAttributes, name: "DkimAttributes"))
    CreateEmailIdentityResponse.type = Types::CreateEmailIdentityResponse
    DailyVolume.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartDate"))
    DailyVolume.add_member(:volume_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeStatistics, name: "VolumeStatistics"))
    DailyVolume.add_member(:domain_isp_placements, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainIspPlacements, name: "DomainIspPlacements"))
    DailyVolume.type = Types::DailyVolume
    DailyVolumes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DailyVolume, name: "member")
    DedicatedIp.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip", traits: {"smithy.api#required" => {}}))
    DedicatedIp.add_member(:warmup_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WarmupStatus, name: "WarmupStatus", traits: {"smithy.api#required" => {}}))
    DedicatedIp.add_member(:warmup_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage100Wrapper, name: "WarmupPercentage", traits: {"smithy.api#required" => {}}))
    DedicatedIp.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName"))
    DedicatedIp.type = Types::DedicatedIp
    DedicatedIpList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedIp, name: "member")
    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, name: "EventDestinationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.type = Types::DeleteConfigurationSetEventDestinationRequest
    DeleteConfigurationSetEventDestinationResponse.type = Types::DeleteConfigurationSetEventDestinationResponse
    DeleteConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetRequest.type = Types::DeleteConfigurationSetRequest
    DeleteConfigurationSetResponse.type = Types::DeleteConfigurationSetResponse
    DeleteDedicatedIpPoolRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDedicatedIpPoolRequest.type = Types::DeleteDedicatedIpPoolRequest
    DeleteDedicatedIpPoolResponse.type = Types::DeleteDedicatedIpPoolResponse
    DeleteEmailIdentityRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailIdentityRequest.type = Types::DeleteEmailIdentityRequest
    DeleteEmailIdentityResponse.type = Types::DeleteEmailIdentityResponse
    DeliverabilityDashboardAccountStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DeliverabilityDashboardAccountStatus.add_member(:pending_expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_EXPIRATION", traits: {"smithy.api#enumValue" => "PENDING_EXPIRATION"}))
    DeliverabilityDashboardAccountStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DeliverabilityTestReport.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "ReportId"))
    DeliverabilityTestReport.add_member(:report_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportName, name: "ReportName"))
    DeliverabilityTestReport.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestSubject, name: "Subject"))
    DeliverabilityTestReport.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromEmailAddress"))
    DeliverabilityTestReport.add_member(:create_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateDate"))
    DeliverabilityTestReport.add_member(:deliverability_test_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestStatus, name: "DeliverabilityTestStatus"))
    DeliverabilityTestReport.type = Types::DeliverabilityTestReport
    DeliverabilityTestReports.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestReport, name: "member")
    DeliverabilityTestStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeliverabilityTestStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeliveryOptions.add_member(:tls_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsPolicy, name: "TlsPolicy"))
    DeliveryOptions.add_member(:sending_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "SendingPoolName"))
    DeliveryOptions.type = Types::DeliveryOptions
    Destination.add_member(:to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, name: "ToAddresses"))
    Destination.add_member(:cc_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, name: "CcAddresses"))
    Destination.add_member(:bcc_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, name: "BccAddresses"))
    Destination.type = Types::Destination
    DimensionValueSource.add_member(:message_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MESSAGE_TAG", traits: {"smithy.api#enumValue" => "MESSAGE_TAG"}))
    DimensionValueSource.add_member(:email_header, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_HEADER", traits: {"smithy.api#enumValue" => "EMAIL_HEADER"}))
    DimensionValueSource.add_member(:link_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINK_TAG", traits: {"smithy.api#enumValue" => "LINK_TAG"}))
    DkimAttributes.add_member(:signing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SigningEnabled", traits: {"smithy.api#default" => false}))
    DkimAttributes.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimStatus, name: "Status"))
    DkimAttributes.add_member(:tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: DnsTokenList, name: "Tokens"))
    DkimAttributes.type = Types::DkimAttributes
    DkimStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    DkimStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DkimStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    DkimStatus.add_member(:temporary_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEMPORARY_FAILURE", traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    DkimStatus.add_member(:not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_STARTED", traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    DnsTokenList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DnsToken, name: "member")
    DomainDeliverabilityCampaign.add_member(:campaign_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CampaignId, name: "CampaignId"))
    DomainDeliverabilityCampaign.add_member(:image_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageUrl, name: "ImageUrl"))
    DomainDeliverabilityCampaign.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Subject, name: "Subject"))
    DomainDeliverabilityCampaign.add_member(:from_address, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "FromAddress"))
    DomainDeliverabilityCampaign.add_member(:sending_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: IpList, name: "SendingIps"))
    DomainDeliverabilityCampaign.add_member(:first_seen_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "FirstSeenDateTime"))
    DomainDeliverabilityCampaign.add_member(:last_seen_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastSeenDateTime"))
    DomainDeliverabilityCampaign.add_member(:inbox_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "InboxCount"))
    DomainDeliverabilityCampaign.add_member(:spam_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "SpamCount"))
    DomainDeliverabilityCampaign.add_member(:read_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "ReadRate"))
    DomainDeliverabilityCampaign.add_member(:delete_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "DeleteRate"))
    DomainDeliverabilityCampaign.add_member(:read_delete_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "ReadDeleteRate"))
    DomainDeliverabilityCampaign.add_member(:projected_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "ProjectedVolume"))
    DomainDeliverabilityCampaign.add_member(:esps, ::Smithy::Schema::Shapes::MemberShape.new(target: Esps, name: "Esps"))
    DomainDeliverabilityCampaign.type = Types::DomainDeliverabilityCampaign
    DomainDeliverabilityCampaignList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityCampaign, name: "member")
    DomainDeliverabilityTrackingOption.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "Domain"))
    DomainDeliverabilityTrackingOption.add_member(:subscription_start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubscriptionStartDate"))
    DomainDeliverabilityTrackingOption.add_member(:inbox_placement_tracking_option, ::Smithy::Schema::Shapes::MemberShape.new(target: InboxPlacementTrackingOption, name: "InboxPlacementTrackingOption"))
    DomainDeliverabilityTrackingOption.type = Types::DomainDeliverabilityTrackingOption
    DomainDeliverabilityTrackingOptions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityTrackingOption, name: "member")
    DomainIspPlacement.add_member(:isp_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IspName, name: "IspName"))
    DomainIspPlacement.add_member(:inbox_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "InboxRawCount"))
    DomainIspPlacement.add_member(:spam_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "SpamRawCount"))
    DomainIspPlacement.add_member(:inbox_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "InboxPercentage"))
    DomainIspPlacement.add_member(:spam_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "SpamPercentage"))
    DomainIspPlacement.type = Types::DomainIspPlacement
    DomainIspPlacements.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainIspPlacement, name: "member")
    EmailAddressList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "member")
    EmailContent.add_member(:simple, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "Simple"))
    EmailContent.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: RawMessage, name: "Raw"))
    EmailContent.add_member(:template, ::Smithy::Schema::Shapes::MemberShape.new(target: Template, name: "Template"))
    EmailContent.type = Types::EmailContent
    Esps.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Esp, name: "member")
    EventDestination.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, name: "Name", traits: {"smithy.api#required" => {}}))
    EventDestination.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "Enabled", traits: {"smithy.api#default" => false}))
    EventDestination.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypes, name: "MatchingEventTypes", traits: {"smithy.api#required" => {}}))
    EventDestination.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, name: "KinesisFirehoseDestination"))
    EventDestination.add_member(:cloud_watch_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDestination, name: "CloudWatchDestination"))
    EventDestination.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsDestination, name: "SnsDestination"))
    EventDestination.add_member(:pinpoint_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: PinpointDestination, name: "PinpointDestination"))
    EventDestination.type = Types::EventDestination
    EventDestinationDefinition.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "Enabled", traits: {"smithy.api#default" => false}))
    EventDestinationDefinition.add_member(:matching_event_types, ::Smithy::Schema::Shapes::MemberShape.new(target: EventTypes, name: "MatchingEventTypes"))
    EventDestinationDefinition.add_member(:kinesis_firehose_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisFirehoseDestination, name: "KinesisFirehoseDestination"))
    EventDestinationDefinition.add_member(:cloud_watch_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchDestination, name: "CloudWatchDestination"))
    EventDestinationDefinition.add_member(:sns_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsDestination, name: "SnsDestination"))
    EventDestinationDefinition.add_member(:pinpoint_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: PinpointDestination, name: "PinpointDestination"))
    EventDestinationDefinition.type = Types::EventDestinationDefinition
    EventDestinations.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestination, name: "member")
    EventType.add_member(:send, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEND", traits: {"smithy.api#enumValue" => "SEND"}))
    EventType.add_member(:reject, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REJECT", traits: {"smithy.api#enumValue" => "REJECT"}))
    EventType.add_member(:bounce, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BOUNCE", traits: {"smithy.api#enumValue" => "BOUNCE"}))
    EventType.add_member(:complaint, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLAINT", traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    EventType.add_member(:delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELIVERY", traits: {"smithy.api#enumValue" => "DELIVERY"}))
    EventType.add_member(:open, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPEN", traits: {"smithy.api#enumValue" => "OPEN"}))
    EventType.add_member(:click, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLICK", traits: {"smithy.api#enumValue" => "CLICK"}))
    EventType.add_member(:rendering_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RENDERING_FAILURE", traits: {"smithy.api#enumValue" => "RENDERING_FAILURE"}))
    EventTypes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventType, name: "member")
    GetAccountRequest.type = Types::GetAccountRequest
    GetAccountResponse.add_member(:send_quota, ::Smithy::Schema::Shapes::MemberShape.new(target: SendQuota, name: "SendQuota"))
    GetAccountResponse.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    GetAccountResponse.add_member(:dedicated_ip_auto_warmup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "DedicatedIpAutoWarmupEnabled", traits: {"smithy.api#default" => false}))
    GetAccountResponse.add_member(:enforcement_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GeneralEnforcementStatus, name: "EnforcementStatus"))
    GetAccountResponse.add_member(:production_access_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "ProductionAccessEnabled", traits: {"smithy.api#default" => false}))
    GetAccountResponse.type = Types::GetAccountResponse
    GetBlacklistReportsRequest.add_member(:blacklist_item_names, ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistItemNames, name: "BlacklistItemNames", traits: {"smithy.api#httpQuery" => "BlacklistItemNames", "smithy.api#required" => {}}))
    GetBlacklistReportsRequest.type = Types::GetBlacklistReportsRequest
    GetBlacklistReportsResponse.add_member(:blacklist_report, ::Smithy::Schema::Shapes::MemberShape.new(target: BlacklistReport, name: "BlacklistReport", traits: {"smithy.api#required" => {}}))
    GetBlacklistReportsResponse.type = Types::GetBlacklistReportsResponse
    GetConfigurationSetEventDestinationsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationSetEventDestinationsRequest.type = Types::GetConfigurationSetEventDestinationsRequest
    GetConfigurationSetEventDestinationsResponse.add_member(:event_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinations, name: "EventDestinations"))
    GetConfigurationSetEventDestinationsResponse.type = Types::GetConfigurationSetEventDestinationsResponse
    GetConfigurationSetRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationSetRequest.type = Types::GetConfigurationSetRequest
    GetConfigurationSetResponse.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    GetConfigurationSetResponse.add_member(:tracking_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TrackingOptions, name: "TrackingOptions"))
    GetConfigurationSetResponse.add_member(:delivery_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryOptions, name: "DeliveryOptions"))
    GetConfigurationSetResponse.add_member(:reputation_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ReputationOptions, name: "ReputationOptions"))
    GetConfigurationSetResponse.add_member(:sending_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingOptions, name: "SendingOptions"))
    GetConfigurationSetResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    GetConfigurationSetResponse.type = Types::GetConfigurationSetResponse
    GetDedicatedIpRequest.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDedicatedIpRequest.type = Types::GetDedicatedIpRequest
    GetDedicatedIpResponse.add_member(:dedicated_ip, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedIp, name: "DedicatedIp"))
    GetDedicatedIpResponse.type = Types::GetDedicatedIpResponse
    GetDedicatedIpsRequest.add_member(:pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "PoolName", traits: {"smithy.api#httpQuery" => "PoolName"}))
    GetDedicatedIpsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    GetDedicatedIpsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    GetDedicatedIpsRequest.type = Types::GetDedicatedIpsRequest
    GetDedicatedIpsResponse.add_member(:dedicated_ips, ::Smithy::Schema::Shapes::MemberShape.new(target: DedicatedIpList, name: "DedicatedIps"))
    GetDedicatedIpsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    GetDedicatedIpsResponse.type = Types::GetDedicatedIpsResponse
    GetDeliverabilityDashboardOptionsRequest.type = Types::GetDeliverabilityDashboardOptionsRequest
    GetDeliverabilityDashboardOptionsResponse.add_member(:dashboard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "DashboardEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    GetDeliverabilityDashboardOptionsResponse.add_member(:subscription_expiry_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SubscriptionExpiryDate"))
    GetDeliverabilityDashboardOptionsResponse.add_member(:account_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityDashboardAccountStatus, name: "AccountStatus"))
    GetDeliverabilityDashboardOptionsResponse.add_member(:active_subscribed_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityTrackingOptions, name: "ActiveSubscribedDomains"))
    GetDeliverabilityDashboardOptionsResponse.add_member(:pending_expiration_subscribed_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityTrackingOptions, name: "PendingExpirationSubscribedDomains"))
    GetDeliverabilityDashboardOptionsResponse.type = Types::GetDeliverabilityDashboardOptionsResponse
    GetDeliverabilityTestReportRequest.add_member(:report_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportId, name: "ReportId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeliverabilityTestReportRequest.type = Types::GetDeliverabilityTestReportRequest
    GetDeliverabilityTestReportResponse.add_member(:deliverability_test_report, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestReport, name: "DeliverabilityTestReport", traits: {"smithy.api#required" => {}}))
    GetDeliverabilityTestReportResponse.add_member(:overall_placement, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStatistics, name: "OverallPlacement", traits: {"smithy.api#required" => {}}))
    GetDeliverabilityTestReportResponse.add_member(:isp_placements, ::Smithy::Schema::Shapes::MemberShape.new(target: IspPlacements, name: "IspPlacements", traits: {"smithy.api#required" => {}}))
    GetDeliverabilityTestReportResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageContent, name: "Message"))
    GetDeliverabilityTestReportResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    GetDeliverabilityTestReportResponse.type = Types::GetDeliverabilityTestReportResponse
    GetDomainDeliverabilityCampaignRequest.add_member(:campaign_id, ::Smithy::Schema::Shapes::MemberShape.new(target: CampaignId, name: "CampaignId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainDeliverabilityCampaignRequest.type = Types::GetDomainDeliverabilityCampaignRequest
    GetDomainDeliverabilityCampaignResponse.add_member(:domain_deliverability_campaign, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityCampaign, name: "DomainDeliverabilityCampaign", traits: {"smithy.api#required" => {}}))
    GetDomainDeliverabilityCampaignResponse.type = Types::GetDomainDeliverabilityCampaignResponse
    GetDomainStatisticsReportRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "Domain", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainStatisticsReportRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartDate", traits: {"smithy.api#httpQuery" => "StartDate", "smithy.api#required" => {}}))
    GetDomainStatisticsReportRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndDate", traits: {"smithy.api#httpQuery" => "EndDate", "smithy.api#required" => {}}))
    GetDomainStatisticsReportRequest.type = Types::GetDomainStatisticsReportRequest
    GetDomainStatisticsReportResponse.add_member(:overall_volume, ::Smithy::Schema::Shapes::MemberShape.new(target: OverallVolume, name: "OverallVolume", traits: {"smithy.api#required" => {}}))
    GetDomainStatisticsReportResponse.add_member(:daily_volumes, ::Smithy::Schema::Shapes::MemberShape.new(target: DailyVolumes, name: "DailyVolumes", traits: {"smithy.api#required" => {}}))
    GetDomainStatisticsReportResponse.type = Types::GetDomainStatisticsReportResponse
    GetEmailIdentityRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailIdentityRequest.type = Types::GetEmailIdentityRequest
    GetEmailIdentityResponse.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType"))
    GetEmailIdentityResponse.add_member(:feedback_forwarding_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "FeedbackForwardingStatus", traits: {"smithy.api#default" => false}))
    GetEmailIdentityResponse.add_member(:verified_for_sending_status, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "VerifiedForSendingStatus", traits: {"smithy.api#default" => false}))
    GetEmailIdentityResponse.add_member(:dkim_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: DkimAttributes, name: "DkimAttributes"))
    GetEmailIdentityResponse.add_member(:mail_from_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromAttributes, name: "MailFromAttributes"))
    GetEmailIdentityResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    GetEmailIdentityResponse.type = Types::GetEmailIdentityResponse
    IdentityInfo.add_member(:identity_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityType, name: "IdentityType"))
    IdentityInfo.add_member(:identity_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "IdentityName"))
    IdentityInfo.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    IdentityInfo.type = Types::IdentityInfo
    IdentityInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityInfo, name: "member")
    IdentityType.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMAIL_ADDRESS", traits: {"smithy.api#enumValue" => "EMAIL_ADDRESS"}))
    IdentityType.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN", traits: {"smithy.api#enumValue" => "DOMAIN"}))
    IdentityType.add_member(:managed_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANAGED_DOMAIN", traits: {"smithy.api#enumValue" => "MANAGED_DOMAIN"}))
    InboxPlacementTrackingOption.add_member(:global, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "Global", traits: {"smithy.api#default" => false}))
    InboxPlacementTrackingOption.add_member(:tracked_isps, ::Smithy::Schema::Shapes::MemberShape.new(target: IspNameList, name: "TrackedIsps"))
    InboxPlacementTrackingOption.type = Types::InboxPlacementTrackingOption
    IpList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "member")
    IspNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IspName, name: "member")
    IspPlacement.add_member(:isp_name, ::Smithy::Schema::Shapes::MemberShape.new(target: IspName, name: "IspName"))
    IspPlacement.add_member(:placement_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: PlacementStatistics, name: "PlacementStatistics"))
    IspPlacement.type = Types::IspPlacement
    IspPlacements.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IspPlacement, name: "member")
    KinesisFirehoseDestination.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "IamRoleArn", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "DeliveryStreamArn", traits: {"smithy.api#required" => {}}))
    KinesisFirehoseDestination.type = Types::KinesisFirehoseDestination
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListConfigurationSetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListConfigurationSetsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListConfigurationSetsRequest.type = Types::ListConfigurationSetsRequest
    ListConfigurationSetsResponse.add_member(:configuration_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetNameList, name: "ConfigurationSets"))
    ListConfigurationSetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListConfigurationSetsResponse.type = Types::ListConfigurationSetsResponse
    ListDedicatedIpPoolsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDedicatedIpPoolsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListDedicatedIpPoolsRequest.type = Types::ListDedicatedIpPoolsRequest
    ListDedicatedIpPoolsResponse.add_member(:dedicated_ip_pools, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDedicatedIpPools, name: "DedicatedIpPools"))
    ListDedicatedIpPoolsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDedicatedIpPoolsResponse.type = Types::ListDedicatedIpPoolsResponse
    ListDeliverabilityTestReportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDeliverabilityTestReportsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListDeliverabilityTestReportsRequest.type = Types::ListDeliverabilityTestReportsRequest
    ListDeliverabilityTestReportsResponse.add_member(:deliverability_test_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliverabilityTestReports, name: "DeliverabilityTestReports", traits: {"smithy.api#required" => {}}))
    ListDeliverabilityTestReportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDeliverabilityTestReportsResponse.type = Types::ListDeliverabilityTestReportsResponse
    ListDomainDeliverabilityCampaignsRequest.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartDate", traits: {"smithy.api#httpQuery" => "StartDate", "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndDate", traits: {"smithy.api#httpQuery" => "EndDate", "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:subscribed_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "SubscribedDomain", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListDomainDeliverabilityCampaignsRequest.type = Types::ListDomainDeliverabilityCampaignsRequest
    ListDomainDeliverabilityCampaignsResponse.add_member(:domain_deliverability_campaigns, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityCampaignList, name: "DomainDeliverabilityCampaigns", traits: {"smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDomainDeliverabilityCampaignsResponse.type = Types::ListDomainDeliverabilityCampaignsResponse
    ListEmailIdentitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListEmailIdentitiesRequest.add_member(:page_size, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxItems, name: "PageSize", traits: {"smithy.api#httpQuery" => "PageSize"}))
    ListEmailIdentitiesRequest.type = Types::ListEmailIdentitiesRequest
    ListEmailIdentitiesResponse.add_member(:email_identities, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityInfoList, name: "EmailIdentities"))
    ListEmailIdentitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEmailIdentitiesResponse.type = Types::ListEmailIdentitiesResponse
    ListOfDedicatedIpPools.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "member")
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "ResourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MailFromAttributes.add_member(:mail_from_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromDomainName, name: "MailFromDomain", traits: {"smithy.api#required" => {}}))
    MailFromAttributes.add_member(:mail_from_domain_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromDomainStatus, name: "MailFromDomainStatus", traits: {"smithy.api#required" => {}}))
    MailFromAttributes.add_member(:behavior_on_mx_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: BehaviorOnMxFailure, name: "BehaviorOnMxFailure", traits: {"smithy.api#required" => {}}))
    MailFromAttributes.type = Types::MailFromAttributes
    MailFromDomainNotVerifiedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MailFromDomainNotVerifiedException.type = Types::MailFromDomainNotVerifiedException
    MailFromDomainStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    MailFromDomainStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    MailFromDomainStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MailFromDomainStatus.add_member(:temporary_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEMPORARY_FAILURE", traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    Message.add_member(:subject, ::Smithy::Schema::Shapes::MemberShape.new(target: Content, name: "Subject", traits: {"smithy.api#required" => {}}))
    Message.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Body, name: "Body", traits: {"smithy.api#required" => {}}))
    Message.type = Types::Message
    MessageRejected.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    MessageRejected.type = Types::MessageRejected
    MessageTag.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagName, name: "Name", traits: {"smithy.api#required" => {}}))
    MessageTag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    MessageTag.type = Types::MessageTag
    MessageTagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTag, name: "member")
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    NotFoundException.type = Types::NotFoundException
    OverallVolume.add_member(:volume_statistics, ::Smithy::Schema::Shapes::MemberShape.new(target: VolumeStatistics, name: "VolumeStatistics"))
    OverallVolume.add_member(:read_rate_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "ReadRatePercent"))
    OverallVolume.add_member(:domain_isp_placements, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainIspPlacements, name: "DomainIspPlacements"))
    OverallVolume.type = Types::OverallVolume
    PinpointDestination.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ApplicationArn"))
    PinpointDestination.type = Types::PinpointDestination
    PlacementStatistics.add_member(:inbox_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "InboxPercentage"))
    PlacementStatistics.add_member(:spam_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "SpamPercentage"))
    PlacementStatistics.add_member(:missing_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "MissingPercentage"))
    PlacementStatistics.add_member(:spf_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "SpfPercentage"))
    PlacementStatistics.add_member(:dkim_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "DkimPercentage"))
    PlacementStatistics.type = Types::PlacementStatistics
    PutAccountDedicatedIpWarmupAttributesRequest.add_member(:auto_warmup_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "AutoWarmupEnabled", traits: {"smithy.api#default" => false}))
    PutAccountDedicatedIpWarmupAttributesRequest.type = Types::PutAccountDedicatedIpWarmupAttributesRequest
    PutAccountDedicatedIpWarmupAttributesResponse.type = Types::PutAccountDedicatedIpWarmupAttributesResponse
    PutAccountSendingAttributesRequest.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    PutAccountSendingAttributesRequest.type = Types::PutAccountSendingAttributesRequest
    PutAccountSendingAttributesResponse.type = Types::PutAccountSendingAttributesResponse
    PutConfigurationSetDeliveryOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:tls_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TlsPolicy, name: "TlsPolicy"))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:sending_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SendingPoolName, name: "SendingPoolName"))
    PutConfigurationSetDeliveryOptionsRequest.type = Types::PutConfigurationSetDeliveryOptionsRequest
    PutConfigurationSetDeliveryOptionsResponse.type = Types::PutConfigurationSetDeliveryOptionsResponse
    PutConfigurationSetReputationOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetReputationOptionsRequest.add_member(:reputation_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "ReputationMetricsEnabled", traits: {"smithy.api#default" => false}))
    PutConfigurationSetReputationOptionsRequest.type = Types::PutConfigurationSetReputationOptionsRequest
    PutConfigurationSetReputationOptionsResponse.type = Types::PutConfigurationSetReputationOptionsResponse
    PutConfigurationSetSendingOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetSendingOptionsRequest.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    PutConfigurationSetSendingOptionsRequest.type = Types::PutConfigurationSetSendingOptionsRequest
    PutConfigurationSetSendingOptionsResponse.type = Types::PutConfigurationSetSendingOptionsResponse
    PutConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetTrackingOptionsRequest.add_member(:custom_redirect_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRedirectDomain, name: "CustomRedirectDomain"))
    PutConfigurationSetTrackingOptionsRequest.type = Types::PutConfigurationSetTrackingOptionsRequest
    PutConfigurationSetTrackingOptionsResponse.type = Types::PutConfigurationSetTrackingOptionsResponse
    PutDedicatedIpInPoolRequest.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpInPoolRequest.add_member(:destination_pool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PoolName, name: "DestinationPoolName", traits: {"smithy.api#required" => {}}))
    PutDedicatedIpInPoolRequest.type = Types::PutDedicatedIpInPoolRequest
    PutDedicatedIpInPoolResponse.type = Types::PutDedicatedIpInPoolResponse
    PutDedicatedIpWarmupAttributesRequest.add_member(:ip, ::Smithy::Schema::Shapes::MemberShape.new(target: Ip, name: "Ip", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpWarmupAttributesRequest.add_member(:warmup_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage100Wrapper, name: "WarmupPercentage", traits: {"smithy.api#required" => {}}))
    PutDedicatedIpWarmupAttributesRequest.type = Types::PutDedicatedIpWarmupAttributesRequest
    PutDedicatedIpWarmupAttributesResponse.type = Types::PutDedicatedIpWarmupAttributesResponse
    PutDeliverabilityDashboardOptionRequest.add_member(:dashboard_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "DashboardEnabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    PutDeliverabilityDashboardOptionRequest.add_member(:subscribed_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDeliverabilityTrackingOptions, name: "SubscribedDomains"))
    PutDeliverabilityDashboardOptionRequest.type = Types::PutDeliverabilityDashboardOptionRequest
    PutDeliverabilityDashboardOptionResponse.type = Types::PutDeliverabilityDashboardOptionResponse
    PutEmailIdentityDkimAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityDkimAttributesRequest.add_member(:signing_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SigningEnabled", traits: {"smithy.api#default" => false}))
    PutEmailIdentityDkimAttributesRequest.type = Types::PutEmailIdentityDkimAttributesRequest
    PutEmailIdentityDkimAttributesResponse.type = Types::PutEmailIdentityDkimAttributesResponse
    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_forwarding_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "EmailForwardingEnabled", traits: {"smithy.api#default" => false}))
    PutEmailIdentityFeedbackAttributesRequest.type = Types::PutEmailIdentityFeedbackAttributesRequest
    PutEmailIdentityFeedbackAttributesResponse.type = Types::PutEmailIdentityFeedbackAttributesResponse
    PutEmailIdentityMailFromAttributesRequest.add_member(:email_identity, ::Smithy::Schema::Shapes::MemberShape.new(target: Identity, name: "EmailIdentity", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityMailFromAttributesRequest.add_member(:mail_from_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: MailFromDomainName, name: "MailFromDomain"))
    PutEmailIdentityMailFromAttributesRequest.add_member(:behavior_on_mx_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: BehaviorOnMxFailure, name: "BehaviorOnMxFailure"))
    PutEmailIdentityMailFromAttributesRequest.type = Types::PutEmailIdentityMailFromAttributesRequest
    PutEmailIdentityMailFromAttributesResponse.type = Types::PutEmailIdentityMailFromAttributesResponse
    RawMessage.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: RawMessageData, name: "Data", traits: {"smithy.api#required" => {}}))
    RawMessage.type = Types::RawMessage
    ReputationOptions.add_member(:reputation_metrics_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "ReputationMetricsEnabled", traits: {"smithy.api#default" => false}))
    ReputationOptions.add_member(:last_fresh_start, ::Smithy::Schema::Shapes::MemberShape.new(target: LastFreshStart, name: "LastFreshStart"))
    ReputationOptions.type = Types::ReputationOptions
    SendEmailRequest.add_member(:from_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FromEmailAddress"))
    SendEmailRequest.add_member(:destination, ::Smithy::Schema::Shapes::MemberShape.new(target: Destination, name: "Destination", traits: {"smithy.api#required" => {}}))
    SendEmailRequest.add_member(:reply_to_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddressList, name: "ReplyToAddresses"))
    SendEmailRequest.add_member(:feedback_forwarding_email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailAddress, name: "FeedbackForwardingEmailAddress"))
    SendEmailRequest.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: EmailContent, name: "Content", traits: {"smithy.api#required" => {}}))
    SendEmailRequest.add_member(:email_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageTagList, name: "EmailTags"))
    SendEmailRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName"))
    SendEmailRequest.type = Types::SendEmailRequest
    SendEmailResponse.add_member(:message_id, ::Smithy::Schema::Shapes::MemberShape.new(target: OutboundMessageId, name: "MessageId"))
    SendEmailResponse.type = Types::SendEmailResponse
    SendQuota.add_member(:max24_hour_send, ::Smithy::Schema::Shapes::MemberShape.new(target: Max24HourSend, name: "Max24HourSend", traits: {"smithy.api#default" => 0}))
    SendQuota.add_member(:max_send_rate, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxSendRate, name: "MaxSendRate", traits: {"smithy.api#default" => 0}))
    SendQuota.add_member(:sent_last24_hours, ::Smithy::Schema::Shapes::MemberShape.new(target: SentLast24Hours, name: "SentLast24Hours", traits: {"smithy.api#default" => 0}))
    SendQuota.type = Types::SendQuota
    SendingOptions.add_member(:sending_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Enabled, name: "SendingEnabled", traits: {"smithy.api#default" => false}))
    SendingOptions.type = Types::SendingOptions
    SendingPausedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    SendingPausedException.type = Types::SendingPausedException
    SnsDestination.add_member(:topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "TopicArn", traits: {"smithy.api#required" => {}}))
    SnsDestination.type = Types::SnsDestination
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Template.add_member(:template_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateArn, name: "TemplateArn"))
    Template.add_member(:template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateData, name: "TemplateData"))
    Template.type = Types::Template
    TlsPolicy.add_member(:require, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REQUIRE", traits: {"smithy.api#enumValue" => "REQUIRE"}))
    TlsPolicy.add_member(:optional, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OPTIONAL", traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TrackingOptions.add_member(:custom_redirect_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomRedirectDomain, name: "CustomRedirectDomain", traits: {"smithy.api#required" => {}}))
    TrackingOptions.type = Types::TrackingOptions
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceArn", traits: {"smithy.api#httpQuery" => "ResourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSetName, name: "ConfigurationSetName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationName, name: "EventDestinationName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: EventDestinationDefinition, name: "EventDestination", traits: {"smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.type = Types::UpdateConfigurationSetEventDestinationRequest
    UpdateConfigurationSetEventDestinationResponse.type = Types::UpdateConfigurationSetEventDestinationResponse
    VolumeStatistics.add_member(:inbox_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "InboxRawCount"))
    VolumeStatistics.add_member(:spam_raw_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "SpamRawCount"))
    VolumeStatistics.add_member(:projected_inbox, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "ProjectedInbox"))
    VolumeStatistics.add_member(:projected_spam, ::Smithy::Schema::Shapes::MemberShape.new(target: Volume, name: "ProjectedSpam"))
    VolumeStatistics.type = Types::VolumeStatistics
    WarmupStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    WarmupStatus.add_member(:done, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DONE", traits: {"smithy.api#enumValue" => "DONE"}))

    AmazonPinpointEmailService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pinpointemail#AmazonPinpointEmailService"
      service.name = "AmazonPinpointEmailService"
      service.version = "2018-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Pinpoint Email", "arnNamespace" => "ses", "cloudFormationName" => "PinpointEmail", "cloudTrailEventSource" => "pinpointemail.amazonaws.com", "endpointPrefix" => "email"}, "aws.auth#sigv4" => {"name" => "ses"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Pinpoint Email Service"}
      service.add_operation(:create_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#CreateConfigurationSet"
        operation.name = "CreateConfigurationSet"
        operation.input = CreateConfigurationSetRequest
        operation.output = CreateConfigurationSetResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/configuration-sets", "code" => 200}}
      end)
      service.add_operation(:create_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#CreateConfigurationSetEventDestination"
        operation.name = "CreateConfigurationSetEventDestination"
        operation.input = CreateConfigurationSetEventDestinationRequest
        operation.output = CreateConfigurationSetEventDestinationResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:create_dedicated_ip_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#CreateDedicatedIpPool"
        operation.name = "CreateDedicatedIpPool"
        operation.input = CreateDedicatedIpPoolRequest
        operation.output = CreateDedicatedIpPoolResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/dedicated-ip-pools", "code" => 200}}
      end)
      service.add_operation(:create_deliverability_test_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#CreateDeliverabilityTestReport"
        operation.name = "CreateDeliverabilityTestReport"
        operation.input = CreateDeliverabilityTestReportRequest
        operation.output = CreateDeliverabilityTestReportResponse
        operation.errors << AccountSuspendedException
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << MailFromDomainNotVerifiedException
        operation.errors << MessageRejected
        operation.errors << NotFoundException
        operation.errors << SendingPausedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/deliverability-dashboard/test", "code" => 200}}
      end)
      service.add_operation(:create_email_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#CreateEmailIdentity"
        operation.name = "CreateEmailIdentity"
        operation.input = CreateEmailIdentityRequest
        operation.output = CreateEmailIdentityResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/identities", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#DeleteConfigurationSet"
        operation.name = "DeleteConfigurationSet"
        operation.input = DeleteConfigurationSetRequest
        operation.output = DeleteConfigurationSetResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#DeleteConfigurationSetEventDestination"
        operation.name = "DeleteConfigurationSetEventDestination"
        operation.input = DeleteConfigurationSetEventDestinationRequest
        operation.output = DeleteConfigurationSetEventDestinationResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", "code" => 200}}
      end)
      service.add_operation(:delete_dedicated_ip_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#DeleteDedicatedIpPool"
        operation.name = "DeleteDedicatedIpPool"
        operation.input = DeleteDedicatedIpPoolRequest
        operation.output = DeleteDedicatedIpPoolResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/email/dedicated-ip-pools/{PoolName}", "code" => 200}}
      end)
      service.add_operation(:delete_email_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#DeleteEmailIdentity"
        operation.name = "DeleteEmailIdentity"
        operation.input = DeleteEmailIdentityRequest
        operation.output = DeleteEmailIdentityResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/email/identities/{EmailIdentity}", "code" => 200}}
      end)
      service.add_operation(:get_account, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetAccount"
        operation.name = "GetAccount"
        operation.input = GetAccountRequest
        operation.output = GetAccountResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/account", "code" => 200}}
      end)
      service.add_operation(:get_blacklist_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetBlacklistReports"
        operation.name = "GetBlacklistReports"
        operation.input = GetBlacklistReportsRequest
        operation.output = GetBlacklistReportsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/blacklist-report", "code" => 200}}
      end)
      service.add_operation(:get_configuration_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetConfigurationSet"
        operation.name = "GetConfigurationSet"
        operation.input = GetConfigurationSetRequest
        operation.output = GetConfigurationSetResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}", "code" => 200}}
      end)
      service.add_operation(:get_configuration_set_event_destinations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetConfigurationSetEventDestinations"
        operation.name = "GetConfigurationSetEventDestinations"
        operation.input = GetConfigurationSetEventDestinationsRequest
        operation.output = GetConfigurationSetEventDestinationsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:get_dedicated_ip, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDedicatedIp"
        operation.name = "GetDedicatedIp"
        operation.input = GetDedicatedIpRequest
        operation.output = GetDedicatedIpResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/dedicated-ips/{Ip}", "code" => 200}}
      end)
      service.add_operation(:get_dedicated_ips, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDedicatedIps"
        operation.name = "GetDedicatedIps"
        operation.input = GetDedicatedIpsRequest
        operation.output = GetDedicatedIpsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/dedicated-ips", "code" => 200}}
        operation[:paginator] = Paginators::GetDedicatedIps.new
      end)
      service.add_operation(:get_deliverability_dashboard_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDeliverabilityDashboardOptions"
        operation.name = "GetDeliverabilityDashboardOptions"
        operation.input = GetDeliverabilityDashboardOptionsRequest
        operation.output = GetDeliverabilityDashboardOptionsResponse
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard", "code" => 200}}
      end)
      service.add_operation(:get_deliverability_test_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDeliverabilityTestReport"
        operation.name = "GetDeliverabilityTestReport"
        operation.input = GetDeliverabilityTestReportRequest
        operation.output = GetDeliverabilityTestReportResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/test-reports/{ReportId}", "code" => 200}}
      end)
      service.add_operation(:get_domain_deliverability_campaign, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDomainDeliverabilityCampaign"
        operation.name = "GetDomainDeliverabilityCampaign"
        operation.input = GetDomainDeliverabilityCampaignRequest
        operation.output = GetDomainDeliverabilityCampaignResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/campaigns/{CampaignId}", "code" => 200}}
      end)
      service.add_operation(:get_domain_statistics_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDomainStatisticsReport"
        operation.name = "GetDomainStatisticsReport"
        operation.input = GetDomainStatisticsReportRequest
        operation.output = GetDomainStatisticsReportResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/statistics-report/{Domain}", "code" => 200}}
      end)
      service.add_operation(:get_email_identity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetEmailIdentity"
        operation.name = "GetEmailIdentity"
        operation.input = GetEmailIdentityRequest
        operation.output = GetEmailIdentityResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/identities/{EmailIdentity}", "code" => 200}}
      end)
      service.add_operation(:list_configuration_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListConfigurationSets"
        operation.name = "ListConfigurationSets"
        operation.input = ListConfigurationSetsRequest
        operation.output = ListConfigurationSetsResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/configuration-sets", "code" => 200}}
        operation[:paginator] = Paginators::ListConfigurationSets.new
      end)
      service.add_operation(:list_dedicated_ip_pools, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListDedicatedIpPools"
        operation.name = "ListDedicatedIpPools"
        operation.input = ListDedicatedIpPoolsRequest
        operation.output = ListDedicatedIpPoolsResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/dedicated-ip-pools", "code" => 200}}
        operation[:paginator] = Paginators::ListDedicatedIpPools.new
      end)
      service.add_operation(:list_deliverability_test_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListDeliverabilityTestReports"
        operation.name = "ListDeliverabilityTestReports"
        operation.input = ListDeliverabilityTestReportsRequest
        operation.output = ListDeliverabilityTestReportsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/test-reports", "code" => 200}}
        operation[:paginator] = Paginators::ListDeliverabilityTestReports.new
      end)
      service.add_operation(:list_domain_deliverability_campaigns, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListDomainDeliverabilityCampaigns"
        operation.name = "ListDomainDeliverabilityCampaigns"
        operation.input = ListDomainDeliverabilityCampaignsRequest
        operation.output = ListDomainDeliverabilityCampaignsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainDeliverabilityCampaigns.new
      end)
      service.add_operation(:list_email_identities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListEmailIdentities"
        operation.name = "ListEmailIdentities"
        operation.input = ListEmailIdentitiesRequest
        operation.output = ListEmailIdentitiesResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/identities", "code" => 200}}
        operation[:paginator] = Paginators::ListEmailIdentities.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/tags", "code" => 200}}
      end)
      service.add_operation(:put_account_dedicated_ip_warmup_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutAccountDedicatedIpWarmupAttributes"
        operation.name = "PutAccountDedicatedIpWarmupAttributes"
        operation.input = PutAccountDedicatedIpWarmupAttributesRequest
        operation.output = PutAccountDedicatedIpWarmupAttributesResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/account/dedicated-ips/warmup", "code" => 200}}
      end)
      service.add_operation(:put_account_sending_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutAccountSendingAttributes"
        operation.name = "PutAccountSendingAttributes"
        operation.input = PutAccountSendingAttributesRequest
        operation.output = PutAccountSendingAttributesResponse
        operation.errors << BadRequestException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/account/sending", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_delivery_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutConfigurationSetDeliveryOptions"
        operation.name = "PutConfigurationSetDeliveryOptions"
        operation.input = PutConfigurationSetDeliveryOptionsRequest
        operation.output = PutConfigurationSetDeliveryOptionsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/delivery-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_reputation_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutConfigurationSetReputationOptions"
        operation.name = "PutConfigurationSetReputationOptions"
        operation.input = PutConfigurationSetReputationOptionsRequest
        operation.output = PutConfigurationSetReputationOptionsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/reputation-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_sending_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutConfigurationSetSendingOptions"
        operation.name = "PutConfigurationSetSendingOptions"
        operation.input = PutConfigurationSetSendingOptionsRequest
        operation.output = PutConfigurationSetSendingOptionsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/sending", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_tracking_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutConfigurationSetTrackingOptions"
        operation.name = "PutConfigurationSetTrackingOptions"
        operation.input = PutConfigurationSetTrackingOptionsRequest
        operation.output = PutConfigurationSetTrackingOptionsResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/tracking-options", "code" => 200}}
      end)
      service.add_operation(:put_dedicated_ip_in_pool, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutDedicatedIpInPool"
        operation.name = "PutDedicatedIpInPool"
        operation.input = PutDedicatedIpInPoolRequest
        operation.output = PutDedicatedIpInPoolResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/dedicated-ips/{Ip}/pool", "code" => 200}}
      end)
      service.add_operation(:put_dedicated_ip_warmup_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutDedicatedIpWarmupAttributes"
        operation.name = "PutDedicatedIpWarmupAttributes"
        operation.input = PutDedicatedIpWarmupAttributesRequest
        operation.output = PutDedicatedIpWarmupAttributesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/dedicated-ips/{Ip}/warmup", "code" => 200}}
      end)
      service.add_operation(:put_deliverability_dashboard_option, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutDeliverabilityDashboardOption"
        operation.name = "PutDeliverabilityDashboardOption"
        operation.input = PutDeliverabilityDashboardOptionRequest
        operation.output = PutDeliverabilityDashboardOptionResponse
        operation.errors << AlreadyExistsException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/deliverability-dashboard", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_dkim_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutEmailIdentityDkimAttributes"
        operation.name = "PutEmailIdentityDkimAttributes"
        operation.input = PutEmailIdentityDkimAttributesRequest
        operation.output = PutEmailIdentityDkimAttributesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/identities/{EmailIdentity}/dkim", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_feedback_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutEmailIdentityFeedbackAttributes"
        operation.name = "PutEmailIdentityFeedbackAttributes"
        operation.input = PutEmailIdentityFeedbackAttributesRequest
        operation.output = PutEmailIdentityFeedbackAttributesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/identities/{EmailIdentity}/feedback", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_mail_from_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutEmailIdentityMailFromAttributes"
        operation.name = "PutEmailIdentityMailFromAttributes"
        operation.input = PutEmailIdentityMailFromAttributesRequest
        operation.output = PutEmailIdentityMailFromAttributesResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/identities/{EmailIdentity}/mail-from", "code" => 200}}
      end)
      service.add_operation(:send_email, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#SendEmail"
        operation.name = "SendEmail"
        operation.input = SendEmailRequest
        operation.output = SendEmailResponse
        operation.errors << AccountSuspendedException
        operation.errors << BadRequestException
        operation.errors << LimitExceededException
        operation.errors << MailFromDomainNotVerifiedException
        operation.errors << MessageRejected
        operation.errors << NotFoundException
        operation.errors << SendingPausedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/outbound-emails", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/tags", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << BadRequestException
        operation.errors << ConcurrentModificationException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/email/tags", "code" => 200}}
      end)
      service.add_operation(:update_configuration_set_event_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#UpdateConfigurationSetEventDestination"
        operation.name = "UpdateConfigurationSetEventDestination"
        operation.input = UpdateConfigurationSetEventDestinationRequest
        operation.output = UpdateConfigurationSetEventDestinationResponse
        operation.errors << BadRequestException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", "code" => 200}}
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
