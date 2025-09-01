# frozen_string_literal: true

# This is generated code!

module Aws::PinpointEmail
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountSuspendedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#AccountSuspendedException', name: 'AccountSuspendedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#AlreadyExistsException', name: 'AlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#AmazonResourceName', name: 'AmazonResourceName')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BehaviorOnMxFailure = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpointemail#BehaviorOnMxFailure', name: 'BehaviorOnMxFailure')
    BlacklistEntries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#BlacklistEntries', name: 'BlacklistEntries')
    BlacklistEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#BlacklistEntry', name: 'BlacklistEntry')
    BlacklistItemName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#BlacklistItemName', name: 'BlacklistItemName')
    BlacklistItemNames = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#BlacklistItemNames', name: 'BlacklistItemNames')
    BlacklistReport = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.pinpointemail#BlacklistReport', name: 'BlacklistReport')
    BlacklistingDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#BlacklistingDescription', name: 'BlacklistingDescription')
    Body = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#Body', name: 'Body')
    CampaignId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#CampaignId', name: 'CampaignId')
    Charset = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#Charset', name: 'Charset')
    CloudWatchDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CloudWatchDestination', name: 'CloudWatchDestination')
    CloudWatchDimensionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CloudWatchDimensionConfiguration', name: 'CloudWatchDimensionConfiguration')
    CloudWatchDimensionConfigurations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#CloudWatchDimensionConfigurations', name: 'CloudWatchDimensionConfigurations')
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ConfigurationSetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#ConfigurationSetName', name: 'ConfigurationSetName')
    ConfigurationSetNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#ConfigurationSetNameList', name: 'ConfigurationSetNameList')
    Content = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#Content', name: 'Content')
    CreateConfigurationSetEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CreateConfigurationSetEventDestinationRequest', name: 'CreateConfigurationSetEventDestinationRequest')
    CreateConfigurationSetEventDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CreateConfigurationSetEventDestinationResponse', name: 'CreateConfigurationSetEventDestinationResponse')
    CreateConfigurationSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CreateConfigurationSetRequest', name: 'CreateConfigurationSetRequest')
    CreateConfigurationSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CreateConfigurationSetResponse', name: 'CreateConfigurationSetResponse')
    CreateDedicatedIpPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CreateDedicatedIpPoolRequest', name: 'CreateDedicatedIpPoolRequest')
    CreateDedicatedIpPoolResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CreateDedicatedIpPoolResponse', name: 'CreateDedicatedIpPoolResponse')
    CreateDeliverabilityTestReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CreateDeliverabilityTestReportRequest', name: 'CreateDeliverabilityTestReportRequest')
    CreateDeliverabilityTestReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CreateDeliverabilityTestReportResponse', name: 'CreateDeliverabilityTestReportResponse')
    CreateEmailIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CreateEmailIdentityRequest', name: 'CreateEmailIdentityRequest')
    CreateEmailIdentityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#CreateEmailIdentityResponse', name: 'CreateEmailIdentityResponse')
    CustomRedirectDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#CustomRedirectDomain', name: 'CustomRedirectDomain')
    DailyVolume = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DailyVolume', name: 'DailyVolume')
    DailyVolumes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#DailyVolumes', name: 'DailyVolumes')
    DedicatedIp = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DedicatedIp', name: 'DedicatedIp')
    DedicatedIpList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#DedicatedIpList', name: 'DedicatedIpList')
    DefaultDimensionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#DefaultDimensionValue', name: 'DefaultDimensionValue')
    DeleteConfigurationSetEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DeleteConfigurationSetEventDestinationRequest', name: 'DeleteConfigurationSetEventDestinationRequest')
    DeleteConfigurationSetEventDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DeleteConfigurationSetEventDestinationResponse', name: 'DeleteConfigurationSetEventDestinationResponse')
    DeleteConfigurationSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DeleteConfigurationSetRequest', name: 'DeleteConfigurationSetRequest')
    DeleteConfigurationSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DeleteConfigurationSetResponse', name: 'DeleteConfigurationSetResponse')
    DeleteDedicatedIpPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DeleteDedicatedIpPoolRequest', name: 'DeleteDedicatedIpPoolRequest')
    DeleteDedicatedIpPoolResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DeleteDedicatedIpPoolResponse', name: 'DeleteDedicatedIpPoolResponse')
    DeleteEmailIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DeleteEmailIdentityRequest', name: 'DeleteEmailIdentityRequest')
    DeleteEmailIdentityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DeleteEmailIdentityResponse', name: 'DeleteEmailIdentityResponse')
    DeliverabilityDashboardAccountStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpointemail#DeliverabilityDashboardAccountStatus', name: 'DeliverabilityDashboardAccountStatus')
    DeliverabilityTestReport = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DeliverabilityTestReport', name: 'DeliverabilityTestReport')
    DeliverabilityTestReports = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#DeliverabilityTestReports', name: 'DeliverabilityTestReports')
    DeliverabilityTestStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpointemail#DeliverabilityTestStatus', name: 'DeliverabilityTestStatus')
    DeliverabilityTestSubject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#DeliverabilityTestSubject', name: 'DeliverabilityTestSubject')
    DeliveryOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DeliveryOptions', name: 'DeliveryOptions')
    Destination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#Destination', name: 'Destination')
    DimensionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#DimensionName', name: 'DimensionName')
    DimensionValueSource = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpointemail#DimensionValueSource', name: 'DimensionValueSource')
    DkimAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DkimAttributes', name: 'DkimAttributes')
    DkimStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpointemail#DkimStatus', name: 'DkimStatus')
    DnsToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#DnsToken', name: 'DnsToken')
    DnsTokenList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#DnsTokenList', name: 'DnsTokenList')
    Domain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#Domain', name: 'Domain')
    DomainDeliverabilityCampaign = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DomainDeliverabilityCampaign', name: 'DomainDeliverabilityCampaign')
    DomainDeliverabilityCampaignList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#DomainDeliverabilityCampaignList', name: 'DomainDeliverabilityCampaignList')
    DomainDeliverabilityTrackingOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DomainDeliverabilityTrackingOption', name: 'DomainDeliverabilityTrackingOption')
    DomainDeliverabilityTrackingOptions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#DomainDeliverabilityTrackingOptions', name: 'DomainDeliverabilityTrackingOptions')
    DomainIspPlacement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#DomainIspPlacement', name: 'DomainIspPlacement')
    DomainIspPlacements = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#DomainIspPlacements', name: 'DomainIspPlacements')
    EmailAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#EmailAddress', name: 'EmailAddress')
    EmailAddressList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#EmailAddressList', name: 'EmailAddressList')
    EmailContent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#EmailContent', name: 'EmailContent')
    Enabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.pinpointemail#Enabled', name: 'Enabled', traits: {"smithy.api#default" => false})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#ErrorMessage', name: 'ErrorMessage')
    Esp = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#Esp', name: 'Esp')
    Esps = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#Esps', name: 'Esps')
    EventDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#EventDestination', name: 'EventDestination')
    EventDestinationDefinition = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#EventDestinationDefinition', name: 'EventDestinationDefinition')
    EventDestinationName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#EventDestinationName', name: 'EventDestinationName')
    EventDestinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#EventDestinations', name: 'EventDestinations')
    EventType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpointemail#EventType', name: 'EventType')
    EventTypes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#EventTypes', name: 'EventTypes')
    GeneralEnforcementStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#GeneralEnforcementStatus', name: 'GeneralEnforcementStatus')
    GetAccountRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetAccountRequest', name: 'GetAccountRequest')
    GetAccountResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetAccountResponse', name: 'GetAccountResponse')
    GetBlacklistReportsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetBlacklistReportsRequest', name: 'GetBlacklistReportsRequest')
    GetBlacklistReportsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetBlacklistReportsResponse', name: 'GetBlacklistReportsResponse')
    GetConfigurationSetEventDestinationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetConfigurationSetEventDestinationsRequest', name: 'GetConfigurationSetEventDestinationsRequest')
    GetConfigurationSetEventDestinationsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetConfigurationSetEventDestinationsResponse', name: 'GetConfigurationSetEventDestinationsResponse')
    GetConfigurationSetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetConfigurationSetRequest', name: 'GetConfigurationSetRequest')
    GetConfigurationSetResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetConfigurationSetResponse', name: 'GetConfigurationSetResponse')
    GetDedicatedIpRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDedicatedIpRequest', name: 'GetDedicatedIpRequest')
    GetDedicatedIpResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDedicatedIpResponse', name: 'GetDedicatedIpResponse')
    GetDedicatedIpsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDedicatedIpsRequest', name: 'GetDedicatedIpsRequest')
    GetDedicatedIpsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDedicatedIpsResponse', name: 'GetDedicatedIpsResponse')
    GetDeliverabilityDashboardOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDeliverabilityDashboardOptionsRequest', name: 'GetDeliverabilityDashboardOptionsRequest')
    GetDeliverabilityDashboardOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDeliverabilityDashboardOptionsResponse', name: 'GetDeliverabilityDashboardOptionsResponse')
    GetDeliverabilityTestReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDeliverabilityTestReportRequest', name: 'GetDeliverabilityTestReportRequest')
    GetDeliverabilityTestReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDeliverabilityTestReportResponse', name: 'GetDeliverabilityTestReportResponse')
    GetDomainDeliverabilityCampaignRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDomainDeliverabilityCampaignRequest', name: 'GetDomainDeliverabilityCampaignRequest')
    GetDomainDeliverabilityCampaignResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDomainDeliverabilityCampaignResponse', name: 'GetDomainDeliverabilityCampaignResponse')
    GetDomainStatisticsReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDomainStatisticsReportRequest', name: 'GetDomainStatisticsReportRequest')
    GetDomainStatisticsReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetDomainStatisticsReportResponse', name: 'GetDomainStatisticsReportResponse')
    GetEmailIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetEmailIdentityRequest', name: 'GetEmailIdentityRequest')
    GetEmailIdentityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#GetEmailIdentityResponse', name: 'GetEmailIdentityResponse')
    Identity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#Identity', name: 'Identity')
    IdentityInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#IdentityInfo', name: 'IdentityInfo')
    IdentityInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#IdentityInfoList', name: 'IdentityInfoList')
    IdentityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpointemail#IdentityType', name: 'IdentityType')
    ImageUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#ImageUrl', name: 'ImageUrl')
    InboxPlacementTrackingOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#InboxPlacementTrackingOption', name: 'InboxPlacementTrackingOption')
    Ip = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#Ip', name: 'Ip')
    IpList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#IpList', name: 'IpList')
    IspName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#IspName', name: 'IspName')
    IspNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#IspNameList', name: 'IspNameList')
    IspPlacement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#IspPlacement', name: 'IspPlacement')
    IspPlacements = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#IspPlacements', name: 'IspPlacements')
    KinesisFirehoseDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#KinesisFirehoseDestination', name: 'KinesisFirehoseDestination')
    LastFreshStart = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.pinpointemail#LastFreshStart', name: 'LastFreshStart')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListConfigurationSetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListConfigurationSetsRequest', name: 'ListConfigurationSetsRequest')
    ListConfigurationSetsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListConfigurationSetsResponse', name: 'ListConfigurationSetsResponse')
    ListDedicatedIpPoolsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListDedicatedIpPoolsRequest', name: 'ListDedicatedIpPoolsRequest')
    ListDedicatedIpPoolsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListDedicatedIpPoolsResponse', name: 'ListDedicatedIpPoolsResponse')
    ListDeliverabilityTestReportsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListDeliverabilityTestReportsRequest', name: 'ListDeliverabilityTestReportsRequest')
    ListDeliverabilityTestReportsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListDeliverabilityTestReportsResponse', name: 'ListDeliverabilityTestReportsResponse')
    ListDomainDeliverabilityCampaignsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListDomainDeliverabilityCampaignsRequest', name: 'ListDomainDeliverabilityCampaignsRequest')
    ListDomainDeliverabilityCampaignsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListDomainDeliverabilityCampaignsResponse', name: 'ListDomainDeliverabilityCampaignsResponse')
    ListEmailIdentitiesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListEmailIdentitiesRequest', name: 'ListEmailIdentitiesRequest')
    ListEmailIdentitiesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListEmailIdentitiesResponse', name: 'ListEmailIdentitiesResponse')
    ListOfDedicatedIpPools = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#ListOfDedicatedIpPools', name: 'ListOfDedicatedIpPools')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MailFromAttributes = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#MailFromAttributes', name: 'MailFromAttributes')
    MailFromDomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#MailFromDomainName', name: 'MailFromDomainName')
    MailFromDomainNotVerifiedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#MailFromDomainNotVerifiedException', name: 'MailFromDomainNotVerifiedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MailFromDomainStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpointemail#MailFromDomainStatus', name: 'MailFromDomainStatus')
    Max24HourSend = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.pinpointemail#Max24HourSend', name: 'Max24HourSend', traits: {"smithy.api#default" => 0})
    MaxItems = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pinpointemail#MaxItems', name: 'MaxItems')
    MaxSendRate = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.pinpointemail#MaxSendRate', name: 'MaxSendRate', traits: {"smithy.api#default" => 0})
    Message = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#Message', name: 'Message')
    MessageContent = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#MessageContent', name: 'MessageContent')
    MessageData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#MessageData', name: 'MessageData')
    MessageRejected = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#MessageRejected', name: 'MessageRejected', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    MessageTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#MessageTag', name: 'MessageTag')
    MessageTagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#MessageTagList', name: 'MessageTagList')
    MessageTagName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#MessageTagName', name: 'MessageTagName')
    MessageTagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#MessageTagValue', name: 'MessageTagValue')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#NextToken', name: 'NextToken')
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    OutboundMessageId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#OutboundMessageId', name: 'OutboundMessageId')
    OverallVolume = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#OverallVolume', name: 'OverallVolume')
    Percentage = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.pinpointemail#Percentage', name: 'Percentage')
    Percentage100Wrapper = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pinpointemail#Percentage100Wrapper', name: 'Percentage100Wrapper')
    PinpointDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PinpointDestination', name: 'PinpointDestination')
    PlacementStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PlacementStatistics', name: 'PlacementStatistics')
    PoolName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#PoolName', name: 'PoolName')
    PutAccountDedicatedIpWarmupAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutAccountDedicatedIpWarmupAttributesRequest', name: 'PutAccountDedicatedIpWarmupAttributesRequest')
    PutAccountDedicatedIpWarmupAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutAccountDedicatedIpWarmupAttributesResponse', name: 'PutAccountDedicatedIpWarmupAttributesResponse')
    PutAccountSendingAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutAccountSendingAttributesRequest', name: 'PutAccountSendingAttributesRequest')
    PutAccountSendingAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutAccountSendingAttributesResponse', name: 'PutAccountSendingAttributesResponse')
    PutConfigurationSetDeliveryOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutConfigurationSetDeliveryOptionsRequest', name: 'PutConfigurationSetDeliveryOptionsRequest')
    PutConfigurationSetDeliveryOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutConfigurationSetDeliveryOptionsResponse', name: 'PutConfigurationSetDeliveryOptionsResponse')
    PutConfigurationSetReputationOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutConfigurationSetReputationOptionsRequest', name: 'PutConfigurationSetReputationOptionsRequest')
    PutConfigurationSetReputationOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutConfigurationSetReputationOptionsResponse', name: 'PutConfigurationSetReputationOptionsResponse')
    PutConfigurationSetSendingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutConfigurationSetSendingOptionsRequest', name: 'PutConfigurationSetSendingOptionsRequest')
    PutConfigurationSetSendingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutConfigurationSetSendingOptionsResponse', name: 'PutConfigurationSetSendingOptionsResponse')
    PutConfigurationSetTrackingOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutConfigurationSetTrackingOptionsRequest', name: 'PutConfigurationSetTrackingOptionsRequest')
    PutConfigurationSetTrackingOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutConfigurationSetTrackingOptionsResponse', name: 'PutConfigurationSetTrackingOptionsResponse')
    PutDedicatedIpInPoolRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutDedicatedIpInPoolRequest', name: 'PutDedicatedIpInPoolRequest')
    PutDedicatedIpInPoolResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutDedicatedIpInPoolResponse', name: 'PutDedicatedIpInPoolResponse')
    PutDedicatedIpWarmupAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutDedicatedIpWarmupAttributesRequest', name: 'PutDedicatedIpWarmupAttributesRequest')
    PutDedicatedIpWarmupAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutDedicatedIpWarmupAttributesResponse', name: 'PutDedicatedIpWarmupAttributesResponse')
    PutDeliverabilityDashboardOptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutDeliverabilityDashboardOptionRequest', name: 'PutDeliverabilityDashboardOptionRequest')
    PutDeliverabilityDashboardOptionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutDeliverabilityDashboardOptionResponse', name: 'PutDeliverabilityDashboardOptionResponse')
    PutEmailIdentityDkimAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutEmailIdentityDkimAttributesRequest', name: 'PutEmailIdentityDkimAttributesRequest')
    PutEmailIdentityDkimAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutEmailIdentityDkimAttributesResponse', name: 'PutEmailIdentityDkimAttributesResponse')
    PutEmailIdentityFeedbackAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutEmailIdentityFeedbackAttributesRequest', name: 'PutEmailIdentityFeedbackAttributesRequest')
    PutEmailIdentityFeedbackAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutEmailIdentityFeedbackAttributesResponse', name: 'PutEmailIdentityFeedbackAttributesResponse')
    PutEmailIdentityMailFromAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutEmailIdentityMailFromAttributesRequest', name: 'PutEmailIdentityMailFromAttributesRequest')
    PutEmailIdentityMailFromAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#PutEmailIdentityMailFromAttributesResponse', name: 'PutEmailIdentityMailFromAttributesResponse')
    RawMessage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#RawMessage', name: 'RawMessage')
    RawMessageData = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.pinpointemail#RawMessageData', name: 'RawMessageData')
    RblName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#RblName', name: 'RblName')
    ReportId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#ReportId', name: 'ReportId')
    ReportName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#ReportName', name: 'ReportName')
    ReputationOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#ReputationOptions', name: 'ReputationOptions')
    SendEmailRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#SendEmailRequest', name: 'SendEmailRequest')
    SendEmailResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#SendEmailResponse', name: 'SendEmailResponse')
    SendQuota = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#SendQuota', name: 'SendQuota')
    SendingOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#SendingOptions', name: 'SendingOptions')
    SendingPausedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#SendingPausedException', name: 'SendingPausedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SendingPoolName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#SendingPoolName', name: 'SendingPoolName')
    SentLast24Hours = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.pinpointemail#SentLast24Hours', name: 'SentLast24Hours', traits: {"smithy.api#default" => 0})
    SnsDestination = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#SnsDestination', name: 'SnsDestination')
    Subject = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#Subject', name: 'Subject')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#TagKey', name: 'TagKey')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.pinpointemail#TagList', name: 'TagList')
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#TagValue', name: 'TagValue')
    Template = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#Template', name: 'Template')
    TemplateArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#TemplateArn', name: 'TemplateArn')
    TemplateData = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.pinpointemail#TemplateData', name: 'TemplateData', traits: {"smithy.api#length" => {"min" => 0, "max" => 262144}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.pinpointemail#Timestamp', name: 'Timestamp')
    TlsPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpointemail#TlsPolicy', name: 'TlsPolicy')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TrackingOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#TrackingOptions', name: 'TrackingOptions')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateConfigurationSetEventDestinationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#UpdateConfigurationSetEventDestinationRequest', name: 'UpdateConfigurationSetEventDestinationRequest')
    UpdateConfigurationSetEventDestinationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#UpdateConfigurationSetEventDestinationResponse', name: 'UpdateConfigurationSetEventDestinationResponse')
    Volume = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.pinpointemail#Volume', name: 'Volume')
    VolumeStatistics = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.pinpointemail#VolumeStatistics', name: 'VolumeStatistics')
    WarmupStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.pinpointemail#WarmupStatus', name: 'WarmupStatus')

    AccountSuspendedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AccountSuspendedException.type = Types::AccountSuspendedException
    AlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    AlreadyExistsException.type = Types::AlreadyExistsException
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    BadRequestException.type = Types::BadRequestException
    BehaviorOnMxFailure.add_member(:use_default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USE_DEFAULT_VALUE', traits: {"smithy.api#enumValue" => "USE_DEFAULT_VALUE"}))
    BehaviorOnMxFailure.add_member(:reject_message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECT_MESSAGE', traits: {"smithy.api#enumValue" => "REJECT_MESSAGE"}))
    BlacklistEntries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistEntry)
    BlacklistEntry.add_member(:rbl_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RblName, location_name: 'RblName', traits: {"smithy.api#documentation" => "<p>The name of the blacklist that the IP address appears on.</p>"}))
    BlacklistEntry.add_member(:listing_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ListingTime', traits: {"smithy.api#documentation" => "<p>The time when the blacklisting event occurred, shown in Unix time format.</p>"}))
    BlacklistEntry.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistingDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Additional information about the blacklisting event, as provided by the blacklist\n            maintainer.</p>"}))
    BlacklistEntry.type = Types::BlacklistEntry
    BlacklistItemNames.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistItemName)
    BlacklistReport.key = Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistItemName)
    BlacklistReport.value = Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistEntries)
    Body.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Text', traits: {"smithy.api#documentation" => "<p>An object that represents the version of the message that is displayed in email\n            clients that don't support HTML, or clients where the recipient has disabled HTML\n            rendering.</p>"}))
    Body.add_member(:html, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Html', traits: {"smithy.api#documentation" => "<p>An object that represents the version of the message that is displayed in email\n            clients that support HTML. HTML messages can include formatted text, hyperlinks, images,\n            and more. </p>"}))
    Body.type = Types::Body
    CloudWatchDestination.add_member(:dimension_configurations, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDimensionConfigurations, location_name: 'DimensionConfigurations', traits: {"smithy.api#documentation" => "<p>An array of objects that define the dimensions to use when you send email events to\n            Amazon CloudWatch.</p>", "smithy.api#required" => {}}))
    CloudWatchDestination.type = Types::CloudWatchDestination
    CloudWatchDimensionConfiguration.add_member(:dimension_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionName, location_name: 'DimensionName', traits: {"smithy.api#documentation" => "<p>The name of an Amazon CloudWatch dimension associated with an email sending metric. The name has to\n            meet the following criteria:</p>\n        <ul>\n            <li>\n                <p>It can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_),\n                    or dashes (-).</p>\n            </li>\n            <li>\n                <p>It can contain no more than 256 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:dimension_value_source, Smithy::Schema::Shapes::ShapeRef.new(shape: DimensionValueSource, location_name: 'DimensionValueSource', traits: {"smithy.api#documentation" => "<p>The location where Amazon Pinpoint finds the value of a dimension to publish to Amazon CloudWatch. If you\n            want Amazon Pinpoint to use the message tags that you specify using an X-SES-MESSAGE-TAGS header\n            or a parameter to the SendEmail/SendRawEmail API, choose <code>messageTag</code>. If you\n            want Amazon Pinpoint to use your own email headers, choose <code>emailHeader</code>. If you want\n            Amazon Pinpoint to use link tags, choose <code>linkTags</code>.</p>", "smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.add_member(:default_dimension_value, Smithy::Schema::Shapes::ShapeRef.new(shape: DefaultDimensionValue, location_name: 'DefaultDimensionValue', traits: {"smithy.api#documentation" => "<p>The default value of the dimension that is published to Amazon CloudWatch if you don't provide the\n            value of the dimension when you send an email. This value has to meet the following\n            criteria:</p>\n        <ul>\n            <li>\n                <p>It can only contain ASCII letters (a-z, A-Z), numbers (0-9), underscores (_),\n                    or dashes (-).</p>\n            </li>\n            <li>\n                <p>It can contain no more than 256 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CloudWatchDimensionConfiguration.type = Types::CloudWatchDimensionConfiguration
    CloudWatchDimensionConfigurations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDimensionConfiguration)
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConfigurationSetNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName)
    Content.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageData, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The content of the message itself.</p>", "smithy.api#required" => {}}))
    Content.add_member(:charset, Smithy::Schema::Shapes::ShapeRef.new(shape: Charset, location_name: 'Charset', traits: {"smithy.api#documentation" => "<p>The character set for the content. Because of the constraints of the SMTP protocol,\n            Amazon Pinpoint uses 7-bit ASCII by default. If the text includes characters outside of the ASCII\n            range, you have to specify a character set. For example, you could specify\n                <code>UTF-8</code>, <code>ISO-8859-1</code>, or <code>Shift_JIS</code>.</p>"}))
    Content.type = Types::Content
    CreateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that you want to add an event destination to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>A name that identifies the event destination within the configuration set.</p>", "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.add_member(:event_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationDefinition, location_name: 'EventDestination', traits: {"smithy.api#documentation" => "<p>An object that defines the event destination.</p>", "smithy.api#required" => {}}))
    CreateConfigurationSetEventDestinationRequest.type = Types::CreateConfigurationSetEventDestinationRequest
    CreateConfigurationSetEventDestinationResponse.type = Types::CreateConfigurationSetEventDestinationResponse
    CreateConfigurationSetRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>", "smithy.api#required" => {}}))
    CreateConfigurationSetRequest.add_member(:tracking_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingOptions, location_name: 'TrackingOptions', traits: {"smithy.api#documentation" => "<p>An object that defines the open and click tracking options for emails that you send\n            using the configuration set.</p>"}))
    CreateConfigurationSetRequest.add_member(:delivery_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryOptions, location_name: 'DeliveryOptions', traits: {"smithy.api#documentation" => "<p>An object that defines the dedicated IP pool that is used to send emails that you send\n            using the configuration set.</p>"}))
    CreateConfigurationSetRequest.add_member(:reputation_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationOptions, location_name: 'ReputationOptions', traits: {"smithy.api#documentation" => "<p>An object that defines whether or not Amazon Pinpoint collects reputation metrics for the emails\n            that you send that use the configuration set.</p>"}))
    CreateConfigurationSetRequest.add_member(:sending_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SendingOptions, location_name: 'SendingOptions', traits: {"smithy.api#documentation" => "<p>An object that defines whether or not Amazon Pinpoint can send email that you send using the\n            configuration set.</p>"}))
    CreateConfigurationSetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) that you want to associate\n            with the configuration set.</p>"}))
    CreateConfigurationSetRequest.type = Types::CreateConfigurationSetRequest
    CreateConfigurationSetResponse.type = Types::CreateConfigurationSetResponse
    CreateDedicatedIpPoolRequest.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool.</p>", "smithy.api#required" => {}}))
    CreateDedicatedIpPoolRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An object that defines the tags (keys and values) that you want to associate with the\n            pool.</p>"}))
    CreateDedicatedIpPoolRequest.type = Types::CreateDedicatedIpPoolRequest
    CreateDedicatedIpPoolResponse.type = Types::CreateDedicatedIpPoolResponse
    CreateDeliverabilityTestReportRequest.add_member(:report_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportName, location_name: 'ReportName', traits: {"smithy.api#documentation" => "<p>A unique name that helps you to identify the predictive inbox placement test when you retrieve the\n            results.</p>"}))
    CreateDeliverabilityTestReportRequest.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that the predictive inbox placement test email was sent from.</p>", "smithy.api#required" => {}}))
    CreateDeliverabilityTestReportRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>The HTML body of the message that you sent when you performed the predictive inbox placement test.</p>", "smithy.api#required" => {}}))
    CreateDeliverabilityTestReportRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) that you want to associate\n            with the predictive inbox placement test.</p>"}))
    CreateDeliverabilityTestReportRequest.type = Types::CreateDeliverabilityTestReportRequest
    CreateDeliverabilityTestReportResponse.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'ReportId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the predictive inbox placement test.</p>", "smithy.api#required" => {}}))
    CreateDeliverabilityTestReportResponse.add_member(:deliverability_test_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverabilityTestStatus, location_name: 'DeliverabilityTestStatus', traits: {"smithy.api#documentation" => "<p>The status of the predictive inbox placement test. If the status is <code>IN_PROGRESS</code>, then the predictive inbox placement test\n            is currently running. Predictive inbox placement tests are usually complete within 24 hours of creating the\n            test. If the status is <code>COMPLETE</code>, then the test is finished, and you can use\n            the <code>GetDeliverabilityTestReport</code> to view the results of the test.</p>", "smithy.api#required" => {}}))
    CreateDeliverabilityTestReportResponse.type = Types::CreateDeliverabilityTestReportResponse
    CreateEmailIdentityRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email address or domain that you want to verify.</p>", "smithy.api#required" => {}}))
    CreateEmailIdentityRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) that you want to associate\n            with the email identity.</p>"}))
    CreateEmailIdentityRequest.type = Types::CreateEmailIdentityRequest
    CreateEmailIdentityResponse.add_member(:identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType', traits: {"smithy.api#documentation" => "<p>The email identity type.</p>"}))
    CreateEmailIdentityResponse.add_member(:verified_for_sending_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'VerifiedForSendingStatus', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether or not the identity is verified. In Amazon Pinpoint, you can only send email\n            from verified email addresses or domains. For more information about verifying\n            identities, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html\">Amazon Pinpoint User Guide</a>.</p>"}))
    CreateEmailIdentityResponse.add_member(:dkim_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimAttributes, location_name: 'DkimAttributes', traits: {"smithy.api#documentation" => "<p>An object that contains information about the DKIM attributes for the identity. This\n            object includes the tokens that you use to create the CNAME records that are required to\n            complete the DKIM verification process.</p>"}))
    CreateEmailIdentityResponse.type = Types::CreateEmailIdentityResponse
    DailyVolume.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>The date that the DailyVolume metrics apply to, in Unix time.</p>"}))
    DailyVolume.add_member(:volume_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeStatistics, location_name: 'VolumeStatistics', traits: {"smithy.api#documentation" => "<p>An object that contains inbox placement metrics for a specific day in the analysis\n            period.</p>"}))
    DailyVolume.add_member(:domain_isp_placements, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainIspPlacements, location_name: 'DomainIspPlacements', traits: {"smithy.api#documentation" => "<p>An object that contains inbox placement metrics for a specified day in the analysis\n            period, broken out by the recipient's email provider.</p>"}))
    DailyVolume.type = Types::DailyVolume
    DailyVolumes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DailyVolume)
    DedicatedIp.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>An IP address that is reserved for use by your Amazon Pinpoint account.</p>", "smithy.api#required" => {}}))
    DedicatedIp.add_member(:warmup_status, Smithy::Schema::Shapes::ShapeRef.new(shape: WarmupStatus, location_name: 'WarmupStatus', traits: {"smithy.api#documentation" => "<p>The warm-up status of a dedicated IP address. The status can have one of the following\n            values:</p>\n        <ul>\n            <li>\n                <p>\n                  <code>IN_PROGRESS</code> – The IP address isn't ready to use because the\n                    dedicated IP warm-up process is ongoing.</p>\n            </li>\n            <li>\n                <p>\n                  <code>DONE</code> – The dedicated IP warm-up process is complete, and\n                    the IP address is ready to use.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    DedicatedIp.add_member(:warmup_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage100Wrapper, location_name: 'WarmupPercentage', traits: {"smithy.api#documentation" => "<p>Indicates how complete the dedicated IP warm-up process is. When this value equals 1,\n            the address has completed the warm-up process and is ready for use.</p>", "smithy.api#required" => {}}))
    DedicatedIp.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool that the IP address is associated with.</p>"}))
    DedicatedIp.type = Types::DedicatedIp
    DedicatedIpList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedIp)
    DeleteConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that contains the event destination that you want to\n            delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>The name of the event destination that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetEventDestinationRequest.type = Types::DeleteConfigurationSetEventDestinationRequest
    DeleteConfigurationSetEventDestinationResponse.type = Types::DeleteConfigurationSetEventDestinationResponse
    DeleteConfigurationSetRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteConfigurationSetRequest.type = Types::DeleteConfigurationSetRequest
    DeleteConfigurationSetResponse.type = Types::DeleteConfigurationSetResponse
    DeleteDedicatedIpPoolRequest.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDedicatedIpPoolRequest.type = Types::DeleteDedicatedIpPoolRequest
    DeleteDedicatedIpPoolResponse.type = Types::DeleteDedicatedIpPoolResponse
    DeleteEmailIdentityRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The identity (that is, the email address or domain) that you want to delete from your\n            Amazon Pinpoint account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailIdentityRequest.type = Types::DeleteEmailIdentityRequest
    DeleteEmailIdentityResponse.type = Types::DeleteEmailIdentityResponse
    DeliverabilityDashboardAccountStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DeliverabilityDashboardAccountStatus.add_member(:pending_expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_EXPIRATION', traits: {"smithy.api#enumValue" => "PENDING_EXPIRATION"}))
    DeliverabilityDashboardAccountStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    DeliverabilityTestReport.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'ReportId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the predictive inbox placement test.</p>"}))
    DeliverabilityTestReport.add_member(:report_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportName, location_name: 'ReportName', traits: {"smithy.api#documentation" => "<p>A name that helps you identify a predictive inbox placement test report.</p>"}))
    DeliverabilityTestReport.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverabilityTestSubject, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line for an email that you submitted in a predictive inbox placement test.</p>"}))
    DeliverabilityTestReport.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The sender address that you specified for the predictive inbox placement test.</p>"}))
    DeliverabilityTestReport.add_member(:create_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreateDate', traits: {"smithy.api#documentation" => "<p>The date and time when the predictive inbox placement test was created, in Unix time format.</p>"}))
    DeliverabilityTestReport.add_member(:deliverability_test_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverabilityTestStatus, location_name: 'DeliverabilityTestStatus', traits: {"smithy.api#documentation" => "<p>The status of the predictive inbox placement test. If the status is <code>IN_PROGRESS</code>, then the predictive inbox placement test\n            is currently running. Predictive inbox placement tests are usually complete within 24 hours of creating the\n            test. If the status is <code>COMPLETE</code>, then the test is finished, and you can use\n            the <code>GetDeliverabilityTestReport</code> to view the results of the test.</p>"}))
    DeliverabilityTestReport.type = Types::DeliverabilityTestReport
    DeliverabilityTestReports.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverabilityTestReport)
    DeliverabilityTestStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    DeliverabilityTestStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DeliveryOptions.add_member(:tls_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsPolicy, location_name: 'TlsPolicy', traits: {"smithy.api#documentation" => "<p>Specifies whether messages that use the configuration set are required to use\n            Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only\n            delivered if a TLS connection can be established. If the value is <code>Optional</code>,\n            messages can be delivered in plain text if a TLS connection can't be established.</p>"}))
    DeliveryOptions.add_member(:sending_pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'SendingPoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool that you want to associate with the configuration\n            set.</p>"}))
    DeliveryOptions.type = Types::DeliveryOptions
    Destination.add_member(:to_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressList, location_name: 'ToAddresses', traits: {"smithy.api#documentation" => "<p>An array that contains the email addresses of the \"To\" recipients for the\n            email.</p>"}))
    Destination.add_member(:cc_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressList, location_name: 'CcAddresses', traits: {"smithy.api#documentation" => "<p>An array that contains the email addresses of the \"CC\" (carbon copy) recipients for\n            the email.</p>"}))
    Destination.add_member(:bcc_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressList, location_name: 'BccAddresses', traits: {"smithy.api#documentation" => "<p>An array that contains the email addresses of the \"BCC\" (blind carbon copy) recipients\n            for the email.</p>"}))
    Destination.type = Types::Destination
    DimensionValueSource.add_member(:message_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MESSAGE_TAG', traits: {"smithy.api#enumValue" => "MESSAGE_TAG"}))
    DimensionValueSource.add_member(:email_header, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_HEADER', traits: {"smithy.api#enumValue" => "EMAIL_HEADER"}))
    DimensionValueSource.add_member(:link_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LINK_TAG', traits: {"smithy.api#enumValue" => "LINK_TAG"}))
    DkimAttributes.add_member(:signing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SigningEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If the value is <code>true</code>, then the messages that Amazon Pinpoint sends from the\n            identity are DKIM-signed. If the value is <code>false</code>, then the messages that\n            Amazon Pinpoint sends from the identity aren't DKIM-signed.</p>"}))
    DkimAttributes.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Describes whether or not Amazon Pinpoint has successfully located the DKIM records in the DNS\n            records for the domain. The status can be one of the following:</p>\n        <ul>\n            <li>\n                <p>\n                  <code>PENDING</code> – Amazon Pinpoint hasn't yet located the DKIM records in the\n                    DNS configuration for the domain, but will continue to attempt to locate\n                    them.</p>\n            </li>\n            <li>\n                <p>\n                  <code>SUCCESS</code> – Amazon Pinpoint located the DKIM records in the DNS\n                    configuration for the domain and determined that they're correct. Amazon Pinpoint can now\n                    send DKIM-signed email from the identity.</p>\n            </li>\n            <li>\n                <p>\n                  <code>FAILED</code> – Amazon Pinpoint was unable to locate the DKIM records in the\n                    DNS settings for the domain, and won't continue to search for them.</p>\n            </li>\n            <li>\n                <p>\n                  <code>TEMPORARY_FAILURE</code> – A temporary issue occurred, which\n                    prevented Amazon Pinpoint from determining the DKIM status for the domain.</p>\n            </li>\n            <li>\n                <p>\n                  <code>NOT_STARTED</code> – Amazon Pinpoint hasn't yet started searching for the\n                    DKIM records in the DKIM records for the domain.</p>\n            </li>\n         </ul>"}))
    DkimAttributes.add_member(:tokens, Smithy::Schema::Shapes::ShapeRef.new(shape: DnsTokenList, location_name: 'Tokens', traits: {"smithy.api#documentation" => "<p>A set of unique strings that you use to create a set of CNAME records that you add to\n            the DNS configuration for your domain. When Amazon Pinpoint detects these records in the DNS\n            configuration for your domain, the DKIM authentication process is complete. Amazon Pinpoint\n            usually detects these records within about 72 hours of adding them to the DNS\n            configuration for your domain.</p>"}))
    DkimAttributes.type = Types::DkimAttributes
    DkimStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    DkimStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    DkimStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DkimStatus.add_member(:temporary_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEMPORARY_FAILURE', traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    DkimStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    DnsTokenList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DnsToken)
    DomainDeliverabilityCampaign.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign. Amazon Pinpoint automatically generates and assigns this\n            identifier to a campaign. This value is not the same as the campaign identifier that\n            Amazon Pinpoint assigns to campaigns that you create and manage by using the Amazon Pinpoint API or the\n            Amazon Pinpoint console.</p>"}))
    DomainDeliverabilityCampaign.add_member(:image_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageUrl, location_name: 'ImageUrl', traits: {"smithy.api#documentation" => "<p>The URL of an image that contains a snapshot of the email message that was\n            sent.</p>"}))
    DomainDeliverabilityCampaign.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line, or title, of the email message.</p>"}))
    DomainDeliverabilityCampaign.add_member(:from_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'FromAddress', traits: {"smithy.api#documentation" => "<p>The verified email address that the email message was sent from.</p>"}))
    DomainDeliverabilityCampaign.add_member(:sending_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: IpList, location_name: 'SendingIps', traits: {"smithy.api#documentation" => "<p>The IP addresses that were used to send the email message.</p>"}))
    DomainDeliverabilityCampaign.add_member(:first_seen_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'FirstSeenDateTime', traits: {"smithy.api#documentation" => "<p>The first time, in Unix time format, when the email message was delivered to any\n            recipient's inbox. This value can help you determine how long it took for a campaign to\n            deliver an email message.</p>"}))
    DomainDeliverabilityCampaign.add_member(:last_seen_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastSeenDateTime', traits: {"smithy.api#documentation" => "<p>The last time, in Unix time format, when the email message was delivered to any\n            recipient's inbox. This value can help you determine how long it took for a campaign to\n            deliver an email message.</p>"}))
    DomainDeliverabilityCampaign.add_member(:inbox_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'InboxCount', traits: {"smithy.api#documentation" => "<p>The number of email messages that were delivered to recipients’ inboxes.</p>"}))
    DomainDeliverabilityCampaign.add_member(:spam_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'SpamCount', traits: {"smithy.api#documentation" => "<p>The number of email messages that were delivered to recipients' spam or junk mail\n            folders.</p>"}))
    DomainDeliverabilityCampaign.add_member(:read_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'ReadRate', traits: {"smithy.api#documentation" => "<p>The percentage of email messages that were opened by recipients. Due to technical\n            limitations, this value only includes recipients who opened the message by using an\n            email client that supports images.</p>"}))
    DomainDeliverabilityCampaign.add_member(:delete_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'DeleteRate', traits: {"smithy.api#documentation" => "<p>The percentage of email messages that were deleted by recipients, without being opened\n            first. Due to technical limitations, this value only includes recipients who opened the\n            message by using an email client that supports images.</p>"}))
    DomainDeliverabilityCampaign.add_member(:read_delete_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'ReadDeleteRate', traits: {"smithy.api#documentation" => "<p>The percentage of email messages that were opened and then deleted by recipients. Due\n            to technical limitations, this value only includes recipients who opened the message by\n            using an email client that supports images.</p>"}))
    DomainDeliverabilityCampaign.add_member(:projected_volume, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'ProjectedVolume', traits: {"smithy.api#documentation" => "<p>The projected number of recipients that the email message was sent to.</p>"}))
    DomainDeliverabilityCampaign.add_member(:esps, Smithy::Schema::Shapes::ShapeRef.new(shape: Esps, location_name: 'Esps', traits: {"smithy.api#documentation" => "<p>The major email providers who handled the email message.</p>"}))
    DomainDeliverabilityCampaign.type = Types::DomainDeliverabilityCampaign
    DomainDeliverabilityCampaignList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDeliverabilityCampaign)
    DomainDeliverabilityTrackingOption.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>A verified domain that’s associated with your AWS account and currently has an\n            active Deliverability dashboard subscription.</p>"}))
    DomainDeliverabilityTrackingOption.add_member(:subscription_start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubscriptionStartDate', traits: {"smithy.api#documentation" => "<p>The date, in Unix time format, when you enabled the Deliverability dashboard for the\n            domain.</p>"}))
    DomainDeliverabilityTrackingOption.add_member(:inbox_placement_tracking_option, Smithy::Schema::Shapes::ShapeRef.new(shape: InboxPlacementTrackingOption, location_name: 'InboxPlacementTrackingOption', traits: {"smithy.api#documentation" => "<p>An object that contains information about the inbox placement data settings for the\n            domain.</p>"}))
    DomainDeliverabilityTrackingOption.type = Types::DomainDeliverabilityTrackingOption
    DomainDeliverabilityTrackingOptions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDeliverabilityTrackingOption)
    DomainIspPlacement.add_member(:isp_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IspName, location_name: 'IspName', traits: {"smithy.api#documentation" => "<p>The name of the email provider that the inbox placement data applies to.</p>"}))
    DomainIspPlacement.add_member(:inbox_raw_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'InboxRawCount', traits: {"smithy.api#documentation" => "<p>The total number of messages that were sent from the selected domain to the specified\n            email provider that arrived in recipients' inboxes.</p>"}))
    DomainIspPlacement.add_member(:spam_raw_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'SpamRawCount', traits: {"smithy.api#documentation" => "<p>The total number of messages that were sent from the selected domain to the specified\n            email provider that arrived in recipients' spam or junk mail folders.</p>"}))
    DomainIspPlacement.add_member(:inbox_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'InboxPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of messages that were sent from the selected domain to the specified\n            email provider that arrived in recipients' inboxes.</p>"}))
    DomainIspPlacement.add_member(:spam_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'SpamPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of messages that were sent from the selected domain to the specified\n            email provider that arrived in recipients' spam or junk mail folders.</p>"}))
    DomainIspPlacement.type = Types::DomainIspPlacement
    DomainIspPlacements.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainIspPlacement)
    EmailAddressList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress)
    EmailContent.add_member(:simple, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'Simple', traits: {"smithy.api#documentation" => "<p>The simple email message. The message consists of a subject and a message body.</p>"}))
    EmailContent.add_member(:raw, Smithy::Schema::Shapes::ShapeRef.new(shape: RawMessage, location_name: 'Raw', traits: {"smithy.api#documentation" => "<p>The raw email message. The message has to meet the following criteria:</p>\n        <ul>\n            <li>\n                <p>The message has to contain a header and a body, separated by one blank\n                    line.</p>\n            </li>\n            <li>\n                <p>All of the required header fields must be present in the message.</p>\n            </li>\n            <li>\n                <p>Each part of a multipart MIME message must be formatted properly.</p>\n            </li>\n            <li>\n                <p>If you include attachments, they must be in a file format that Amazon Pinpoint supports.\n                    </p>\n            </li>\n            <li>\n                <p>The entire message must be Base64 encoded.</p>\n            </li>\n            <li>\n                <p>If any of the MIME parts in your message contain content that is outside of\n                    the 7-bit ASCII character range, you should encode that content to ensure that\n                    recipients' email clients render the message properly.</p>\n            </li>\n            <li>\n                <p>The length of any single line of text in the message can't exceed 1,000\n                    characters. This restriction is defined in <a href=\"https://tools.ietf.org/html/rfc5321\">RFC 5321</a>.</p>\n            </li>\n         </ul>"}))
    EmailContent.add_member(:template, Smithy::Schema::Shapes::ShapeRef.new(shape: Template, location_name: 'Template', traits: {"smithy.api#documentation" => "<p>The template to use for the email message.</p>"}))
    EmailContent.type = Types::EmailContent
    Esps.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Esp)
    EventDestination.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A name that identifies the event destination.</p>", "smithy.api#required" => {}}))
    EventDestination.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, the event destination is enabled. When the event destination is\n            enabled, the specified event types are sent to the destinations in this\n                <code>EventDestinationDefinition</code>.</p>\n        <p>If <code>false</code>, the event destination is disabled. When the event destination\n            is disabled, events aren't sent to the specified destinations.</p>"}))
    EventDestination.add_member(:matching_event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypes, location_name: 'MatchingEventTypes', traits: {"smithy.api#documentation" => "<p>The types of events that Amazon Pinpoint sends to the specified event destinations.</p>", "smithy.api#required" => {}}))
    EventDestination.add_member(:kinesis_firehose_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: 'KinesisFirehoseDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to\n            stream data to other services, such as Amazon S3 and Amazon Redshift.</p>"}))
    EventDestination.add_member(:cloud_watch_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDestination, location_name: 'CloudWatchDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to\n            monitor and gain insights on your email sending metrics.</p>"}))
    EventDestination.add_member(:sns_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsDestination, location_name: 'SnsDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to\n            send notification when certain email events occur.</p>"}))
    EventDestination.add_member(:pinpoint_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: PinpointDestination, location_name: 'PinpointDestination', traits: {"smithy.api#documentation" => "<p>An object that defines a Amazon Pinpoint destination for email events. You can use Amazon Pinpoint events\n            to create attributes in Amazon Pinpoint projects. You can use these attributes to create segments\n            for your campaigns.</p>"}))
    EventDestination.type = Types::EventDestination
    EventDestinationDefinition.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Enabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, the event destination is enabled. When the event destination is\n            enabled, the specified event types are sent to the destinations in this\n                <code>EventDestinationDefinition</code>.</p>\n        <p>If <code>false</code>, the event destination is disabled. When the event destination\n            is disabled, events aren't sent to the specified destinations.</p>"}))
    EventDestinationDefinition.add_member(:matching_event_types, Smithy::Schema::Shapes::ShapeRef.new(shape: EventTypes, location_name: 'MatchingEventTypes', traits: {"smithy.api#documentation" => "<p>An array that specifies which events Amazon Pinpoint should send to the destinations in this\n                <code>EventDestinationDefinition</code>.</p>"}))
    EventDestinationDefinition.add_member(:kinesis_firehose_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisFirehoseDestination, location_name: 'KinesisFirehoseDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon Kinesis Data Firehose destination for email events. You can use Amazon Kinesis Data Firehose to\n            stream data to other services, such as Amazon S3 and Amazon Redshift.</p>"}))
    EventDestinationDefinition.add_member(:cloud_watch_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: CloudWatchDestination, location_name: 'CloudWatchDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon CloudWatch destination for email events. You can use Amazon CloudWatch to\n            monitor and gain insights on your email sending metrics.</p>"}))
    EventDestinationDefinition.add_member(:sns_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: SnsDestination, location_name: 'SnsDestination', traits: {"smithy.api#documentation" => "<p>An object that defines an Amazon SNS destination for email events. You can use Amazon SNS to\n            send notification when certain email events occur.</p>"}))
    EventDestinationDefinition.add_member(:pinpoint_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: PinpointDestination, location_name: 'PinpointDestination', traits: {"smithy.api#documentation" => "<p>An object that defines a Amazon Pinpoint destination for email events. You can use Amazon Pinpoint events\n            to create attributes in Amazon Pinpoint projects. You can use these attributes to create segments\n            for your campaigns.</p>"}))
    EventDestinationDefinition.type = Types::EventDestinationDefinition
    EventDestinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestination)
    EventType.add_member(:send, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SEND', traits: {"smithy.api#enumValue" => "SEND"}))
    EventType.add_member(:reject, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REJECT', traits: {"smithy.api#enumValue" => "REJECT"}))
    EventType.add_member(:bounce, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BOUNCE', traits: {"smithy.api#enumValue" => "BOUNCE"}))
    EventType.add_member(:complaint, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLAINT', traits: {"smithy.api#enumValue" => "COMPLAINT"}))
    EventType.add_member(:delivery, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELIVERY', traits: {"smithy.api#enumValue" => "DELIVERY"}))
    EventType.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    EventType.add_member(:click, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLICK', traits: {"smithy.api#enumValue" => "CLICK"}))
    EventType.add_member(:rendering_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RENDERING_FAILURE', traits: {"smithy.api#enumValue" => "RENDERING_FAILURE"}))
    EventTypes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventType)
    GetAccountRequest.type = Types::GetAccountRequest
    GetAccountResponse.add_member(:send_quota, Smithy::Schema::Shapes::ShapeRef.new(shape: SendQuota, location_name: 'SendQuota', traits: {"smithy.api#documentation" => "<p>An object that contains information about the per-day and per-second sending limits\n            for your Amazon Pinpoint account in the current AWS Region.</p>"}))
    GetAccountResponse.add_member(:sending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SendingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether or not email sending is enabled for your Amazon Pinpoint account in the\n            current AWS Region.</p>"}))
    GetAccountResponse.add_member(:dedicated_ip_auto_warmup_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'DedicatedIpAutoWarmupEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether or not the automatic warm-up feature is enabled for dedicated IP\n            addresses that are associated with your account.</p>"}))
    GetAccountResponse.add_member(:enforcement_status, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneralEnforcementStatus, location_name: 'EnforcementStatus', traits: {"smithy.api#documentation" => "<p>The reputation status of your Amazon Pinpoint account. The status can be one of the\n            following:</p>\n        <ul>\n            <li>\n                <p>\n                  <code>HEALTHY</code> – There are no reputation-related issues that\n                    currently impact your account.</p>\n            </li>\n            <li>\n                <p>\n                  <code>PROBATION</code> – We've identified some issues with your Amazon Pinpoint\n                    account. We're placing your account under review while you work on correcting\n                    these issues.</p>\n            </li>\n            <li>\n                <p>\n                  <code>SHUTDOWN</code> – Your account's ability to send email is\n                    currently paused because of an issue with the email sent from your account. When\n                    you correct the issue, you can contact us and request that your account's\n                    ability to send email is resumed.</p>\n            </li>\n         </ul>"}))
    GetAccountResponse.add_member(:production_access_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'ProductionAccessEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether or not your account has production access in the current AWS\n            Region.</p>\n        <p>If the value is <code>false</code>, then your account is in the\n                <i>sandbox</i>. When your account is in the sandbox, you can only send\n            email to verified identities. Additionally, the maximum number of emails you can send in\n            a 24-hour period (your sending quota) is 200, and the maximum number of emails you can\n            send per second (your maximum sending rate) is 1.</p>\n        <p>If the value is <code>true</code>, then your account has production access. When your\n            account has production access, you can send email to any address. The sending quota and\n            maximum sending rate for your account vary based on your specific use case.</p>"}))
    GetAccountResponse.type = Types::GetAccountResponse
    GetBlacklistReportsRequest.add_member(:blacklist_item_names, Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistItemNames, location_name: 'BlacklistItemNames', traits: {"smithy.api#documentation" => "<p>A list of IP addresses that you want to retrieve blacklist information about. You can\n            only specify the dedicated IP addresses that you use to send email using Amazon Pinpoint or\n            Amazon SES.</p>", "smithy.api#httpQuery" => "BlacklistItemNames", "smithy.api#required" => {}}))
    GetBlacklistReportsRequest.type = Types::GetBlacklistReportsRequest
    GetBlacklistReportsResponse.add_member(:blacklist_report, Smithy::Schema::Shapes::ShapeRef.new(shape: BlacklistReport, location_name: 'BlacklistReport', traits: {"smithy.api#documentation" => "<p>An object that contains information about a blacklist that one of your dedicated IP\n            addresses appears on.</p>", "smithy.api#required" => {}}))
    GetBlacklistReportsResponse.type = Types::GetBlacklistReportsResponse
    GetConfigurationSetEventDestinationsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that contains the event destination.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationSetEventDestinationsRequest.type = Types::GetConfigurationSetEventDestinationsRequest
    GetConfigurationSetEventDestinationsResponse.add_member(:event_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinations, location_name: 'EventDestinations', traits: {"smithy.api#documentation" => "<p>An array that includes all of the events destinations that have been configured for\n            the configuration set.</p>"}))
    GetConfigurationSetEventDestinationsResponse.type = Types::GetConfigurationSetEventDestinationsResponse
    GetConfigurationSetRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that you want to obtain more information\n            about.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetConfigurationSetRequest.type = Types::GetConfigurationSetRequest
    GetConfigurationSetResponse.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set.</p>"}))
    GetConfigurationSetResponse.add_member(:tracking_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TrackingOptions, location_name: 'TrackingOptions', traits: {"smithy.api#documentation" => "<p>An object that defines the open and click tracking options for emails that you send\n            using the configuration set.</p>"}))
    GetConfigurationSetResponse.add_member(:delivery_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliveryOptions, location_name: 'DeliveryOptions', traits: {"smithy.api#documentation" => "<p>An object that defines the dedicated IP pool that is used to send emails that you send\n            using the configuration set.</p>"}))
    GetConfigurationSetResponse.add_member(:reputation_options, Smithy::Schema::Shapes::ShapeRef.new(shape: ReputationOptions, location_name: 'ReputationOptions', traits: {"smithy.api#documentation" => "<p>An object that defines whether or not Amazon Pinpoint collects reputation metrics for the emails\n            that you send that use the configuration set.</p>"}))
    GetConfigurationSetResponse.add_member(:sending_options, Smithy::Schema::Shapes::ShapeRef.new(shape: SendingOptions, location_name: 'SendingOptions', traits: {"smithy.api#documentation" => "<p>An object that defines whether or not Amazon Pinpoint can send email that you send using the\n            configuration set.</p>"}))
    GetConfigurationSetResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) that are associated with\n            the configuration set.</p>"}))
    GetConfigurationSetResponse.type = Types::GetConfigurationSetResponse
    GetDedicatedIpRequest.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>The IP address that you want to obtain more information about. The value you specify\n            has to be a dedicated IP address that's assocaited with your Amazon Pinpoint account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDedicatedIpRequest.type = Types::GetDedicatedIpRequest
    GetDedicatedIpResponse.add_member(:dedicated_ip, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedIp, location_name: 'DedicatedIp', traits: {"smithy.api#documentation" => "<p>An object that contains information about a dedicated IP address.</p>"}))
    GetDedicatedIpResponse.type = Types::GetDedicatedIpResponse
    GetDedicatedIpsRequest.add_member(:pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'PoolName', traits: {"smithy.api#documentation" => "<p>The name of the IP pool that the dedicated IP address is associated with.</p>", "smithy.api#httpQuery" => "PoolName"}))
    GetDedicatedIpsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>GetDedicatedIps</code> to indicate the\n            position of the dedicated IP pool in the list of IP pools.</p>", "smithy.api#httpQuery" => "NextToken"}))
    GetDedicatedIpsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>GetDedicatedIpsRequest</code>.\n            If the number of results is larger than the number you specified in this parameter, then\n            the response includes a <code>NextToken</code> element, which you can use to obtain\n            additional results.</p>", "smithy.api#httpQuery" => "PageSize"}))
    GetDedicatedIpsRequest.type = Types::GetDedicatedIpsRequest
    GetDedicatedIpsResponse.add_member(:dedicated_ips, Smithy::Schema::Shapes::ShapeRef.new(shape: DedicatedIpList, location_name: 'DedicatedIps', traits: {"smithy.api#documentation" => "<p>A list of dedicated IP addresses that are reserved for use by your Amazon Pinpoint\n            account.</p>"}))
    GetDedicatedIpsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional dedicated IP addresses to list. To\n            view additional addresses, issue another request to <code>GetDedicatedIps</code>,\n            passing this token in the <code>NextToken</code> parameter.</p>"}))
    GetDedicatedIpsResponse.type = Types::GetDedicatedIpsResponse
    GetDeliverabilityDashboardOptionsRequest.type = Types::GetDeliverabilityDashboardOptionsRequest
    GetDeliverabilityDashboardOptionsResponse.add_member(:dashboard_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'DashboardEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether the Deliverability dashboard is enabled for your Amazon Pinpoint account. If this value\n            is <code>true</code>, the dashboard is enabled.</p>", "smithy.api#required" => {}}))
    GetDeliverabilityDashboardOptionsResponse.add_member(:subscription_expiry_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SubscriptionExpiryDate', traits: {"smithy.api#documentation" => "<p>The date, in Unix time format, when your current subscription to the Deliverability dashboard\n            is scheduled to expire, if your subscription is scheduled to expire at the end of the\n            current calendar month. This value is null if you have an active subscription that isn’t\n            due to expire at the end of the month.</p>"}))
    GetDeliverabilityDashboardOptionsResponse.add_member(:account_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverabilityDashboardAccountStatus, location_name: 'AccountStatus', traits: {"smithy.api#documentation" => "<p>The current status of your Deliverability dashboard subscription. If this value is\n                <code>PENDING_EXPIRATION</code>, your subscription is scheduled to expire at the end\n            of the current calendar month.</p>"}))
    GetDeliverabilityDashboardOptionsResponse.add_member(:active_subscribed_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDeliverabilityTrackingOptions, location_name: 'ActiveSubscribedDomains', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each verified domain that you use to send email and\n            currently has an active Deliverability dashboard subscription that isn’t scheduled to expire at\n            the end of the current calendar month.</p>"}))
    GetDeliverabilityDashboardOptionsResponse.add_member(:pending_expiration_subscribed_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDeliverabilityTrackingOptions, location_name: 'PendingExpirationSubscribedDomains', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each verified domain that you use to send email and\n            currently has an active Deliverability dashboard subscription that's scheduled to expire at the\n            end of the current calendar month.</p>"}))
    GetDeliverabilityDashboardOptionsResponse.type = Types::GetDeliverabilityDashboardOptionsResponse
    GetDeliverabilityTestReportRequest.add_member(:report_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ReportId, location_name: 'ReportId', traits: {"smithy.api#documentation" => "<p>A unique string that identifies the predictive inbox placement test.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDeliverabilityTestReportRequest.type = Types::GetDeliverabilityTestReportRequest
    GetDeliverabilityTestReportResponse.add_member(:deliverability_test_report, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverabilityTestReport, location_name: 'DeliverabilityTestReport', traits: {"smithy.api#documentation" => "<p>An object that contains the results of the predictive inbox placement test.</p>", "smithy.api#required" => {}}))
    GetDeliverabilityTestReportResponse.add_member(:overall_placement, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementStatistics, location_name: 'OverallPlacement', traits: {"smithy.api#documentation" => "<p>An object that specifies how many test messages that were sent during the predictive inbox placement test were\n            delivered to recipients' inboxes, how many were sent to recipients' spam folders, and\n            how many weren't delivered.</p>", "smithy.api#required" => {}}))
    GetDeliverabilityTestReportResponse.add_member(:isp_placements, Smithy::Schema::Shapes::ShapeRef.new(shape: IspPlacements, location_name: 'IspPlacements', traits: {"smithy.api#documentation" => "<p>An object that describes how the test email was handled by several email providers,\n            including Gmail, Hotmail, Yahoo, AOL, and others.</p>", "smithy.api#required" => {}}))
    GetDeliverabilityTestReportResponse.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageContent, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>An object that contains the message that you sent when you performed this\n            predictive inbox placement test.</p>"}))
    GetDeliverabilityTestReportResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) that are associated with\n            the predictive inbox placement test.</p>"}))
    GetDeliverabilityTestReportResponse.type = Types::GetDeliverabilityTestReportResponse
    GetDomainDeliverabilityCampaignRequest.add_member(:campaign_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CampaignId, location_name: 'CampaignId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the campaign. Amazon Pinpoint automatically generates and assigns this\n            identifier to a campaign. This value is not the same as the campaign identifier that\n            Amazon Pinpoint assigns to campaigns that you create and manage by using the Amazon Pinpoint API or the\n            Amazon Pinpoint console.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainDeliverabilityCampaignRequest.type = Types::GetDomainDeliverabilityCampaignRequest
    GetDomainDeliverabilityCampaignResponse.add_member(:domain_deliverability_campaign, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDeliverabilityCampaign, location_name: 'DomainDeliverabilityCampaign', traits: {"smithy.api#documentation" => "<p>An object that contains the deliverability data for the campaign.</p>", "smithy.api#required" => {}}))
    GetDomainDeliverabilityCampaignResponse.type = Types::GetDomainDeliverabilityCampaignResponse
    GetDomainStatisticsReportRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>The domain that you want to obtain deliverability metrics for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainStatisticsReportRequest.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>The first day (in Unix time) that you want to obtain domain deliverability metrics\n            for.</p>", "smithy.api#httpQuery" => "StartDate", "smithy.api#required" => {}}))
    GetDomainStatisticsReportRequest.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndDate', traits: {"smithy.api#documentation" => "<p>The last day (in Unix time) that you want to obtain domain deliverability metrics for.\n            The <code>EndDate</code> that you specify has to be less than or equal to 30 days after\n            the <code>StartDate</code>.</p>", "smithy.api#httpQuery" => "EndDate", "smithy.api#required" => {}}))
    GetDomainStatisticsReportRequest.type = Types::GetDomainStatisticsReportRequest
    GetDomainStatisticsReportResponse.add_member(:overall_volume, Smithy::Schema::Shapes::ShapeRef.new(shape: OverallVolume, location_name: 'OverallVolume', traits: {"smithy.api#documentation" => "<p>An object that contains deliverability metrics for the domain that you specified. The\n            data in this object is a summary of all of the data that was collected from the\n                <code>StartDate</code> to the <code>EndDate</code>.</p>", "smithy.api#required" => {}}))
    GetDomainStatisticsReportResponse.add_member(:daily_volumes, Smithy::Schema::Shapes::ShapeRef.new(shape: DailyVolumes, location_name: 'DailyVolumes', traits: {"smithy.api#documentation" => "<p>An object that contains deliverability metrics for the domain that you specified. This\n            object contains data for each day, starting on the <code>StartDate</code> and ending on\n            the <code>EndDate</code>.</p>", "smithy.api#required" => {}}))
    GetDomainStatisticsReportResponse.type = Types::GetDomainStatisticsReportResponse
    GetEmailIdentityRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email identity that you want to retrieve details for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailIdentityRequest.type = Types::GetEmailIdentityRequest
    GetEmailIdentityResponse.add_member(:identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType', traits: {"smithy.api#documentation" => "<p>The email identity type.</p>"}))
    GetEmailIdentityResponse.add_member(:feedback_forwarding_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'FeedbackForwardingStatus', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The feedback forwarding configuration for the identity.</p>\n        <p>If the value is <code>true</code>, Amazon Pinpoint sends you email notifications when bounce or\n            complaint events occur. Amazon Pinpoint sends this notification to the address that you specified\n            in the Return-Path header of the original email.</p>\n        <p>When you set this value to <code>false</code>, Amazon Pinpoint sends notifications through other\n            mechanisms, such as by notifying an Amazon SNS topic or another event destination. You're\n            required to have a method of tracking bounces and complaints. If you haven't set up\n            another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email\n            notification when these events occur (even if this setting is disabled).</p>"}))
    GetEmailIdentityResponse.add_member(:verified_for_sending_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'VerifiedForSendingStatus', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether or not the identity is verified. In Amazon Pinpoint, you can only send email\n            from verified email addresses or domains. For more information about verifying\n            identities, see the <a href=\"https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-email-manage-verify.html\">Amazon Pinpoint User Guide</a>.</p>"}))
    GetEmailIdentityResponse.add_member(:dkim_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: DkimAttributes, location_name: 'DkimAttributes', traits: {"smithy.api#documentation" => "<p>An object that contains information about the DKIM attributes for the identity. This\n            object includes the tokens that you use to create the CNAME records that are required to\n            complete the DKIM verification process.</p>"}))
    GetEmailIdentityResponse.add_member(:mail_from_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromAttributes, location_name: 'MailFromAttributes', traits: {"smithy.api#documentation" => "<p>An object that contains information about the Mail-From attributes for the email\n            identity.</p>"}))
    GetEmailIdentityResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of objects that define the tags (keys and values) that are associated with\n            the email identity.</p>"}))
    GetEmailIdentityResponse.type = Types::GetEmailIdentityResponse
    IdentityInfo.add_member(:identity_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityType, location_name: 'IdentityType', traits: {"smithy.api#documentation" => "<p>The email identity type. The identity type can be one of the following:</p>\n        <ul>\n            <li>\n                <p>\n                  <code>EMAIL_ADDRESS</code> – The identity is an email address.</p>\n            </li>\n            <li>\n                <p>\n                  <code>DOMAIN</code> – The identity is a domain.</p>\n            </li>\n            <li>\n                <p>\n                  <code>MANAGED_DOMAIN</code> – The identity is a domain that is managed\n                    by AWS.</p>\n            </li>\n         </ul>"}))
    IdentityInfo.add_member(:identity_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'IdentityName', traits: {"smithy.api#documentation" => "<p>The address or domain of the identity.</p>"}))
    IdentityInfo.add_member(:sending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SendingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Indicates whether or not you can send email from the identity.</p>\n        <p>In Amazon Pinpoint, an identity is an email address or domain that you send email from. Before\n            you can send email from an identity, you have to demostrate that you own the identity,\n            and that you authorize Amazon Pinpoint to send email from that identity.</p>"}))
    IdentityInfo.type = Types::IdentityInfo
    IdentityInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityInfo)
    IdentityType.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMAIL_ADDRESS', traits: {"smithy.api#enumValue" => "EMAIL_ADDRESS"}))
    IdentityType.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN', traits: {"smithy.api#enumValue" => "DOMAIN"}))
    IdentityType.add_member(:managed_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANAGED_DOMAIN', traits: {"smithy.api#enumValue" => "MANAGED_DOMAIN"}))
    InboxPlacementTrackingOption.add_member(:global, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'Global', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether inbox placement data is being tracked for the domain.</p>"}))
    InboxPlacementTrackingOption.add_member(:tracked_isps, Smithy::Schema::Shapes::ShapeRef.new(shape: IspNameList, location_name: 'TrackedIsps', traits: {"smithy.api#documentation" => "<p>An array of strings, one for each major email provider that the inbox placement data\n            applies to.</p>"}))
    InboxPlacementTrackingOption.type = Types::InboxPlacementTrackingOption
    IpList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Ip)
    IspNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IspName)
    IspPlacement.add_member(:isp_name, Smithy::Schema::Shapes::ShapeRef.new(shape: IspName, location_name: 'IspName', traits: {"smithy.api#documentation" => "<p>The name of the email provider that the inbox placement data applies to.</p>"}))
    IspPlacement.add_member(:placement_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: PlacementStatistics, location_name: 'PlacementStatistics', traits: {"smithy.api#documentation" => "<p>An object that contains inbox placement metrics for a specific email provider.</p>"}))
    IspPlacement.type = Types::IspPlacement
    IspPlacements.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IspPlacement)
    KinesisFirehoseDestination.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that Amazon Pinpoint uses when sending email\n            events to the Amazon Kinesis Data Firehose stream.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseDestination.add_member(:delivery_stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'DeliveryStreamArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Kinesis Data Firehose stream that Amazon Pinpoint sends email events\n            to.</p>", "smithy.api#required" => {}}))
    KinesisFirehoseDestination.type = Types::KinesisFirehoseDestination
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListConfigurationSetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListConfigurationSets</code> to\n            indicate the position in the list of configuration sets.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListConfigurationSetsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListConfigurationSets</code>.\n            If the number of results is larger than the number you specified in this parameter, then\n            the response includes a <code>NextToken</code> element, which you can use to obtain\n            additional results.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListConfigurationSetsRequest.type = Types::ListConfigurationSetsRequest
    ListConfigurationSetsResponse.add_member(:configuration_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetNameList, location_name: 'ConfigurationSets', traits: {"smithy.api#documentation" => "<p>An array that contains all of the configuration sets in your Amazon Pinpoint account in the\n            current AWS Region.</p>"}))
    ListConfigurationSetsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional configuration sets to list. To view\n            additional configuration sets, issue another request to\n                <code>ListConfigurationSets</code>, and pass this token in the\n                <code>NextToken</code> parameter.</p>"}))
    ListConfigurationSetsResponse.type = Types::ListConfigurationSetsResponse
    ListDedicatedIpPoolsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListDedicatedIpPools</code> to indicate\n            the position in the list of dedicated IP pools.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListDedicatedIpPoolsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListDedicatedIpPools</code>.\n            If the number of results is larger than the number you specified in this parameter, then\n            the response includes a <code>NextToken</code> element, which you can use to obtain\n            additional results.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListDedicatedIpPoolsRequest.type = Types::ListDedicatedIpPoolsRequest
    ListDedicatedIpPoolsResponse.add_member(:dedicated_ip_pools, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDedicatedIpPools, location_name: 'DedicatedIpPools', traits: {"smithy.api#documentation" => "<p>A list of all of the dedicated IP pools that are associated with your Amazon Pinpoint\n            account.</p>"}))
    ListDedicatedIpPoolsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional IP pools to list. To view additional\n            IP pools, issue another request to <code>ListDedicatedIpPools</code>, passing this token\n            in the <code>NextToken</code> parameter.</p>"}))
    ListDedicatedIpPoolsResponse.type = Types::ListDedicatedIpPoolsResponse
    ListDeliverabilityTestReportsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListDeliverabilityTestReports</code> to\n            indicate the position in the list of predictive inbox placement tests.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListDeliverabilityTestReportsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to\n                <code>ListDeliverabilityTestReports</code>. If the number of results is larger than\n            the number you specified in this parameter, then the response includes a\n                <code>NextToken</code> element, which you can use to obtain additional\n            results.</p>\n        <p>The value you specify has to be at least 0, and can be no more than 1000.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListDeliverabilityTestReportsRequest.type = Types::ListDeliverabilityTestReportsRequest
    ListDeliverabilityTestReportsResponse.add_member(:deliverability_test_reports, Smithy::Schema::Shapes::ShapeRef.new(shape: DeliverabilityTestReports, location_name: 'DeliverabilityTestReports', traits: {"smithy.api#documentation" => "<p>An object that contains a lists of predictive inbox placement tests that you've performed.</p>", "smithy.api#required" => {}}))
    ListDeliverabilityTestReportsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional predictive inbox placement tests to list. To view additional\n            predictive inbox placement tests, issue another request to <code>ListDeliverabilityTestReports</code>, and pass\n            this token in the <code>NextToken</code> parameter.</p>"}))
    ListDeliverabilityTestReportsResponse.type = Types::ListDeliverabilityTestReportsResponse
    ListDomainDeliverabilityCampaignsRequest.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>The first day, in Unix time format, that you want to obtain deliverability data\n            for.</p>", "smithy.api#httpQuery" => "StartDate", "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndDate', traits: {"smithy.api#documentation" => "<p>The last day, in Unix time format, that you want to obtain deliverability data for.\n            This value has to be less than or equal to 30 days after the value of the\n                <code>StartDate</code> parameter.</p>", "smithy.api#httpQuery" => "EndDate", "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:subscribed_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'SubscribedDomain', traits: {"smithy.api#documentation" => "<p>The domain to obtain deliverability data for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that’s returned from a previous call to the\n                <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the\n            position of a campaign in the list of campaigns.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListDomainDeliverabilityCampaignsRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in response to a single call to the\n                <code>ListDomainDeliverabilityCampaigns</code> operation. If the number of results\n            is larger than the number that you specify in this parameter, the response includes a\n                <code>NextToken</code> element, which you can use to obtain additional\n            results.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListDomainDeliverabilityCampaignsRequest.type = Types::ListDomainDeliverabilityCampaignsRequest
    ListDomainDeliverabilityCampaignsResponse.add_member(:domain_deliverability_campaigns, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDeliverabilityCampaignList, location_name: 'DomainDeliverabilityCampaigns', traits: {"smithy.api#documentation" => "<p>An array of responses, one for each campaign that used the domain to send email during\n            the specified time range.</p>", "smithy.api#required" => {}}))
    ListDomainDeliverabilityCampaignsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that’s returned from a previous call to the\n                <code>ListDomainDeliverabilityCampaigns</code> operation. This token indicates the\n            position of the campaign in the list of campaigns.</p>"}))
    ListDomainDeliverabilityCampaignsResponse.type = Types::ListDomainDeliverabilityCampaignsResponse
    ListEmailIdentitiesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token returned from a previous call to <code>ListEmailIdentities</code> to indicate\n            the position in the list of identities.</p>", "smithy.api#httpQuery" => "NextToken"}))
    ListEmailIdentitiesRequest.add_member(:page_size, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxItems, location_name: 'PageSize', traits: {"smithy.api#documentation" => "<p>The number of results to show in a single call to <code>ListEmailIdentities</code>. If\n            the number of results is larger than the number you specified in this parameter, then\n            the response includes a <code>NextToken</code> element, which you can use to obtain\n            additional results.</p>\n        <p>The value you specify has to be at least 0, and can be no more than 1000.</p>", "smithy.api#httpQuery" => "PageSize"}))
    ListEmailIdentitiesRequest.type = Types::ListEmailIdentitiesRequest
    ListEmailIdentitiesResponse.add_member(:email_identities, Smithy::Schema::Shapes::ShapeRef.new(shape: IdentityInfoList, location_name: 'EmailIdentities', traits: {"smithy.api#documentation" => "<p>An array that includes all of the identities associated with your Amazon Pinpoint\n            account.</p>"}))
    ListEmailIdentitiesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there are additional configuration sets to list. To view\n            additional configuration sets, issue another request to\n            <code>ListEmailIdentities</code>, and pass this token in the <code>NextToken</code>\n            parameter.</p>"}))
    ListEmailIdentitiesResponse.type = Types::ListEmailIdentitiesResponse
    ListOfDedicatedIpPools.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName)
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to retrieve tag\n            information for.</p>", "smithy.api#httpQuery" => "ResourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array that lists all the tags that are associated with the resource. Each tag\n            consists of a required tag key (<code>Key</code>) and an associated tag value\n                (<code>Value</code>)</p>", "smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MailFromAttributes.add_member(:mail_from_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainName, location_name: 'MailFromDomain', traits: {"smithy.api#documentation" => "<p>The name of a domain that an email identity uses as a custom MAIL FROM domain.</p>", "smithy.api#required" => {}}))
    MailFromAttributes.add_member(:mail_from_domain_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainStatus, location_name: 'MailFromDomainStatus', traits: {"smithy.api#documentation" => "<p>The status of the MAIL FROM domain. This status can have the following values:</p>\n        <ul>\n            <li>\n                <p>\n                  <code>PENDING</code> – Amazon Pinpoint hasn't started searching for the MX record\n                    yet.</p>\n            </li>\n            <li>\n                <p>\n                  <code>SUCCESS</code> – Amazon Pinpoint detected the required MX record for the\n                    MAIL FROM domain.</p>\n            </li>\n            <li>\n                <p>\n                  <code>FAILED</code> – Amazon Pinpoint can't find the required MX record, or the\n                    record no longer exists.</p>\n            </li>\n            <li>\n                <p>\n                  <code>TEMPORARY_FAILURE</code> – A temporary issue occurred, which\n                    prevented Amazon Pinpoint from determining the status of the MAIL FROM domain.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MailFromAttributes.add_member(:behavior_on_mx_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: BehaviorOnMxFailure, location_name: 'BehaviorOnMxFailure', traits: {"smithy.api#documentation" => "<p>The action that Amazon Pinpoint to takes if it can't read the required MX record for a custom\n            MAIL FROM domain. When you set this value to <code>UseDefaultValue</code>, Amazon Pinpoint uses\n                <i>amazonses.com</i> as the MAIL FROM domain. When you set this value\n            to <code>RejectMessage</code>, Amazon Pinpoint returns a <code>MailFromDomainNotVerified</code>\n            error, and doesn't attempt to deliver the email.</p>\n        <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the\n                <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>\n            states.</p>", "smithy.api#required" => {}}))
    MailFromAttributes.type = Types::MailFromAttributes
    MailFromDomainNotVerifiedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MailFromDomainNotVerifiedException.type = Types::MailFromDomainNotVerifiedException
    MailFromDomainStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    MailFromDomainStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    MailFromDomainStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    MailFromDomainStatus.add_member(:temporary_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TEMPORARY_FAILURE', traits: {"smithy.api#enumValue" => "TEMPORARY_FAILURE"}))
    Message.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Content, location_name: 'Subject', traits: {"smithy.api#documentation" => "<p>The subject line of the email. The subject line can only contain 7-bit ASCII\n            characters. However, you can specify non-ASCII characters in the subject line by using\n            encoded-word syntax, as described in <a href=\"https://tools.ietf.org/html/rfc2047\">RFC 2047</a>.</p>", "smithy.api#required" => {}}))
    Message.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Body, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The body of the message. You can specify an HTML version of the message, a text-only\n            version of the message, or both.</p>", "smithy.api#required" => {}}))
    Message.type = Types::Message
    MessageRejected.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    MessageRejected.type = Types::MessageRejected
    MessageTag.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the message tag. The message tag name has to meet the following\n            criteria:</p>\n        <ul>\n            <li>\n                <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),\n                    underscores (_), or dashes (-).</p>\n            </li>\n            <li>\n                <p>It can contain no more than 256 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MessageTag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the message tag. The message tag value has to meet the following\n            criteria:</p>\n        <ul>\n            <li>\n                <p>It can only contain ASCII letters (a–z, A–Z), numbers (0–9),\n                    underscores (_), or dashes (-).</p>\n            </li>\n            <li>\n                <p>It can contain no more than 256 characters.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    MessageTag.type = Types::MessageTag
    MessageTagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTag)
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    NotFoundException.type = Types::NotFoundException
    OverallVolume.add_member(:volume_statistics, Smithy::Schema::Shapes::ShapeRef.new(shape: VolumeStatistics, location_name: 'VolumeStatistics', traits: {"smithy.api#documentation" => "<p>An object that contains information about the numbers of messages that arrived in\n            recipients' inboxes and junk mail folders.</p>"}))
    OverallVolume.add_member(:read_rate_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'ReadRatePercent', traits: {"smithy.api#documentation" => "<p>The percentage of emails that were sent from the domain that were read by their\n            recipients.</p>"}))
    OverallVolume.add_member(:domain_isp_placements, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainIspPlacements, location_name: 'DomainIspPlacements', traits: {"smithy.api#documentation" => "<p>An object that contains inbox and junk mail placement metrics for individual email\n            providers.</p>"}))
    OverallVolume.type = Types::OverallVolume
    PinpointDestination.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon Pinpoint project that you want to send email\n            events to.</p>"}))
    PinpointDestination.type = Types::PinpointDestination
    PlacementStatistics.add_member(:inbox_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'InboxPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of emails that arrived in recipients' inboxes during the predictive inbox placement test.</p>"}))
    PlacementStatistics.add_member(:spam_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'SpamPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of emails that arrived in recipients' spam or junk mail folders during\n            the predictive inbox placement test.</p>"}))
    PlacementStatistics.add_member(:missing_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'MissingPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of emails that didn't arrive in recipients' inboxes at all during the\n            predictive inbox placement test.</p>"}))
    PlacementStatistics.add_member(:spf_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'SpfPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of emails that were authenticated by using Sender Policy Framework\n            (SPF) during the predictive inbox placement test.</p>"}))
    PlacementStatistics.add_member(:dkim_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage, location_name: 'DkimPercentage', traits: {"smithy.api#documentation" => "<p>The percentage of emails that were authenticated by using DomainKeys Identified Mail\n            (DKIM) during the predictive inbox placement test.</p>"}))
    PlacementStatistics.type = Types::PlacementStatistics
    PutAccountDedicatedIpWarmupAttributesRequest.add_member(:auto_warmup_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'AutoWarmupEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables or disables the automatic warm-up feature for dedicated IP addresses that are\n            associated with your Amazon Pinpoint account in the current AWS Region. Set to <code>true</code>\n            to enable the automatic warm-up feature, or set to <code>false</code> to disable\n            it.</p>"}))
    PutAccountDedicatedIpWarmupAttributesRequest.type = Types::PutAccountDedicatedIpWarmupAttributesRequest
    PutAccountDedicatedIpWarmupAttributesResponse.type = Types::PutAccountDedicatedIpWarmupAttributesResponse
    PutAccountSendingAttributesRequest.add_member(:sending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SendingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Enables or disables your account's ability to send email. Set to <code>true</code> to\n            enable email sending, or set to <code>false</code> to disable email sending.</p>\n        <note>\n            <p>If AWS paused your account's ability to send email, you can't use this operation\n                to resume your account's ability to send email.</p>\n        </note>"}))
    PutAccountSendingAttributesRequest.type = Types::PutAccountSendingAttributesRequest
    PutAccountSendingAttributesResponse.type = Types::PutAccountSendingAttributesResponse
    PutConfigurationSetDeliveryOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that you want to associate with a dedicated IP\n            pool.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:tls_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: TlsPolicy, location_name: 'TlsPolicy', traits: {"smithy.api#documentation" => "<p>Specifies whether messages that use the configuration set are required to use\n            Transport Layer Security (TLS). If the value is <code>Require</code>, messages are only\n            delivered if a TLS connection can be established. If the value is <code>Optional</code>,\n            messages can be delivered in plain text if a TLS connection can't be established.</p>"}))
    PutConfigurationSetDeliveryOptionsRequest.add_member(:sending_pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SendingPoolName, location_name: 'SendingPoolName', traits: {"smithy.api#documentation" => "<p>The name of the dedicated IP pool that you want to associate with the configuration\n            set.</p>"}))
    PutConfigurationSetDeliveryOptionsRequest.type = Types::PutConfigurationSetDeliveryOptionsRequest
    PutConfigurationSetDeliveryOptionsResponse.type = Types::PutConfigurationSetDeliveryOptionsResponse
    PutConfigurationSetReputationOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that you want to enable or disable reputation metric\n            tracking for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetReputationOptionsRequest.add_member(:reputation_metrics_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'ReputationMetricsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration\n            set. If <code>false</code>, tracking of reputation metrics is disabled for the\n            configuration set.</p>"}))
    PutConfigurationSetReputationOptionsRequest.type = Types::PutConfigurationSetReputationOptionsRequest
    PutConfigurationSetReputationOptionsResponse.type = Types::PutConfigurationSetReputationOptionsResponse
    PutConfigurationSetSendingOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that you want to enable or disable email sending\n            for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetSendingOptionsRequest.add_member(:sending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SendingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, email sending is enabled for the configuration set. If\n                <code>false</code>, email sending is disabled for the configuration set.</p>"}))
    PutConfigurationSetSendingOptionsRequest.type = Types::PutConfigurationSetSendingOptionsRequest
    PutConfigurationSetSendingOptionsResponse.type = Types::PutConfigurationSetSendingOptionsResponse
    PutConfigurationSetTrackingOptionsRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that you want to add a custom tracking domain\n            to.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutConfigurationSetTrackingOptionsRequest.add_member(:custom_redirect_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRedirectDomain, location_name: 'CustomRedirectDomain', traits: {"smithy.api#documentation" => "<p>The domain that you want to use to track open and click events.</p>"}))
    PutConfigurationSetTrackingOptionsRequest.type = Types::PutConfigurationSetTrackingOptionsRequest
    PutConfigurationSetTrackingOptionsResponse.type = Types::PutConfigurationSetTrackingOptionsResponse
    PutDedicatedIpInPoolRequest.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>The IP address that you want to move to the dedicated IP pool. The value you specify\n            has to be a dedicated IP address that's associated with your Amazon Pinpoint account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpInPoolRequest.add_member(:destination_pool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PoolName, location_name: 'DestinationPoolName', traits: {"smithy.api#documentation" => "<p>The name of the IP pool that you want to add the dedicated IP address to. You have to\n            specify an IP pool that already exists.</p>", "smithy.api#required" => {}}))
    PutDedicatedIpInPoolRequest.type = Types::PutDedicatedIpInPoolRequest
    PutDedicatedIpInPoolResponse.type = Types::PutDedicatedIpInPoolResponse
    PutDedicatedIpWarmupAttributesRequest.add_member(:ip, Smithy::Schema::Shapes::ShapeRef.new(shape: Ip, location_name: 'Ip', traits: {"smithy.api#documentation" => "<p>The dedicated IP address that you want to update the warm-up attributes for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDedicatedIpWarmupAttributesRequest.add_member(:warmup_percentage, Smithy::Schema::Shapes::ShapeRef.new(shape: Percentage100Wrapper, location_name: 'WarmupPercentage', traits: {"smithy.api#documentation" => "<p>The warm-up percentage that you want to associate with the dedicated IP\n            address.</p>", "smithy.api#required" => {}}))
    PutDedicatedIpWarmupAttributesRequest.type = Types::PutDedicatedIpWarmupAttributesRequest
    PutDedicatedIpWarmupAttributesResponse.type = Types::PutDedicatedIpWarmupAttributesResponse
    PutDeliverabilityDashboardOptionRequest.add_member(:dashboard_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'DashboardEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to enable the Deliverability dashboard for your Amazon Pinpoint account. To enable the\n            dashboard, set this value to <code>true</code>.</p>", "smithy.api#required" => {}}))
    PutDeliverabilityDashboardOptionRequest.add_member(:subscribed_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDeliverabilityTrackingOptions, location_name: 'SubscribedDomains', traits: {"smithy.api#documentation" => "<p>An array of objects, one for each verified domain that you use to send email and\n            enabled the Deliverability dashboard for.</p>"}))
    PutDeliverabilityDashboardOptionRequest.type = Types::PutDeliverabilityDashboardOptionRequest
    PutDeliverabilityDashboardOptionResponse.type = Types::PutDeliverabilityDashboardOptionResponse
    PutEmailIdentityDkimAttributesRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email identity that you want to change the DKIM settings for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityDkimAttributesRequest.add_member(:signing_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SigningEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Sets the DKIM signing configuration for the identity.</p>\n        <p>When you set this value <code>true</code>, then the messages that Amazon Pinpoint sends from the\n            identity are DKIM-signed. When you set this value to <code>false</code>, then the\n            messages that Amazon Pinpoint sends from the identity aren't DKIM-signed.</p>"}))
    PutEmailIdentityDkimAttributesRequest.type = Types::PutEmailIdentityDkimAttributesRequest
    PutEmailIdentityDkimAttributesResponse.type = Types::PutEmailIdentityDkimAttributesResponse
    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The email identity that you want to configure bounce and complaint feedback forwarding\n            for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityFeedbackAttributesRequest.add_member(:email_forwarding_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'EmailForwardingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Sets the feedback forwarding configuration for the identity.</p>\n        <p>If the value is <code>true</code>, Amazon Pinpoint sends you email notifications when bounce or\n            complaint events occur. Amazon Pinpoint sends this notification to the address that you specified\n            in the Return-Path header of the original email.</p>\n        <p>When you set this value to <code>false</code>, Amazon Pinpoint sends notifications through other\n            mechanisms, such as by notifying an Amazon SNS topic or another event destination. You're\n            required to have a method of tracking bounces and complaints. If you haven't set up\n            another mechanism for receiving bounce or complaint notifications, Amazon Pinpoint sends an email\n            notification when these events occur (even if this setting is disabled).</p>"}))
    PutEmailIdentityFeedbackAttributesRequest.type = Types::PutEmailIdentityFeedbackAttributesRequest
    PutEmailIdentityFeedbackAttributesResponse.type = Types::PutEmailIdentityFeedbackAttributesResponse
    PutEmailIdentityMailFromAttributesRequest.add_member(:email_identity, Smithy::Schema::Shapes::ShapeRef.new(shape: Identity, location_name: 'EmailIdentity', traits: {"smithy.api#documentation" => "<p>The verified email identity that you want to set up the custom MAIL FROM domain\n            for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutEmailIdentityMailFromAttributesRequest.add_member(:mail_from_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainName, location_name: 'MailFromDomain', traits: {"smithy.api#documentation" => "<p> The custom MAIL FROM domain that you want the verified identity to use. The MAIL FROM\n            domain must meet the following criteria:</p>\n        <ul>\n            <li>\n                <p>It has to be a subdomain of the verified identity.</p>\n            </li>\n            <li>\n                <p>It can't be used to receive email.</p>\n            </li>\n            <li>\n                <p>It can't be used in a \"From\" address if the MAIL FROM domain is a destination\n                    for feedback forwarding emails.</p>\n            </li>\n         </ul>"}))
    PutEmailIdentityMailFromAttributesRequest.add_member(:behavior_on_mx_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: BehaviorOnMxFailure, location_name: 'BehaviorOnMxFailure', traits: {"smithy.api#documentation" => "<p>The action that you want Amazon Pinpoint to take if it can't read the required MX record when\n            you send an email. When you set this value to <code>UseDefaultValue</code>, Amazon Pinpoint uses\n                <i>amazonses.com</i> as the MAIL FROM domain. When you set this value\n            to <code>RejectMessage</code>, Amazon Pinpoint returns a <code>MailFromDomainNotVerified</code>\n            error, and doesn't attempt to deliver the email.</p>\n        <p>These behaviors are taken when the custom MAIL FROM domain configuration is in the\n                <code>Pending</code>, <code>Failed</code>, and <code>TemporaryFailure</code>\n            states.</p>"}))
    PutEmailIdentityMailFromAttributesRequest.type = Types::PutEmailIdentityMailFromAttributesRequest
    PutEmailIdentityMailFromAttributesResponse.type = Types::PutEmailIdentityMailFromAttributesResponse
    RawMessage.add_member(:data, Smithy::Schema::Shapes::ShapeRef.new(shape: RawMessageData, location_name: 'Data', traits: {"smithy.api#documentation" => "<p>The raw email message. The message has to meet the following criteria:</p>\n        <ul>\n            <li>\n                <p>The message has to contain a header and a body, separated by one blank\n                    line.</p>\n            </li>\n            <li>\n                <p>All of the required header fields must be present in the message.</p>\n            </li>\n            <li>\n                <p>Each part of a multipart MIME message must be formatted properly.</p>\n            </li>\n            <li>\n                <p>Attachments must be in a file format that Amazon Pinpoint supports.\n                    </p>\n            </li>\n            <li>\n                <p>The entire message must be Base64 encoded.</p>\n            </li>\n            <li>\n                <p>If any of the MIME parts in your message contain content that is outside of\n                    the 7-bit ASCII character range, you should encode that content to ensure that\n                    recipients' email clients render the message properly.</p>\n            </li>\n            <li>\n                <p>The length of any single line of text in the message can't exceed 1,000\n                    characters. This restriction is defined in <a href=\"https://tools.ietf.org/html/rfc5321\">RFC 5321</a>.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    RawMessage.type = Types::RawMessage
    ReputationOptions.add_member(:reputation_metrics_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'ReputationMetricsEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, tracking of reputation metrics is enabled for the configuration\n            set. If <code>false</code>, tracking of reputation metrics is disabled for the\n            configuration set.</p>"}))
    ReputationOptions.add_member(:last_fresh_start, Smithy::Schema::Shapes::ShapeRef.new(shape: LastFreshStart, location_name: 'LastFreshStart', traits: {"smithy.api#documentation" => "<p>The date and time (in Unix time) when the reputation metrics were last given a fresh\n            start. When your account is given a fresh start, your reputation metrics are calculated\n            starting from the date of the fresh start.</p>"}))
    ReputationOptions.type = Types::ReputationOptions
    SendEmailRequest.add_member(:from_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FromEmailAddress', traits: {"smithy.api#documentation" => "<p>The email address that you want to use as the \"From\" address for the email. The\n            address that you specify has to be verified.\n            </p>"}))
    SendEmailRequest.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Destination, location_name: 'Destination', traits: {"smithy.api#documentation" => "<p>An object that contains the recipients of the email message.</p>", "smithy.api#required" => {}}))
    SendEmailRequest.add_member(:reply_to_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddressList, location_name: 'ReplyToAddresses', traits: {"smithy.api#documentation" => "<p>The \"Reply-to\" email addresses for the message. When the recipient replies to the\n            message, each Reply-to address receives the reply.</p>"}))
    SendEmailRequest.add_member(:feedback_forwarding_email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailAddress, location_name: 'FeedbackForwardingEmailAddress', traits: {"smithy.api#documentation" => "<p>The address that Amazon Pinpoint should send bounce and complaint notifications to.</p>"}))
    SendEmailRequest.add_member(:content, Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContent, location_name: 'Content', traits: {"smithy.api#documentation" => "<p>An object that contains the body of the message. You can send either a Simple message\n            or a Raw message.</p>", "smithy.api#required" => {}}))
    SendEmailRequest.add_member(:email_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageTagList, location_name: 'EmailTags', traits: {"smithy.api#documentation" => "<p>A list of tags, in the form of name/value pairs, to apply to an email that you send\n            using the <code>SendEmail</code> operation. Tags correspond to characteristics of the\n            email that you define, so that you can publish email sending events. </p>"}))
    SendEmailRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that you want to use when sending the email.</p>"}))
    SendEmailRequest.type = Types::SendEmailRequest
    SendEmailResponse.add_member(:message_id, Smithy::Schema::Shapes::ShapeRef.new(shape: OutboundMessageId, location_name: 'MessageId', traits: {"smithy.api#documentation" => "<p>A unique identifier for the message that is generated when Amazon Pinpoint accepts the\n            message.</p>\n        <note>\n            <p>It is possible for Amazon Pinpoint to accept a message without sending it. This can happen\n                when the message you're trying to send has an attachment doesn't pass a virus check,\n                or when you send a templated email that contains invalid personalization content,\n                for example.</p>\n        </note>"}))
    SendEmailResponse.type = Types::SendEmailResponse
    SendQuota.add_member(:max24_hour_send, Smithy::Schema::Shapes::ShapeRef.new(shape: Max24HourSend, location_name: 'Max24HourSend', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of emails that you can send in the current AWS Region over a\n            24-hour period. This value is also called your <i>sending\n            quota</i>.</p>"}))
    SendQuota.add_member(:max_send_rate, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSendRate, location_name: 'MaxSendRate', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of emails that you can send per second in the current AWS Region.\n            This value is also called your <i>maximum sending rate</i> or your\n                <i>maximum TPS (transactions per second) rate</i>.</p>"}))
    SendQuota.add_member(:sent_last24_hours, Smithy::Schema::Shapes::ShapeRef.new(shape: SentLast24Hours, location_name: 'SentLast24Hours', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of emails sent from your Amazon Pinpoint account in the current AWS Region over the\n            past 24 hours.</p>"}))
    SendQuota.type = Types::SendQuota
    SendingOptions.add_member(:sending_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Enabled, location_name: 'SendingEnabled', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>If <code>true</code>, email sending is enabled for the configuration set. If\n                <code>false</code>, email sending is disabled for the configuration set.</p>"}))
    SendingOptions.type = Types::SendingOptions
    SendingPausedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    SendingPausedException.type = Types::SendingPausedException
    SnsDestination.add_member(:topic_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'TopicArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon SNS topic that you want to publish email\n            events to. For more information about Amazon SNS topics, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html\">Amazon SNS Developer\n                Guide</a>.</p>", "smithy.api#required" => {}}))
    SnsDestination.type = Types::SnsDestination
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that defines a tag. The maximum length of a tag key is\n            128 characters. The minimum length is 1 character.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The optional part of a key-value pair that defines a tag. The maximum length of a tag\n            value is 256 characters. The minimum length is 0 characters. If you don’t want a\n            resource to have a specific tag value, don’t specify a value for this parameter. Amazon Pinpoint\n            will set the value to an empty string.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to add one or more tags\n            to.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of the tags that you want to add to the resource. A tag consists of a required\n            tag key (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum\n            length of a tag key is 128 characters. The maximum length of a tag value is 256\n            characters.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Template.add_member(:template_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateArn, location_name: 'TemplateArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the template.</p>"}))
    Template.add_member(:template_data, Smithy::Schema::Shapes::ShapeRef.new(shape: TemplateData, location_name: 'TemplateData', traits: {"smithy.api#documentation" => "<p>An object that defines the values to use for message variables in the template. This object is a set of key-value pairs. Each key defines a message variable in the template. The corresponding value defines the value to use for that variable.</p>"}))
    Template.type = Types::Template
    TlsPolicy.add_member(:require, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REQUIRE', traits: {"smithy.api#enumValue" => "REQUIRE"}))
    TlsPolicy.add_member(:optional, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPTIONAL', traits: {"smithy.api#enumValue" => "OPTIONAL"}))
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    TrackingOptions.add_member(:custom_redirect_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomRedirectDomain, location_name: 'CustomRedirectDomain', traits: {"smithy.api#documentation" => "<p>The domain that you want to use for tracking open and click events.</p>", "smithy.api#required" => {}}))
    TrackingOptions.type = Types::TrackingOptions
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to remove one or more\n            tags from.</p>", "smithy.api#httpQuery" => "ResourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The tags (tag keys) that you want to remove from the resource. When you specify a tag\n            key, the action removes both that key and its associated tag value.</p>\n        <p>To remove more than one tag from the resource, append the <code>TagKeys</code>\n            parameter and argument for each additional tag to remove, separated by an ampersand. For\n            example:\n                <code>/v1/email/tags?ResourceArn=ResourceArn&TagKeys=Key1&TagKeys=Key2</code>\n        </p>", "smithy.api#httpQuery" => "TagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateConfigurationSetEventDestinationRequest.add_member(:configuration_set_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSetName, location_name: 'ConfigurationSetName', traits: {"smithy.api#documentation" => "<p>The name of the configuration set that contains the event destination that you want to\n            modify.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination_name, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationName, location_name: 'EventDestinationName', traits: {"smithy.api#documentation" => "<p>The name of the event destination that you want to modify.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.add_member(:event_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: EventDestinationDefinition, location_name: 'EventDestination', traits: {"smithy.api#documentation" => "<p>An object that defines the event destination.</p>", "smithy.api#required" => {}}))
    UpdateConfigurationSetEventDestinationRequest.type = Types::UpdateConfigurationSetEventDestinationRequest
    UpdateConfigurationSetEventDestinationResponse.type = Types::UpdateConfigurationSetEventDestinationResponse
    VolumeStatistics.add_member(:inbox_raw_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'InboxRawCount', traits: {"smithy.api#documentation" => "<p>The total number of emails that arrived in recipients' inboxes.</p>"}))
    VolumeStatistics.add_member(:spam_raw_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'SpamRawCount', traits: {"smithy.api#documentation" => "<p>The total number of emails that arrived in recipients' spam or junk mail\n            folders.</p>"}))
    VolumeStatistics.add_member(:projected_inbox, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'ProjectedInbox', traits: {"smithy.api#documentation" => "<p>An estimate of the percentage of emails sent from the current domain that will arrive\n            in recipients' inboxes.</p>"}))
    VolumeStatistics.add_member(:projected_spam, Smithy::Schema::Shapes::ShapeRef.new(shape: Volume, location_name: 'ProjectedSpam', traits: {"smithy.api#documentation" => "<p>An estimate of the percentage of emails sent from the current domain that will arrive\n            in recipients' spam or junk mail folders.</p>"}))
    VolumeStatistics.type = Types::VolumeStatistics
    WarmupStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    WarmupStatus.add_member(:done, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DONE', traits: {"smithy.api#enumValue" => "DONE"}))

    AmazonPinpointEmailService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.pinpointemail#AmazonPinpointEmailService"
      service.name = "AmazonPinpointEmailService"
      service.version = "2018-07-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Pinpoint Email", "arnNamespace" => "ses", "cloudFormationName" => "PinpointEmail", "cloudTrailEventSource" => "pinpointemail.amazonaws.com", "endpointPrefix" => "email"}, "aws.auth#sigv4" => {"name" => "ses"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Pinpoint Email Service"}
      service.add_operation(:create_configuration_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#CreateConfigurationSet"
        operation.name = "CreateConfigurationSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/configuration-sets", "code" => 200}}
      end)
      service.add_operation(:create_configuration_set_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#CreateConfigurationSetEventDestination"
        operation.name = "CreateConfigurationSetEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateConfigurationSetEventDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:create_dedicated_ip_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#CreateDedicatedIpPool"
        operation.name = "CreateDedicatedIpPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDedicatedIpPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDedicatedIpPoolResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/dedicated-ip-pools", "code" => 200}}
      end)
      service.add_operation(:create_deliverability_test_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#CreateDeliverabilityTestReport"
        operation.name = "CreateDeliverabilityTestReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeliverabilityTestReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDeliverabilityTestReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSuspendedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRejected)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/deliverability-dashboard/test", "code" => 200}}
      end)
      service.add_operation(:create_email_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#CreateEmailIdentity"
        operation.name = "CreateEmailIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailIdentityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/identities", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#DeleteConfigurationSet"
        operation.name = "DeleteConfigurationSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}", "code" => 200}}
      end)
      service.add_operation(:delete_configuration_set_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#DeleteConfigurationSetEventDestination"
        operation.name = "DeleteConfigurationSetEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteConfigurationSetEventDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", "code" => 200}}
      end)
      service.add_operation(:delete_dedicated_ip_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#DeleteDedicatedIpPool"
        operation.name = "DeleteDedicatedIpPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDedicatedIpPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDedicatedIpPoolResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/email/dedicated-ip-pools/{PoolName}", "code" => 200}}
      end)
      service.add_operation(:delete_email_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#DeleteEmailIdentity"
        operation.name = "DeleteEmailIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailIdentityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/email/identities/{EmailIdentity}", "code" => 200}}
      end)
      service.add_operation(:get_account, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetAccount"
        operation.name = "GetAccount"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/account", "code" => 200}}
      end)
      service.add_operation(:get_blacklist_reports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetBlacklistReports"
        operation.name = "GetBlacklistReports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlacklistReportsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlacklistReportsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/blacklist-report", "code" => 200}}
      end)
      service.add_operation(:get_configuration_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetConfigurationSet"
        operation.name = "GetConfigurationSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationSetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationSetResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}", "code" => 200}}
      end)
      service.add_operation(:get_configuration_set_event_destinations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetConfigurationSetEventDestinations"
        operation.name = "GetConfigurationSetEventDestinations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationSetEventDestinationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetConfigurationSetEventDestinationsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations", "code" => 200}}
      end)
      service.add_operation(:get_dedicated_ip, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDedicatedIp"
        operation.name = "GetDedicatedIp"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDedicatedIpRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDedicatedIpResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/dedicated-ips/{Ip}", "code" => 200}}
      end)
      service.add_operation(:get_dedicated_ips, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDedicatedIps"
        operation.name = "GetDedicatedIps"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDedicatedIpsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDedicatedIpsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/dedicated-ips", "code" => 200}}
        operation[:paginator] = Paginators::GetDedicatedIps.new
      end)
      service.add_operation(:get_deliverability_dashboard_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDeliverabilityDashboardOptions"
        operation.name = "GetDeliverabilityDashboardOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliverabilityDashboardOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliverabilityDashboardOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard", "code" => 200}}
      end)
      service.add_operation(:get_deliverability_test_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDeliverabilityTestReport"
        operation.name = "GetDeliverabilityTestReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliverabilityTestReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDeliverabilityTestReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/test-reports/{ReportId}", "code" => 200}}
      end)
      service.add_operation(:get_domain_deliverability_campaign, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDomainDeliverabilityCampaign"
        operation.name = "GetDomainDeliverabilityCampaign"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainDeliverabilityCampaignRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainDeliverabilityCampaignResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/campaigns/{CampaignId}", "code" => 200}}
      end)
      service.add_operation(:get_domain_statistics_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetDomainStatisticsReport"
        operation.name = "GetDomainStatisticsReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainStatisticsReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainStatisticsReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/statistics-report/{Domain}", "code" => 200}}
      end)
      service.add_operation(:get_email_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#GetEmailIdentity"
        operation.name = "GetEmailIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailIdentityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/identities/{EmailIdentity}", "code" => 200}}
      end)
      service.add_operation(:list_configuration_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListConfigurationSets"
        operation.name = "ListConfigurationSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationSetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListConfigurationSetsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/configuration-sets", "code" => 200}}
        operation[:paginator] = Paginators::ListConfigurationSets.new
      end)
      service.add_operation(:list_dedicated_ip_pools, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListDedicatedIpPools"
        operation.name = "ListDedicatedIpPools"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDedicatedIpPoolsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDedicatedIpPoolsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/dedicated-ip-pools", "code" => 200}}
        operation[:paginator] = Paginators::ListDedicatedIpPools.new
      end)
      service.add_operation(:list_deliverability_test_reports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListDeliverabilityTestReports"
        operation.name = "ListDeliverabilityTestReports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeliverabilityTestReportsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDeliverabilityTestReportsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/test-reports", "code" => 200}}
        operation[:paginator] = Paginators::ListDeliverabilityTestReports.new
      end)
      service.add_operation(:list_domain_deliverability_campaigns, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListDomainDeliverabilityCampaigns"
        operation.name = "ListDomainDeliverabilityCampaigns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainDeliverabilityCampaignsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainDeliverabilityCampaignsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns", "code" => 200}}
        operation[:paginator] = Paginators::ListDomainDeliverabilityCampaigns.new
      end)
      service.add_operation(:list_email_identities, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListEmailIdentities"
        operation.name = "ListEmailIdentities"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEmailIdentitiesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEmailIdentitiesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/identities", "code" => 200}}
        operation[:paginator] = Paginators::ListEmailIdentities.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/email/tags", "code" => 200}}
      end)
      service.add_operation(:put_account_dedicated_ip_warmup_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutAccountDedicatedIpWarmupAttributes"
        operation.name = "PutAccountDedicatedIpWarmupAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountDedicatedIpWarmupAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountDedicatedIpWarmupAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/account/dedicated-ips/warmup", "code" => 200}}
      end)
      service.add_operation(:put_account_sending_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutAccountSendingAttributes"
        operation.name = "PutAccountSendingAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSendingAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutAccountSendingAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/account/sending", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_delivery_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutConfigurationSetDeliveryOptions"
        operation.name = "PutConfigurationSetDeliveryOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetDeliveryOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetDeliveryOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/delivery-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_reputation_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutConfigurationSetReputationOptions"
        operation.name = "PutConfigurationSetReputationOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetReputationOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetReputationOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/reputation-options", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_sending_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutConfigurationSetSendingOptions"
        operation.name = "PutConfigurationSetSendingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetSendingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetSendingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/sending", "code" => 200}}
      end)
      service.add_operation(:put_configuration_set_tracking_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutConfigurationSetTrackingOptions"
        operation.name = "PutConfigurationSetTrackingOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetTrackingOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutConfigurationSetTrackingOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/tracking-options", "code" => 200}}
      end)
      service.add_operation(:put_dedicated_ip_in_pool, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutDedicatedIpInPool"
        operation.name = "PutDedicatedIpInPool"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDedicatedIpInPoolRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDedicatedIpInPoolResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/dedicated-ips/{Ip}/pool", "code" => 200}}
      end)
      service.add_operation(:put_dedicated_ip_warmup_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutDedicatedIpWarmupAttributes"
        operation.name = "PutDedicatedIpWarmupAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDedicatedIpWarmupAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDedicatedIpWarmupAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/dedicated-ips/{Ip}/warmup", "code" => 200}}
      end)
      service.add_operation(:put_deliverability_dashboard_option, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutDeliverabilityDashboardOption"
        operation.name = "PutDeliverabilityDashboardOption"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeliverabilityDashboardOptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeliverabilityDashboardOptionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/deliverability-dashboard", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_dkim_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutEmailIdentityDkimAttributes"
        operation.name = "PutEmailIdentityDkimAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityDkimAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityDkimAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/identities/{EmailIdentity}/dkim", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_feedback_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutEmailIdentityFeedbackAttributes"
        operation.name = "PutEmailIdentityFeedbackAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityFeedbackAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityFeedbackAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/identities/{EmailIdentity}/feedback", "code" => 200}}
      end)
      service.add_operation(:put_email_identity_mail_from_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#PutEmailIdentityMailFromAttributes"
        operation.name = "PutEmailIdentityMailFromAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityMailFromAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutEmailIdentityMailFromAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/identities/{EmailIdentity}/mail-from", "code" => 200}}
      end)
      service.add_operation(:send_email, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#SendEmail"
        operation.name = "SendEmail"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendEmailRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendEmailResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSuspendedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MailFromDomainNotVerifiedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MessageRejected)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: SendingPausedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/outbound-emails", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/email/tags", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/email/tags", "code" => 200}}
      end)
      service.add_operation(:update_configuration_set_event_destination, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.pinpointemail#UpdateConfigurationSetEventDestination"
        operation.name = "UpdateConfigurationSetEventDestination"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateConfigurationSetEventDestinationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}", "code" => 200}}
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
